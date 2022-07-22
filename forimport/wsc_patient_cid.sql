
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wsc_patient_cid
-- ----------------------------
DROP TABLE IF EXISTS `wsc_patient_cid`;
CREATE TABLE `wsc_patient_cid` (
  `cid` varchar(13) NOT NULL,
  `hn` varchar(9) NOT NULL DEFAULT '',
  `patient_cid` varchar(100) CHARACTER SET utf8mb4 DEFAULT '',
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`hn`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;
