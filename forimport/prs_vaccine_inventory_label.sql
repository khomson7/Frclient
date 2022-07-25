/*
Navicat MySQL Data Transfer

Source Server         : 192.168.3.21_3306
Source Server Version : 50505
Source Host           : 192.168.3.21:3306
Source Database       : hosxp_pcu03149

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-07-22 22:40:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for prs_vaccine_inventory_label
-- ----------------------------
DROP TABLE IF EXISTS `prs_vaccine_inventory_label`;
CREATE TABLE `prs_vaccine_inventory_label` (
  `vaccine_inventory_label_id` int(11) NOT NULL,
  `vaccine_inventory_lot_id` int(11) NOT NULL,
  `label_code` varchar(50) DEFAULT NULL,
  `recipient_vn` varchar(12) DEFAULT NULL,
  `recipient_datetime` datetime DEFAULT NULL,
  `dose_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`vaccine_inventory_label_id`),
  UNIQUE KEY `ix_label_code` (`label_code`),
  KEY `ix_id` (`vaccine_inventory_lot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;

-- ----------------------------
-- Table structure for prs_vaccine_inventory_lot
-- ----------------------------
DROP TABLE IF EXISTS `prs_vaccine_inventory_lot`;
CREATE TABLE `prs_vaccine_inventory_lot` (
  `vaccine_inventory_lot_id` int(11) NOT NULL,
  `receive_date` date NOT NULL,
  `receive_time` time DEFAULT NULL,
  `vaccine_lot_no` varchar(50) DEFAULT NULL,
  `vaccine_serial_no` varchar(50) DEFAULT NULL,
  `vaccine_expire_date` date NOT NULL,
  `vaccine_manufacturer_id` int(11) NOT NULL,
  `dose_qty` int(11) DEFAULT NULL,
  `person_vaccine_id` int(11) NOT NULL,
  PRIMARY KEY (`vaccine_inventory_lot_id`),
  KEY `ix_person_vaccine_id` (`person_vaccine_id`),
  KEY `ix_receive_date` (`receive_date`),
  KEY `ix_id_lot_no` (`person_vaccine_id`,`vaccine_lot_no`)
) ENGINE=InnoDB DEFAULT CHARSET=tis620;
