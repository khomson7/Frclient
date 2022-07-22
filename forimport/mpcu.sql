SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE IF NOT EXISTS`check_send` (
  `id` int(11) NOT NULL,
  `key_check` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`key_check`),
  UNIQUE KEY `idx` (`id`,`key_check`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

CREATE TABLE IF NOT EXISTS `patient_check_covac` (
  `cidencrypt` varchar(50) NOT NULL,
  `vstdate` date NOT NULL,
  `hospcode` varchar(5) DEFAULT NULL,
  `d_update` datetime DEFAULT NULL,
  PRIMARY KEY (`cidencrypt`,`vstdate`),
  KEY `idx` (`cidencrypt`,`vstdate`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;


DROP PROCEDURE IF EXISTS `check_send1`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `check_send1`()
BEGIN
	
INSERT into check_send
select * from
(select '1' as id,CONCAT(hospcode,vstdate,cidencrypt) as key_check
from patient_check_covac where CONCAT(hospcode,vstdate,cidencrypt) not in(select key_check from check_send))t;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for patient_check_covac
-- ----------------------------
DROP PROCEDURE IF EXISTS `patient_check_covac`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `patient_check_covac`()
BEGIN
	
REPLACE INTO patient_check_covac
select * from 

(select upper(concat(t.ciden,':',substr(t.cid,1,1),substr(t.cid,13,1))) as cidencrypt 
,/*ifnull(t.vstdate,'') as*/ t.vstdate,(select hospitalcode from hosxp_pcu.opdconfig) as hospcode,NOW() as d_update
from
(select (MD5(pt.cid) COLLATE utf8_unicode_ci) as ciden,pt.cid,date(ov.immunization_datetime) as vstdate
from hosxp_pcu.vn_stat vn 
INNER JOIN hosxp_pcu.ovst_vaccine ov on ov.vn = vn.vn
INNER JOIN hosxp_pcu.patient pt on pt.hn = vn.hn
where vn.pdx LIKE'U119%')t)all_t
WHERE TIMESTAMPDIFF(day,all_t.vstdate,CURDATE()) <= 30;

UPDATE patient_check_covac SET vstdate = '0000-00-00' WHERE vstdate is null;

END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for patient_check_covac
-- ----------------------------
DROP EVENT IF EXISTS `patient_check_covac`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `patient_check_covac` ON SCHEDULE EVERY 1 DAY STARTS '2022-07-15 12:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
CALL patient_check_covac;
END
;;
DELIMITER ;
