/*
Navicat MariaDB Data Transfer

Source Server         : mariadb
Source Server Version : 100210
Source Host           : localhost:3306
Source Database       : openemr

Target Server Type    : MariaDB
Target Server Version : 100210
File Encoding         : 65001

Date: 2019-05-02 16:30:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL DEFAULT 0,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(35) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `plus_four` varchar(4) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `foreign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_id` (`foreign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for amc_misc_data
-- ----------------------------
DROP TABLE IF EXISTS `amc_misc_data`;
CREATE TABLE `amc_misc_data` (
  `amc_id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Unique and maps to list_options list clinical_rules',
  `pid` bigint(20) DEFAULT NULL,
  `map_category` varchar(255) NOT NULL DEFAULT '' COMMENT 'Maps to an object category (such as prescriptions etc.)',
  `map_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Maps to an object id (such as prescription id etc.)',
  `date_created` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `soc_provided` datetime DEFAULT NULL,
  KEY `amc_id` (`amc_id`,`pid`,`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for amendments
-- ----------------------------
DROP TABLE IF EXISTS `amendments`;
CREATE TABLE `amendments` (
  `amendment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Amendment ID',
  `amendment_date` date NOT NULL COMMENT 'Amendement request date',
  `amendment_by` varchar(50) NOT NULL COMMENT 'Amendment requested from',
  `amendment_status` varchar(50) DEFAULT NULL COMMENT 'Amendment status accepted/rejected/null',
  `pid` bigint(20) NOT NULL COMMENT 'Patient ID from patient_data',
  `amendment_desc` text DEFAULT NULL COMMENT 'Amendment Details',
  `created_by` int(11) NOT NULL COMMENT 'references users.id for session owner',
  `modified_by` int(11) DEFAULT NULL COMMENT 'references users.id for session owner',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'created time',
  `modified_time` timestamp NULL DEFAULT NULL COMMENT 'modified time',
  PRIMARY KEY (`amendment_id`),
  KEY `amendment_pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for amendments_history
-- ----------------------------
DROP TABLE IF EXISTS `amendments_history`;
CREATE TABLE `amendments_history` (
  `amendment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Amendment ID',
  `amendment_note` text DEFAULT NULL COMMENT 'Amendment requested from',
  `amendment_status` varchar(50) DEFAULT NULL COMMENT 'Amendment Request Status',
  `created_by` int(11) NOT NULL COMMENT 'references users.id for session owner',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'created time',
  KEY `amendment_history_id` (`amendment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for array
-- ----------------------------
DROP TABLE IF EXISTS `array`;
CREATE TABLE `array` (
  `array_key` varchar(255) DEFAULT NULL,
  `array_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ar_activity
-- ----------------------------
DROP TABLE IF EXISTS `ar_activity`;
CREATE TABLE `ar_activity` (
  `pid` int(11) NOT NULL,
  `encounter` int(11) NOT NULL,
  `sequence_no` int(10) unsigned NOT NULL COMMENT 'Ar_activity sequence_no, incremented in code',
  `code_type` varchar(12) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL COMMENT 'empty means claim level',
  `modifier` varchar(12) NOT NULL DEFAULT '',
  `payer_type` int(11) NOT NULL COMMENT '0=pt, 1=ins1, 2=ins2, etc',
  `post_time` datetime NOT NULL,
  `post_user` int(11) NOT NULL COMMENT 'references users.id',
  `session_id` int(10) unsigned NOT NULL COMMENT 'references ar_session.session_id',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT 'adjustment reasons go here',
  `pay_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'either pay or adj will always be 0',
  `adj_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `modified_time` datetime NOT NULL,
  `follow_up` char(1) NOT NULL,
  `follow_up_note` text DEFAULT NULL,
  `account_code` varchar(15) NOT NULL,
  `reason_code` varchar(255) DEFAULT NULL COMMENT 'Use as needed to show the primary payer adjustment reason code',
  PRIMARY KEY (`pid`,`encounter`,`sequence_no`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ar_session
-- ----------------------------
DROP TABLE IF EXISTS `ar_session`;
CREATE TABLE `ar_session` (
  `session_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payer_id` int(11) NOT NULL COMMENT '0=pt else references insurance_companies.id',
  `user_id` int(11) NOT NULL COMMENT 'references users.id for session owner',
  `closed` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `reference` varchar(255) NOT NULL DEFAULT '' COMMENT 'check or EOB number',
  `check_date` date DEFAULT NULL,
  `deposit_date` date DEFAULT NULL,
  `pay_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_time` datetime NOT NULL,
  `global_amount` decimal(12,2) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `adjustment_code` varchar(50) NOT NULL,
  `post_to_date` date NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `user_closed` (`user_id`,`closed`),
  KEY `deposit_date` (`deposit_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for audit_details
-- ----------------------------
DROP TABLE IF EXISTS `audit_details`;
CREATE TABLE `audit_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL COMMENT 'openemr table name',
  `field_name` varchar(100) NOT NULL COMMENT 'openemr table''s field name',
  `field_value` text DEFAULT NULL COMMENT 'openemr table''s field value',
  `audit_master_id` bigint(20) NOT NULL COMMENT 'Id of the audit_master table',
  `entry_identification` varchar(255) NOT NULL DEFAULT '1' COMMENT 'Used when multiple entry occurs from the same table.1 means no multiple entry',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for audit_master
-- ----------------------------
DROP TABLE IF EXISTS `audit_master`;
CREATE TABLE `audit_master` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'The Id of the user who approves or denies',
  `approval_status` tinyint(4) NOT NULL COMMENT '1-Pending,2-Approved,3-Denied,4-Appointment directly updated to calendar table,5-Cancelled appointment',
  `comments` text DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_time` datetime NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1-new patient,2-existing patient,3-change is only in the document,4-Patient upload,5-random key,10-Appointment',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for automatic_notification
-- ----------------------------
DROP TABLE IF EXISTS `automatic_notification`;
CREATE TABLE `automatic_notification` (
  `notification_id` int(5) NOT NULL AUTO_INCREMENT,
  `sms_gateway_type` varchar(255) NOT NULL,
  `next_app_date` date NOT NULL,
  `next_app_time` varchar(10) NOT NULL,
  `provider_name` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `email_sender` varchar(100) NOT NULL,
  `email_subject` varchar(100) NOT NULL,
  `type` enum('SMS','Email') NOT NULL DEFAULT 'SMS',
  `notification_sent_date` datetime NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for background_services
-- ----------------------------
DROP TABLE IF EXISTS `background_services`;
CREATE TABLE `background_services` (
  `name` varchar(31) NOT NULL,
  `title` varchar(127) NOT NULL COMMENT 'name for reports',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `running` tinyint(1) NOT NULL DEFAULT -1 COMMENT 'True indicates managed service is busy. Skip this interval',
  `next_run` timestamp NOT NULL DEFAULT current_timestamp(),
  `execute_interval` int(11) NOT NULL DEFAULT 0 COMMENT 'minimum number of minutes between function calls,0=manual mode',
  `function` varchar(127) NOT NULL COMMENT 'name of background service function',
  `require_once` varchar(255) DEFAULT NULL COMMENT 'include file (if necessary)',
  `sort_order` int(11) NOT NULL DEFAULT 100 COMMENT 'lower numbers will be run first',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for batchcom
-- ----------------------------
DROP TABLE IF EXISTS `batchcom`;
CREATE TABLE `batchcom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) NOT NULL DEFAULT 0,
  `sent_by` bigint(20) NOT NULL DEFAULT 0,
  `msg_type` varchar(60) DEFAULT NULL,
  `msg_subject` varchar(255) DEFAULT NULL,
  `msg_text` mediumtext DEFAULT NULL,
  `msg_date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for billing
-- ----------------------------
DROP TABLE IF EXISTS `billing`;
CREATE TABLE `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `code_type` varchar(15) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(1) DEFAULT NULL,
  `encounter` int(11) DEFAULT NULL,
  `code_text` longtext DEFAULT NULL,
  `billed` tinyint(1) DEFAULT NULL,
  `activity` tinyint(1) DEFAULT NULL,
  `payer_id` int(11) DEFAULT NULL,
  `bill_process` tinyint(2) NOT NULL DEFAULT 0,
  `bill_date` datetime DEFAULT NULL,
  `process_date` datetime DEFAULT NULL,
  `process_file` varchar(255) DEFAULT NULL,
  `modifier` varchar(12) DEFAULT NULL,
  `units` int(11) DEFAULT NULL,
  `fee` decimal(12,2) DEFAULT NULL,
  `justify` varchar(255) DEFAULT NULL,
  `target` varchar(30) DEFAULT NULL,
  `x12_partner_id` int(11) DEFAULT NULL,
  `ndc_info` varchar(255) DEFAULT NULL,
  `notecodes` varchar(25) NOT NULL DEFAULT '',
  `external_id` varchar(20) DEFAULT NULL,
  `pricelevel` varchar(31) DEFAULT '',
  `revenue_code` varchar(6) NOT NULL DEFAULT '' COMMENT 'Item revenue code',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for calendar_external
-- ----------------------------
DROP TABLE IF EXISTS `calendar_external`;
CREATE TABLE `calendar_external` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `description` varchar(45) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rght` int(11) NOT NULL DEFAULT 0,
  `aco_spec` varchar(63) NOT NULL DEFAULT 'patients|docs',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `lft` (`lft`,`rght`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for categories_seq
-- ----------------------------
DROP TABLE IF EXISTS `categories_seq`;
CREATE TABLE `categories_seq` (
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for categories_to_documents
-- ----------------------------
DROP TABLE IF EXISTS `categories_to_documents`;
CREATE TABLE `categories_to_documents` (
  `category_id` int(11) NOT NULL DEFAULT 0,
  `document_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`category_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ccda
-- ----------------------------
DROP TABLE IF EXISTS `ccda`;
CREATE TABLE `ccda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `encounter` bigint(20) DEFAULT NULL,
  `ccda_data` mediumtext DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` varchar(50) DEFAULT NULL,
  `couch_docid` varchar(100) DEFAULT NULL,
  `couch_revid` varchar(100) DEFAULT NULL,
  `view` tinyint(4) NOT NULL DEFAULT 0,
  `transfer` tinyint(4) NOT NULL DEFAULT 0,
  `emr_transfer` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_key` (`pid`,`encounter`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ccda_components
-- ----------------------------
DROP TABLE IF EXISTS `ccda_components`;
CREATE TABLE `ccda_components` (
  `ccda_components_id` int(11) NOT NULL AUTO_INCREMENT,
  `ccda_components_field` varchar(100) DEFAULT NULL,
  `ccda_components_name` varchar(100) DEFAULT NULL,
  `ccda_type` int(11) NOT NULL COMMENT '0=>sections,1=>components',
  PRIMARY KEY (`ccda_components_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ccda_field_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ccda_field_mapping`;
CREATE TABLE `ccda_field_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) DEFAULT NULL,
  `ccda_field` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ccda_sections
-- ----------------------------
DROP TABLE IF EXISTS `ccda_sections`;
CREATE TABLE `ccda_sections` (
  `ccda_sections_id` int(11) NOT NULL AUTO_INCREMENT,
  `ccda_components_id` int(11) DEFAULT NULL,
  `ccda_sections_field` varchar(100) DEFAULT NULL,
  `ccda_sections_name` varchar(100) DEFAULT NULL,
  `ccda_sections_req_mapping` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ccda_sections_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for ccda_table_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ccda_table_mapping`;
CREATE TABLE `ccda_table_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ccda_component` varchar(100) DEFAULT NULL,
  `ccda_component_section` varchar(100) DEFAULT NULL,
  `form_dir` varchar(100) DEFAULT NULL,
  `form_type` smallint(6) DEFAULT NULL,
  `form_table` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for chart_tracker
-- ----------------------------
DROP TABLE IF EXISTS `chart_tracker`;
CREATE TABLE `chart_tracker` (
  `ct_pid` int(11) NOT NULL,
  `ct_when` datetime NOT NULL,
  `ct_userid` bigint(20) NOT NULL DEFAULT 0,
  `ct_location` varchar(31) NOT NULL DEFAULT '',
  PRIMARY KEY (`ct_pid`,`ct_when`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for claims
-- ----------------------------
DROP TABLE IF EXISTS `claims`;
CREATE TABLE `claims` (
  `patient_id` bigint(20) NOT NULL,
  `encounter_id` int(11) NOT NULL,
  `version` int(10) unsigned NOT NULL COMMENT 'Claim version, incremented in code',
  `payer_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `payer_type` tinyint(4) NOT NULL DEFAULT 0,
  `bill_process` tinyint(2) NOT NULL DEFAULT 0,
  `bill_time` datetime DEFAULT NULL,
  `process_time` datetime DEFAULT NULL,
  `process_file` varchar(255) DEFAULT NULL,
  `target` varchar(30) DEFAULT NULL,
  `x12_partner_id` int(11) NOT NULL DEFAULT 0,
  `submitted_claim` text DEFAULT NULL COMMENT 'This claims form claim data',
  PRIMARY KEY (`patient_id`,`encounter_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for clinical_plans
-- ----------------------------
DROP TABLE IF EXISTS `clinical_plans`;
CREATE TABLE `clinical_plans` (
  `id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Unique and maps to list_options list clinical_plans',
  `pid` bigint(20) NOT NULL DEFAULT 0 COMMENT '0 is default for all patients, while > 0 is id from patient_data table',
  `normal_flag` tinyint(1) DEFAULT NULL COMMENT 'Normal Activation Flag',
  `cqm_flag` tinyint(1) DEFAULT NULL COMMENT 'Clinical Quality Measure flag (unable to customize per patient)',
  `cqm_2011_flag` tinyint(1) DEFAULT NULL COMMENT '2011 Clinical Quality Measure flag (unable to customize per patient)',
  `cqm_2014_flag` tinyint(1) DEFAULT NULL COMMENT '2014 Clinical Quality Measure flag (unable to customize per patient)',
  `cqm_measure_group` varchar(10) NOT NULL DEFAULT '' COMMENT 'Clinical Quality Measure Group Identifier',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for clinical_plans_rules
-- ----------------------------
DROP TABLE IF EXISTS `clinical_plans_rules`;
CREATE TABLE `clinical_plans_rules` (
  `plan_id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Unique and maps to list_options list clinical_plans',
  `rule_id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Unique and maps to list_options list clinical_rules',
  PRIMARY KEY (`plan_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for clinical_rules
-- ----------------------------
DROP TABLE IF EXISTS `clinical_rules`;
CREATE TABLE `clinical_rules` (
  `id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Unique and maps to list_options list clinical_rules',
  `pid` bigint(20) NOT NULL DEFAULT 0 COMMENT '0 is default for all patients, while > 0 is id from patient_data table',
  `active_alert_flag` tinyint(1) DEFAULT NULL COMMENT 'Active Alert Widget Module flag - note not yet utilized',
  `passive_alert_flag` tinyint(1) DEFAULT NULL COMMENT 'Passive Alert Widget Module flag',
  `cqm_flag` tinyint(1) DEFAULT NULL COMMENT 'Clinical Quality Measure flag (unable to customize per patient)',
  `cqm_2011_flag` tinyint(1) DEFAULT NULL COMMENT '2011 Clinical Quality Measure flag (unable to customize per patient)',
  `cqm_2014_flag` tinyint(1) DEFAULT NULL COMMENT '2014 Clinical Quality Measure flag (unable to customize per patient)',
  `cqm_nqf_code` varchar(10) NOT NULL DEFAULT '' COMMENT 'Clinical Quality Measure NQF identifier',
  `cqm_pqri_code` varchar(10) NOT NULL DEFAULT '' COMMENT 'Clinical Quality Measure PQRI identifier',
  `amc_flag` tinyint(1) DEFAULT NULL COMMENT 'Automated Measure Calculation flag (unable to customize per patient)',
  `amc_2011_flag` tinyint(1) DEFAULT NULL COMMENT '2011 Automated Measure Calculation flag for (unable to customize per patient)',
  `amc_2014_flag` tinyint(1) DEFAULT NULL COMMENT '2014 Automated Measure Calculation flag for (unable to customize per patient)',
  `amc_code` varchar(10) NOT NULL DEFAULT '' COMMENT 'Automated Measure Calculation indentifier (MU rule)',
  `amc_code_2014` varchar(30) NOT NULL DEFAULT '' COMMENT 'Automated Measure Calculation 2014 indentifier (MU rule)',
  `amc_2014_stage1_flag` tinyint(1) DEFAULT NULL COMMENT '2014 Stage 1 - Automated Measure Calculation flag for (unable to customize per patient)',
  `amc_2014_stage2_flag` tinyint(1) DEFAULT NULL COMMENT '2014 Stage 2 - Automated Measure Calculation flag for (unable to customize per patient)',
  `patient_reminder_flag` tinyint(1) DEFAULT NULL COMMENT 'Clinical Reminder Module flag',
  `developer` varchar(255) NOT NULL DEFAULT '' COMMENT 'Clinical Rule Developer',
  `funding_source` varchar(255) NOT NULL DEFAULT '' COMMENT 'Clinical Rule Funding Source',
  `release_version` varchar(255) NOT NULL DEFAULT '' COMMENT 'Clinical Rule Release Version',
  `web_reference` varchar(255) NOT NULL DEFAULT '' COMMENT 'Clinical Rule Web Reference',
  `access_control` varchar(255) NOT NULL DEFAULT 'patients:med' COMMENT 'ACO link for access control',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for clinical_rules_log
-- ----------------------------
DROP TABLE IF EXISTS `clinical_rules_log`;
CREATE TABLE `clinical_rules_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `uid` bigint(20) NOT NULL DEFAULT 0,
  `category` varchar(255) NOT NULL DEFAULT '' COMMENT 'An example category is clinical_reminder_widget',
  `value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for codes
-- ----------------------------
DROP TABLE IF EXISTS `codes`;
CREATE TABLE `codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_text` varchar(255) NOT NULL DEFAULT '',
  `code_text_short` varchar(24) NOT NULL DEFAULT '',
  `code` varchar(25) NOT NULL DEFAULT '',
  `code_type` smallint(6) DEFAULT NULL,
  `modifier` varchar(12) NOT NULL DEFAULT '',
  `units` int(11) DEFAULT NULL,
  `fee` decimal(12,2) DEFAULT NULL,
  `superbill` varchar(31) NOT NULL DEFAULT '',
  `related_code` varchar(255) NOT NULL DEFAULT '',
  `taxrates` varchar(255) NOT NULL DEFAULT '',
  `cyp_factor` float NOT NULL DEFAULT 0 COMMENT 'quantity representing a years supply',
  `active` tinyint(1) DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `reportable` tinyint(1) DEFAULT 0 COMMENT '0 = non-reportable, 1 = reportable',
  `financial_reporting` tinyint(1) DEFAULT 0 COMMENT '0 = negative, 1 = considered important code in financial reporting',
  `revenue_code` varchar(6) NOT NULL DEFAULT '' COMMENT 'Item revenue code',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `code_type` (`code_type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for code_types
-- ----------------------------
DROP TABLE IF EXISTS `code_types`;
CREATE TABLE `code_types` (
  `ct_key` varchar(15) NOT NULL COMMENT 'short alphanumeric name',
  `ct_id` int(11) NOT NULL COMMENT 'numeric identifier',
  `ct_seq` int(11) NOT NULL DEFAULT 0 COMMENT 'sort order',
  `ct_mod` int(11) NOT NULL DEFAULT 0 COMMENT 'length of modifier field',
  `ct_just` varchar(15) NOT NULL DEFAULT '' COMMENT 'ct_key of justify type, if any',
  `ct_mask` varchar(9) NOT NULL DEFAULT '' COMMENT 'formatting mask for code values',
  `ct_fee` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if fees are used',
  `ct_rel` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if can relate to other code types',
  `ct_nofs` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if to be hidden in the fee sheet',
  `ct_diag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if this is a diagnosis type',
  `ct_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 if this is active',
  `ct_label` varchar(31) NOT NULL DEFAULT '' COMMENT 'label of this code type',
  `ct_external` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 if stored codes in codes tables, 1 or greater if codes stored in external tables',
  `ct_claim` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if this is used in claims',
  `ct_proc` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if this is a procedure type',
  `ct_term` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if this is a clinical term',
  `ct_problem` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if this code type is used as a medical problem',
  `ct_drug` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 if this code type is used as a medication',
  PRIMARY KEY (`ct_key`),
  UNIQUE KEY `ct_id` (`ct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rght` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `lft` (`lft`,`rght`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for config_seq
-- ----------------------------
DROP TABLE IF EXISTS `config_seq`;
CREATE TABLE `config_seq` (
  `id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for customlists
-- ----------------------------
DROP TABLE IF EXISTS `customlists`;
CREATE TABLE `customlists` (
  `cl_list_slno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cl_list_id` int(10) unsigned NOT NULL COMMENT 'ID OF THE lIST FOR NEW TAKE SELECT MAX(cl_list_id)+1',
  `cl_list_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID OF THE lIST FOR NEW TAKE SELECT MAX(cl_list_item_id)+1',
  `cl_list_type` int(10) unsigned NOT NULL COMMENT '0=>List Name 1=>list items 2=>Context 3=>Template 4=>Sentence 5=> SavedTemplate 6=>CustomButton',
  `cl_list_item_short` varchar(10) DEFAULT NULL,
  `cl_list_item_long` text DEFAULT NULL,
  `cl_list_item_level` int(11) DEFAULT NULL COMMENT 'Flow level for List Designation',
  `cl_order` int(11) DEFAULT NULL,
  `cl_deleted` tinyint(1) DEFAULT 0,
  `cl_creator` int(11) DEFAULT NULL,
  PRIMARY KEY (`cl_list_slno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for dated_reminders
-- ----------------------------
DROP TABLE IF EXISTS `dated_reminders`;
CREATE TABLE `dated_reminders` (
  `dr_id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_from_ID` int(11) NOT NULL,
  `dr_message_text` varchar(160) NOT NULL,
  `dr_message_sent_date` datetime NOT NULL,
  `dr_message_due_date` date NOT NULL,
  `pid` bigint(20) NOT NULL,
  `message_priority` tinyint(1) NOT NULL,
  `message_processed` tinyint(1) NOT NULL DEFAULT 0,
  `processed_date` timestamp NULL DEFAULT NULL,
  `dr_processed_by` int(11) NOT NULL,
  PRIMARY KEY (`dr_id`),
  KEY `dr_from_ID` (`dr_from_ID`,`dr_message_due_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for dated_reminders_link
-- ----------------------------
DROP TABLE IF EXISTS `dated_reminders_link`;
CREATE TABLE `dated_reminders_link` (
  `dr_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `dr_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  PRIMARY KEY (`dr_link_id`),
  KEY `to_id` (`to_id`),
  KEY `dr_id` (`dr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for direct_message_log
-- ----------------------------
DROP TABLE IF EXISTS `direct_message_log`;
CREATE TABLE `direct_message_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `msg_type` char(1) NOT NULL COMMENT 'S=sent,R=received',
  `msg_id` varchar(127) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `create_ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` char(1) NOT NULL COMMENT 'Q=queued,D=dispatched,R=received,F=failed',
  `status_info` varchar(511) DEFAULT NULL,
  `status_ts` timestamp NULL DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `msg_id` (`msg_id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` enum('file_url','blob','web_url') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb_url` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `revision` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foreign_id` bigint(20) DEFAULT NULL,
  `docdate` date DEFAULT NULL,
  `hash` varchar(40) DEFAULT NULL COMMENT '40-character SHA-1 hash of document',
  `list_id` bigint(20) NOT NULL DEFAULT 0,
  `couch_docid` varchar(100) DEFAULT NULL,
  `couch_revid` varchar(100) DEFAULT NULL,
  `storagemethod` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0->Harddisk,1->CouchDB',
  `path_depth` tinyint(4) DEFAULT 1 COMMENT 'Depth of path to use in url to find document. Not applicable for CouchDB.',
  `imported` tinyint(4) DEFAULT 0 COMMENT 'Parsing status for CCR/CCD/CCDA importing',
  `encounter_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Encounter id if tagged',
  `encounter_check` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'If encounter is created while tagging',
  `audit_master_approval_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'approval_status from audit_master table',
  `audit_master_id` int(11) DEFAULT NULL,
  `documentationOf` varchar(255) DEFAULT NULL,
  `encrypted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0->No,1->Yes',
  PRIMARY KEY (`id`),
  KEY `revision` (`revision`),
  KEY `foreign_id` (`foreign_id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for documents_legal_categories
-- ----------------------------
DROP TABLE IF EXISTS `documents_legal_categories`;
CREATE TABLE `documents_legal_categories` (
  `dlc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dlc_category_type` int(10) unsigned NOT NULL COMMENT '1 category 2 subcategory',
  `dlc_category_name` varchar(45) NOT NULL,
  `dlc_category_parent` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`dlc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for documents_legal_detail
-- ----------------------------
DROP TABLE IF EXISTS `documents_legal_detail`;
CREATE TABLE `documents_legal_detail` (
  `dld_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dld_pid` int(10) unsigned DEFAULT NULL,
  `dld_facility` int(10) unsigned DEFAULT NULL,
  `dld_provider` int(10) unsigned DEFAULT NULL,
  `dld_encounter` int(10) unsigned DEFAULT NULL,
  `dld_master_docid` int(10) unsigned NOT NULL,
  `dld_signed` smallint(5) unsigned NOT NULL COMMENT '0-Not Signed or Cannot Sign(Layout),1-Signed,2-Ready to sign,3-Denied(Pat Regi),4-Patient Upload,10-Save(Layout)',
  `dld_signed_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dld_filepath` varchar(75) DEFAULT NULL,
  `dld_filename` varchar(45) NOT NULL,
  `dld_signing_person` varchar(50) NOT NULL,
  `dld_sign_level` int(11) NOT NULL COMMENT 'Sign flow level',
  `dld_content` varchar(50) NOT NULL COMMENT 'Layout sign position',
  `dld_file_for_pdf_generation` blob NOT NULL COMMENT 'The filled details in the fdf file is stored here.Patient Registration Screen',
  `dld_denial_reason` longtext DEFAULT NULL,
  `dld_moved` tinyint(4) NOT NULL DEFAULT 0,
  `dld_patient_comments` text DEFAULT NULL COMMENT 'Patient comments stored here',
  PRIMARY KEY (`dld_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for documents_legal_master
-- ----------------------------
DROP TABLE IF EXISTS `documents_legal_master`;
CREATE TABLE `documents_legal_master` (
  `dlm_category` int(10) unsigned DEFAULT NULL,
  `dlm_subcategory` int(10) unsigned DEFAULT NULL,
  `dlm_document_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dlm_document_name` varchar(75) NOT NULL,
  `dlm_filepath` varchar(75) NOT NULL,
  `dlm_facility` int(10) unsigned DEFAULT NULL,
  `dlm_provider` int(10) unsigned DEFAULT NULL,
  `dlm_sign_height` double NOT NULL,
  `dlm_sign_width` double NOT NULL,
  `dlm_filename` varchar(45) NOT NULL,
  `dlm_effective_date` datetime NOT NULL,
  `dlm_version` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `dlm_savedsign` varchar(255) DEFAULT NULL COMMENT '0-Yes 1-No',
  `dlm_review` varchar(255) DEFAULT NULL COMMENT '0-Yes 1-No',
  `dlm_upload_type` tinyint(4) DEFAULT 0 COMMENT '0-Provider Uploaded,1-Patient Uploaded',
  PRIMARY KEY (`dlm_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='List of Master Docs to be signed';

-- ----------------------------
-- Table structure for drugs
-- ----------------------------
DROP TABLE IF EXISTS `drugs`;
CREATE TABLE `drugs` (
  `drug_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `ndc_number` varchar(20) NOT NULL DEFAULT '',
  `on_order` int(11) NOT NULL DEFAULT 0,
  `reorder_point` float NOT NULL DEFAULT 0,
  `max_level` float NOT NULL DEFAULT 0,
  `last_notify` date NOT NULL DEFAULT '0000-00-00',
  `reactions` text DEFAULT NULL,
  `form` int(3) NOT NULL DEFAULT 0,
  `size` varchar(25) NOT NULL DEFAULT '',
  `unit` int(11) NOT NULL DEFAULT 0,
  `route` int(11) NOT NULL DEFAULT 0,
  `substitute` int(11) NOT NULL DEFAULT 0,
  `related_code` varchar(255) NOT NULL DEFAULT '' COMMENT 'may reference a related codes.code',
  `cyp_factor` float NOT NULL DEFAULT 0 COMMENT 'quantity representing a years supply',
  `active` tinyint(1) DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `allow_combining` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = allow filling an order from multiple lots',
  `allow_multiple` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = allow multiple lots at one warehouse',
  `drug_code` varchar(25) DEFAULT NULL,
  `consumable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = will not show on the fee sheet',
  `dispensable` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = pharmacy elsewhere, 1 = dispensed here',
  PRIMARY KEY (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for drug_inventory
-- ----------------------------
DROP TABLE IF EXISTS `drug_inventory`;
CREATE TABLE `drug_inventory` (
  `inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` int(11) NOT NULL,
  `lot_number` varchar(20) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `on_hand` int(11) NOT NULL DEFAULT 0,
  `warehouse_id` varchar(31) NOT NULL DEFAULT '',
  `vendor_id` bigint(20) NOT NULL DEFAULT 0,
  `last_notify` date NOT NULL DEFAULT '0000-00-00',
  `destroy_date` date DEFAULT NULL,
  `destroy_method` varchar(255) DEFAULT NULL,
  `destroy_witness` varchar(255) DEFAULT NULL,
  `destroy_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for drug_sales
-- ----------------------------
DROP TABLE IF EXISTS `drug_sales`;
CREATE TABLE `drug_sales` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `drug_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL DEFAULT 0,
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `encounter` int(11) NOT NULL DEFAULT 0,
  `user` varchar(255) DEFAULT NULL,
  `sale_date` date NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `fee` decimal(12,2) NOT NULL DEFAULT 0.00,
  `billed` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'indicates if the sale is posted to accounting',
  `xfer_inventory_id` int(11) NOT NULL DEFAULT 0,
  `distributor_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references users.id',
  `notes` varchar(255) NOT NULL DEFAULT '',
  `bill_date` datetime DEFAULT NULL,
  `pricelevel` varchar(31) DEFAULT '',
  `selector` varchar(255) DEFAULT '' COMMENT 'references drug_templates.selector',
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for drug_templates
-- ----------------------------
DROP TABLE IF EXISTS `drug_templates`;
CREATE TABLE `drug_templates` (
  `drug_id` int(11) NOT NULL,
  `selector` varchar(255) NOT NULL DEFAULT '',
  `dosage` varchar(10) DEFAULT NULL,
  `period` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `refills` int(11) NOT NULL DEFAULT 0,
  `taxrates` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`drug_id`,`selector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for eligibility_response
-- ----------------------------
DROP TABLE IF EXISTS `eligibility_response`;
CREATE TABLE `eligibility_response` (
  `response_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `response_description` varchar(255) DEFAULT NULL,
  `response_status` enum('A','D') NOT NULL DEFAULT 'A',
  `response_vendor_id` bigint(20) DEFAULT NULL,
  `response_create_date` date DEFAULT NULL,
  `response_modify_date` date DEFAULT NULL,
  PRIMARY KEY (`response_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for eligibility_verification
-- ----------------------------
DROP TABLE IF EXISTS `eligibility_verification`;
CREATE TABLE `eligibility_verification` (
  `verification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `response_id` bigint(20) DEFAULT NULL,
  `insurance_id` bigint(20) DEFAULT NULL,
  `eligibility_check_date` datetime DEFAULT NULL,
  `copay` int(11) DEFAULT NULL,
  `deductible` int(11) DEFAULT NULL,
  `deductiblemet` enum('Y','N') DEFAULT 'Y',
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`verification_id`),
  KEY `insurance_id` (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for employer_data
-- ----------------------------
DROP TABLE IF EXISTS `employer_data`;
CREATE TABLE `employer_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for enc_category_map
-- ----------------------------
DROP TABLE IF EXISTS `enc_category_map`;
CREATE TABLE `enc_category_map` (
  `rule_enc_id` varchar(31) NOT NULL DEFAULT '' COMMENT 'encounter id from rule_enc_types list in list_options',
  `main_cat_id` int(11) NOT NULL DEFAULT 0 COMMENT 'category id from event category in openemr_postcalendar_categories',
  KEY `rule_enc_id` (`rule_enc_id`,`main_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for erx_drug_paid
-- ----------------------------
DROP TABLE IF EXISTS `erx_drug_paid`;
CREATE TABLE `erx_drug_paid` (
  `drugid` int(11) NOT NULL AUTO_INCREMENT,
  `drug_label_name` varchar(45) NOT NULL,
  `ahfs_descr` varchar(45) NOT NULL,
  `ndc` bigint(12) NOT NULL,
  `price_per_unit` decimal(5,2) NOT NULL,
  `avg_price` decimal(6,2) NOT NULL,
  `avg_price_paid` int(6) NOT NULL,
  `avg_savings` decimal(6,2) NOT NULL,
  `avg_percent` decimal(6,2) NOT NULL,
  PRIMARY KEY (`drugid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for erx_narcotics
-- ----------------------------
DROP TABLE IF EXISTS `erx_narcotics`;
CREATE TABLE `erx_narcotics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drug` varchar(255) NOT NULL,
  `dea_number` varchar(5) NOT NULL,
  `csa_sch` varchar(2) NOT NULL,
  `narc` varchar(2) NOT NULL,
  `other_names` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for erx_rx_log
-- ----------------------------
DROP TABLE IF EXISTS `erx_rx_log`;
CREATE TABLE `erx_rx_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `prescription_id` int(6) NOT NULL,
  `date` varchar(25) NOT NULL,
  `time` varchar(15) NOT NULL,
  `code` int(6) NOT NULL,
  `status` text DEFAULT NULL,
  `message_id` varchar(100) DEFAULT NULL,
  `read` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for erx_ttl_touch
-- ----------------------------
DROP TABLE IF EXISTS `erx_ttl_touch`;
CREATE TABLE `erx_ttl_touch` (
  `patient_id` bigint(20) unsigned NOT NULL COMMENT 'Patient record Id',
  `process` enum('allergies','medications') NOT NULL COMMENT 'NewCrop eRx SOAP process',
  `updated` datetime NOT NULL COMMENT 'Date and time of last process update for patient',
  PRIMARY KEY (`patient_id`,`process`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Store records last update per patient data process';

-- ----------------------------
-- Table structure for esign_signatures
-- ----------------------------
DROP TABLE IF EXISTS `esign_signatures`;
CREATE TABLE `esign_signatures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL COMMENT 'Table row ID for signature',
  `table` varchar(255) NOT NULL COMMENT 'table name for the signature',
  `uid` int(11) NOT NULL COMMENT 'user id for the signing user',
  `datetime` datetime NOT NULL COMMENT 'datetime of the signature action',
  `is_lock` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sig, lock or amendment',
  `amendment` text DEFAULT NULL COMMENT 'amendment text, if any',
  `hash` varchar(255) NOT NULL COMMENT 'hash of signed data',
  `signature_hash` varchar(255) NOT NULL COMMENT 'hash of signature itself',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `table` (`table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for extended_log
-- ----------------------------
DROP TABLE IF EXISTS `extended_log`;
CREATE TABLE `extended_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for external_encounters
-- ----------------------------
DROP TABLE IF EXISTS `external_encounters`;
CREATE TABLE `external_encounters` (
  `ee_id` int(11) NOT NULL AUTO_INCREMENT,
  `ee_date` date DEFAULT NULL,
  `ee_pid` int(11) DEFAULT NULL,
  `ee_provider_id` varchar(255) DEFAULT NULL,
  `ee_facility_id` varchar(255) DEFAULT NULL,
  `ee_encounter_diagnosis` varchar(255) DEFAULT NULL,
  `ee_external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for external_procedures
-- ----------------------------
DROP TABLE IF EXISTS `external_procedures`;
CREATE TABLE `external_procedures` (
  `ep_id` int(11) NOT NULL AUTO_INCREMENT,
  `ep_date` date DEFAULT NULL,
  `ep_code_type` varchar(20) DEFAULT NULL,
  `ep_code` varchar(9) DEFAULT NULL,
  `ep_pid` int(11) DEFAULT NULL,
  `ep_encounter` int(11) DEFAULT NULL,
  `ep_code_text` longtext DEFAULT NULL,
  `ep_facility_id` varchar(255) DEFAULT NULL,
  `ep_external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for facility
-- ----------------------------
DROP TABLE IF EXISTS `facility`;
CREATE TABLE `facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postal_code` varchar(11) DEFAULT NULL,
  `country_code` varchar(30) NOT NULL DEFAULT '',
  `federal_ein` varchar(15) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `service_location` tinyint(1) NOT NULL DEFAULT 1,
  `billing_location` tinyint(1) NOT NULL DEFAULT 0,
  `accepts_assignment` tinyint(1) NOT NULL DEFAULT 0,
  `pos_code` tinyint(4) DEFAULT NULL,
  `x12_sender_id` varchar(25) DEFAULT NULL,
  `attn` varchar(65) DEFAULT NULL,
  `domain_identifier` varchar(60) DEFAULT NULL,
  `facility_npi` varchar(15) DEFAULT NULL,
  `facility_taxonomy` varchar(15) DEFAULT NULL,
  `tax_id_type` varchar(31) NOT NULL DEFAULT '',
  `color` varchar(7) NOT NULL DEFAULT '',
  `primary_business_entity` int(10) NOT NULL DEFAULT 0 COMMENT '0-Not Set as business entity 1-Set as business entity',
  `facility_code` varchar(31) DEFAULT NULL,
  `extra_validation` tinyint(1) NOT NULL DEFAULT 1,
  `mail_street` varchar(30) DEFAULT NULL,
  `mail_street2` varchar(30) DEFAULT NULL,
  `mail_city` varchar(50) DEFAULT NULL,
  `mail_state` varchar(3) DEFAULT NULL,
  `mail_zip` varchar(10) DEFAULT NULL,
  `oid` varchar(255) NOT NULL DEFAULT '' COMMENT 'HIEs CCDA and FHIR an OID is required/wanted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for facility_user_ids
-- ----------------------------
DROP TABLE IF EXISTS `facility_user_ids`;
CREATE TABLE `facility_user_ids` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `facility_id` bigint(20) DEFAULT NULL,
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `field_value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`facility_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for fee_sheet_options
-- ----------------------------
DROP TABLE IF EXISTS `fee_sheet_options`;
CREATE TABLE `fee_sheet_options` (
  `fs_category` varchar(63) DEFAULT NULL,
  `fs_option` varchar(63) DEFAULT NULL,
  `fs_codes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for forms
-- ----------------------------
DROP TABLE IF EXISTS `forms`;
CREATE TABLE `forms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `encounter` bigint(20) DEFAULT NULL,
  `form_name` longtext DEFAULT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'flag indicates form has been deleted',
  `formdir` longtext DEFAULT NULL,
  `therapy_group_id` int(11) DEFAULT NULL,
  `issue_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references lists.id to identify a case',
  `provider_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references users.id to identify a provider',
  PRIMARY KEY (`id`),
  KEY `pid_encounter` (`pid`,`encounter`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_care_plan
-- ----------------------------
DROP TABLE IF EXISTS `form_care_plan`;
CREATE TABLE `form_care_plan` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `codetext` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `external_id` varchar(30) DEFAULT NULL,
  `care_plan_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_clinical_instructions
-- ----------------------------
DROP TABLE IF EXISTS `form_clinical_instructions`;
CREATE TABLE `form_clinical_instructions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `encounter` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `instruction` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activity` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_dictation
-- ----------------------------
DROP TABLE IF EXISTS `form_dictation`;
CREATE TABLE `form_dictation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `dictation` longtext DEFAULT NULL,
  `additional_notes` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_encounter
-- ----------------------------
DROP TABLE IF EXISTS `form_encounter`;
CREATE TABLE `form_encounter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `facility` longtext DEFAULT NULL,
  `facility_id` int(11) NOT NULL DEFAULT 0,
  `pid` bigint(20) DEFAULT NULL,
  `encounter` bigint(20) DEFAULT NULL,
  `onset_date` datetime DEFAULT NULL,
  `sensitivity` varchar(30) DEFAULT NULL,
  `billing_note` text DEFAULT NULL,
  `pc_catid` int(11) NOT NULL DEFAULT 5 COMMENT 'event category from openemr_postcalendar_categories',
  `last_level_billed` int(11) NOT NULL DEFAULT 0 COMMENT '0=none, 1=ins1, 2=ins2, etc',
  `last_level_closed` int(11) NOT NULL DEFAULT 0 COMMENT '0=none, 1=ins1, 2=ins2, etc',
  `last_stmt_date` date DEFAULT NULL,
  `stmt_count` int(11) NOT NULL DEFAULT 0,
  `provider_id` int(11) DEFAULT 0 COMMENT 'default and main provider for this visit',
  `supervisor_id` int(11) DEFAULT 0 COMMENT 'supervising provider, if any, for this visit',
  `invoice_refno` varchar(31) NOT NULL DEFAULT '',
  `referral_source` varchar(31) NOT NULL DEFAULT '',
  `billing_facility` int(11) NOT NULL DEFAULT 0,
  `external_id` varchar(20) DEFAULT NULL,
  `pos_code` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid_encounter` (`pid`,`encounter`),
  KEY `encounter_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_eye_mag_dispense
-- ----------------------------
DROP TABLE IF EXISTS `form_eye_mag_dispense`;
CREATE TABLE `form_eye_mag_dispense` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `encounter` bigint(20) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `REFDATE` datetime DEFAULT NULL,
  `REFTYPE` varchar(10) DEFAULT NULL,
  `RXTYPE` varchar(20) DEFAULT NULL,
  `ODSPH` varchar(10) DEFAULT NULL,
  `ODCYL` varchar(10) DEFAULT NULL,
  `ODAXIS` varchar(10) DEFAULT NULL,
  `OSSPH` varchar(10) DEFAULT NULL,
  `OSCYL` varchar(10) DEFAULT NULL,
  `OSAXIS` varchar(10) DEFAULT NULL,
  `ODMIDADD` varchar(10) DEFAULT NULL,
  `OSMIDADD` varchar(10) DEFAULT NULL,
  `ODADD` varchar(10) DEFAULT NULL,
  `OSADD` varchar(10) DEFAULT NULL,
  `ODHPD` varchar(20) DEFAULT NULL,
  `ODHBASE` varchar(20) DEFAULT NULL,
  `ODVPD` varchar(20) DEFAULT NULL,
  `ODVBASE` varchar(20) DEFAULT NULL,
  `ODSLABOFF` varchar(20) DEFAULT NULL,
  `ODVERTEXDIST` varchar(20) DEFAULT NULL,
  `OSHPD` varchar(20) DEFAULT NULL,
  `OSHBASE` varchar(20) DEFAULT NULL,
  `OSVPD` varchar(20) DEFAULT NULL,
  `OSVBASE` varchar(20) DEFAULT NULL,
  `OSSLABOFF` varchar(20) DEFAULT NULL,
  `OSVERTEXDIST` varchar(20) DEFAULT NULL,
  `ODMPDD` varchar(20) DEFAULT NULL,
  `ODMPDN` varchar(20) DEFAULT NULL,
  `OSMPDD` varchar(20) DEFAULT NULL,
  `OSMPDN` varchar(20) DEFAULT NULL,
  `BPDD` varchar(20) DEFAULT NULL,
  `BPDN` varchar(20) DEFAULT NULL,
  `LENS_MATERIAL` varchar(20) DEFAULT NULL,
  `LENS_TREATMENTS` varchar(100) DEFAULT NULL,
  `CTLMANUFACTUREROD` varchar(25) DEFAULT NULL,
  `CTLMANUFACTUREROS` varchar(25) DEFAULT NULL,
  `CTLSUPPLIEROD` varchar(25) DEFAULT NULL,
  `CTLSUPPLIEROS` varchar(25) DEFAULT NULL,
  `CTLBRANDOD` varchar(50) DEFAULT NULL,
  `CTLBRANDOS` varchar(50) DEFAULT NULL,
  `CTLODQUANTITY` varchar(255) DEFAULT NULL,
  `CTLOSQUANTITY` varchar(255) DEFAULT NULL,
  `ODDIAM` varchar(50) DEFAULT NULL,
  `ODBC` varchar(50) DEFAULT NULL,
  `OSDIAM` varchar(50) DEFAULT NULL,
  `OSBC` varchar(50) DEFAULT NULL,
  `RXCOMMENTS` text DEFAULT NULL,
  `COMMENTS` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid` (`pid`,`encounter`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_eye_mag_prefs
-- ----------------------------
DROP TABLE IF EXISTS `form_eye_mag_prefs`;
CREATE TABLE `form_eye_mag_prefs` (
  `PEZONE` varchar(25) DEFAULT NULL,
  `LOCATION` varchar(25) DEFAULT NULL,
  `LOCATION_text` varchar(25) NOT NULL,
  `id` bigint(20) DEFAULT NULL,
  `selection` varchar(255) DEFAULT NULL,
  `ZONE_ORDER` int(11) DEFAULT NULL,
  `GOVALUE` varchar(10) DEFAULT '0',
  `ordering` tinyint(4) DEFAULT NULL,
  `FILL_ACTION` varchar(10) NOT NULL DEFAULT 'ADD',
  `GORIGHT` varchar(50) NOT NULL,
  `GOLEFT` varchar(50) NOT NULL,
  `UNSPEC` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`id`,`PEZONE`,`LOCATION`,`selection`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_functional_cognitive_status
-- ----------------------------
DROP TABLE IF EXISTS `form_functional_cognitive_status`;
CREATE TABLE `form_functional_cognitive_status` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `codetext` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `external_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_misc_billing_options
-- ----------------------------
DROP TABLE IF EXISTS `form_misc_billing_options`;
CREATE TABLE `form_misc_billing_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `employment_related` tinyint(1) DEFAULT NULL,
  `auto_accident` tinyint(1) DEFAULT NULL,
  `accident_state` varchar(2) DEFAULT NULL,
  `other_accident` tinyint(1) DEFAULT NULL,
  `medicaid_referral_code` varchar(2) DEFAULT NULL,
  `epsdt_flag` tinyint(1) DEFAULT NULL,
  `provider_qualifier_code` varchar(2) DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `outside_lab` tinyint(1) DEFAULT NULL,
  `lab_amount` decimal(5,2) DEFAULT NULL,
  `is_unable_to_work` tinyint(1) DEFAULT NULL,
  `onset_date` date DEFAULT NULL,
  `date_initial_treatment` date DEFAULT NULL,
  `off_work_from` date DEFAULT NULL,
  `off_work_to` date DEFAULT NULL,
  `is_hospitalized` tinyint(1) DEFAULT NULL,
  `hospitalization_date_from` date DEFAULT NULL,
  `hospitalization_date_to` date DEFAULT NULL,
  `medicaid_resubmission_code` varchar(10) DEFAULT NULL,
  `medicaid_original_reference` varchar(15) DEFAULT NULL,
  `prior_auth_number` varchar(20) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `replacement_claim` tinyint(1) DEFAULT 0,
  `icn_resubmission_number` varchar(35) DEFAULT NULL,
  `box_14_date_qual` char(3) DEFAULT NULL,
  `box_15_date_qual` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_observation
-- ----------------------------
DROP TABLE IF EXISTS `form_observation`;
CREATE TABLE `form_observation` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `observation` varchar(255) DEFAULT NULL,
  `ob_value` varchar(255) DEFAULT NULL,
  `ob_unit` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code_type` varchar(255) DEFAULT NULL,
  `table_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_reviewofs
-- ----------------------------
DROP TABLE IF EXISTS `form_reviewofs`;
CREATE TABLE `form_reviewofs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `fever` varchar(5) DEFAULT NULL,
  `chills` varchar(5) DEFAULT NULL,
  `night_sweats` varchar(5) DEFAULT NULL,
  `weight_loss` varchar(5) DEFAULT NULL,
  `poor_appetite` varchar(5) DEFAULT NULL,
  `insomnia` varchar(5) DEFAULT NULL,
  `fatigued` varchar(5) DEFAULT NULL,
  `depressed` varchar(5) DEFAULT NULL,
  `hyperactive` varchar(5) DEFAULT NULL,
  `exposure_to_foreign_countries` varchar(5) DEFAULT NULL,
  `cataracts` varchar(5) DEFAULT NULL,
  `cataract_surgery` varchar(5) DEFAULT NULL,
  `glaucoma` varchar(5) DEFAULT NULL,
  `double_vision` varchar(5) DEFAULT NULL,
  `blurred_vision` varchar(5) DEFAULT NULL,
  `poor_hearing` varchar(5) DEFAULT NULL,
  `headaches` varchar(5) DEFAULT NULL,
  `ringing_in_ears` varchar(5) DEFAULT NULL,
  `bloody_nose` varchar(5) DEFAULT NULL,
  `sinusitis` varchar(5) DEFAULT NULL,
  `sinus_surgery` varchar(5) DEFAULT NULL,
  `dry_mouth` varchar(5) DEFAULT NULL,
  `strep_throat` varchar(5) DEFAULT NULL,
  `tonsillectomy` varchar(5) DEFAULT NULL,
  `swollen_lymph_nodes` varchar(5) DEFAULT NULL,
  `throat_cancer` varchar(5) DEFAULT NULL,
  `throat_cancer_surgery` varchar(5) DEFAULT NULL,
  `heart_attack` varchar(5) DEFAULT NULL,
  `irregular_heart_beat` varchar(5) DEFAULT NULL,
  `chest_pains` varchar(5) DEFAULT NULL,
  `shortness_of_breath` varchar(5) DEFAULT NULL,
  `high_blood_pressure` varchar(5) DEFAULT NULL,
  `heart_failure` varchar(5) DEFAULT NULL,
  `poor_circulation` varchar(5) DEFAULT NULL,
  `vascular_surgery` varchar(5) DEFAULT NULL,
  `cardiac_catheterization` varchar(5) DEFAULT NULL,
  `coronary_artery_bypass` varchar(5) DEFAULT NULL,
  `heart_transplant` varchar(5) DEFAULT NULL,
  `stress_test` varchar(5) DEFAULT NULL,
  `emphysema` varchar(5) DEFAULT NULL,
  `chronic_bronchitis` varchar(5) DEFAULT NULL,
  `interstitial_lung_disease` varchar(5) DEFAULT NULL,
  `shortness_of_breath_2` varchar(5) DEFAULT NULL,
  `lung_cancer` varchar(5) DEFAULT NULL,
  `lung_cancer_surgery` varchar(5) DEFAULT NULL,
  `pheumothorax` varchar(5) DEFAULT NULL,
  `stomach_pains` varchar(5) DEFAULT NULL,
  `peptic_ulcer_disease` varchar(5) DEFAULT NULL,
  `gastritis` varchar(5) DEFAULT NULL,
  `endoscopy` varchar(5) DEFAULT NULL,
  `polyps` varchar(5) DEFAULT NULL,
  `colonoscopy` varchar(5) DEFAULT NULL,
  `colon_cancer` varchar(5) DEFAULT NULL,
  `colon_cancer_surgery` varchar(5) DEFAULT NULL,
  `ulcerative_colitis` varchar(5) DEFAULT NULL,
  `crohns_disease` varchar(5) DEFAULT NULL,
  `appendectomy` varchar(5) DEFAULT NULL,
  `divirticulitis` varchar(5) DEFAULT NULL,
  `divirticulitis_surgery` varchar(5) DEFAULT NULL,
  `gall_stones` varchar(5) DEFAULT NULL,
  `cholecystectomy` varchar(5) DEFAULT NULL,
  `hepatitis` varchar(5) DEFAULT NULL,
  `cirrhosis_of_the_liver` varchar(5) DEFAULT NULL,
  `splenectomy` varchar(5) DEFAULT NULL,
  `kidney_failure` varchar(5) DEFAULT NULL,
  `kidney_stones` varchar(5) DEFAULT NULL,
  `kidney_cancer` varchar(5) DEFAULT NULL,
  `kidney_infections` varchar(5) DEFAULT NULL,
  `bladder_infections` varchar(5) DEFAULT NULL,
  `bladder_cancer` varchar(5) DEFAULT NULL,
  `prostate_problems` varchar(5) DEFAULT NULL,
  `prostate_cancer` varchar(5) DEFAULT NULL,
  `kidney_transplant` varchar(5) DEFAULT NULL,
  `sexually_transmitted_disease` varchar(5) DEFAULT NULL,
  `burning_with_urination` varchar(5) DEFAULT NULL,
  `discharge_from_urethra` varchar(5) DEFAULT NULL,
  `rashes` varchar(5) DEFAULT NULL,
  `infections` varchar(5) DEFAULT NULL,
  `ulcerations` varchar(5) DEFAULT NULL,
  `pemphigus` varchar(5) DEFAULT NULL,
  `herpes` varchar(5) DEFAULT NULL,
  `osetoarthritis` varchar(5) DEFAULT NULL,
  `rheumotoid_arthritis` varchar(5) DEFAULT NULL,
  `lupus` varchar(5) DEFAULT NULL,
  `ankylosing_sondlilitis` varchar(5) DEFAULT NULL,
  `swollen_joints` varchar(5) DEFAULT NULL,
  `stiff_joints` varchar(5) DEFAULT NULL,
  `broken_bones` varchar(5) DEFAULT NULL,
  `neck_problems` varchar(5) DEFAULT NULL,
  `back_problems` varchar(5) DEFAULT NULL,
  `back_surgery` varchar(5) DEFAULT NULL,
  `scoliosis` varchar(5) DEFAULT NULL,
  `herniated_disc` varchar(5) DEFAULT NULL,
  `shoulder_problems` varchar(5) DEFAULT NULL,
  `elbow_problems` varchar(5) DEFAULT NULL,
  `wrist_problems` varchar(5) DEFAULT NULL,
  `hand_problems` varchar(5) DEFAULT NULL,
  `hip_problems` varchar(5) DEFAULT NULL,
  `knee_problems` varchar(5) DEFAULT NULL,
  `ankle_problems` varchar(5) DEFAULT NULL,
  `foot_problems` varchar(5) DEFAULT NULL,
  `insulin_dependent_diabetes` varchar(5) DEFAULT NULL,
  `noninsulin_dependent_diabetes` varchar(5) DEFAULT NULL,
  `hypothyroidism` varchar(5) DEFAULT NULL,
  `hyperthyroidism` varchar(5) DEFAULT NULL,
  `cushing_syndrom` varchar(5) DEFAULT NULL,
  `addison_syndrom` varchar(5) DEFAULT NULL,
  `additional_notes` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_ros
-- ----------------------------
DROP TABLE IF EXISTS `form_ros`;
CREATE TABLE `form_ros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `activity` int(11) NOT NULL DEFAULT 1,
  `date` datetime DEFAULT NULL,
  `weight_change` varchar(3) DEFAULT NULL,
  `weakness` varchar(3) DEFAULT NULL,
  `fatigue` varchar(3) DEFAULT NULL,
  `anorexia` varchar(3) DEFAULT NULL,
  `fever` varchar(3) DEFAULT NULL,
  `chills` varchar(3) DEFAULT NULL,
  `night_sweats` varchar(3) DEFAULT NULL,
  `insomnia` varchar(3) DEFAULT NULL,
  `irritability` varchar(3) DEFAULT NULL,
  `heat_or_cold` varchar(3) DEFAULT NULL,
  `intolerance` varchar(3) DEFAULT NULL,
  `change_in_vision` varchar(3) DEFAULT NULL,
  `glaucoma_history` varchar(3) DEFAULT NULL,
  `eye_pain` varchar(3) DEFAULT NULL,
  `irritation` varchar(3) DEFAULT NULL,
  `redness` varchar(3) DEFAULT NULL,
  `excessive_tearing` varchar(3) DEFAULT NULL,
  `double_vision` varchar(3) DEFAULT NULL,
  `blind_spots` varchar(3) DEFAULT NULL,
  `photophobia` varchar(3) DEFAULT NULL,
  `hearing_loss` varchar(3) DEFAULT NULL,
  `discharge` varchar(3) DEFAULT NULL,
  `pain` varchar(3) DEFAULT NULL,
  `vertigo` varchar(3) DEFAULT NULL,
  `tinnitus` varchar(3) DEFAULT NULL,
  `frequent_colds` varchar(3) DEFAULT NULL,
  `sore_throat` varchar(3) DEFAULT NULL,
  `sinus_problems` varchar(3) DEFAULT NULL,
  `post_nasal_drip` varchar(3) DEFAULT NULL,
  `nosebleed` varchar(3) DEFAULT NULL,
  `snoring` varchar(3) DEFAULT NULL,
  `apnea` varchar(3) DEFAULT NULL,
  `breast_mass` varchar(3) DEFAULT NULL,
  `breast_discharge` varchar(3) DEFAULT NULL,
  `biopsy` varchar(3) DEFAULT NULL,
  `abnormal_mammogram` varchar(3) DEFAULT NULL,
  `cough` varchar(3) DEFAULT NULL,
  `sputum` varchar(3) DEFAULT NULL,
  `shortness_of_breath` varchar(3) DEFAULT NULL,
  `wheezing` varchar(3) DEFAULT NULL,
  `hemoptsyis` varchar(3) DEFAULT NULL,
  `asthma` varchar(3) DEFAULT NULL,
  `copd` varchar(3) DEFAULT NULL,
  `chest_pain` varchar(3) DEFAULT NULL,
  `palpitation` varchar(3) DEFAULT NULL,
  `syncope` varchar(3) DEFAULT NULL,
  `pnd` varchar(3) DEFAULT NULL,
  `doe` varchar(3) DEFAULT NULL,
  `orthopnea` varchar(3) DEFAULT NULL,
  `peripheal` varchar(3) DEFAULT NULL,
  `edema` varchar(3) DEFAULT NULL,
  `legpain_cramping` varchar(3) DEFAULT NULL,
  `history_murmur` varchar(3) DEFAULT NULL,
  `arrythmia` varchar(3) DEFAULT NULL,
  `heart_problem` varchar(3) DEFAULT NULL,
  `dysphagia` varchar(3) DEFAULT NULL,
  `heartburn` varchar(3) DEFAULT NULL,
  `bloating` varchar(3) DEFAULT NULL,
  `belching` varchar(3) DEFAULT NULL,
  `flatulence` varchar(3) DEFAULT NULL,
  `nausea` varchar(3) DEFAULT NULL,
  `vomiting` varchar(3) DEFAULT NULL,
  `hematemesis` varchar(3) DEFAULT NULL,
  `gastro_pain` varchar(3) DEFAULT NULL,
  `food_intolerance` varchar(3) DEFAULT NULL,
  `hepatitis` varchar(3) DEFAULT NULL,
  `jaundice` varchar(3) DEFAULT NULL,
  `hematochezia` varchar(3) DEFAULT NULL,
  `changed_bowel` varchar(3) DEFAULT NULL,
  `diarrhea` varchar(3) DEFAULT NULL,
  `constipation` varchar(3) DEFAULT NULL,
  `polyuria` varchar(3) DEFAULT NULL,
  `polydypsia` varchar(3) DEFAULT NULL,
  `dysuria` varchar(3) DEFAULT NULL,
  `hematuria` varchar(3) DEFAULT NULL,
  `frequency` varchar(3) DEFAULT NULL,
  `urgency` varchar(3) DEFAULT NULL,
  `incontinence` varchar(3) DEFAULT NULL,
  `renal_stones` varchar(3) DEFAULT NULL,
  `utis` varchar(3) DEFAULT NULL,
  `hesitancy` varchar(3) DEFAULT NULL,
  `dribbling` varchar(3) DEFAULT NULL,
  `stream` varchar(3) DEFAULT NULL,
  `nocturia` varchar(3) DEFAULT NULL,
  `erections` varchar(3) DEFAULT NULL,
  `ejaculations` varchar(3) DEFAULT NULL,
  `g` varchar(3) DEFAULT NULL,
  `p` varchar(3) DEFAULT NULL,
  `ap` varchar(3) DEFAULT NULL,
  `lc` varchar(3) DEFAULT NULL,
  `mearche` varchar(3) DEFAULT NULL,
  `menopause` varchar(3) DEFAULT NULL,
  `lmp` varchar(3) DEFAULT NULL,
  `f_frequency` varchar(3) DEFAULT NULL,
  `f_flow` varchar(3) DEFAULT NULL,
  `f_symptoms` varchar(3) DEFAULT NULL,
  `abnormal_hair_growth` varchar(3) DEFAULT NULL,
  `f_hirsutism` varchar(3) DEFAULT NULL,
  `joint_pain` varchar(3) DEFAULT NULL,
  `swelling` varchar(3) DEFAULT NULL,
  `m_redness` varchar(3) DEFAULT NULL,
  `m_warm` varchar(3) DEFAULT NULL,
  `m_stiffness` varchar(3) DEFAULT NULL,
  `muscle` varchar(3) DEFAULT NULL,
  `m_aches` varchar(3) DEFAULT NULL,
  `fms` varchar(3) DEFAULT NULL,
  `arthritis` varchar(3) DEFAULT NULL,
  `loc` varchar(3) DEFAULT NULL,
  `seizures` varchar(3) DEFAULT NULL,
  `stroke` varchar(3) DEFAULT NULL,
  `tia` varchar(3) DEFAULT NULL,
  `n_numbness` varchar(3) DEFAULT NULL,
  `n_weakness` varchar(3) DEFAULT NULL,
  `paralysis` varchar(3) DEFAULT NULL,
  `intellectual_decline` varchar(3) DEFAULT NULL,
  `memory_problems` varchar(3) DEFAULT NULL,
  `dementia` varchar(3) DEFAULT NULL,
  `n_headache` varchar(3) DEFAULT NULL,
  `s_cancer` varchar(3) DEFAULT NULL,
  `psoriasis` varchar(3) DEFAULT NULL,
  `s_acne` varchar(3) DEFAULT NULL,
  `s_other` varchar(3) DEFAULT NULL,
  `s_disease` varchar(3) DEFAULT NULL,
  `p_diagnosis` varchar(3) DEFAULT NULL,
  `p_medication` varchar(3) DEFAULT NULL,
  `depression` varchar(3) DEFAULT NULL,
  `anxiety` varchar(3) DEFAULT NULL,
  `social_difficulties` varchar(3) DEFAULT NULL,
  `thyroid_problems` varchar(3) DEFAULT NULL,
  `diabetes` varchar(3) DEFAULT NULL,
  `abnormal_blood` varchar(3) DEFAULT NULL,
  `anemia` varchar(3) DEFAULT NULL,
  `fh_blood_problems` varchar(3) DEFAULT NULL,
  `bleeding_problems` varchar(3) DEFAULT NULL,
  `allergies` varchar(3) DEFAULT NULL,
  `frequent_illness` varchar(3) DEFAULT NULL,
  `hiv` varchar(3) DEFAULT NULL,
  `hai_status` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_soap
-- ----------------------------
DROP TABLE IF EXISTS `form_soap`;
CREATE TABLE `form_soap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) DEFAULT 0,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT 0,
  `activity` tinyint(4) DEFAULT 0,
  `subjective` text DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `assessment` text DEFAULT NULL,
  `plan` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for form_vitals
-- ----------------------------
DROP TABLE IF EXISTS `form_vitals`;
CREATE TABLE `form_vitals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) DEFAULT 0,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT 0,
  `activity` tinyint(4) DEFAULT 0,
  `bps` varchar(40) DEFAULT NULL,
  `bpd` varchar(40) DEFAULT NULL,
  `weight` float(5,2) DEFAULT 0.00,
  `height` float(5,2) DEFAULT 0.00,
  `temperature` float(5,2) DEFAULT 0.00,
  `temp_method` varchar(255) DEFAULT NULL,
  `pulse` float(5,2) DEFAULT 0.00,
  `respiration` float(5,2) DEFAULT 0.00,
  `note` varchar(255) DEFAULT NULL,
  `BMI` float(4,1) DEFAULT 0.0,
  `BMI_status` varchar(255) DEFAULT NULL,
  `waist_circ` float(5,2) DEFAULT 0.00,
  `head_circ` float(4,2) DEFAULT 0.00,
  `oxygen_saturation` float(5,2) DEFAULT 0.00,
  `external_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for geo_country_reference
-- ----------------------------
DROP TABLE IF EXISTS `geo_country_reference`;
CREATE TABLE `geo_country_reference` (
  `countries_id` int(5) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(64) DEFAULT NULL,
  `countries_iso_code_2` char(2) NOT NULL DEFAULT '',
  `countries_iso_code_3` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for geo_zone_reference
-- ----------------------------
DROP TABLE IF EXISTS `geo_zone_reference`;
CREATE TABLE `geo_zone_reference` (
  `zone_id` int(5) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(5) NOT NULL DEFAULT 0,
  `zone_code` varchar(5) DEFAULT NULL,
  `zone_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for globals
-- ----------------------------
DROP TABLE IF EXISTS `globals`;
CREATE TABLE `globals` (
  `gl_name` varchar(63) NOT NULL,
  `gl_index` int(11) NOT NULL DEFAULT 0,
  `gl_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gl_name`,`gl_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for gprelations
-- ----------------------------
DROP TABLE IF EXISTS `gprelations`;
CREATE TABLE `gprelations` (
  `type1` int(2) NOT NULL,
  `id1` bigint(20) NOT NULL,
  `type2` int(2) NOT NULL,
  `id2` bigint(20) NOT NULL,
  PRIMARY KEY (`type1`,`id1`,`type2`,`id2`),
  KEY `key2` (`type2`,`id2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='general purpose relations';

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT NULL,
  `user` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for history_data
-- ----------------------------
DROP TABLE IF EXISTS `history_data`;
CREATE TABLE `history_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coffee` longtext DEFAULT NULL,
  `tobacco` longtext DEFAULT NULL,
  `alcohol` longtext DEFAULT NULL,
  `sleep_patterns` longtext DEFAULT NULL,
  `exercise_patterns` longtext DEFAULT NULL,
  `seatbelt_use` longtext DEFAULT NULL,
  `counseling` longtext DEFAULT NULL,
  `hazardous_activities` longtext DEFAULT NULL,
  `recreational_drugs` longtext DEFAULT NULL,
  `last_breast_exam` varchar(255) DEFAULT NULL,
  `last_mammogram` varchar(255) DEFAULT NULL,
  `last_gynocological_exam` varchar(255) DEFAULT NULL,
  `last_rectal_exam` varchar(255) DEFAULT NULL,
  `last_prostate_exam` varchar(255) DEFAULT NULL,
  `last_physical_exam` varchar(255) DEFAULT NULL,
  `last_sigmoidoscopy_colonoscopy` varchar(255) DEFAULT NULL,
  `last_ecg` varchar(255) DEFAULT NULL,
  `last_cardiac_echo` varchar(255) DEFAULT NULL,
  `last_retinal` varchar(255) DEFAULT NULL,
  `last_fluvax` varchar(255) DEFAULT NULL,
  `last_pneuvax` varchar(255) DEFAULT NULL,
  `last_ldl` varchar(255) DEFAULT NULL,
  `last_hemoglobin` varchar(255) DEFAULT NULL,
  `last_psa` varchar(255) DEFAULT NULL,
  `last_exam_results` varchar(255) DEFAULT NULL,
  `history_mother` longtext DEFAULT NULL,
  `dc_mother` text DEFAULT NULL,
  `history_father` longtext DEFAULT NULL,
  `dc_father` text DEFAULT NULL,
  `history_siblings` longtext DEFAULT NULL,
  `dc_siblings` text DEFAULT NULL,
  `history_offspring` longtext DEFAULT NULL,
  `dc_offspring` text DEFAULT NULL,
  `history_spouse` longtext DEFAULT NULL,
  `dc_spouse` text DEFAULT NULL,
  `relatives_cancer` longtext DEFAULT NULL,
  `relatives_tuberculosis` longtext DEFAULT NULL,
  `relatives_diabetes` longtext DEFAULT NULL,
  `relatives_high_blood_pressure` longtext DEFAULT NULL,
  `relatives_heart_problems` longtext DEFAULT NULL,
  `relatives_stroke` longtext DEFAULT NULL,
  `relatives_epilepsy` longtext DEFAULT NULL,
  `relatives_mental_illness` longtext DEFAULT NULL,
  `relatives_suicide` longtext DEFAULT NULL,
  `cataract_surgery` datetime DEFAULT NULL,
  `tonsillectomy` datetime DEFAULT NULL,
  `cholecystestomy` datetime DEFAULT NULL,
  `heart_surgery` datetime DEFAULT NULL,
  `hysterectomy` datetime DEFAULT NULL,
  `hernia_repair` datetime DEFAULT NULL,
  `hip_replacement` datetime DEFAULT NULL,
  `knee_replacement` datetime DEFAULT NULL,
  `appendectomy` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `name_1` varchar(255) DEFAULT NULL,
  `value_1` varchar(255) DEFAULT NULL,
  `name_2` varchar(255) DEFAULT NULL,
  `value_2` varchar(255) DEFAULT NULL,
  `additional_history` text DEFAULT NULL,
  `exams` text DEFAULT NULL,
  `usertext11` text DEFAULT NULL,
  `usertext12` varchar(255) NOT NULL DEFAULT '',
  `usertext13` varchar(255) NOT NULL DEFAULT '',
  `usertext14` varchar(255) NOT NULL DEFAULT '',
  `usertext15` varchar(255) NOT NULL DEFAULT '',
  `usertext16` varchar(255) NOT NULL DEFAULT '',
  `usertext17` varchar(255) NOT NULL DEFAULT '',
  `usertext18` varchar(255) NOT NULL DEFAULT '',
  `usertext19` varchar(255) NOT NULL DEFAULT '',
  `usertext20` varchar(255) NOT NULL DEFAULT '',
  `usertext21` varchar(255) NOT NULL DEFAULT '',
  `usertext22` varchar(255) NOT NULL DEFAULT '',
  `usertext23` varchar(255) NOT NULL DEFAULT '',
  `usertext24` varchar(255) NOT NULL DEFAULT '',
  `usertext25` varchar(255) NOT NULL DEFAULT '',
  `usertext26` varchar(255) NOT NULL DEFAULT '',
  `usertext27` varchar(255) NOT NULL DEFAULT '',
  `usertext28` varchar(255) NOT NULL DEFAULT '',
  `usertext29` varchar(255) NOT NULL DEFAULT '',
  `usertext30` varchar(255) NOT NULL DEFAULT '',
  `userdate11` date DEFAULT NULL,
  `userdate12` date DEFAULT NULL,
  `userdate13` date DEFAULT NULL,
  `userdate14` date DEFAULT NULL,
  `userdate15` date DEFAULT NULL,
  `userarea11` text DEFAULT NULL,
  `userarea12` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_dx_order_code
-- ----------------------------
DROP TABLE IF EXISTS `icd10_dx_order_code`;
CREATE TABLE `icd10_dx_order_code` (
  `dx_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dx_code` varchar(7) DEFAULT NULL,
  `formatted_dx_code` varchar(10) DEFAULT NULL,
  `valid_for_coding` char(1) DEFAULT NULL,
  `short_desc` varchar(60) DEFAULT NULL,
  `long_desc` varchar(300) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `dx_id` (`dx_id`),
  KEY `formatted_dx_code` (`formatted_dx_code`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_gem_dx_10_9
-- ----------------------------
DROP TABLE IF EXISTS `icd10_gem_dx_10_9`;
CREATE TABLE `icd10_gem_dx_10_9` (
  `map_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dx_icd10_source` varchar(7) DEFAULT NULL,
  `dx_icd9_target` varchar(5) DEFAULT NULL,
  `flags` varchar(5) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `map_id` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_gem_dx_9_10
-- ----------------------------
DROP TABLE IF EXISTS `icd10_gem_dx_9_10`;
CREATE TABLE `icd10_gem_dx_9_10` (
  `map_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dx_icd9_source` varchar(5) DEFAULT NULL,
  `dx_icd10_target` varchar(7) DEFAULT NULL,
  `flags` varchar(5) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `map_id` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_gem_pcs_10_9
-- ----------------------------
DROP TABLE IF EXISTS `icd10_gem_pcs_10_9`;
CREATE TABLE `icd10_gem_pcs_10_9` (
  `map_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pcs_icd10_source` varchar(7) DEFAULT NULL,
  `pcs_icd9_target` varchar(5) DEFAULT NULL,
  `flags` varchar(5) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `map_id` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_gem_pcs_9_10
-- ----------------------------
DROP TABLE IF EXISTS `icd10_gem_pcs_9_10`;
CREATE TABLE `icd10_gem_pcs_9_10` (
  `map_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pcs_icd9_source` varchar(5) DEFAULT NULL,
  `pcs_icd10_target` varchar(7) DEFAULT NULL,
  `flags` varchar(5) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `map_id` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_pcs_order_code
-- ----------------------------
DROP TABLE IF EXISTS `icd10_pcs_order_code`;
CREATE TABLE `icd10_pcs_order_code` (
  `pcs_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pcs_code` varchar(7) DEFAULT NULL,
  `valid_for_coding` char(1) DEFAULT NULL,
  `short_desc` varchar(60) DEFAULT NULL,
  `long_desc` varchar(300) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `pcs_id` (`pcs_id`),
  KEY `pcs_code` (`pcs_code`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_reimbr_dx_9_10
-- ----------------------------
DROP TABLE IF EXISTS `icd10_reimbr_dx_9_10`;
CREATE TABLE `icd10_reimbr_dx_9_10` (
  `map_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(8) DEFAULT NULL,
  `code_cnt` tinyint(4) DEFAULT NULL,
  `ICD9_01` varchar(5) DEFAULT NULL,
  `ICD9_02` varchar(5) DEFAULT NULL,
  `ICD9_03` varchar(5) DEFAULT NULL,
  `ICD9_04` varchar(5) DEFAULT NULL,
  `ICD9_05` varchar(5) DEFAULT NULL,
  `ICD9_06` varchar(5) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `map_id` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd10_reimbr_pcs_9_10
-- ----------------------------
DROP TABLE IF EXISTS `icd10_reimbr_pcs_9_10`;
CREATE TABLE `icd10_reimbr_pcs_9_10` (
  `map_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(8) DEFAULT NULL,
  `code_cnt` tinyint(4) DEFAULT NULL,
  `ICD9_01` varchar(5) DEFAULT NULL,
  `ICD9_02` varchar(5) DEFAULT NULL,
  `ICD9_03` varchar(5) DEFAULT NULL,
  `ICD9_04` varchar(5) DEFAULT NULL,
  `ICD9_05` varchar(5) DEFAULT NULL,
  `ICD9_06` varchar(5) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `map_id` (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd9_dx_code
-- ----------------------------
DROP TABLE IF EXISTS `icd9_dx_code`;
CREATE TABLE `icd9_dx_code` (
  `dx_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dx_code` varchar(5) DEFAULT NULL,
  `formatted_dx_code` varchar(6) DEFAULT NULL,
  `short_desc` varchar(60) DEFAULT NULL,
  `long_desc` varchar(300) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `dx_id` (`dx_id`),
  KEY `dx_code` (`dx_code`),
  KEY `formatted_dx_code` (`formatted_dx_code`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd9_dx_long_code
-- ----------------------------
DROP TABLE IF EXISTS `icd9_dx_long_code`;
CREATE TABLE `icd9_dx_long_code` (
  `dx_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dx_code` varchar(5) DEFAULT NULL,
  `long_desc` varchar(300) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `dx_id` (`dx_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd9_sg_code
-- ----------------------------
DROP TABLE IF EXISTS `icd9_sg_code`;
CREATE TABLE `icd9_sg_code` (
  `sg_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sg_code` varchar(5) DEFAULT NULL,
  `formatted_sg_code` varchar(6) DEFAULT NULL,
  `short_desc` varchar(60) DEFAULT NULL,
  `long_desc` varchar(300) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `sg_id` (`sg_id`),
  KEY `sg_code` (`sg_code`),
  KEY `formatted_sg_code` (`formatted_sg_code`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for icd9_sg_long_code
-- ----------------------------
DROP TABLE IF EXISTS `icd9_sg_long_code`;
CREATE TABLE `icd9_sg_long_code` (
  `sq_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sg_code` varchar(5) DEFAULT NULL,
  `long_desc` varchar(300) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `revision` int(11) DEFAULT 0,
  UNIQUE KEY `sq_id` (`sq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for immunizations
-- ----------------------------
DROP TABLE IF EXISTS `immunizations`;
CREATE TABLE `immunizations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) DEFAULT NULL,
  `administered_date` datetime DEFAULT NULL,
  `immunization_id` int(11) DEFAULT NULL,
  `cvx_code` varchar(10) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `lot_number` varchar(50) DEFAULT NULL,
  `administered_by_id` bigint(20) DEFAULT NULL,
  `administered_by` varchar(255) DEFAULT NULL COMMENT 'Alternative to administered_by_id',
  `education_date` date DEFAULT NULL,
  `vis_date` date DEFAULT NULL COMMENT 'Date of VIS Statement',
  `note` text DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `amount_administered` float DEFAULT NULL,
  `amount_administered_unit` varchar(50) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `route` varchar(100) DEFAULT NULL,
  `administration_site` varchar(100) DEFAULT NULL,
  `added_erroneously` tinyint(1) NOT NULL DEFAULT 0,
  `external_id` varchar(20) DEFAULT NULL,
  `completion_status` varchar(50) DEFAULT NULL,
  `information_source` varchar(31) DEFAULT NULL,
  `refusal_reason` varchar(31) DEFAULT NULL,
  `ordering_provider` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for immunization_observation
-- ----------------------------
DROP TABLE IF EXISTS `immunization_observation`;
CREATE TABLE `immunization_observation` (
  `imo_id` int(11) NOT NULL AUTO_INCREMENT,
  `imo_im_id` int(11) NOT NULL,
  `imo_pid` int(11) DEFAULT NULL,
  `imo_criteria` varchar(255) DEFAULT NULL,
  `imo_criteria_value` varchar(255) DEFAULT NULL,
  `imo_user` int(11) DEFAULT NULL,
  `imo_code` varchar(255) DEFAULT NULL,
  `imo_codetext` varchar(255) DEFAULT NULL,
  `imo_codetype` varchar(255) DEFAULT NULL,
  `imo_vis_date_published` date DEFAULT NULL,
  `imo_vis_date_presented` date DEFAULT NULL,
  `imo_date_observation` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`imo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for insurance_companies
-- ----------------------------
DROP TABLE IF EXISTS `insurance_companies`;
CREATE TABLE `insurance_companies` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `attn` varchar(255) DEFAULT NULL,
  `cms_id` varchar(15) DEFAULT NULL,
  `ins_type_code` tinyint(2) DEFAULT NULL,
  `x12_receiver_id` varchar(25) DEFAULT NULL,
  `x12_default_partner_id` int(11) DEFAULT NULL,
  `alt_cms_id` varchar(15) NOT NULL DEFAULT '',
  `inactive` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for insurance_data
-- ----------------------------
DROP TABLE IF EXISTS `insurance_data`;
CREATE TABLE `insurance_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` enum('primary','secondary','tertiary') DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `policy_number` varchar(255) DEFAULT NULL,
  `group_number` varchar(255) DEFAULT NULL,
  `subscriber_lname` varchar(255) DEFAULT NULL,
  `subscriber_mname` varchar(255) DEFAULT NULL,
  `subscriber_fname` varchar(255) DEFAULT NULL,
  `subscriber_relationship` varchar(255) DEFAULT NULL,
  `subscriber_ss` varchar(255) DEFAULT NULL,
  `subscriber_DOB` date DEFAULT NULL,
  `subscriber_street` varchar(255) DEFAULT NULL,
  `subscriber_postal_code` varchar(255) DEFAULT NULL,
  `subscriber_city` varchar(255) DEFAULT NULL,
  `subscriber_state` varchar(255) DEFAULT NULL,
  `subscriber_country` varchar(255) DEFAULT NULL,
  `subscriber_phone` varchar(255) DEFAULT NULL,
  `subscriber_employer` varchar(255) DEFAULT NULL,
  `subscriber_employer_street` varchar(255) DEFAULT NULL,
  `subscriber_employer_postal_code` varchar(255) DEFAULT NULL,
  `subscriber_employer_state` varchar(255) DEFAULT NULL,
  `subscriber_employer_country` varchar(255) DEFAULT NULL,
  `subscriber_employer_city` varchar(255) DEFAULT NULL,
  `copay` varchar(255) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `subscriber_sex` varchar(25) DEFAULT NULL,
  `accept_assignment` varchar(5) NOT NULL DEFAULT 'TRUE',
  `policy_type` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid_type_date` (`pid`,`type`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for insurance_numbers
-- ----------------------------
DROP TABLE IF EXISTS `insurance_numbers`;
CREATE TABLE `insurance_numbers` (
  `id` int(11) NOT NULL DEFAULT 0,
  `provider_id` int(11) NOT NULL DEFAULT 0,
  `insurance_company_id` int(11) DEFAULT NULL,
  `provider_number` varchar(20) DEFAULT NULL,
  `rendering_provider_number` varchar(20) DEFAULT NULL,
  `group_number` varchar(20) DEFAULT NULL,
  `provider_number_type` varchar(4) DEFAULT NULL,
  `rendering_provider_number_type` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for issue_encounter
-- ----------------------------
DROP TABLE IF EXISTS `issue_encounter`;
CREATE TABLE `issue_encounter` (
  `pid` bigint(20) NOT NULL,
  `list_id` int(11) NOT NULL,
  `encounter` int(11) NOT NULL,
  `resolved` tinyint(1) NOT NULL,
  PRIMARY KEY (`pid`,`list_id`,`encounter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for issue_types
-- ----------------------------
DROP TABLE IF EXISTS `issue_types`;
CREATE TABLE `issue_types` (
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `category` varchar(75) NOT NULL DEFAULT '',
  `type` varchar(75) NOT NULL DEFAULT '',
  `plural` varchar(75) NOT NULL DEFAULT '',
  `singular` varchar(75) NOT NULL DEFAULT '',
  `abbreviation` varchar(75) NOT NULL DEFAULT '',
  `style` smallint(6) NOT NULL DEFAULT 0,
  `force_show` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `aco_spec` varchar(63) NOT NULL DEFAULT 'patients|med',
  PRIMARY KEY (`category`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for lang_constants
-- ----------------------------
DROP TABLE IF EXISTS `lang_constants`;
CREATE TABLE `lang_constants` (
  `cons_id` int(11) NOT NULL AUTO_INCREMENT,
  `constant_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  UNIQUE KEY `cons_id` (`cons_id`),
  KEY `constant_name` (`constant_name`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for lang_custom
-- ----------------------------
DROP TABLE IF EXISTS `lang_custom`;
CREATE TABLE `lang_custom` (
  `lang_description` varchar(100) NOT NULL DEFAULT '',
  `lang_code` char(2) NOT NULL DEFAULT '',
  `constant_name` mediumtext DEFAULT NULL,
  `definition` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for lang_definitions
-- ----------------------------
DROP TABLE IF EXISTS `lang_definitions`;
CREATE TABLE `lang_definitions` (
  `def_id` int(11) NOT NULL AUTO_INCREMENT,
  `cons_id` int(11) NOT NULL DEFAULT 0,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  `definition` mediumtext DEFAULT NULL,
  UNIQUE KEY `def_id` (`def_id`),
  KEY `cons_id` (`cons_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for lang_languages
-- ----------------------------
DROP TABLE IF EXISTS `lang_languages`;
CREATE TABLE `lang_languages` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` char(2) NOT NULL DEFAULT '',
  `lang_description` varchar(100) DEFAULT NULL,
  `lang_is_rtl` tinyint(4) DEFAULT 0 COMMENT 'Set this to 1 for RTL languages Arabic, Farsi, Hebrew, Urdu etc.',
  UNIQUE KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for layout_group_properties
-- ----------------------------
DROP TABLE IF EXISTS `layout_group_properties`;
CREATE TABLE `layout_group_properties` (
  `grp_form_id` varchar(31) NOT NULL,
  `grp_group_id` varchar(31) NOT NULL DEFAULT '' COMMENT 'empty when representing the whole form',
  `grp_title` varchar(63) NOT NULL DEFAULT '' COMMENT 'descriptive name of the form or group',
  `grp_subtitle` varchar(63) NOT NULL DEFAULT '' COMMENT 'for display under the title',
  `grp_mapping` varchar(31) NOT NULL DEFAULT '' COMMENT 'the form category',
  `grp_seq` int(11) NOT NULL DEFAULT 0 COMMENT 'optional order within mapping',
  `grp_activity` tinyint(1) NOT NULL DEFAULT 1,
  `grp_repeats` int(11) NOT NULL DEFAULT 0,
  `grp_columns` int(11) NOT NULL DEFAULT 0,
  `grp_size` int(11) NOT NULL DEFAULT 0,
  `grp_issue_type` varchar(75) NOT NULL DEFAULT '',
  `grp_aco_spec` varchar(63) NOT NULL DEFAULT '',
  `grp_services` varchar(4095) NOT NULL DEFAULT '',
  `grp_products` varchar(4095) NOT NULL DEFAULT '',
  `grp_diags` varchar(4095) NOT NULL DEFAULT '',
  PRIMARY KEY (`grp_form_id`,`grp_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for layout_options
-- ----------------------------
DROP TABLE IF EXISTS `layout_options`;
CREATE TABLE `layout_options` (
  `form_id` varchar(31) NOT NULL DEFAULT '',
  `field_id` varchar(31) NOT NULL DEFAULT '',
  `group_id` varchar(31) NOT NULL DEFAULT '',
  `title` varchar(63) NOT NULL DEFAULT '',
  `seq` int(11) NOT NULL DEFAULT 0,
  `data_type` tinyint(3) NOT NULL DEFAULT 0,
  `uor` tinyint(1) NOT NULL DEFAULT 1,
  `fld_length` int(11) NOT NULL DEFAULT 15,
  `max_length` int(11) NOT NULL DEFAULT 0,
  `list_id` varchar(100) NOT NULL DEFAULT '',
  `titlecols` tinyint(3) NOT NULL DEFAULT 1,
  `datacols` tinyint(3) NOT NULL DEFAULT 1,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `edit_options` varchar(36) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `fld_rows` int(11) NOT NULL DEFAULT 0,
  `list_backup_id` varchar(100) NOT NULL DEFAULT '',
  `source` char(1) NOT NULL DEFAULT 'F' COMMENT 'F=Form, D=Demographics, H=History, E=Encounter',
  `conditions` text DEFAULT NULL COMMENT 'serialized array of skip conditions',
  `validation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`form_id`,`field_id`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for lbf_data
-- ----------------------------
DROP TABLE IF EXISTS `lbf_data`;
CREATE TABLE `lbf_data` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'references forms.form_id',
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `field_value` longtext DEFAULT NULL,
  PRIMARY KEY (`form_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='contains all data from layout-based forms';

-- ----------------------------
-- Table structure for lbt_data
-- ----------------------------
DROP TABLE IF EXISTS `lbt_data`;
CREATE TABLE `lbt_data` (
  `form_id` bigint(20) NOT NULL COMMENT 'references transactions.id',
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `field_value` text DEFAULT NULL,
  PRIMARY KEY (`form_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='contains all data from layout-based transactions';

-- ----------------------------
-- Table structure for lists
-- ----------------------------
DROP TABLE IF EXISTS `lists`;
CREATE TABLE `lists` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subtype` varchar(31) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `begdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `occurrence` int(11) DEFAULT 0,
  `classification` int(11) DEFAULT 0,
  `referredby` varchar(255) DEFAULT NULL,
  `extrainfo` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `comments` longtext DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `outcome` int(11) NOT NULL DEFAULT 0,
  `destination` varchar(255) DEFAULT NULL,
  `reinjury_id` bigint(20) NOT NULL DEFAULT 0,
  `injury_part` varchar(31) NOT NULL DEFAULT '',
  `injury_type` varchar(31) NOT NULL DEFAULT '',
  `injury_grade` varchar(31) NOT NULL DEFAULT '',
  `reaction` varchar(255) NOT NULL DEFAULT '',
  `external_allergyid` int(11) DEFAULT NULL,
  `erx_source` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-OpenEMR 1-External',
  `erx_uploaded` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-Pending NewCrop upload 1-Uploaded TO NewCrop',
  `modifydate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `severity_al` varchar(50) DEFAULT NULL,
  `external_id` varchar(20) DEFAULT NULL,
  `list_option_id` varchar(100) DEFAULT NULL COMMENT 'Reference to list_options table',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for lists_touch
-- ----------------------------
DROP TABLE IF EXISTS `lists_touch`;
CREATE TABLE `lists_touch` (
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for list_options
-- ----------------------------
DROP TABLE IF EXISTS `list_options`;
CREATE TABLE `list_options` (
  `list_id` varchar(100) NOT NULL DEFAULT '',
  `option_id` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `seq` int(11) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `option_value` float NOT NULL DEFAULT 0,
  `mapping` varchar(31) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `codes` varchar(255) NOT NULL DEFAULT '',
  `toggle_setting_1` tinyint(1) NOT NULL DEFAULT 0,
  `toggle_setting_2` tinyint(1) NOT NULL DEFAULT 0,
  `activity` tinyint(4) NOT NULL DEFAULT 1,
  `subtype` varchar(31) NOT NULL DEFAULT '',
  `edit_options` tinyint(1) NOT NULL DEFAULT 1,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`list_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `comments` longtext DEFAULT NULL,
  `user_notes` longtext DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 1,
  `checksum` longtext DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `log_from` varchar(20) DEFAULT 'open-emr',
  `menu_item_id` int(11) DEFAULT NULL,
  `ccda_doc_id` int(11) DEFAULT NULL COMMENT 'CCDA document id from ccda',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for log_comment_encrypt
-- ----------------------------
DROP TABLE IF EXISTS `log_comment_encrypt`;
CREATE TABLE `log_comment_encrypt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NOT NULL,
  `encrypt` enum('Yes','No') NOT NULL DEFAULT 'No',
  `checksum` longtext DEFAULT NULL,
  `version` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for mycrypt and 1 for openssl',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for misc_address_book
-- ----------------------------
DROP TABLE IF EXISTS `misc_address_book`;
CREATE TABLE `misc_address_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `street` varchar(60) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_name` varchar(64) NOT NULL DEFAULT '0',
  `mod_directory` varchar(64) NOT NULL DEFAULT '',
  `mod_parent` varchar(64) NOT NULL DEFAULT '',
  `mod_type` varchar(64) NOT NULL DEFAULT '',
  `mod_active` int(1) unsigned NOT NULL DEFAULT 0,
  `mod_ui_name` varchar(20) NOT NULL DEFAULT '''',
  `mod_relative_link` varchar(64) NOT NULL DEFAULT '',
  `mod_ui_order` tinyint(3) NOT NULL DEFAULT 0,
  `mod_ui_active` int(1) unsigned NOT NULL DEFAULT 0,
  `mod_description` varchar(255) NOT NULL DEFAULT '',
  `mod_nick_name` varchar(25) NOT NULL DEFAULT '',
  `mod_enc_menu` varchar(10) NOT NULL DEFAULT 'no',
  `permissions_item_table` char(100) DEFAULT NULL,
  `directory` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `sql_run` tinyint(4) DEFAULT 0,
  `type` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`mod_id`,`mod_directory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for modules_hooks_settings
-- ----------------------------
DROP TABLE IF EXISTS `modules_hooks_settings`;
CREATE TABLE `modules_hooks_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_id` int(11) DEFAULT NULL,
  `enabled_hooks` varchar(255) DEFAULT NULL,
  `attached_to` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for modules_settings
-- ----------------------------
DROP TABLE IF EXISTS `modules_settings`;
CREATE TABLE `modules_settings` (
  `mod_id` int(11) DEFAULT NULL,
  `fld_type` smallint(6) DEFAULT NULL COMMENT '1=>ACL,2=>preferences,3=>hooks',
  `obj_name` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for module_acl_group_settings
-- ----------------------------
DROP TABLE IF EXISTS `module_acl_group_settings`;
CREATE TABLE `module_acl_group_settings` (
  `module_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `allowed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`module_id`,`group_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for module_acl_sections
-- ----------------------------
DROP TABLE IF EXISTS `module_acl_sections`;
CREATE TABLE `module_acl_sections` (
  `section_id` int(11) DEFAULT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `parent_section` int(11) DEFAULT NULL,
  `section_identifier` varchar(50) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for module_acl_user_settings
-- ----------------------------
DROP TABLE IF EXISTS `module_acl_user_settings`;
CREATE TABLE `module_acl_user_settings` (
  `module_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `allowed` int(1) DEFAULT NULL,
  PRIMARY KEY (`module_id`,`user_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for module_configuration
-- ----------------------------
DROP TABLE IF EXISTS `module_configuration`;
CREATE TABLE `module_configuration` (
  `module_config_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `field_name` varchar(45) NOT NULL,
  `field_value` varchar(255) NOT NULL,
  PRIMARY KEY (`module_config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL DEFAULT 0,
  `foreign_id` int(11) NOT NULL DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `revision` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `foreign_id` (`owner`),
  KEY `foreign_id_2` (`foreign_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for notification_log
-- ----------------------------
DROP TABLE IF EXISTS `notification_log`;
CREATE TABLE `notification_log` (
  `iLogId` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `pc_eid` int(11) unsigned DEFAULT NULL,
  `sms_gateway_type` varchar(50) NOT NULL,
  `smsgateway_info` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `email_sender` varchar(255) NOT NULL,
  `email_subject` varchar(255) NOT NULL,
  `type` enum('SMS','Email') NOT NULL,
  `patient_info` text DEFAULT NULL,
  `pc_eventDate` date NOT NULL,
  `pc_endDate` date NOT NULL,
  `pc_startTime` time NOT NULL,
  `pc_endTime` time NOT NULL,
  `dSentDateTime` datetime NOT NULL,
  PRIMARY KEY (`iLogId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for notification_settings
-- ----------------------------
DROP TABLE IF EXISTS `notification_settings`;
CREATE TABLE `notification_settings` (
  `SettingsId` int(3) NOT NULL AUTO_INCREMENT,
  `Send_SMS_Before_Hours` int(3) NOT NULL,
  `Send_Email_Before_Hours` int(3) NOT NULL,
  `SMS_gateway_username` varchar(100) NOT NULL,
  `SMS_gateway_password` varchar(100) NOT NULL,
  `SMS_gateway_apikey` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`SettingsId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for onotes
-- ----------------------------
DROP TABLE IF EXISTS `onotes`;
CREATE TABLE `onotes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for onsite_documents
-- ----------------------------
DROP TABLE IF EXISTS `onsite_documents`;
CREATE TABLE `onsite_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned DEFAULT NULL,
  `facility` int(10) unsigned DEFAULT NULL,
  `provider` int(10) unsigned DEFAULT NULL,
  `encounter` int(10) unsigned DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `doc_type` varchar(255) NOT NULL,
  `patient_signed_status` smallint(5) unsigned NOT NULL,
  `patient_signed_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `authorize_signed_time` datetime DEFAULT NULL,
  `accept_signed_status` smallint(5) NOT NULL,
  `authorizing_signator` varchar(50) NOT NULL,
  `review_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `denial_reason` varchar(255) NOT NULL,
  `authorized_signature` text DEFAULT NULL,
  `patient_signature` text DEFAULT NULL,
  `full_document` mediumblob DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for onsite_mail
-- ----------------------------
DROP TABLE IF EXISTS `onsite_mail`;
CREATE TABLE `onsite_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `owner` varchar(128) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `recipient_id` varchar(128) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  `sender_id` varchar(128) DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT 0 COMMENT 'flag indicates note is deleted',
  `delete_date` datetime DEFAULT NULL,
  `mtype` varchar(128) DEFAULT NULL,
  `message_status` varchar(20) NOT NULL DEFAULT 'New',
  `mail_chain` int(11) DEFAULT NULL,
  `reply_mail_chain` int(11) DEFAULT NULL,
  `is_msg_encrypted` tinyint(2) DEFAULT 0 COMMENT 'Whether messsage encrypted 0-Not encrypted, 1-Encrypted',
  PRIMARY KEY (`id`),
  KEY `pid` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for onsite_messages
-- ----------------------------
DROP TABLE IF EXISTS `onsite_messages`;
CREATE TABLE `onsite_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `message` longtext DEFAULT NULL,
  `ip` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  `sender_id` varchar(64) DEFAULT NULL COMMENT 'who sent id',
  `recip_id` varchar(255) NOT NULL COMMENT 'who to id array',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Portal messages';

-- ----------------------------
-- Table structure for onsite_online
-- ----------------------------
DROP TABLE IF EXISTS `onsite_online`;
CREATE TABLE `onsite_online` (
  `hash` varchar(32) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `last_update` datetime NOT NULL,
  `username` varchar(64) NOT NULL,
  `userid` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for onsite_portal_activity
-- ----------------------------
DROP TABLE IF EXISTS `onsite_portal_activity`;
CREATE TABLE `onsite_portal_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `require_audit` tinyint(1) DEFAULT 1,
  `pending_action` varchar(255) DEFAULT NULL,
  `action_taken` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `narrative` longtext DEFAULT NULL,
  `table_action` longtext DEFAULT NULL,
  `table_args` longtext DEFAULT NULL,
  `action_user` int(11) DEFAULT NULL,
  `action_taken_time` datetime DEFAULT NULL,
  `checksum` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for onsite_signatures
-- ----------------------------
DROP TABLE IF EXISTS `onsite_signatures`;
CREATE TABLE `onsite_signatures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(128) NOT NULL DEFAULT 'waiting',
  `type` varchar(128) NOT NULL,
  `created` int(11) NOT NULL,
  `lastmod` datetime NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `encounter` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `activity` tinyint(4) NOT NULL DEFAULT 0,
  `authorized` tinyint(4) DEFAULT NULL,
  `signator` varchar(255) NOT NULL,
  `sig_image` text DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `sig_hash` varchar(128) NOT NULL,
  `ip` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid` (`pid`,`user`),
  KEY `encounter` (`encounter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for openemr_modules
-- ----------------------------
DROP TABLE IF EXISTS `openemr_modules`;
CREATE TABLE `openemr_modules` (
  `pn_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pn_name` varchar(64) DEFAULT NULL,
  `pn_type` int(6) NOT NULL DEFAULT 0,
  `pn_displayname` varchar(64) DEFAULT NULL,
  `pn_description` varchar(255) DEFAULT NULL,
  `pn_regid` int(11) unsigned NOT NULL DEFAULT 0,
  `pn_directory` varchar(64) DEFAULT NULL,
  `pn_version` varchar(10) DEFAULT NULL,
  `pn_admin_capable` tinyint(1) NOT NULL DEFAULT 0,
  `pn_user_capable` tinyint(1) NOT NULL DEFAULT 0,
  `pn_state` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for openemr_module_vars
-- ----------------------------
DROP TABLE IF EXISTS `openemr_module_vars`;
CREATE TABLE `openemr_module_vars` (
  `pn_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pn_modname` varchar(64) DEFAULT NULL,
  `pn_name` varchar(64) DEFAULT NULL,
  `pn_value` longtext DEFAULT NULL,
  PRIMARY KEY (`pn_id`),
  KEY `pn_modname` (`pn_modname`),
  KEY `pn_name` (`pn_name`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for openemr_postcalendar_categories
-- ----------------------------
DROP TABLE IF EXISTS `openemr_postcalendar_categories`;
CREATE TABLE `openemr_postcalendar_categories` (
  `pc_catid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pc_constant_id` varchar(255) DEFAULT NULL,
  `pc_catname` varchar(100) DEFAULT NULL,
  `pc_catcolor` varchar(50) DEFAULT NULL,
  `pc_catdesc` text DEFAULT NULL,
  `pc_recurrtype` int(1) NOT NULL DEFAULT 0,
  `pc_enddate` date DEFAULT NULL,
  `pc_recurrspec` text DEFAULT NULL,
  `pc_recurrfreq` int(3) NOT NULL DEFAULT 0,
  `pc_duration` bigint(20) NOT NULL DEFAULT 0,
  `pc_end_date_flag` tinyint(1) NOT NULL DEFAULT 0,
  `pc_end_date_type` int(2) DEFAULT NULL,
  `pc_end_date_freq` int(11) NOT NULL DEFAULT 0,
  `pc_end_all_day` tinyint(1) NOT NULL DEFAULT 0,
  `pc_dailylimit` int(2) NOT NULL DEFAULT 0,
  `pc_cattype` int(11) NOT NULL COMMENT 'Used in grouping categories',
  `pc_active` tinyint(1) NOT NULL DEFAULT 1,
  `pc_seq` int(11) NOT NULL DEFAULT 0,
  `aco_spec` varchar(63) NOT NULL DEFAULT 'encounters|notes',
  PRIMARY KEY (`pc_catid`),
  UNIQUE KEY `pc_constant_id` (`pc_constant_id`),
  KEY `basic_cat` (`pc_catname`,`pc_catcolor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for openemr_postcalendar_events
-- ----------------------------
DROP TABLE IF EXISTS `openemr_postcalendar_events`;
CREATE TABLE `openemr_postcalendar_events` (
  `pc_eid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pc_catid` int(11) NOT NULL DEFAULT 0,
  `pc_multiple` int(10) unsigned NOT NULL,
  `pc_aid` varchar(30) DEFAULT NULL,
  `pc_pid` varchar(11) DEFAULT NULL,
  `pc_gid` int(11) DEFAULT 0,
  `pc_title` varchar(150) DEFAULT NULL,
  `pc_time` datetime DEFAULT NULL,
  `pc_hometext` text DEFAULT NULL,
  `pc_comments` int(11) DEFAULT 0,
  `pc_counter` mediumint(8) unsigned DEFAULT 0,
  `pc_topic` int(3) NOT NULL DEFAULT 1,
  `pc_informant` varchar(20) DEFAULT NULL,
  `pc_eventDate` date NOT NULL DEFAULT '0000-00-00',
  `pc_endDate` date NOT NULL DEFAULT '0000-00-00',
  `pc_duration` bigint(20) NOT NULL DEFAULT 0,
  `pc_recurrtype` int(1) NOT NULL DEFAULT 0,
  `pc_recurrspec` text DEFAULT NULL,
  `pc_recurrfreq` int(3) NOT NULL DEFAULT 0,
  `pc_startTime` time DEFAULT NULL,
  `pc_endTime` time DEFAULT NULL,
  `pc_alldayevent` int(1) NOT NULL DEFAULT 0,
  `pc_location` text DEFAULT NULL,
  `pc_conttel` varchar(50) DEFAULT NULL,
  `pc_contname` varchar(50) DEFAULT NULL,
  `pc_contemail` varchar(255) DEFAULT NULL,
  `pc_website` varchar(255) DEFAULT NULL,
  `pc_fee` varchar(50) DEFAULT NULL,
  `pc_eventstatus` int(11) NOT NULL DEFAULT 0,
  `pc_sharing` int(11) NOT NULL DEFAULT 0,
  `pc_language` varchar(30) DEFAULT NULL,
  `pc_apptstatus` varchar(15) NOT NULL DEFAULT '-',
  `pc_prefcatid` int(11) NOT NULL DEFAULT 0,
  `pc_facility` int(11) NOT NULL DEFAULT 0 COMMENT 'facility id for this event',
  `pc_sendalertsms` varchar(3) NOT NULL DEFAULT 'NO',
  `pc_sendalertemail` varchar(3) NOT NULL DEFAULT 'NO',
  `pc_billing_location` smallint(6) NOT NULL DEFAULT 0,
  `pc_room` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pc_eid`),
  KEY `basic_event` (`pc_catid`,`pc_aid`,`pc_eventDate`,`pc_endDate`,`pc_eventstatus`,`pc_sharing`,`pc_topic`),
  KEY `pc_eventDate` (`pc_eventDate`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for openemr_postcalendar_limits
-- ----------------------------
DROP TABLE IF EXISTS `openemr_postcalendar_limits`;
CREATE TABLE `openemr_postcalendar_limits` (
  `pc_limitid` int(11) NOT NULL AUTO_INCREMENT,
  `pc_catid` int(11) NOT NULL DEFAULT 0,
  `pc_starttime` time NOT NULL DEFAULT '00:00:00',
  `pc_endtime` time NOT NULL DEFAULT '00:00:00',
  `pc_limit` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`pc_limitid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for openemr_postcalendar_topics
-- ----------------------------
DROP TABLE IF EXISTS `openemr_postcalendar_topics`;
CREATE TABLE `openemr_postcalendar_topics` (
  `pc_catid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pc_catname` varchar(100) DEFAULT NULL,
  `pc_catcolor` varchar(50) DEFAULT NULL,
  `pc_catdesc` text DEFAULT NULL,
  PRIMARY KEY (`pc_catid`),
  KEY `basic_cat` (`pc_catname`,`pc_catcolor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for openemr_session_info
-- ----------------------------
DROP TABLE IF EXISTS `openemr_session_info`;
CREATE TABLE `openemr_session_info` (
  `pn_sessid` varchar(32) NOT NULL DEFAULT '',
  `pn_ipaddr` varchar(20) DEFAULT NULL,
  `pn_firstused` int(11) NOT NULL DEFAULT 0,
  `pn_lastused` int(11) NOT NULL DEFAULT 0,
  `pn_uid` int(11) NOT NULL DEFAULT 0,
  `pn_vars` blob DEFAULT NULL,
  PRIMARY KEY (`pn_sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for patient_access_offsite
-- ----------------------------
DROP TABLE IF EXISTS `patient_access_offsite`;
CREATE TABLE `patient_access_offsite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL,
  `portal_username` varchar(100) NOT NULL,
  `portal_pwd` varchar(100) NOT NULL,
  `portal_pwd_status` tinyint(4) DEFAULT 1 COMMENT '0=>Password Created Through Demographics by The provider or staff. Patient Should Change it at first time it.1=>Pwd updated or created by patient itself',
  `authorize_net_id` varchar(20) DEFAULT NULL COMMENT 'authorize.net profile id',
  `portal_relation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for patient_access_onsite
-- ----------------------------
DROP TABLE IF EXISTS `patient_access_onsite`;
CREATE TABLE `patient_access_onsite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `portal_username` varchar(100) DEFAULT NULL,
  `portal_pwd` varchar(100) DEFAULT NULL,
  `portal_pwd_status` tinyint(4) DEFAULT 1 COMMENT '0=>Password Created Through Demographics by The provider or staff. Patient Should Change it at first time it.1=>Pwd updated or created by patient itself',
  `portal_salt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for patient_data
-- ----------------------------
DROP TABLE IF EXISTS `patient_data`;
CREATE TABLE `patient_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `financial` varchar(255) NOT NULL DEFAULT '',
  `fname` varchar(255) NOT NULL DEFAULT '',
  `lname` varchar(255) NOT NULL DEFAULT '',
  `mname` varchar(255) NOT NULL DEFAULT '',
  `DOB` date DEFAULT NULL,
  `street` varchar(255) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `drivers_license` varchar(255) NOT NULL DEFAULT '',
  `ss` varchar(255) NOT NULL DEFAULT '',
  `occupation` longtext DEFAULT NULL,
  `phone_home` varchar(255) NOT NULL DEFAULT '',
  `phone_biz` varchar(255) NOT NULL DEFAULT '',
  `phone_contact` varchar(255) NOT NULL DEFAULT '',
  `phone_cell` varchar(255) NOT NULL DEFAULT '',
  `pharmacy_id` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT '',
  `contact_relationship` varchar(255) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `sex` varchar(255) NOT NULL DEFAULT '',
  `referrer` varchar(255) NOT NULL DEFAULT '',
  `referrerID` varchar(255) NOT NULL DEFAULT '',
  `providerID` int(11) DEFAULT NULL,
  `ref_providerID` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `email_direct` varchar(255) NOT NULL DEFAULT '',
  `ethnoracial` varchar(255) NOT NULL DEFAULT '',
  `race` varchar(255) NOT NULL DEFAULT '',
  `ethnicity` varchar(255) NOT NULL DEFAULT '',
  `religion` varchar(40) NOT NULL DEFAULT '',
  `interpretter` varchar(255) NOT NULL DEFAULT '',
  `migrantseasonal` varchar(255) NOT NULL DEFAULT '',
  `family_size` varchar(255) NOT NULL DEFAULT '',
  `monthly_income` varchar(255) NOT NULL DEFAULT '',
  `billing_note` text DEFAULT NULL,
  `homeless` varchar(255) NOT NULL DEFAULT '',
  `financial_review` datetime DEFAULT NULL,
  `pubpid` varchar(255) NOT NULL DEFAULT '',
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `genericname1` varchar(255) NOT NULL DEFAULT '',
  `genericval1` varchar(255) NOT NULL DEFAULT '',
  `genericname2` varchar(255) NOT NULL DEFAULT '',
  `genericval2` varchar(255) NOT NULL DEFAULT '',
  `hipaa_mail` varchar(3) NOT NULL DEFAULT '',
  `hipaa_voice` varchar(3) NOT NULL DEFAULT '',
  `hipaa_notice` varchar(3) NOT NULL DEFAULT '',
  `hipaa_message` varchar(20) NOT NULL DEFAULT '',
  `hipaa_allowsms` varchar(3) NOT NULL DEFAULT 'NO',
  `hipaa_allowemail` varchar(3) NOT NULL DEFAULT 'NO',
  `squad` varchar(32) NOT NULL DEFAULT '',
  `fitness` int(11) NOT NULL DEFAULT 0,
  `referral_source` varchar(30) NOT NULL DEFAULT '',
  `usertext1` varchar(255) NOT NULL DEFAULT '',
  `usertext2` varchar(255) NOT NULL DEFAULT '',
  `usertext3` varchar(255) NOT NULL DEFAULT '',
  `usertext4` varchar(255) NOT NULL DEFAULT '',
  `usertext5` varchar(255) NOT NULL DEFAULT '',
  `usertext6` varchar(255) NOT NULL DEFAULT '',
  `usertext7` varchar(255) NOT NULL DEFAULT '',
  `usertext8` varchar(255) NOT NULL DEFAULT '',
  `userlist1` varchar(255) NOT NULL DEFAULT '',
  `userlist2` varchar(255) NOT NULL DEFAULT '',
  `userlist3` varchar(255) NOT NULL DEFAULT '',
  `userlist4` varchar(255) NOT NULL DEFAULT '',
  `userlist5` varchar(255) NOT NULL DEFAULT '',
  `userlist6` varchar(255) NOT NULL DEFAULT '',
  `userlist7` varchar(255) NOT NULL DEFAULT '',
  `pricelevel` varchar(255) NOT NULL DEFAULT 'standard',
  `regdate` date DEFAULT NULL COMMENT 'Registration Date',
  `contrastart` date DEFAULT NULL COMMENT 'Date contraceptives initially used',
  `completed_ad` varchar(3) NOT NULL DEFAULT 'NO',
  `ad_reviewed` date DEFAULT NULL,
  `vfc` varchar(255) NOT NULL DEFAULT '',
  `mothersname` varchar(255) NOT NULL DEFAULT '',
  `guardiansname` text DEFAULT NULL,
  `allow_imm_reg_use` varchar(255) NOT NULL DEFAULT '',
  `allow_imm_info_share` varchar(255) NOT NULL DEFAULT '',
  `allow_health_info_ex` varchar(255) NOT NULL DEFAULT '',
  `allow_patient_portal` varchar(31) NOT NULL DEFAULT '',
  `deceased_date` datetime DEFAULT NULL,
  `deceased_reason` varchar(255) NOT NULL DEFAULT '',
  `soap_import_status` tinyint(4) DEFAULT NULL COMMENT '1-Prescription Press 2-Prescription Import 3-Allergy Press 4-Allergy Import',
  `cmsportal_login` varchar(60) NOT NULL DEFAULT '',
  `care_team` int(11) DEFAULT NULL,
  `county` varchar(40) NOT NULL DEFAULT '',
  `industry` text DEFAULT NULL,
  `imm_reg_status` text DEFAULT NULL,
  `imm_reg_stat_effdate` text DEFAULT NULL,
  `publicity_code` text DEFAULT NULL,
  `publ_code_eff_date` text DEFAULT NULL,
  `protect_indicator` text DEFAULT NULL,
  `prot_indi_effdate` text DEFAULT NULL,
  `guardianrelationship` text DEFAULT NULL,
  `guardiansex` text DEFAULT NULL,
  `guardianaddress` text DEFAULT NULL,
  `guardiancity` text DEFAULT NULL,
  `guardianstate` text DEFAULT NULL,
  `guardianpostalcode` text DEFAULT NULL,
  `guardiancountry` text DEFAULT NULL,
  `guardianphone` text DEFAULT NULL,
  `guardianworkphone` text DEFAULT NULL,
  `guardianemail` text DEFAULT NULL,
  UNIQUE KEY `pid` (`pid`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for patient_portal_menu
-- ----------------------------
DROP TABLE IF EXISTS `patient_portal_menu`;
CREATE TABLE `patient_portal_menu` (
  `patient_portal_menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_portal_menu_group_id` int(11) DEFAULT NULL,
  `menu_name` varchar(40) DEFAULT NULL,
  `menu_order` smallint(4) DEFAULT NULL,
  `menu_status` tinyint(2) DEFAULT 1,
  PRIMARY KEY (`patient_portal_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for patient_reminders
-- ----------------------------
DROP TABLE IF EXISTS `patient_reminders`;
CREATE TABLE `patient_reminders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 if active and 0 if not active',
  `date_inactivated` datetime DEFAULT NULL,
  `reason_inactivated` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_reminder_inactive_opt',
  `due_status` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_reminder_due_opt',
  `pid` bigint(20) NOT NULL COMMENT 'id from patient_data table',
  `category` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the category item in the rule_action_item table',
  `item` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the item column in the rule_action_item table',
  `date_created` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `voice_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 if not sent and 1 if sent',
  `sms_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 if not sent and 1 if sent',
  `email_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 if not sent and 1 if sent',
  `mail_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 if not sent and 1 if sent',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `category` (`category`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for patient_tracker
-- ----------------------------
DROP TABLE IF EXISTS `patient_tracker`;
CREATE TABLE `patient_tracker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `apptdate` date DEFAULT NULL,
  `appttime` time DEFAULT NULL,
  `eid` bigint(20) NOT NULL DEFAULT 0,
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `original_user` varchar(255) NOT NULL DEFAULT '' COMMENT 'This is the user that created the original record',
  `encounter` bigint(20) NOT NULL DEFAULT 0,
  `lastseq` varchar(4) NOT NULL DEFAULT '' COMMENT 'The element file should contain this number of elements',
  `random_drug_test` tinyint(1) DEFAULT NULL COMMENT 'NULL if not randomized. If randomized, 0 is no, 1 is yes',
  `drug_screen_completed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `eid` (`eid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for patient_tracker_element
-- ----------------------------
DROP TABLE IF EXISTS `patient_tracker_element`;
CREATE TABLE `patient_tracker_element` (
  `pt_tracker_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'maps to id column in patient_tracker table',
  `start_datetime` datetime DEFAULT NULL,
  `room` varchar(20) NOT NULL DEFAULT '',
  `status` varchar(31) NOT NULL DEFAULT '',
  `seq` varchar(4) NOT NULL DEFAULT '' COMMENT 'This is a numerical sequence for this pt_tracker_id events',
  `user` varchar(255) NOT NULL DEFAULT '' COMMENT 'This is the user that created this element',
  KEY `pt_tracker_id` (`pt_tracker_id`,`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) NOT NULL DEFAULT 0,
  `dtime` datetime NOT NULL,
  `encounter` bigint(20) NOT NULL DEFAULT 0,
  `user` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `amount1` decimal(12,2) NOT NULL DEFAULT 0.00,
  `amount2` decimal(12,2) NOT NULL DEFAULT 0.00,
  `posted1` decimal(12,2) NOT NULL DEFAULT 0.00,
  `posted2` decimal(12,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for payment_gateway_details
-- ----------------------------
DROP TABLE IF EXISTS `payment_gateway_details`;
CREATE TABLE `payment_gateway_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(100) DEFAULT NULL,
  `login_id` varchar(255) DEFAULT NULL,
  `transaction_key` varchar(255) DEFAULT NULL,
  `md5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pharmacies
-- ----------------------------
DROP TABLE IF EXISTS `pharmacies`;
CREATE TABLE `pharmacies` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `transmit_method` int(11) NOT NULL DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `ncpdp` int(12) DEFAULT NULL,
  `npi` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for phone_numbers
-- ----------------------------
DROP TABLE IF EXISTS `phone_numbers`;
CREATE TABLE `phone_numbers` (
  `id` int(11) NOT NULL DEFAULT 0,
  `country_code` varchar(5) DEFAULT NULL,
  `area_code` char(3) DEFAULT NULL,
  `prefix` char(3) DEFAULT NULL,
  `number` varchar(4) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `foreign_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_id` (`foreign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pnotes
-- ----------------------------
DROP TABLE IF EXISTS `pnotes`;
CREATE TABLE `pnotes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `activity` tinyint(4) DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT 0 COMMENT 'flag indicates note is deleted',
  `message_status` varchar(20) NOT NULL DEFAULT 'New',
  `portal_relation` varchar(100) DEFAULT NULL,
  `is_msg_encrypted` tinyint(2) DEFAULT 0 COMMENT 'Whether messsage encrypted 0-Not encrypted, 1-Encrypted',
  `update_by` bigint(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for prescriptions
-- ----------------------------
DROP TABLE IF EXISTS `prescriptions`;
CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) DEFAULT NULL,
  `filled_by_id` int(11) DEFAULT NULL,
  `pharmacy_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `encounter` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `drug` varchar(150) DEFAULT NULL,
  `drug_id` int(11) NOT NULL DEFAULT 0,
  `rxnorm_drugcode` int(11) DEFAULT NULL,
  `form` int(3) DEFAULT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `quantity` varchar(31) DEFAULT NULL,
  `size` varchar(25) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `route` int(11) DEFAULT NULL,
  `interval` int(11) DEFAULT NULL,
  `substitute` int(11) DEFAULT NULL,
  `refills` int(11) DEFAULT NULL,
  `per_refill` int(11) DEFAULT NULL,
  `filled_date` date DEFAULT NULL,
  `medication` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `datetime` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `site` varchar(50) DEFAULT NULL,
  `prescriptionguid` varchar(50) DEFAULT NULL,
  `erx_source` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-OpenEMR 1-External',
  `erx_uploaded` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-Pending NewCrop upload 1-Uploaded to NewCrop',
  `drug_info_erx` text DEFAULT NULL,
  `external_id` varchar(20) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `indication` text DEFAULT NULL,
  `prn` varchar(30) DEFAULT NULL,
  `ntx` int(2) DEFAULT NULL,
  `rtx` int(2) DEFAULT NULL,
  `txDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices` (
  `pr_id` varchar(11) NOT NULL DEFAULT '',
  `pr_selector` varchar(255) NOT NULL DEFAULT '' COMMENT 'template selector for drugs, empty for codes',
  `pr_level` varchar(31) NOT NULL DEFAULT '',
  `pr_price` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'price in local currency',
  PRIMARY KEY (`pr_id`,`pr_selector`,`pr_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_answers
-- ----------------------------
DROP TABLE IF EXISTS `procedure_answers`;
CREATE TABLE `procedure_answers` (
  `procedure_order_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references procedure_order.procedure_order_id',
  `procedure_order_seq` int(11) NOT NULL DEFAULT 0 COMMENT 'references procedure_order_code.procedure_order_seq',
  `question_code` varchar(31) NOT NULL DEFAULT '' COMMENT 'references procedure_questions.question_code',
  `answer_seq` int(11) NOT NULL COMMENT 'supports multiple-choice questions. answer_seq, incremented in code',
  `answer` varchar(255) NOT NULL DEFAULT '' COMMENT 'answer data',
  PRIMARY KEY (`procedure_order_id`,`procedure_order_seq`,`question_code`,`answer_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_order
-- ----------------------------
DROP TABLE IF EXISTS `procedure_order`;
CREATE TABLE `procedure_order` (
  `procedure_order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `provider_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references users.id, the ordering provider',
  `patient_id` bigint(20) NOT NULL COMMENT 'references patient_data.pid',
  `encounter_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references form_encounter.encounter',
  `date_collected` datetime DEFAULT NULL COMMENT 'time specimen collected',
  `date_ordered` date DEFAULT NULL,
  `order_priority` varchar(31) NOT NULL DEFAULT '',
  `order_status` varchar(31) NOT NULL DEFAULT '' COMMENT 'pending,routed,complete,canceled',
  `patient_instructions` text DEFAULT NULL,
  `activity` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 if deleted',
  `control_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'This is the CONTROL ID that is sent back from lab',
  `lab_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references procedure_providers.ppid',
  `specimen_type` varchar(31) NOT NULL DEFAULT '' COMMENT 'from the Specimen_Type list',
  `specimen_location` varchar(31) NOT NULL DEFAULT '' COMMENT 'from the Specimen_Location list',
  `specimen_volume` varchar(30) NOT NULL DEFAULT '' COMMENT 'from a text input field',
  `date_transmitted` datetime DEFAULT NULL COMMENT 'time of order transmission, null if unsent',
  `clinical_hx` varchar(255) NOT NULL DEFAULT '' COMMENT 'clinical history text that may be relevant to the order',
  `external_id` varchar(20) DEFAULT NULL,
  `history_order` enum('0','1') DEFAULT '0' COMMENT 'references order is added for history purpose only.',
  PRIMARY KEY (`procedure_order_id`),
  KEY `datepid` (`date_ordered`,`patient_id`),
  KEY `patient_id` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_order_code
-- ----------------------------
DROP TABLE IF EXISTS `procedure_order_code`;
CREATE TABLE `procedure_order_code` (
  `procedure_order_id` bigint(20) NOT NULL COMMENT 'references procedure_order.procedure_order_id',
  `procedure_order_seq` int(11) NOT NULL COMMENT 'Supports multiple tests per order. Procedure_order_seq, incremented in code',
  `procedure_code` varchar(31) NOT NULL DEFAULT '' COMMENT 'like procedure_type.procedure_code',
  `procedure_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'descriptive name of the procedure code',
  `procedure_source` char(1) NOT NULL DEFAULT '1' COMMENT '1=original order, 2=added after order sent',
  `diagnoses` text DEFAULT NULL COMMENT 'diagnoses and maybe other coding (e.g. ICD9:111.11)',
  `do_not_send` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = normal, 1 = do not transmit to lab',
  `procedure_order_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`procedure_order_id`,`procedure_order_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_providers
-- ----------------------------
DROP TABLE IF EXISTS `procedure_providers`;
CREATE TABLE `procedure_providers` (
  `ppid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `npi` varchar(15) NOT NULL DEFAULT '',
  `send_app_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Sending application ID (MSH-3.1)',
  `send_fac_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Sending facility ID (MSH-4.1)',
  `recv_app_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Receiving application ID (MSH-5.1)',
  `recv_fac_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'Receiving facility ID (MSH-6.1)',
  `DorP` char(1) NOT NULL DEFAULT 'D' COMMENT 'Debugging or Production (MSH-11)',
  `direction` char(1) NOT NULL DEFAULT 'B' COMMENT 'Bidirectional or Results-only',
  `protocol` varchar(15) NOT NULL DEFAULT 'DL',
  `remote_host` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `orders_path` varchar(255) NOT NULL DEFAULT '',
  `results_path` varchar(255) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `lab_director` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_questions
-- ----------------------------
DROP TABLE IF EXISTS `procedure_questions`;
CREATE TABLE `procedure_questions` (
  `lab_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references procedure_providers.ppid to identify the lab',
  `procedure_code` varchar(31) NOT NULL DEFAULT '' COMMENT 'references procedure_type.procedure_code to identify this order type',
  `question_code` varchar(31) NOT NULL DEFAULT '' COMMENT 'code identifying this question',
  `seq` int(11) NOT NULL DEFAULT 0 COMMENT 'sequence number for ordering',
  `question_text` varchar(255) NOT NULL DEFAULT '' COMMENT 'descriptive text for question_code',
  `required` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = required, 0 = not',
  `maxsize` int(11) NOT NULL DEFAULT 0 COMMENT 'maximum length if text input field',
  `fldtype` char(1) NOT NULL DEFAULT 'T' COMMENT 'Text, Number, Select, Multiselect, Date, Gestational-age',
  `options` text DEFAULT NULL COMMENT 'choices for fldtype S and T',
  `tips` varchar(255) NOT NULL DEFAULT '' COMMENT 'Additional instructions for answering the question',
  `activity` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 0 = inactive',
  PRIMARY KEY (`lab_id`,`procedure_code`,`question_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_report
-- ----------------------------
DROP TABLE IF EXISTS `procedure_report`;
CREATE TABLE `procedure_report` (
  `procedure_report_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `procedure_order_id` bigint(20) DEFAULT NULL COMMENT 'references procedure_order.procedure_order_id',
  `procedure_order_seq` int(11) NOT NULL DEFAULT 1 COMMENT 'references procedure_order_code.procedure_order_seq',
  `date_collected` datetime DEFAULT NULL,
  `date_collected_tz` varchar(5) DEFAULT '' COMMENT '+-hhmm offset from UTC',
  `date_report` datetime DEFAULT NULL,
  `date_report_tz` varchar(5) DEFAULT '' COMMENT '+-hhmm offset from UTC',
  `source` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references users.id, who entered this data',
  `specimen_num` varchar(63) NOT NULL DEFAULT '',
  `report_status` varchar(31) NOT NULL DEFAULT '' COMMENT 'received,complete,error',
  `review_status` varchar(31) NOT NULL DEFAULT 'received' COMMENT 'pending review status: received,reviewed',
  `report_notes` text DEFAULT NULL COMMENT 'notes from the lab',
  PRIMARY KEY (`procedure_report_id`),
  KEY `procedure_order_id` (`procedure_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_result
-- ----------------------------
DROP TABLE IF EXISTS `procedure_result`;
CREATE TABLE `procedure_result` (
  `procedure_result_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `procedure_report_id` bigint(20) NOT NULL COMMENT 'references procedure_report.procedure_report_id',
  `result_data_type` char(1) NOT NULL DEFAULT 'S' COMMENT 'N=Numeric, S=String, F=Formatted, E=External, L=Long text as first line of comments',
  `result_code` varchar(31) NOT NULL DEFAULT '' COMMENT 'LOINC code, might match a procedure_type.procedure_code',
  `result_text` varchar(255) NOT NULL DEFAULT '' COMMENT 'Description of result_code',
  `date` datetime DEFAULT NULL COMMENT 'lab-provided date specific to this result',
  `facility` varchar(255) NOT NULL DEFAULT '' COMMENT 'lab-provided testing facility ID',
  `units` varchar(31) NOT NULL DEFAULT '',
  `result` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `abnormal` varchar(31) NOT NULL DEFAULT '' COMMENT 'no,yes,high,low',
  `comments` text DEFAULT NULL COMMENT 'comments from the lab',
  `document_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references documents.id if this result is a document',
  `result_status` varchar(31) NOT NULL DEFAULT '' COMMENT 'preliminary, cannot be done, final, corrected, incompete...etc.',
  PRIMARY KEY (`procedure_result_id`),
  KEY `procedure_report_id` (`procedure_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for procedure_type
-- ----------------------------
DROP TABLE IF EXISTS `procedure_type`;
CREATE TABLE `procedure_type` (
  `procedure_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references procedure_type.procedure_type_id',
  `name` varchar(63) NOT NULL DEFAULT '' COMMENT 'name for this category, procedure or result type',
  `lab_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references procedure_providers.ppid, 0 means default to parent',
  `procedure_code` varchar(31) NOT NULL DEFAULT '' COMMENT 'code identifying this procedure',
  `procedure_type` varchar(31) NOT NULL DEFAULT '' COMMENT 'see list proc_type',
  `body_site` varchar(31) NOT NULL DEFAULT '' COMMENT 'where to do injection, e.g. arm, buttok',
  `specimen` varchar(31) NOT NULL DEFAULT '' COMMENT 'blood, urine, saliva, etc.',
  `route_admin` varchar(31) NOT NULL DEFAULT '' COMMENT 'oral, injection',
  `laterality` varchar(31) NOT NULL DEFAULT '' COMMENT 'left, right, ...',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'descriptive text for procedure_code',
  `standard_code` varchar(255) NOT NULL DEFAULT '' COMMENT 'industry standard code type and code (e.g. CPT4:12345)',
  `related_code` varchar(255) NOT NULL DEFAULT '' COMMENT 'suggested code(s) for followup services if result is abnormal',
  `units` varchar(31) NOT NULL DEFAULT '' COMMENT 'default for procedure_result.units',
  `range` varchar(255) NOT NULL DEFAULT '' COMMENT 'default for procedure_result.range',
  `seq` int(11) NOT NULL DEFAULT 0 COMMENT 'sequence number for ordering',
  `activity` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active, 0=inactive',
  `notes` varchar(255) NOT NULL DEFAULT '' COMMENT 'additional notes to enhance description',
  PRIMARY KEY (`procedure_type_id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for product_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `product_warehouse`;
CREATE TABLE `product_warehouse` (
  `pw_drug_id` int(11) NOT NULL,
  `pw_warehouse` varchar(31) NOT NULL,
  `pw_min_level` float DEFAULT 0,
  `pw_max_level` float DEFAULT 0,
  PRIMARY KEY (`pw_drug_id`,`pw_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for registry
-- ----------------------------
DROP TABLE IF EXISTS `registry`;
CREATE TABLE `registry` (
  `name` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `directory` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sql_run` tinyint(4) DEFAULT NULL,
  `unpackaged` tinyint(4) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT 0,
  `category` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `patient_encounter` tinyint(4) NOT NULL DEFAULT 1,
  `therapy_group_encounter` tinyint(4) NOT NULL DEFAULT 0,
  `aco_spec` varchar(63) NOT NULL DEFAULT 'encounters|notes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for report_itemized
-- ----------------------------
DROP TABLE IF EXISTS `report_itemized`;
CREATE TABLE `report_itemized` (
  `report_id` bigint(20) NOT NULL,
  `itemized_test_id` smallint(6) NOT NULL,
  `numerator_label` varchar(25) NOT NULL DEFAULT '' COMMENT 'Only used in special cases',
  `pass` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 is fail, 1 is pass, 2 is excluded',
  `pid` bigint(20) NOT NULL,
  KEY `report_id` (`report_id`,`itemized_test_id`,`numerator_label`,`pass`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for report_results
-- ----------------------------
DROP TABLE IF EXISTS `report_results`;
CREATE TABLE `report_results` (
  `report_id` bigint(20) NOT NULL,
  `field_id` varchar(31) NOT NULL DEFAULT '',
  `field_value` text DEFAULT NULL,
  PRIMARY KEY (`report_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for rule_action
-- ----------------------------
DROP TABLE IF EXISTS `rule_action`;
CREATE TABLE `rule_action` (
  `id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the id column in the clinical_rules table',
  `group_id` bigint(20) NOT NULL DEFAULT 1 COMMENT 'Contains group id to identify collection of targets in a rule',
  `category` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the category item in the rule_action_item table',
  `item` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the item column in the rule_action_item table',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for rule_action_item
-- ----------------------------
DROP TABLE IF EXISTS `rule_action_item`;
CREATE TABLE `rule_action_item` (
  `category` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_action_category',
  `item` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_action',
  `clin_rem_link` varchar(255) NOT NULL DEFAULT '' COMMENT 'Custom html link in clinical reminder widget',
  `reminder_message` text DEFAULT NULL COMMENT 'Custom message in patient reminder',
  `custom_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 indexed to rule_patient_data, 0 indexed within main schema',
  PRIMARY KEY (`category`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for rule_filter
-- ----------------------------
DROP TABLE IF EXISTS `rule_filter`;
CREATE TABLE `rule_filter` (
  `id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the id column in the clinical_rules table',
  `include_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 is exclude and 1 is include',
  `required_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 is required and 1 is optional',
  `method` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_filters',
  `method_detail` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options lists rule__intervals',
  `value` varchar(255) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for rule_patient_data
-- ----------------------------
DROP TABLE IF EXISTS `rule_patient_data`;
CREATE TABLE `rule_patient_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `category` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the category item in the rule_action_item table',
  `item` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the item column in the rule_action_item table',
  `complete` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list yesno',
  `result` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `category` (`category`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for rule_reminder
-- ----------------------------
DROP TABLE IF EXISTS `rule_reminder`;
CREATE TABLE `rule_reminder` (
  `id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the id column in the clinical_rules table',
  `method` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_reminder_methods',
  `method_detail` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_reminder_intervals',
  `value` varchar(255) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for rule_target
-- ----------------------------
DROP TABLE IF EXISTS `rule_target`;
CREATE TABLE `rule_target` (
  `id` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to the id column in the clinical_rules table',
  `group_id` bigint(20) NOT NULL DEFAULT 1 COMMENT 'Contains group id to identify collection of targets in a rule',
  `include_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 is exclude and 1 is include',
  `required_flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 is required and 1 is optional',
  `method` varchar(31) NOT NULL DEFAULT '' COMMENT 'Maps to list_options list rule_targets',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Data is dependent on the method',
  `interval` bigint(20) NOT NULL DEFAULT 0 COMMENT 'Only used in interval entries',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for sequences
-- ----------------------------
DROP TABLE IF EXISTS `sequences`;
CREATE TABLE `sequences` (
  `id` int(11) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for shared_attributes
-- ----------------------------
DROP TABLE IF EXISTS `shared_attributes`;
CREATE TABLE `shared_attributes` (
  `pid` bigint(20) NOT NULL,
  `encounter` bigint(20) NOT NULL COMMENT '0 if patient attribute, else encounter attribute',
  `field_id` varchar(31) NOT NULL COMMENT 'references layout_options.field_id',
  `last_update` datetime NOT NULL COMMENT 'time of last update',
  `user_id` bigint(20) NOT NULL COMMENT 'user who last updated',
  `field_value` text DEFAULT NULL,
  PRIMARY KEY (`pid`,`encounter`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for standardized_tables_track
-- ----------------------------
DROP TABLE IF EXISTS `standardized_tables_track`;
CREATE TABLE `standardized_tables_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imported_date` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'name of standardized tables such as RXNORM',
  `revision_version` varchar(255) NOT NULL DEFAULT '' COMMENT 'revision of standardized tables that were imported',
  `revision_date` datetime DEFAULT NULL COMMENT 'revision of standardized tables that were imported',
  `file_checksum` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for supported_external_dataloads
-- ----------------------------
DROP TABLE IF EXISTS `supported_external_dataloads`;
CREATE TABLE `supported_external_dataloads` (
  `load_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `load_type` varchar(24) NOT NULL DEFAULT '',
  `load_source` varchar(24) NOT NULL DEFAULT 'CMS',
  `load_release_date` date NOT NULL,
  `load_filename` varchar(256) NOT NULL DEFAULT '',
  `load_checksum` varchar(32) NOT NULL DEFAULT '',
  UNIQUE KEY `load_id` (`load_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for syndromic_surveillance
-- ----------------------------
DROP TABLE IF EXISTS `syndromic_surveillance`;
CREATE TABLE `syndromic_surveillance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lists_id` bigint(20) NOT NULL,
  `submission_date` datetime NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lists_id` (`lists_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for template_users
-- ----------------------------
DROP TABLE IF EXISTS `template_users`;
CREATE TABLE `template_users` (
  `tu_id` int(11) NOT NULL AUTO_INCREMENT,
  `tu_user_id` int(11) DEFAULT NULL,
  `tu_facility_id` int(11) DEFAULT NULL,
  `tu_template_id` int(11) DEFAULT NULL,
  `tu_template_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`tu_id`),
  UNIQUE KEY `templateuser` (`tu_user_id`,`tu_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `pid` bigint(20) DEFAULT NULL,
  `user` varchar(255) NOT NULL DEFAULT '',
  `groupname` varchar(255) NOT NULL DEFAULT '',
  `authorized` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `authorized` tinyint(4) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `federaltaxid` varchar(255) DEFAULT NULL,
  `federaldrugid` varchar(255) DEFAULT NULL,
  `upin` varchar(255) DEFAULT NULL,
  `facility` varchar(255) DEFAULT NULL,
  `facility_id` int(11) NOT NULL DEFAULT 0,
  `see_auth` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `npi` varchar(15) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `billname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_direct` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `assistant` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `valedictory` varchar(255) DEFAULT NULL,
  `street` varchar(60) DEFAULT NULL,
  `streetb` varchar(60) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `street2` varchar(60) DEFAULT NULL,
  `streetb2` varchar(60) DEFAULT NULL,
  `city2` varchar(30) DEFAULT NULL,
  `state2` varchar(30) DEFAULT NULL,
  `zip2` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `phonew1` varchar(30) DEFAULT NULL,
  `phonew2` varchar(30) DEFAULT NULL,
  `phonecell` varchar(30) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `cal_ui` tinyint(4) NOT NULL DEFAULT 1,
  `taxonomy` varchar(30) NOT NULL DEFAULT '207Q00000X',
  `calendar` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = appears in calendar',
  `abook_type` varchar(31) NOT NULL DEFAULT '',
  `pwd_expiration_date` date DEFAULT NULL,
  `pwd_history1` longtext DEFAULT NULL,
  `pwd_history2` longtext DEFAULT NULL,
  `default_warehouse` varchar(31) NOT NULL DEFAULT '',
  `irnpool` varchar(31) NOT NULL DEFAULT '',
  `state_license_number` varchar(25) DEFAULT NULL,
  `weno_prov_id` varchar(15) DEFAULT NULL,
  `newcrop_user_role` varchar(30) DEFAULT NULL,
  `cpoe` tinyint(1) DEFAULT NULL,
  `physician_type` varchar(50) DEFAULT NULL,
  `main_menu_role` varchar(50) NOT NULL DEFAULT 'standard',
  `patient_menu_role` varchar(50) NOT NULL DEFAULT 'standard',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for users_facility
-- ----------------------------
DROP TABLE IF EXISTS `users_facility`;
CREATE TABLE `users_facility` (
  `tablename` varchar(64) NOT NULL,
  `table_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  PRIMARY KEY (`tablename`,`table_id`,`facility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='joins users or patient_data to facility table';

-- ----------------------------
-- Table structure for users_secure
-- ----------------------------
DROP TABLE IF EXISTS `users_secure`;
CREATE TABLE `users_secure` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password_history1` varchar(255) DEFAULT NULL,
  `salt_history1` varchar(255) DEFAULT NULL,
  `password_history2` varchar(255) DEFAULT NULL,
  `salt_history2` varchar(255) DEFAULT NULL,
  `last_challenge_response` datetime DEFAULT NULL,
  `login_work_area` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USERNAME_ID` (`id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user_settings
-- ----------------------------
DROP TABLE IF EXISTS `user_settings`;
CREATE TABLE `user_settings` (
  `setting_user` bigint(20) NOT NULL DEFAULT 0,
  `setting_label` varchar(100) NOT NULL,
  `setting_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`setting_user`,`setting_label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for valueset
-- ----------------------------
DROP TABLE IF EXISTS `valueset`;
CREATE TABLE `valueset` (
  `nqf_code` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL DEFAULT '',
  `code_system` varchar(255) NOT NULL DEFAULT '',
  `code_type` varchar(255) DEFAULT NULL,
  `valueset` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `valueset_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`nqf_code`,`code`,`valueset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `v_major` int(11) NOT NULL DEFAULT 0,
  `v_minor` int(11) NOT NULL DEFAULT 0,
  `v_patch` int(11) NOT NULL DEFAULT 0,
  `v_realpatch` int(11) NOT NULL DEFAULT 0,
  `v_tag` varchar(31) NOT NULL DEFAULT '',
  `v_database` int(11) NOT NULL DEFAULT 0,
  `v_acl` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for voids
-- ----------------------------
DROP TABLE IF EXISTS `voids`;
CREATE TABLE `voids` (
  `void_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) NOT NULL COMMENT 'references patient_data.pid',
  `encounter_id` bigint(20) NOT NULL DEFAULT 0 COMMENT 'references form_encounter.encounter',
  `what_voided` varchar(31) NOT NULL COMMENT 'checkout,receipt and maybe other options later',
  `date_original` datetime DEFAULT NULL COMMENT 'time of original action that is now voided',
  `date_voided` datetime NOT NULL COMMENT 'time of void action',
  `user_id` bigint(20) NOT NULL COMMENT 'references users.id',
  `amount1` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'for checkout,receipt total voided adjustments',
  `amount2` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'for checkout,receipt total voided payments',
  `other_info` text DEFAULT NULL COMMENT 'for checkout,receipt the old invoice refno',
  PRIMARY KEY (`void_id`),
  KEY `datevoided` (`date_voided`),
  KEY `pidenc` (`patient_id`,`encounter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for x12_partners
-- ----------------------------
DROP TABLE IF EXISTS `x12_partners`;
CREATE TABLE `x12_partners` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `x12_sender_id` varchar(255) DEFAULT NULL,
  `x12_receiver_id` varchar(255) DEFAULT NULL,
  `processing_format` enum('standard','medi-cal','cms','proxymed') DEFAULT NULL,
  `x12_isa01` varchar(2) NOT NULL DEFAULT '00' COMMENT 'User logon Required Indicator',
  `x12_isa02` varchar(10) NOT NULL DEFAULT '          ' COMMENT 'User Logon',
  `x12_isa03` varchar(2) NOT NULL DEFAULT '00' COMMENT 'User password required Indicator',
  `x12_isa04` varchar(10) NOT NULL DEFAULT '          ' COMMENT 'User Password',
  `x12_isa05` char(2) NOT NULL DEFAULT 'ZZ',
  `x12_isa07` char(2) NOT NULL DEFAULT 'ZZ',
  `x12_isa14` char(1) NOT NULL DEFAULT '0',
  `x12_isa15` char(1) NOT NULL DEFAULT 'P',
  `x12_gs02` varchar(15) NOT NULL DEFAULT '',
  `x12_per06` varchar(80) NOT NULL DEFAULT '',
  `x12_gs03` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
SET FOREIGN_KEY_CHECKS=1;
