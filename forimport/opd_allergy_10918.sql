/*
Navicat MySQL Data Transfer

Source Server         : 49.231.174.137_3306
Source Server Version : 50505
Source Host           : 49.231.174.137:3306
Source Database       : db_03164

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-07-22 20:28:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for opd_allergy_10918
-- ----------------------------
DROP TABLE IF EXISTS `opd_allergy_10918`;
CREATE TABLE `opd_allergy_10918` (
  `hn` varchar(9) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `agent` varchar(250) DEFAULT NULL,
  `symptom` varchar(250) DEFAULT NULL,
  `reporter` varchar(250) DEFAULT NULL,
  `relation_level` varchar(50) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `allergy_type` char(1) DEFAULT NULL,
  `display_order` varchar(11) DEFAULT '',
  `begin_date` date DEFAULT NULL,
  `allergy_group_id` varchar(11) DEFAULT '',
  `seriousness_id` varchar(11) DEFAULT '',
  `allergy_result_id` varchar(11) DEFAULT '',
  `allergy_relation_id` varchar(11) DEFAULT '',
  `ward` varchar(4) DEFAULT NULL,
  `department` char(3) DEFAULT NULL,
  `spclty` char(2) DEFAULT NULL,
  `entry_datetime` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `depcode` char(3) DEFAULT NULL,
  `no_alert` char(1) DEFAULT NULL,
  `naranjo_result_id` varchar(11) DEFAULT '',
  `force_no_order` char(1) DEFAULT NULL,
  `opd_allergy_alert_type_id` varchar(11) DEFAULT '',
  `hos_guid` varchar(38) DEFAULT NULL,
  `adr_preventable_score` varchar(11) DEFAULT '',
  `preventable` char(1) DEFAULT NULL,
  `patient_cid` varchar(50) DEFAULT NULL,
  `adr_consult_dialog_id` varchar(11) DEFAULT '',
  `opd_allergy_report_type_id` varchar(11) DEFAULT '',
  `hos_guid_ext` varchar(64) DEFAULT NULL,
  `agent_code24` varchar(24) DEFAULT NULL,
  `officer_confirm` char(1) DEFAULT NULL,
  `icode` char(7) DEFAULT NULL,
  `opd_allergy_symtom_type_id` varchar(11) DEFAULT '',
  `opd_allergy_id` varchar(11) DEFAULT '',
  `cross_group_check` char(1) DEFAULT NULL,
  `opd_allergy_source_id` varchar(11) DEFAULT '',
  `opd_allergy_type_id` varchar(11) DEFAULT '',
  `doctor_code` varchar(15) DEFAULT NULL,
  `dosage_text` text DEFAULT NULL,
  `usage_text` text DEFAULT NULL,
  `lab_text` text DEFAULT NULL,
  `sct_disorder_id` varchar(18) DEFAULT NULL,
  `sct_substance_id` varchar(18) DEFAULT NULL,
  UNIQUE KEY `idx` (`hn`,`report_date`,`agent`,`symptom`,`begin_date`,`entry_datetime`,`update_datetime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=tis620;
