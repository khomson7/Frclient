/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50531
Source Host           : 127.0.0.1:3306
Source Database       : hosxp_pcu_table

Target Server Type    : MYSQL
Target Server Version : 50531
File Encoding         : 65001

Date: 2022-07-22 09:42:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for prs_drugitems
-- ----------------------------
DROP TABLE IF EXISTS `prs_drugitems`;
CREATE TABLE `prs_drugitems` (
  `icode` varchar(7) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `strength` varchar(50) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL,
  `unitprice` double(22,3) DEFAULT '0.000',
  `dosageform` varchar(100) DEFAULT NULL,
  `criticalpriority` int(11) DEFAULT '0',
  `drugaccount` varchar(2) DEFAULT NULL,
  `drugcategory` varchar(150) DEFAULT NULL,
  `drugnote` varchar(150) DEFAULT NULL,
  `hintcode` varchar(4) DEFAULT NULL,
  `istatus` char(1) DEFAULT NULL,
  `lastupdatestdprice` datetime DEFAULT NULL,
  `lockprice` char(1) DEFAULT NULL,
  `lockprint` char(1) DEFAULT NULL,
  `maxlevel` int(11) DEFAULT NULL,
  `minlevel` int(11) DEFAULT NULL,
  `maxunitperdose` int(11) DEFAULT NULL,
  `packqty` int(11) DEFAULT NULL,
  `reorderqty` int(11) DEFAULT NULL,
  `stdprice` double(22,3) DEFAULT '0.000',
  `stdtaken` varchar(30) DEFAULT NULL,
  `therapeutic` varchar(150) DEFAULT NULL,
  `therapeuticgroup` varchar(150) DEFAULT NULL,
  `default_qty` int(11) DEFAULT '0',
  `gpo_code` varchar(7) DEFAULT NULL,
  `use_right` char(1) DEFAULT NULL,
  `i_type` char(1) DEFAULT NULL,
  `drugusage` varchar(30) DEFAULT NULL,
  `high_cost` varchar(1) DEFAULT NULL,
  `must_paid` char(1) DEFAULT NULL,
  `alert_level` tinyint(4) DEFAULT NULL,
  `access_level` tinyint(4) DEFAULT NULL,
  `sticker_short_name` varchar(150) DEFAULT NULL,
  `paidst` char(2) DEFAULT NULL,
  `antibiotic` char(1) DEFAULT NULL,
  `displaycolor` int(11) DEFAULT NULL,
  `empty` char(1) DEFAULT NULL,
  `empty_text` text,
  `unitcost` double(15,3) DEFAULT NULL,
  `gfmiscode` varchar(14) DEFAULT NULL,
  `ipd_price` double(15,3) DEFAULT NULL,
  `oldcode` varchar(20) DEFAULT NULL,
  `habit_forming` char(1) DEFAULT NULL,
  `did` varchar(27) DEFAULT NULL,
  `stock_type` varchar(4) DEFAULT NULL,
  `price2` double(15,3) DEFAULT NULL,
  `price3` double(15,3) DEFAULT NULL,
  `ipd_price2` double(15,3) DEFAULT NULL,
  `ipd_price3` double(15,3) DEFAULT NULL,
  `price_lock` char(1) DEFAULT NULL,
  `pregnancy` varchar(10) DEFAULT NULL,
  `pharmacology_group1` int(11) DEFAULT NULL,
  `pharmacology_group2` int(11) DEFAULT NULL,
  `pharmacology_group3` int(11) DEFAULT NULL,
  `generic_name` varchar(250) DEFAULT NULL,
  `show_pregnancy_alert` char(1) DEFAULT NULL,
  `icode_guid` varchar(38) DEFAULT NULL,
  `na` char(1) DEFAULT NULL,
  `invcode` varchar(10) DEFAULT NULL,
  `check_user_group` char(1) DEFAULT NULL,
  `check_user_name` char(1) DEFAULT NULL,
  `show_notify` char(1) DEFAULT NULL,
  `show_notify_text` text,
  `income` char(2) DEFAULT NULL,
  `print_sticker_pq` char(1) DEFAULT NULL,
  `charge_service_opd` char(1) DEFAULT NULL,
  `charge_service_ipd` char(1) DEFAULT NULL,
  `ename` varchar(150) DEFAULT NULL,
  `dose_type` char(3) DEFAULT NULL,
  `habit_forming_type` int(11) DEFAULT NULL,
  `no_discount` char(1) DEFAULT NULL,
  `therapeutic_eng` varchar(200) DEFAULT NULL,
  `hintcode_eng` varchar(200) DEFAULT NULL,
  `limit_drugusage` char(1) DEFAULT NULL,
  `print_sticker_header` char(1) DEFAULT NULL,
  `calc_idr_qty` char(1) DEFAULT NULL,
  `item_in_hospital` char(1) DEFAULT NULL,
  `no_substock` char(1) DEFAULT NULL,
  `volume_cc` int(11) DEFAULT NULL,
  `usage_code` varchar(10) DEFAULT NULL,
  `frequency_code` varchar(10) DEFAULT NULL,
  `time_code` varchar(10) DEFAULT NULL,
  `dispense_dose` double(15,3) DEFAULT NULL,
  `usage_unit_code` varchar(10) DEFAULT NULL,
  `dose_per_units` double(15,3) DEFAULT NULL,
  `ipd_default_pay` int(11) DEFAULT NULL,
  `billcode` varchar(10) DEFAULT NULL,
  `billnumber` varchar(15) DEFAULT NULL,
  `lockprint_ipd` char(1) DEFAULT NULL,
  `pregnancy_notify_text` text,
  `show_breast_feeding_alert` char(1) DEFAULT NULL,
  `breast_feeding_alert_text` text,
  `show_child_notify` char(1) DEFAULT NULL,
  `child_notify_text` text,
  `child_notify_min_age` int(11) DEFAULT NULL,
  `child_notify_max_age` int(11) DEFAULT NULL,
  `continuous` char(1) DEFAULT NULL,
  `substitute_icode` char(7) DEFAULT NULL,
  `trade_name` varchar(200) DEFAULT NULL,
  `use_right_allow` char(1) DEFAULT NULL,
  `medication_machine_id` int(11) DEFAULT NULL,
  `ipd_medication_machine_id` int(11) DEFAULT NULL,
  `check_remed_qty` char(1) DEFAULT NULL,
  `addict` char(1) DEFAULT NULL,
  `addict_type_id` int(11) DEFAULT NULL,
  `medication_machine_opd_no` int(11) DEFAULT NULL,
  `medication_machine_ipd_no` int(11) DEFAULT NULL,
  `fp_drug` char(1) DEFAULT NULL,
  `usage_code_ipd` varchar(10) DEFAULT NULL,
  `dispense_dose_ipd` double(15,3) DEFAULT NULL,
  `usage_unit_code_ipd` varchar(10) DEFAULT NULL,
  `frequency_code_ipd` varchar(10) DEFAULT NULL,
  `time_code_ipd` varchar(10) DEFAULT NULL,
  `print_ipd_injection_sticker` char(1) DEFAULT NULL,
  `provis_medication_unit_code` varchar(10) DEFAULT NULL,
  `hos_guid` varchar(38) DEFAULT NULL,
  `sks_product_category_id` int(11) DEFAULT NULL,
  `sks_clain_control_type_id` int(11) DEFAULT NULL,
  `sks_drug_code` varchar(25) DEFAULT NULL,
  `sks_dfs_code` varchar(50) DEFAULT NULL,
  `sks_dfs_text` varchar(150) DEFAULT NULL,
  `sks_reimb_price` double(15,3) DEFAULT NULL,
  `hos_guid_ext` varchar(64) DEFAULT NULL,
  `check_druginteraction_history` char(1) DEFAULT NULL,
  `check_druginteraction_history_day` int(11) DEFAULT NULL,
  `nhso_adp_type_id` int(11) DEFAULT NULL,
  `nhso_adp_code` varchar(15) DEFAULT NULL,
  `sks_claim_control_type_id` int(11) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `name_pr` varchar(100) DEFAULT NULL,
  `name_eng` varchar(100) DEFAULT NULL,
  `capacity_name` varchar(100) DEFAULT NULL,
  `finish_reason` varchar(100) DEFAULT NULL,
  `extra_unitcost` double(15,3) DEFAULT NULL,
  `drug_control_type_id` int(11) DEFAULT NULL,
  `name_print` varchar(100) DEFAULT NULL,
  `active_ingredient_mg` double(15,3) DEFAULT NULL,
  `no_order_g6pd` char(1) DEFAULT NULL,
  `gender_check` char(1) DEFAULT NULL,
  `no_order_gender` char(1) DEFAULT NULL,
  `max_qty` int(11) DEFAULT NULL,
  `prefer_opd_usage_code` char(1) DEFAULT NULL,
  `capacity_qty` double(15,3) DEFAULT NULL,
  `need_order_reason` char(1) DEFAULT NULL,
  `drugitems_due_type_id` int(11) DEFAULT NULL,
  `drugeval_head_id` int(11) DEFAULT NULL,
  `light_protect` char(1) DEFAULT NULL,
  `tpu_code_list` varchar(200) DEFAULT NULL,
  `sks_specprep` varchar(2) DEFAULT NULL,
  `inv_map_update` char(1) DEFAULT NULL,
  `special_advice_text` text,
  `precaution_advice_text` text,
  `contra_advice_text` text,
  `storage_advice_text` text,
  `qr_code_url` varchar(200) DEFAULT NULL,
  `vat_percent` double(15,3) DEFAULT NULL,
  `acc_regist` char(1) DEFAULT NULL,
  `use_paidst` char(1) DEFAULT NULL,
  `thai_name` varchar(200) DEFAULT NULL,
  `fwf_item_id` int(11) DEFAULT NULL,
  `drugitems_em1_id` int(11) DEFAULT NULL,
  `drugitems_em2_id` int(11) DEFAULT NULL,
  `drugitems_em3_id` int(11) DEFAULT NULL,
  `drugitems_em4_id` int(11) DEFAULT NULL,
  `tmt_tp_code` varchar(10) DEFAULT NULL,
  `tmt_gp_code` varchar(10) DEFAULT NULL,
  `limit_pttype` char(1) DEFAULT NULL,
  `noshow_narcotic` char(1) DEFAULT NULL,
  `medication_machine_flag` char(1) DEFAULT NULL,
  `sks_price` double(15,3) DEFAULT NULL,
  `print_sticker_by_frequency` char(1) DEFAULT NULL,
  `print_sticker_pq_ipd` char(1) DEFAULT NULL,
  `dmi` char(1) DEFAULT NULL,
  `sub_income` varchar(3) DEFAULT NULL,
  `prefer_ipd_usage_code` char(1) DEFAULT NULL,
  `default_qty_ipd` int(11) DEFAULT NULL,
  `max_qty_ipd` int(11) DEFAULT NULL,
  `drugusage_ipd` varchar(30) DEFAULT NULL,
  `no_popup_ipd_reason` char(1) DEFAULT NULL,
  `specprep` varchar(10) DEFAULT NULL,
  `med_dose_calc_type_id` int(11) DEFAULT NULL,
  `send_line_notify` char(1) DEFAULT NULL,
  `show_qrcode_trade` char(1) DEFAULT NULL,
  `warn_g6pd` char(1) DEFAULT NULL,
  `ipd_rx_freq_day` int(11) DEFAULT NULL,
  `displaycolor_focus` int(11) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `no_remed` char(1) DEFAULT NULL,
  `force_round_qty` char(1) DEFAULT NULL,
  `atc_code` varchar(10) DEFAULT NULL,
  `state_item_id` int(11) DEFAULT NULL,
  `multiply_charge_service` char(1) DEFAULT NULL,
  `csmbs_claim_cat` char(1) DEFAULT NULL,
  `simb_2005` varchar(10) DEFAULT NULL,
  `sks_rev_date` date DEFAULT NULL,
  `check_` char(1) DEFAULT NULL,
  PRIMARY KEY (`icode`),
  KEY `dosageform` (`dosageform`),
  KEY `drugaccount` (`drugaccount`),
  KEY `drugcategory` (`drugcategory`),
  KEY `drugnote` (`drugnote`),
  KEY `hintcode` (`hintcode`),
  KEY `istatus` (`istatus`),
  KEY `name` (`name`),
  KEY `packqty` (`packqty`),
  KEY `strength` (`strength`),
  KEY `therapeutic` (`therapeutic`),
  KEY `therapeuticgroup` (`therapeuticgroup`),
  KEY `units` (`units`),
  KEY `ix_oldcode` (`oldcode`),
  KEY `ix_ix_income` (`income`),
  KEY `ix_no_discount` (`no_discount`),
  KEY `ix_generic_name` (`generic_name`),
  KEY `ix_show_child_notify` (`show_child_notify`),
  KEY `ix_icode_guid` (`icode_guid`),
  KEY `ix_hos_guid_ext` (`hos_guid_ext`),
  KEY `ix_cdh` (`check_druginteraction_history`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

-- ----------------------------
-- Table structure for prs_s_drugitems
-- ----------------------------
DROP TABLE IF EXISTS `prs_s_drugitems`;
CREATE TABLE `prs_s_drugitems` (
  `icode` varchar(7) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `strength` varchar(50) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL,
  `dosageform` varchar(100) DEFAULT NULL,
  `drugnote` varchar(150) DEFAULT NULL,
  `use_right` char(1) DEFAULT NULL,
  `must_paid` char(1) DEFAULT NULL,
  `istatus` char(1) DEFAULT NULL,
  `access_level` int(11) DEFAULT NULL,
  `paidst` char(2) DEFAULT NULL,
  `displaycolor` int(11) DEFAULT NULL,
  `price_lock` char(1) DEFAULT NULL,
  `icode_guid` varchar(38) DEFAULT NULL,
  `ename` varchar(150) DEFAULT NULL,
  `cost` double(15,3) DEFAULT NULL,
  `income` char(2) DEFAULT NULL,
  `hos_guid` varchar(38) DEFAULT NULL,
  `hos_guid_ext` varchar(64) DEFAULT NULL,
  `is_medication` char(1) DEFAULT NULL,
  `use_paidst` char(1) DEFAULT NULL,
  `is_medsupply` char(1) DEFAULT NULL,
  `sub_income` varchar(3) DEFAULT NULL,
  `highcost` varchar(1) DEFAULT 'N',
  `oldcode` varchar(15) DEFAULT NULL,
  `billcode` varchar(10) DEFAULT NULL,
  `billnumber` varchar(15) DEFAULT NULL,
  `nhso_adp_type_id` int(11) DEFAULT NULL,
  `nhso_adp_code` varchar(15) DEFAULT NULL,
  `unitprice` double(15,3) DEFAULT NULL,
  `displaycolor_focus` int(11) DEFAULT NULL,
  `tpu_code_list` varchar(200) DEFAULT NULL,
  `drugaccount` varchar(2) DEFAULT NULL,
  `sks_drug_code` varchar(25) DEFAULT NULL,
  `sks_product_category_id` int(11) DEFAULT NULL,
  `icd9cm` varchar(7) DEFAULT NULL,
  `drugcategory` varchar(150) DEFAULT NULL,
  `sks_dfs_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`icode`),
  KEY `ix_name` (`name`),
  KEY `ix_access` (`access_level`),
  KEY `ix_status` (`istatus`),
  KEY `ix_nsu` (`name`,`strength`,`units`),
  KEY `ix_icode_guid` (`icode_guid`),
  KEY `ix_hos_guid_ext` (`hos_guid_ext`),
  KEY `ix_search1` (`is_medication`,`istatus`,`name`,`icode`),
  KEY `ix_search1_index` (`icode`,`is_medication`,`istatus`,`name`),
  KEY `ix_nsu_index` (`name`,`units`,`strength`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

-- ----------------------------
-- Procedure structure for mpcu_opd_allergy_importpcu
-- ----------------------------
DROP PROCEDURE IF EXISTS `mpcu_opd_allergy_importpcu`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `mpcu_opd_allergy_importpcu`()
BEGIN

INSERT INTO drugstdgeneric(genericname)
select agent FROM opd_allergy
WHERE agent NOT IN
(select genericname from drugstdgeneric)
GROUP BY agent;

update patient pt
INNER JOIN
(select hn,GROUP_CONCAT("'",agent,"'") as drugallergy
from opd_allergy o
GROUP BY o.hn)t on t.hn = pt.hn
SET pt.drugallergy = t.drugallergy 
WHERE (pt.drugallergy is null or pt.drugallergy = '');

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for prs_drug
-- ----------------------------
DROP PROCEDURE IF EXISTS `prs_drug`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `prs_drug`()
BEGIN
	
REPLACE INTO drugitems(icode,name,strength,units,unitprice,dosageform,criticalpriority,drugaccount
,drugcategory,drugnote,hintcode,istatus,lastupdatestdprice,lockprice,lockprint,maxlevel
,minlevel,maxunitperdose,packqty,reorderqty,stdprice,stdtaken,therapeutic,therapeuticgroup
,default_qty,gpo_code,use_right,i_type,drugusage,high_cost,must_paid,alert_level,access_level
,sticker_short_name,paidst,antibiotic,displaycolor,empty,empty_text,unitcost
,gfmiscode,ipd_price,oldcode,habit_forming,did,stock_type,price2,price3,ipd_price2,ipd_price3
,price_lock,pregnancy,pharmacology_group1,pharmacology_group2,pharmacology_group3,generic_name
,show_pregnancy_alert,na,invcode,check_user_group,check_user_name,show_notify
,show_notify_text,income,print_sticker_pq,charge_service_opd,charge_service_ipd,ename,dose_type
,habit_forming_type,no_discount,therapeutic_eng,hintcode_eng,limit_drugusage,print_sticker_header
,calc_idr_qty,item_in_hospital,no_substock,volume_cc,usage_code,frequency_code,time_code,dispense_dose
,usage_unit_code,dose_per_units,ipd_default_pay,billcode,billnumber,lockprint_ipd,pregnancy_notify_text
,show_breast_feeding_alert,breast_feeding_alert_text,show_child_notify,child_notify_text,child_notify_min_age
,child_notify_max_age,continuous,substitute_icode,trade_name,use_right_allow,medication_machine_id
,ipd_medication_machine_id,check_remed_qty,addict,addict_type_id,medication_machine_opd_no
,medication_machine_ipd_no,fp_drug,usage_code_ipd,dispense_dose_ipd,usage_unit_code_ipd
,frequency_code_ipd,time_code_ipd,print_ipd_injection_sticker,provis_medication_unit_code
,sks_product_category_id,sks_clain_control_type_id,sks_drug_code,sks_dfs_code,sks_dfs_text,sks_reimb_price,tmt_tp_code,tmt_gp_code)
select icode,name,strength,units,unitprice,dosageform,criticalpriority,drugaccount
,drugcategory,drugnote,hintcode,istatus,lastupdatestdprice,lockprice,lockprint,maxlevel
,minlevel,maxunitperdose,packqty,reorderqty,stdprice,stdtaken,therapeutic,therapeuticgroup
,default_qty,gpo_code,use_right,i_type,drugusage,high_cost,must_paid,alert_level,access_level
,sticker_short_name,paidst,antibiotic,displaycolor,empty,empty_text,unitcost
,gfmiscode,ipd_price,oldcode,habit_forming,did,stock_type,price2,price3,ipd_price2,ipd_price3
,price_lock,pregnancy,pharmacology_group1,pharmacology_group2,pharmacology_group3,generic_name
,show_pregnancy_alert,na,invcode,check_user_group,check_user_name,show_notify
,show_notify_text,income,print_sticker_pq,charge_service_opd,charge_service_ipd,ename,dose_type
,habit_forming_type,no_discount,therapeutic_eng,hintcode_eng,limit_drugusage,print_sticker_header
,calc_idr_qty,item_in_hospital,no_substock,volume_cc,usage_code,frequency_code,time_code,dispense_dose
,usage_unit_code,dose_per_units,ipd_default_pay,billcode,billnumber,lockprint_ipd,pregnancy_notify_text
,show_breast_feeding_alert,breast_feeding_alert_text,show_child_notify,child_notify_text,child_notify_min_age
,child_notify_max_age,continuous,substitute_icode,trade_name,use_right_allow,medication_machine_id
,ipd_medication_machine_id,check_remed_qty,addict,addict_type_id,medication_machine_opd_no
,medication_machine_ipd_no,fp_drug,usage_code_ipd,dispense_dose_ipd,usage_unit_code_ipd
,frequency_code_ipd,time_code_ipd,print_ipd_injection_sticker,provis_medication_unit_code
,sks_product_category_id,sks_clain_control_type_id,sks_drug_code,sks_dfs_code,sks_dfs_text,sks_reimb_price,tmt_tp_code,tmt_gp_code
FROM prs_drugitems where check_ = '1'; 


REPLACE INTO s_drugitems(icode,`name`,strength,units,dosageform,drugnote,use_right,must_paid,istatus,access_level,paidst,displaycolor,price_lock,ename
,cost,income,is_medication,is_medsupply)
select icode,`name`,strength,units,dosageform,drugnote,use_right,must_paid,istatus,access_level,paidst,displaycolor,price_lock,ename
,cost,income,is_medication,is_medsupply 
from prs_s_drugitems where icode not in(select icode from s_drugitems);


END
;;
DELIMITER ;
