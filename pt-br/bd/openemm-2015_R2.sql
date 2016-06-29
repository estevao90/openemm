-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: openemm
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actop_activate_doi_tbl`
--

DROP TABLE IF EXISTS `actop_activate_doi_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_activate_doi_tbl` (
  `action_operation_id` int(11) NOT NULL,
  `for_all_lists` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_activate_doi_tbl`
--

LOCK TABLES `actop_activate_doi_tbl` WRITE;
/*!40000 ALTER TABLE `actop_activate_doi_tbl` DISABLE KEYS */;
INSERT INTO `actop_activate_doi_tbl` (`action_operation_id`, `for_all_lists`) VALUES (1,0);
/*!40000 ALTER TABLE `actop_activate_doi_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_execute_script_tbl`
--

DROP TABLE IF EXISTS `actop_execute_script_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_execute_script_tbl` (
  `script` longtext COLLATE utf8_unicode_ci NOT NULL,
  `action_operation_id` int(11) NOT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO1_AO` (`action_operation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_execute_script_tbl`
--

LOCK TABLES `actop_execute_script_tbl` WRITE;
/*!40000 ALTER TABLE `actop_execute_script_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `actop_execute_script_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_get_archive_list_tbl`
--

DROP TABLE IF EXISTS `actop_get_archive_list_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_get_archive_list_tbl` (
  `campaign_id` int(11) NOT NULL,
  `action_operation_id` int(11) NOT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO7_AO` (`action_operation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_get_archive_list_tbl`
--

LOCK TABLES `actop_get_archive_list_tbl` WRITE;
/*!40000 ALTER TABLE `actop_get_archive_list_tbl` DISABLE KEYS */;
INSERT INTO `actop_get_archive_list_tbl` (`campaign_id`, `action_operation_id`) VALUES (1,8);
/*!40000 ALTER TABLE `actop_get_archive_list_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_get_customer_tbl`
--

DROP TABLE IF EXISTS `actop_get_customer_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_get_customer_tbl` (
  `load_always` tinyint(1) NOT NULL,
  `action_operation_id` int(11) NOT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO3_AO` (`action_operation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_get_customer_tbl`
--

LOCK TABLES `actop_get_customer_tbl` WRITE;
/*!40000 ALTER TABLE `actop_get_customer_tbl` DISABLE KEYS */;
INSERT INTO `actop_get_customer_tbl` (`load_always`, `action_operation_id`) VALUES (0,4);
/*!40000 ALTER TABLE `actop_get_customer_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_send_mailing_tbl`
--

DROP TABLE IF EXISTS `actop_send_mailing_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_send_mailing_tbl` (
  `mailing_id` int(11) NOT NULL,
  `delay_minutes` int(11) NOT NULL,
  `action_operation_id` int(11) NOT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO5_AO` (`action_operation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_send_mailing_tbl`
--

LOCK TABLES `actop_send_mailing_tbl` WRITE;
/*!40000 ALTER TABLE `actop_send_mailing_tbl` DISABLE KEYS */;
INSERT INTO `actop_send_mailing_tbl` (`mailing_id`, `delay_minutes`, `action_operation_id`) VALUES (2,0,3);
/*!40000 ALTER TABLE `actop_send_mailing_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_service_mail_tbl`
--

DROP TABLE IF EXISTS `actop_service_mail_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_service_mail_tbl` (
  `text_mail` text COLLATE utf8_unicode_ci NOT NULL,
  `subject_line` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to_addr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailtype` int(11) NOT NULL,
  `html_mail` text COLLATE utf8_unicode_ci NOT NULL,
  `action_operation_id` int(11) NOT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO6_AO` (`action_operation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_service_mail_tbl`
--

LOCK TABLES `actop_service_mail_tbl` WRITE;
/*!40000 ALTER TABLE `actop_service_mail_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `actop_service_mail_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_subscribe_customer_tbl`
--

DROP TABLE IF EXISTS `actop_subscribe_customer_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_subscribe_customer_tbl` (
  `double_check` tinyint(1) NOT NULL,
  `key_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `double_opt_in` tinyint(1) NOT NULL,
  `action_operation_id` int(11) NOT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO4_AO` (`action_operation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_subscribe_customer_tbl`
--

LOCK TABLES `actop_subscribe_customer_tbl` WRITE;
/*!40000 ALTER TABLE `actop_subscribe_customer_tbl` DISABLE KEYS */;
INSERT INTO `actop_subscribe_customer_tbl` (`double_check`, `key_column`, `double_opt_in`, `action_operation_id`) VALUES (1,'EMAIL',1,2),(1,'EMAIL',0,5);
/*!40000 ALTER TABLE `actop_subscribe_customer_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_tbl`
--

DROP TABLE IF EXISTS `actop_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_tbl` (
  `action_operation_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO_A` (`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_tbl`
--

LOCK TABLES `actop_tbl` WRITE;
/*!40000 ALTER TABLE `actop_tbl` DISABLE KEYS */;
INSERT INTO `actop_tbl` (`action_operation_id`, `company_id`, `type`, `action_id`) VALUES (1,1,'ActivateDoubleOptIn',1),(2,1,'SubscribeCustomer',3),(3,1,'SendMailing',3),(4,1,'GetCustomer',4),(5,1,'SubscribeCustomer',5),(6,1,'UnsubscribeCustomer',6),(7,1,'GetArchiveMailing',7),(8,1,'GetArchiveList',8);
/*!40000 ALTER TABLE `actop_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actop_update_customer_tbl`
--

DROP TABLE IF EXISTS `actop_update_customer_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actop_update_customer_tbl` (
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_type` int(11) NOT NULL,
  `update_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_operation_id` int(11) NOT NULL,
  PRIMARY KEY (`action_operation_id`),
  KEY `IDX_AO2_AO` (`action_operation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actop_update_customer_tbl`
--

LOCK TABLES `actop_update_customer_tbl` WRITE;
/*!40000 ALTER TABLE `actop_update_customer_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `actop_update_customer_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_group_permission_tbl`
--

DROP TABLE IF EXISTS `admin_group_permission_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_group_permission_tbl` (
  `admin_group_id` int(11) NOT NULL DEFAULT '4',
  `security_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `unique_admin_group_idx` (`admin_group_id`,`security_token`),
  KEY `admin_group_idx` (`admin_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_group_permission_tbl`
--

LOCK TABLES `admin_group_permission_tbl` WRITE;
/*!40000 ALTER TABLE `admin_group_permission_tbl` DISABLE KEYS */;
INSERT INTO `admin_group_permission_tbl` (`admin_group_id`, `security_token`) VALUES (4,'action.op.ActivateDoubleOptIn'),(4,'action.op.ExecuteScript'),(4,'action.op.GetArchiveList'),(4,'action.op.GetArchiveMailing'),(4,'action.op.GetCustomer'),(4,'action.op.SendMailing'),(4,'action.op.ServiceMail'),(4,'action.op.SubscribeCustomer'),(4,'action.op.UnsubscribeCustomer'),(4,'action.op.UpdateCustomer'),(4,'actions.change'),(4,'actions.delete'),(4,'actions.set_usage'),(4,'actions.show'),(4,'admin.change'),(4,'admin.delete'),(4,'admin.new'),(4,'admin.show'),(4,'adminlog.show'),(4,'blacklist'),(4,'campaign.change'),(4,'campaign.delete'),(4,'campaign.new'),(4,'campaign.show'),(4,'campaign.stat'),(4,'charset.use.gb2312'),(4,'charset.use.iso_8859_1'),(4,'charset.use.iso_8859_15'),(4,'charset.use.utf_8'),(4,'cms.central_content_management'),(4,'cms.mailing_content_management'),(4,'forms.change'),(4,'forms.delete'),(4,'forms.view'),(4,'import.mode.add'),(4,'import.mode.add_update'),(4,'import.mode.blacklist'),(4,'import.mode.bounce'),(4,'import.mode.doublechecking'),(4,'import.mode.null_values'),(4,'import.mode.only_update'),(4,'import.mode.remove_status'),(4,'import.mode.unsubscribe'),(4,'mailing.attachments.show'),(4,'mailing.change'),(4,'mailing.components.change'),(4,'mailing.components.show'),(4,'mailing.content.show'),(4,'mailing.copy'),(4,'mailing.default_action'),(4,'mailing.delete'),(4,'mailing.graphics_upload'),(4,'mailing.new'),(4,'mailing.send.admin'),(4,'mailing.send.admin.options'),(4,'mailing.send.show'),(4,'mailing.send.test'),(4,'mailing.send.world'),(4,'mailing.show'),(4,'mailing.show.charsets'),(4,'mailing.show.types'),(4,'mailinglist.change'),(4,'mailinglist.delete'),(4,'mailinglist.new'),(4,'mailinglist.recipients.delete'),(4,'mailinglist.show'),(4,'mailloop.change'),(4,'mailloop.delete'),(4,'pluginmanager.show'),(4,'profileField.show'),(4,'recipient.change'),(4,'recipient.column.select'),(4,'recipient.create'),(4,'recipient.delete'),(4,'recipient.export.auto'),(4,'recipient.import.auto'),(4,'recipient.list'),(4,'recipient.new'),(4,'recipient.show'),(4,'recipient.view'),(4,'settings.show'),(4,'stats.clean'),(4,'stats.domains'),(4,'stats.ip'),(4,'stats.mailing'),(4,'stats.rdir'),(4,'targets.advancedRules.recipients'),(4,'targets.change'),(4,'targets.createml'),(4,'targets.delete'),(4,'targets.show'),(4,'template.change'),(4,'template.components.show'),(4,'template.delete'),(4,'template.new'),(4,'template.show'),(4,'use_charset_iso_8859_1'),(4,'userlog.show'),(4,'wizard.export'),(4,'wizard.import');
/*!40000 ALTER TABLE `admin_group_permission_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_group_tbl`
--

DROP TABLE IF EXISTS `admin_group_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_group_tbl` (
  `admin_group_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`admin_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_group_tbl`
--

LOCK TABLES `admin_group_tbl` WRITE;
/*!40000 ALTER TABLE `admin_group_tbl` DISABLE KEYS */;
INSERT INTO `admin_group_tbl` (`admin_group_id`, `company_id`, `shortname`, `description`) VALUES (4,1,'Standard','Standard'),(0,0,'Dummy','Dummy');
/*!40000 ALTER TABLE `admin_group_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permission_tbl`
--

DROP TABLE IF EXISTS `admin_permission_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permission_tbl` (
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `security_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `admin_permission_unique_idx` (`admin_id`,`security_token`),
  KEY `admin_idx` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permission_tbl`
--

LOCK TABLES `admin_permission_tbl` WRITE;
/*!40000 ALTER TABLE `admin_permission_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_permission_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_pref_tbl`
--

DROP TABLE IF EXISTS `admin_pref_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_pref_tbl` (
  `admin_id` int(11) DEFAULT '0',
  `pref` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `val` varchar(5) COLLATE utf8_unicode_ci DEFAULT '0',
  KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_pref_tbl`
--

LOCK TABLES `admin_pref_tbl` WRITE;
/*!40000 ALTER TABLE `admin_pref_tbl` DISABLE KEYS */;
INSERT INTO `admin_pref_tbl` (`admin_id`, `pref`, `val`) VALUES (1,'listsize','20'),(1,'mailing.contentblocks','0'),(1,'mailing.settings','0');
/*!40000 ALTER TABLE `admin_pref_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_tbl`
--

DROP TABLE IF EXISTS `admin_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_tbl` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `admin_country` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin_lang` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin_lang_variant` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin_timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout_id` int(11) NOT NULL DEFAULT '0',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pwd_change` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_group_id` int(11) NOT NULL DEFAULT '0',
  `pwd_hash` varbinary(200) NOT NULL DEFAULT '',
  `default_import_profile_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tbl`
--

LOCK TABLES `admin_tbl` WRITE;
/*!40000 ALTER TABLE `admin_tbl` DISABLE KEYS */;
INSERT INTO `admin_tbl` (`admin_id`, `username`, `company_id`, `fullname`, `timestamp`, `admin_country`, `admin_lang`, `admin_lang_variant`, `admin_timezone`, `layout_id`, `creation_date`, `pwd_change`, `admin_group_id`, `pwd_hash`, `default_import_profile_id`) VALUES (1,'admin',1,'Administrador',CURRENT_TIMESTAMP,'PT','pt','','America/Sao_Paulo',0,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,4,0x9BD796996FCDF40AD3D86025C03F2C9E,0);
/*!40000 ALTER TABLE `admin_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_export_tbl`
--

DROP TABLE IF EXISTS `auto_export_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_export_tbl` (
  `auto_export_id` int(11) NOT NULL AUTO_INCREMENT,
  `export_profile_id` int(10) unsigned NOT NULL,
  `shortname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `file_server` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `one_time` int(1) NOT NULL,
  `executed` int(1) NOT NULL,
  `company_id` int(11) unsigned NOT NULL,
  `admin_id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `auto_activation_date` timestamp NULL DEFAULT NULL,
  `allow_unknown_hostkeys` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto_export_id`),
  KEY `company_id` (`company_id`),
  KEY `admin_id` (`admin_id`),
  KEY `export_profile_id` (`export_profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_export_tbl`
--

LOCK TABLES `auto_export_tbl` WRITE;
/*!40000 ALTER TABLE `auto_export_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_export_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_export_time_tbl`
--

DROP TABLE IF EXISTS `auto_export_time_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_export_time_tbl` (
  `auto_export_id` int(11) NOT NULL,
  `export_day_of_week` int(1) NOT NULL,
  `export_hour` int(2) NOT NULL,
  `company_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`auto_export_id`,`export_day_of_week`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_export_time_tbl`
--

LOCK TABLES `auto_export_time_tbl` WRITE;
/*!40000 ALTER TABLE `auto_export_time_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_export_time_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_import_mlist_bind_tbl`
--

DROP TABLE IF EXISTS `auto_import_mlist_bind_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_import_mlist_bind_tbl` (
  `auto_import_id` int(11) NOT NULL,
  `mailinglist_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`auto_import_id`,`mailinglist_id`),
  KEY `company_id` (`company_id`),
  KEY `mailinglist_id` (`mailinglist_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_import_mlist_bind_tbl`
--

LOCK TABLES `auto_import_mlist_bind_tbl` WRITE;
/*!40000 ALTER TABLE `auto_import_mlist_bind_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_import_mlist_bind_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_import_tbl`
--

DROP TABLE IF EXISTS `auto_import_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_import_tbl` (
  `auto_import_id` int(11) NOT NULL AUTO_INCREMENT,
  `import_profile_id` int(11) NOT NULL,
  `shortname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `file_server` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `one_time` int(1) NOT NULL,
  `auto_resume` int(1) NOT NULL,
  `executed` int(1) NOT NULL,
  `company_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `auto_activation_date` timestamp NULL DEFAULT NULL,
  `allow_unknown_hostkeys` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto_import_id`),
  KEY `company_id` (`company_id`),
  KEY `admin_id` (`admin_id`),
  KEY `import_profile_id` (`import_profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_import_tbl`
--

LOCK TABLES `auto_import_tbl` WRITE;
/*!40000 ALTER TABLE `auto_import_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_import_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_import_time_tbl`
--

DROP TABLE IF EXISTS `auto_import_time_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_import_time_tbl` (
  `auto_import_id` int(11) NOT NULL,
  `import_day_of_week` int(1) NOT NULL,
  `import_hour` int(2) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`auto_import_id`,`import_day_of_week`),
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_import_time_tbl`
--

LOCK TABLES `auto_import_time_tbl` WRITE;
/*!40000 ALTER TABLE `auto_import_time_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_import_time_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_import_used_files_tbl`
--

DROP TABLE IF EXISTS `auto_import_used_files_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_import_used_files_tbl` (
  `auto_import_used_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `auto_import_id` int(11) NOT NULL,
  `file_size` int(15) NOT NULL,
  `file_date` datetime NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`auto_import_used_file_id`),
  KEY `company_id` (`company_id`),
  KEY `auto_import_id` (`auto_import_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_import_used_files_tbl`
--

LOCK TABLES `auto_import_used_files_tbl` WRITE;
/*!40000 ALTER TABLE `auto_import_used_files_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_import_used_files_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bounce_collect_tbl`
--

DROP TABLE IF EXISTS `bounce_collect_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bounce_collect_tbl` (
  `mailtrack_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `mailing_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mailtrack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bounce_collect_tbl`
--

LOCK TABLES `bounce_collect_tbl` WRITE;
/*!40000 ALTER TABLE `bounce_collect_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `bounce_collect_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bounce_tbl`
--

DROP TABLE IF EXISTS `bounce_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bounce_tbl` (
  `bounce_id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `detail` int(10) DEFAULT NULL,
  `mailing_id` int(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dsn` int(10) DEFAULT NULL,
  PRIMARY KEY (`bounce_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bounce_tbl`
--

LOCK TABLES `bounce_tbl` WRITE;
/*!40000 ALTER TABLE `bounce_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `bounce_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_tbl`
--

DROP TABLE IF EXISTS `campaign_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_tbl` (
  `campaign_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`campaign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_tbl`
--

LOCK TABLES `campaign_tbl` WRITE;
/*!40000 ALTER TABLE `campaign_tbl` DISABLE KEYS */;
INSERT INTO `campaign_tbl` (`campaign_id`, `company_id`, `shortname`, `description`) VALUES (1,1,'Campanha','');
/*!40000 ALTER TABLE `campaign_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `click_stat_colors_tbl`
--

DROP TABLE IF EXISTS `click_stat_colors_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `click_stat_colors_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `range_start` int(10) NOT NULL,
  `range_end` int(10) NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `click_stat_colors_tbl`
--

LOCK TABLES `click_stat_colors_tbl` WRITE;
/*!40000 ALTER TABLE `click_stat_colors_tbl` DISABLE KEYS */;
INSERT INTO `click_stat_colors_tbl` (`id`, `company_id`, `range_start`, `range_end`, `color`) VALUES (1,1,0,1,'F4F9FF'),(2,1,1,2,'D5E6FF'),(3,1,2,3,'E1F7E1'),(4,1,3,5,'FEFECC'),(5,1,5,10,'FFE4BA'),(6,1,10,100,'FFCBC3');
/*!40000 ALTER TABLE `click_stat_colors_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_tbl`
--

DROP TABLE IF EXISTS `company_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_tbl` (
  `company_id` int(11) NOT NULL DEFAULT '0',
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_company_id` int(11) NOT NULL DEFAULT '0',
  `xor_key` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notification_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rdir_domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mailloop_domain` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mailtracking` int(11) unsigned NOT NULL DEFAULT '0',
  `max_login_fails` int(3) NOT NULL DEFAULT '3',
  `login_block_time` int(5) NOT NULL DEFAULT '300',
  `uid_version` int(2) DEFAULT NULL,
  `max_recipients` int(11) DEFAULT '10000',
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_tbl`
--

LOCK TABLES `company_tbl` WRITE;
/*!40000 ALTER TABLE `company_tbl` DISABLE KEYS */;
INSERT INTO `company_tbl` (`company_id`, `shortname`, `description`, `status`, `timestamp`, `creator_company_id`, `xor_key`, `creation_date`, `notification_email`, `rdir_domain`, `mailloop_domain`, `mailtracking`, `max_login_fails`, `login_block_time`, `uid_version`, `max_recipients`) VALUES (1,'Agnitas Admin','Agnitas','active',CURRENT_TIMESTAMP,1,'',CURRENT_TIMESTAMP,'','http://localhost:8080','',1,3,300,NULL,10000);
/*!40000 ALTER TABLE `company_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_tbl`
--

DROP TABLE IF EXISTS `component_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component_tbl` (
  `component_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mailing_id` int(10) unsigned NOT NULL DEFAULT '0',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `emmblock` longtext COLLATE utf8_unicode_ci,
  `binblock` longblob,
  `comptype` int(10) unsigned NOT NULL DEFAULT '0',
  `target_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mtype` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compname` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url_id` int(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`component_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_tbl`
--

LOCK TABLES `component_tbl` WRITE;
/*!40000 ALTER TABLE `component_tbl` DISABLE KEYS */;
INSERT INTO `component_tbl` (`component_id`, `mailing_id`, `company_id`, `emmblock`, `binblock`, `comptype`, `target_id`, `mtype`, `compname`, `url_id`, `description`) VALUES (1,1,1,'**********************************************************************\r\n[agnDYN name=\"0.1.1 Header-Text\"/]\r\n**********************************************************************\r\n[agnDYN name=\"0.2 date\"/]\r\n\r\n[agnTITLE type=1],\r\n\r\n[agnDYN name=\"0.3 Intro-text\"/]\r\n[agnDYN name=\"0.4 Greeting\"/]\r\n\r\n----------------------------------------------------------------------[agnDYN name=\"1.0 Headline ****\"]\r\n\r\n[agnDVALUE name=\"1.0 Headline ****\"]\r\n\r\n[agnDYN name=\"1.1 Sub-headline\"][agnDVALUE name=\"1.1 Sub-headline\"/]\r\n[/agnDYN name=\"1.1 Sub-headline\"][agnDYN name=\"1.2 Content\"/][agnDYN name=\"1.3 Link-URL\"]\r\n\r\n[agnDYN name=\"1.4 Link-Text\"/]\r\n[agnDVALUE name=\"1.3 Link-URL\"][/agnDYN name=\"1.3 Link-URL\"]\r\n\r\n----------------------------------------------------------------------[/agnDYN name=\"1.0 Headline ****\"][agnDYN name=\"2.0 Headline ****\"]\r\n\r\n[agnDVALUE name=\"2.0 Headline ****\"]\r\n\r\n[agnDYN name=\"2.1 Sub-headline\"][agnDVALUE name=\"2.1 Sub-headline\"/]\r\n[/agnDYN name=\"2.1 Sub-headline\"][agnDYN name=\"2.2 Content\"/][agnDYN name=\"2.3 Link-URL\"]\r\n\r\n[agnDYN name=\"2.4 Link-Text\"/]\r\n[agnDVALUE name=\"2.3 Link-URL\"][/agnDYN name=\"2.3 Link-URL\"]\r\n\r\n----------------------------------------------------------------------[/agnDYN name=\"2.0 Headline ****\"][agnDYN name=\"3.0 Headline ****\"]\r\n\r\n[agnDVALUE name=\"3.0 Headline ****\"]\r\n\r\n[agnDYN name=\"3.1 Sub-headline\"][agnDVALUE name=\"3.1 Sub-headline\"/]\r\n[/agnDYN name=\"3.1 Sub-headline\"][agnDYN name=\"3.2 Content\"/][agnDYN name=\"3.3 Link-URL\"]\r\n\r\n[agnDYN name=\"3.4 Link-Text\"/]\r\n[agnDVALUE name=\"3.3 Link-URL\"][/agnDYN name=\"3.3 Link-URL\"]\r\n\r\n----------------------------------------------------------------------[/agnDYN name=\"3.0 Headline ****\"]\r\n\r\nImprint\r\n\r\nDeseja alterar seu perfil?\r\n[agnDYN name=\"9.0 change-profil-URL\"/]\r\n\r\nPor favor, clique no link abaixo para cancelar sua inscrição nesta lista:\r\n[agnDYN name=\"9.1 unsubscribe-URL\"/]\r\n\r\n[agnDYN name=\"9.2 imprint\"/]',NULL,0,0,'text/plain','agnText',0,NULL),(2,1,1,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>Newsletter</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table bgcolor=\"#808080\" width=\"684\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr>\r\n    <td>[agnDYN name=\"0.1 Header-image\"]\r\n    	<table width=\"680\" border=\"0\"  bgcolor=\"#FFFFFF\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;\">\r\n            <tr>\r\n              <td><img src=\"[agnDVALUE name=\"0.1 Header-image\"]\" width=\"680\" height=\"80\" alt=\"[agnDYN name=\"0.1.1 Header-Text\"/]\" border=\"0\"></td>\r\n            </tr>\r\n        </table>[/agnDYN name=\"0.1 Header-image\"]\r\n        <table width=\"680\" border=\"0\" bgcolor=\"#FFFFFF\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;\">\r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td><td align=\"right\"><div style=\"font-family: Tahoma, Helvetica, sans-serif; font-size: 10px;\">[agnDYN name=\"0.2 date\"/]</div></td><td width=\"10\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td>\r\n              <table width=\"660\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                 <tr><td><p><b>[agnTITLE type=1],</b></p><p>[agnDYN name=\"0.3 Intro-text\"/]</p><p>[agnDYN name=\"0.4 Greeting\"/]</p></td></tr>\r\n                 <tr><td><hr noshade></td></tr>\r\n              </table>[agnDYN name=\"1.0 Headline ****\"]\r\n              <table width=\"660\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;\">\r\n                 <tr>[agnDYN name=\"1.5 Image-URL\"]<td>[agnDYN name=\"1.3 Link-URL\"]<a href=\"[agnDVALUE name=\"1.3 Link-URL\"]\">[/agnDYN name=\"1.3 Link-URL\"]<img src=\"[agnDVALUE name=\"1.5 Image-URL\"]\" alt=\"Picture_1\">[agnDYN name=\"1.3 Link-URL\"]</a><!-- [agnDVALUE name=\"1.3 Link-URL\"] -->[/agnDYN name=\"1.3 Link-URL\"]</td>[/agnDYN name=\"1.5 Image-URL\"]\r\n                     <td valign=\"top\" align=\"left\"><h1>[agnDVALUE name=\"1.0 Headline ****\"]</h1>\r\n                     <p>[agnDYN name=\"1.1 Sub-headline\"]<b>[agnDVALUE name=\"1.1 Sub-headline\"/]</b><br>[/agnDYN name=\"1.1 Sub-headline\"][agnDYN name=\"1.2 Content\"/]</p>[agnDYN name=\"1.3 Link-URL\"]\r\n                     <p><a href=\"[agnDVALUE name=\"1.3 Link-URL\"]\">[agnDYN name=\"1.4 Link-Text\"/]</a></p>[/agnDYN name=\"1.3 Link-URL\"]</td>\r\n                     [agnDYN name=\"1.7 Image-URL-1\"]<td>[agnDYN name=\"1.6 Link-URL\"]<a href=\"[agnDVALUE name=\"1.6 Link-URL\"]\">[/agnDYN name=\"1.6 Link-URL\"]<img src=\"[agnDVALUE name=\"1.7 Image-URL-1\"]\" alt=\"Picture_2\">[agnDYN name=\"1.6 Link-URL\"]</a><!-- [agnDVALUE name=\"1.6 Link-URL\"] -->[/agnDYN name=\"1.6 Link-URL\"]</td>[/agnDYN name=\"1.7 Image-URL-1\"]\r\n                 <tr><td colspan=\"3\"><hr noshade></td></tr>\r\n              </table>[/agnDYN name=\"1.0 Headline ****\"][agnDYN name=\"2.0 Headline ****\"]\r\n              <table width=\"660\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;\">\r\n                 <tr>[agnDYN name=\"2.5 Image-URL\"]<td>[agnDYN name=\"2.3 Link-URL\"]<a href=\"[agnDVALUE name=\"2.3 Link-URL\"]\">[/agnDYN name=\"2.3 Link-URL\"]<img src=\"[agnDVALUE name=\"2.5 Image-URL\"]\" alt=\"Picture_1\">[agnDYN name=\"2.3 Link-URL\"]</a><!-- [agnDVALUE name=\"2.3 Link-URL\"] -->[/agnDYN name=\"2.3 Link-URL\"]</td>[/agnDYN name=\"2.5 Image-URL\"]\r\n                     <td valign=\"top\" align=\"left\"><h1>[agnDVALUE name=\"2.0 Headline ****\"]</h1>\r\n                     <p>[agnDYN name=\"2.1 Sub-headline\"]<b>[agnDVALUE name=\"2.1 Sub-headline\"/]</b><br>[/agnDYN name=\"2.1 Sub-headline\"][agnDYN name=\"2.2 Content\"/]</p>[agnDYN name=\"2.3 Link-URL\"]\r\n                     <p><a href=\"[agnDVALUE name=\"2.3 Link-URL\"]\">[agnDYN name=\"2.4 Link-Text\"/]</a></p>[/agnDYN name=\"2.3 Link-URL\"]</td>\r\n                     [agnDYN name=\"2.7 Image-URL-1\"]<td>[agnDYN name=\"2.6 Link-URL\"]<a href=\"[agnDVALUE name=\"2.6 Link-URL\"]\">[/agnDYN name=\"2.6 Link-URL\"]<img src=\"[agnDVALUE name=\"2.7 Image-URL-1\"]\" alt=\"Picture_2\">[agnDYN name=\"2.6 Link-URL\"]</a><!-- [agnDVALUE name=\"2.6 Link-URL\"] -->[/agnDYN name=\"2.6 Link-URL\"]</td>[/agnDYN name=\"2.7 Image-URL-1\"]\r\n                 <tr><td colspan=\"3\"><hr noshade></td></tr>\r\n              </table>[/agnDYN name=\"2.0 Headline ****\"][agnDYN name=\"3.0 Headline ****\"]\r\n              <table width=\"660\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;\">\r\n                 <tr>[agnDYN name=\"3.5 Image-URL\"]<td>[agnDYN name=\"3.3 Link-URL\"]<a href=\"[agnDVALUE name=\"3.3 Link-URL\"]\">[/agnDYN name=\"3.3 Link-URL\"]<img src=\"[agnDVALUE name=\"3.5 Image-URL\"]\" alt=\"Picture_1\">[agnDYN name=\"3.3 Link-URL\"]</a><!-- [agnDVALUE name=\"3.3 Link-URL\"] -->[/agnDYN name=\"3.3 Link-URL\"]</td>[/agnDYN name=\"3.5 Image-URL\"]\r\n                     <td valign=\"top\" align=\"left\"><h1>[agnDVALUE name=\"3.0 Headline ****\"]</h1>\r\n                     <p>[agnDYN name=\"3.1 Sub-headline\"]<b>[agnDVALUE name=\"3.1 Sub-headline\"/]</b><br>[/agnDYN name=\"3.1 Sub-headline\"][agnDYN name=\"3.2 Content\"/]</p>[agnDYN name=\"3.3 Link-URL\"]\r\n                     <p><a href=\"[agnDVALUE name=\"3.3 Link-URL\"]\">[agnDYN name=\"3.4 Link-Text\"/]</a></p>[/agnDYN name=\"3.3 Link-URL\"]</td>\r\n                     [agnDYN name=\"3.7 Image-URL-1\"]<td>[agnDYN name=\"3.6 Link-URL\"]<a href=\"[agnDVALUE name=\"3.6 Link-URL\"]\">[/agnDYN name=\"3.6 Link-URL\"]<img src=\"[agnDVALUE name=\"3.7 Image-URL-1\"]\" alt=\"Picture_2\">[agnDYN name=\"3.6 Link-URL\"]</a><!-- [agnDVALUE name=\"3.6 Link-URL\"] -->[/agnDYN name=\"3.6 Link-URL\"]</td>[/agnDYN name=\"3.7 Image-URL-1\"]\r\n                 <tr><td colspan=\"3\"><hr noshade></td></tr>\r\n              </table>[/agnDYN name=\"3.0 Headline ****\"]\r\n              <table width=\"660\" bgcolor=\"#D3D3D3\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\" style=\"font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;\">\r\n                 <tr><td><h1>Imprint</h1>\r\n                 	 <p>Deseja alterar seu perfil?<br><a href=\"[agnDYN name=\"9.0 change-profil-URL\"/]\">Altere seu perfil</a></p>\r\n                 	 <p>Por favor, clique no link abaixo para cancelar sua inscrição nesta lista:<br><a href=\"[agnDYN name=\"9.1 unsubscribe-URL\"/]\">Cancelar inscrição</a></p>\r\n                         <p>[agnDYN name=\"9.2 imprint\"/]</p></td></tr>\r\n              </table>              \r\n              </td>\r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\"><img src=\"[agnIMAGE name=\"clear.gif\"]\" width=\"8\" height=\"8\"></td>\r\n            </tr>            \r\n        </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>\r\n',NULL,0,0,'text/html','agnHtml',0,NULL),(3,1,1,'',0x47494638376101000100880000FFFFFF0000002C00000000010001000002024401003B,5,0,'image/gif','clear.gif',0,NULL),(4,1,1,'',0xFFD8FFE000104A46494600010101006000600000FFE1006645786966000049492A000800000004001A010500010000003E0000001B010500010000004600000028010300010000000200000031010200100000004E00000000000000600000000100000060000000010000005061696E742E4E45542076332E323200FFDB00430001010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101FFDB00430101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101FFC0001108005002A803012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDEFF83FF07FE29FFC153BE29FED8DF17FE2FF00ED8DFB61FC0AF84DF02BF6C3F8F3FB1E7C05F80BFB1E7C79F157ECD1A2695A27ECD1E2AFF8579E2EF89FF13FC5DF0EFEC1E34F893E39F895E34B0D7756B0B0D5B5DFF8463C1DE18FECCB0B0D32E2FEE1DF49FA0FFE1CD3F0FBFE9205FF000586FF00C59E7ED3BFFCD551FF000469FF00927DFF000502FF00B4C37FC14F7FF5A77C555FB08ECA8ACEECA888A59DDC85555504B3331202AA8049248000249C5007E3DFFC39A7E1F7FD240BFE0B0DFF008B3CFDA77FF9AAA3FE1CD3F0FBFE9205FF000586FF00C59E7ED3BFFCD557D3FF0013FF00E0A29FB347C3A9AF34ED06FF00E27FC7EF1058B4F0DD787BF653F81FF187F6A1BEB2BE870ADA76AB77F02FC13E3BD2345BF49DA2B7B8B3D5B52B3BBB292789AF2082370F5F987F1C7FE0E19F845F015A6BDF8B3FB2CFEDA3F017C1F0CA91B7C43F8F9FB1F7ED33E04F09AA316613CB35FF00C2FB099229A3286254F36746120921246C001F4EFF00C39A7E1F7FD240BFE0B0DFF8B3CFDA77FF009AAA3FE1CD3F0FBFE9205FF0586FFC59E7ED3BFF00CD55705FB3EFFC1643E1D7ED4FE1D97C59FB3F78CFE0AFC56D16C9ADFF00B5E2F0CEA1AE2EBDA17DA4C9F6787C49E19D4754B4F13785AE6ED6195AD21F10E89A7CD7088D3430CD1024FD71E1CFDBBA069563F17780A58A02D106BBF0E6A89712A2F499974ED4E3B6491B3F3C4A754887FCB377E3CC201E09FF000E69F87DFF004902FF0082C37FE2CF3F69DFFE6AA8FF008734FC3EFF00A4817FC161BFF1679FB4EFFF003555FA71F0F3E317C3DF8A10B3784B5F82E6F624325CE8B78A6C75AB58C3943249A7CF89258010A4DCDA1B9B65DF1ABCCB236CAF4EA00FC79FF8734FC3EFFA4817FC161BFF001679FB4EFF00F3555E0DF177E067C5BFF8260FC44FD92BE357C13FDB27F6C3F8DFF0C3E2C7ED7FFB3CFEC9FF00B407C06FDB1FE3EF8ABF697F0D6BFE0FFDA7FE21E93F08B41F887F0E3C4FF111751F1B7C36F881F0CFC65E22F0EF88921D075F8BC39E2AD0EDF53D2757D314C92BEA1FBFF5F945FF000576FF009251FB1B7FDA577FE096FF00FADA5F096803F5768A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FC79FF8234FFC93EFF82817FDA61BFE0A7BFF00AD3BE2AAFD819E082EA09ADAE618AE2DAE22920B8B79E349A09E0990C72C33452068E58A58D99248DD591D18AB02A48AFC7EFF008234FF00C93EFF0082817FDA61BFE0A7BFFAD3BE2AAFD86A006AAAA2AA22AA22285445015555400AAAA000AAA0000000000003154F548F4C9B4DD462D692C65D1E5B1BB8F568F545B77D364D31EDE45BF4D452EC1B57B17B532ADDADC836ED6E641303196ABD5F8EFF00F0563F8EFADF85BC39E0CF81FE19D46E34D6F1CDB5F789BC713DA5C3DBDD5D785ECE76D2F47D019A29773E97AE6A6355BAD5A378E2F3BFB06C6D5659AD2E752B66F7F86320AFC4D9E60325A1515178BA92F6B5DA52F6187A30956C4565072873CA14A1270A7CD1739F2C2EAF73C5E21CEF0FC3B93E3737C4D39D5A784843968D36A33AD5AB55850A3494A5A454AAD48F3CED274E9A9D4509F2F2BFE6ABFE0ABFFF0004EFF813E10FDAC7E1FF00ED87FF000463F8A1F0F7F67DFDA1F4CF145DC3F1C3C01A3DA788F41FD9ABC5FA749135CCDAC78793C25E1BD63405FED9BAB0B7D23C71E08F0DE9175F0EBC6963AA5B7896C6EFC3FE28D1B559BC4DFB0FF0DBC4BAA78C7E1FF83BC51AE5869DA56BBAD6836573AFE95A3EA33EADA4E99E218435978834FD2B53BBB1D2EFB50D2ACF5BB5BFB7D2F50BFD2749BDD474E8ED6FEE34BB16BAFB347F9BB5F66FECFDE22D02CFC0B7961AAF883C37A45EDBF89F519123D6BC47A2E8D3CB6171A6E8A60315B6A77B66F2C29771EA07ED1189373C8D13B2886351FAEF1CF85795E41C370C7E4BFDA78CCC70F8AC353C47B492AFF58A35A32A75250C3D1A3174DC6B7B3A917072E4839C67CF75387E55C19E25E639D7103C16732CBF0982C4E1ABCB0D1A54A54A34B134631AB18CF115B112B4274215DCA551C94AB28429AA7CEA2BE9ED1B59D57C3DAAD86B7A25FDCE99AB699731DDD85FDA48639EDA78CFCAE8DC86560592589C345344CF0CC8F13BA37ECEFC01F8B69F17BC0D0EAF74B043E22D2A71A5788ED60431442F9214962BEB78999CC76BA842DE6C4A1DD5264B9815BF7240FE747C71FB587ECADF0CB5C3E19F889FB4EFECEBE07F118B4B7BF6D0BC55F1C7E17E85ABA595D9905ADD3E9FA8F8A6DEE920B8F2A43048D1059550B2165C1AFD58FF008273F8AAD3C7563AAF8FBC07AC5978D3E0FF008EBC3AF7FE18F887E12BFB5F11FC3CF145FF00873C4773A05C9F0EF8BF477BDF0F6B53E9F7CBAF6957A34BD52736D7BA6EA165749F69B1952DBF059C274A73A75212A75212709C271709C271769467192528CA2D34E2D269AB3573F6CA75215611A94A70A94E6B9A13A725384A2F671945B8C93EE9B47EA357E517FC15DBFE4947EC6DFF00695DFF00825BFF00EB697C25AFD5DAFCA2FF0082BB7FC928FD8DBFED2BBFF04B7FFD6D2F84B5259FABB4514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007E3CFF00C11A7FE49F7FC140BFED30DFF053DFFD69DF1557EC357E3CFF00C11A7FE49F7FC140BFED30DFF053DFFD69DF1557EC35007E49FF00C1593C07A57ED17F03BC5FFB207C445BC8FE0EFC74F0AE843C5B77E1DB97D27C6305D7847E2068DE31B16D0B5D923BCB2B068F54F0CE82D309B4BBF2F6E6EA22B179F1C8BF891FB2FF00FC135BF678FD927C09ACFC3BF85FA87C4BBFF0F6B9E2DBCF1A5D9F19F8AEC35CD422D66FF47D0F43BA16D796BE1FD28C766F63E1ED376DB491CA239D66951D7CF75AFE9F7F6AFF0085177F117C0906ADA159BDE789FC1D3CD7D656D0286B8D434ABB1147AC58C2814B4B3AAC16D7F6F1EE058D9CB0C4AF2DC2A9FC85AEECBB33CC329C5471B96632BE071508CE11AF87A8E9D450A8B9670BADE325BC5DD3B276BA4D726330182CC68FD5F1F84C3E370FCF1A8E862A8D3AF45CE37E594A9548CA1271BB71E68BE5766ACD26BE40F8BDF097C2DE0AF0741E20D11F52176DE26D2F47912F2E96E226B7BED2F5FBD7750B0C4564497498403F302B23F4C0CFCCD5FA23F17B47BFD73E19F8D6CF46D17FE121F1041A0DEEA9E1BD1A39ED2CEEB54F1068F1FF006A695A459EA1A84D05869B71AEDCDA2E82751BD905AD9DBEA9713CFF00BB4247C99FF0407FDA4BF63EFF0082827C43F8A9A0FC47D275FF00875FB54FC03F184D3597ECC5F11EFF004B8CEADE13D32DEDED2EBC6E2C2E74CB1BFF00146A7E14F1947AA68BE2AF09C4908F04CF63A1DEF88ED750B7F13594765FD03C1FE2B65F97F0B6225C459862F1F9E61B1589F63869AA957138DA328D29E1DC710E9FB0A74D549CE949D4A8EA5354E751539C7962FF000CE2FF000DB31CC78969BC832FC160F2AAF86C2FB6AB4BD8E130983AA9D5A755BC3C5C65524E34A35251C2D1A8DB9C5D45073E797E897C27FF0082147FC13B7F695F861E02F8C1FB647ECA9E1EF8A5F1B3C57E1E8AF2F3C41AC78CFE2D7876FECFC273DEDEDE783B469F4EF0A78FFC3DA4C72DAE87776D773E349B5BB86E6FE7B4BB33CD6A6E25FD97FD9BFF0066DF825FB22FC18F06FECF5FB3A7812CFE19FC1BF87CBAEAF83BC0FA7EABE20D6ACB425F13789758F186BAB6FA8F8A757D735B99751F12F88359D5A5177A9DC08EE2FE648045008E14F71A2BF01CDF33AF9CE698FCD712A2ABE3F155B15523149460EACDCA34E364AF1A71E5A716D733514E4DC9B6FF006FCAB010CAF2CCBF2DA73F690C060B0D83551C541D5FABD1852755C13928CAAB8BA925CD2B4A4F57B857E517FC15DBFE4947EC6DFF00695DFF00825BFF00EB697C25AFD5DAFCA2FF0082BB7FC928FD8DBFED2BBFF04B7FFD6D2F84B5E71DE7EAED14514005145140057E3AFF00C15DFF006B5FDACBF65087F624BDFD917C296BF12BC5BF133F6A6D5BC37E3EF83CDA6E8F75ACFC65F85BE04FD9DBE37FC6BF17FC34F07EA7AADBCF2F87BC73E25B3F8642DBC19AAE9924178DE261A5584A2EEC2F2F34FBBFD8AAFCFEFDB1BE027C4DF8BDFB407FC1367C7BE04D1AD354F0CFECE7FB5C78AFE2C7C58BDB8D634BD365D0BC11AA7ECA7FB44FC2DB2D4ACECF50BAB7BAD6EE24F1A7C41F0B69ADA769115E5FC705F4BA84902D8D95DCF080784EB7FB7BDE7C51FDA7FF00E09067F673F1ED86ABFB347EDCBE14FDAEBC5FE3281B44D0AF350F10D97C2FF81DA178CBC13A65D5FDCDBDF6AFE10F10782FC6375AAE9DE2BD174AD46CAEEDF5CB0D47C3BAFACCDA7C96D1FA87C38FF82A87ECDFF137C6DE07D0F48F0B7C7BD13E18FC59F1EC9F0B3E0AFED39E2FF841ADF86FF66CF8CFF119B52D5F49D2BC29F0F3E215EDC9D46F1FC59A8683ABDB780BC45AEF86740F067C429AD218BC11E25D7E5D57454D4BF3FF00C55FF04A7F8D7E10FF0082ABFC11F8B9F06EEF48B6FF00827DEAD07ED99F12BC7FE07D3358B4F0E78A7F678FDA1BF69DF81F77F0DBE246B7F0EA2FED2B0D5AE7C13F1AB5DB7F0D78E1748F0CC7772F82BE257FC26FAEC29A0691AEDBF99E25FB337FC1307E30780740FD92FF0066FF001D7EC4DA8CB17ECE5F15BE164DE36FDA3FC6BFF050DFDA2FC79FB2FF0089BE1DFECFDE27B4F117823E23FC1FFD99346FDA634BF1068BF17FC4171E14F09EB9E17F0378CBE0DE8BF0ABE1978C9DE694F887C3FA74162403F6525FF82997ECAD67E09FD95BC73AC6BDE2ED06D3F6C4FDA0EEFF0065FF00841A0EB1E0DD52D7C591FC62D33C5DE30F87BAEE81E33D050CD71E16B1F0EF8FFC15A9782B5CD72E9E7D2AC7C43A86816A6E5E0D66D2E5A87C49FF00829A7ECFBE02F14F887E1E787FC39F193E34FC53D1FE32F8ABE03E8DF0B7E09FC3F5F1978D3C75F103E1E7C33F047C58F8A50F83A3BDD6B42D066D13E16785BE2178661F1EEBFAFEBDE1ED3748F10DDBF87609AFB5544B797F2CFE35FF00C12B7F690F885F1A7FE0A1771A6E99A48F84707847E2BFC7AFF82795EC7E2DF0F41E228BF6CCFDA0F5FF00D9FBE3BF8F64BA49E686F7C17A7F863F687FD96F45BDD3F59D727B3D36E348F8D3E2BFB1CCD047A99B6EF3C4DFB007C5E93F64BFD91B47F8C3FB24F82FF6A3F8983E287C72FDA5BF6B2D2BE1C7C6097E047ED43F0C3F687FDA62F7C51F1275EF127ECADFB40E83F147E0FF0086F4C4F02F8C7C61A8FC34F1925E7C41D1EDFC79E07D0FC2579A64B70DA5323807D6371FB7D6A1F167F680FF00826CE9FF00052EFC61E10F86BFB407C6DFDB1FE11FC7AF877F13FE1AB783FE21E97E26FD9E7E02FC4ED76E3C15E22D2BC51A649ADF85B5AF077C4FF05C2F737BE18D49B4BD7ED2056B4D5F5BF0FDFC32CFE8FF000E3FE0AA1FB37FC4DF1B781F43D23C2DF1EF44F863F167C7B27C2CF82BFB4E78BFE106B7E1BFD9B3E33FC466D4B57D274AF0A7C3CF8857B72751BC7F166A1A0EAF6DE02F116BBE19D03C19F10A6B4862F0478975F9755D15352F84BE11FEC45FB71F88FC4BFB126A1FB426A5E39D6BC25F0B7F686FDBDFC412BFC41F8DBA0FC4FF008E9F01BF66CF8EDFB2EF8E7E13FC1CF04FC40F8BF617D69AAFC5DF89563E37F12EA576DE26F0D6A9E32BCF0CE8DAF687A3CDE2CBDB1F09C7A927CFFF00B337FC1307E30780740FD92FF66FF1D7EC4DA8CB17ECE5F15BE164DE36FDA3FC6BFF00050DFDA2FC79FB2FF89BE1DFECFDE27B4F117823E23FC1FF00D99346FDA634BF1068BF17FC4171E14F09EB9E17F0378CBE0DE8BF0ABE1978C9DE694F887C3FA74162403D3E7FF82D37C718BE06FED41F1513F676F15A6AFF0009FF00E0ABDF0C3F623F07E9379F0AFC4115A45F087C71F17FE19FC37D406B70278E85DDEFC70D2F49D4BC50D7F671DDDAE85A6FC40F19FC2FD19F4ABAD2F559205FD13F883FF0555F807F0F75EF166912FC2FFDA8BC67A5FC22D1BC33ACFED31E34F871F023C41E35F087ECA43C4BE0CD23E2249A37C77BED26F1F52B0F14784FC09AE697E2DF1F785FE1EE93F10F5EF04683771DFF0088AC2C616527F39BC69FB0D7ED956BF087FE0A0BF0B340F82565E28BCF117FC1593E13FF00C147FE016BB69F14BE1D699A5FC74F06DA7ED17F02FE33F89FE17DB43AC6B967A8FC38F18785F45F855A869175ABF8FAD74CD0354D535289B449EFED2D84F75E7FE38FF827B7ED0FA1F8DBF6C6D6A2FD89FE277ED01A9FED9FE2FBFF00DA17C01AAD97FC14ABE2BFC0DF855F05BE227C60F86FE10F0CF8FBE077ED45F0D7E1F7ED0DF0CA0F14782FE19F8BF40BFB81E34F81DE17F8AB7FF10BE1E5DDB786ACFF00B08D8693A5E8E01FB27E2AFF00828D7C05D13F68AF037ECBFE11D03E30FC6AF89DE3BF0C7C1BF8896F37C0DF86DA8FC49F057867E11FC70F107893C35E12F8CFE34F1BE93769E1EF0E7C29B1D4BC39BFC41E2EB9BC92DAD34FD6B49D4F4D8756B18F5B9F46ADFF000528F8F7F137F672F801E05F1EFC27D66D342F136B9FB5C7EC4FF09F51BDBCD1F4BD7229BC11F19FF6ADF849F0B7E20E9AB67ABDADE5AC571AB782FC57ADE9B6DA8C512DFE973DCC7A869D3DB5F5B5BCF1F8DFECBBFB1478E7E0A7ED63F1635BBEF0DE91E18F815A8FFC138FF613FD933C11A8FC3CF19788F4F8ED3C47FB3F6A3FB47E9FE33D0BC212EABE30D6FE3078774BF0D787FC7DE0D6F09F8AFC47E25BEF144B1DD433FF00C25BAAF88F4CD4B515E17F6DAFD82BC77A77EC9D7FE10FD970FC7DFDA27E225B7ED41FB15FC723E08F8F1FB59FC40F8997FA9E87FB39FED31F0EFE2C789B4AF06F8B7F694F88FADE85E07B9D43C31E1FD6BCD86CF52D22D75CBF874B5BF5BC9ACAC16200FD4BF8DDF1B3E18FECE5F0A7C69F1B3E3278A2DFC1BF0D7E1FE971EADE27F104F67A8EA4F6D15CDF5A693A6D958693A3DA6A1AC6B5ACEB5ACEA1A7689A0E87A3D85F6AFADEB5A8D8695A659DD5F5E5BC127C9DF0B7FE0A4DF023C77E2BF1CF80BE21F84BE387ECB5E3AF01FC21F11FED0977E13FDA9FE185E7C29D47C41F01BC1D76961E30F8B3E15BE8F52F10E81ABF86FC1D773D8C5E32D29B58B5F1AF83C6ABA3CDE28F0AE9106AB612DC7CC3FB48E93FB74FEDD5FB3F7C43F84977FB1A5EFECA9E38F076B9F057E3F7C1EF13FC4DFDA2BE0F78F7C07F113E28FECF5F1F3E187C63F0FF00C20F16DAFC1BD5FC55E26D07C39F10A0F065FE87ABF89AE34B9F4FD1ADA7376F6F7D3A43653F897ED6DFB3E7ED0BFB7C3F8FBE26FED35F0C6EFF00E09FDF047E077EC11FB71FC26875BF157C4EF007C54F88DACF8E3F6A1F879E0CD1FC57F102283E07EB9E3AF0FE8FF08BE0F7857E1C5EEA6D2DFEAD6DF10FC6DAA6A515BDBF83746D3ED276B900FB97E0FF00FC1537E037C5FF00891F04BE190F861FB50FC2DD4BF6964F11EA5FB3DF88BE347C07F11FC3AF067C5EF087853E18EBDF1735AF1C786FC43A95CCF1695A25B783B425BBFEC8F1A41E15F1C97D6F4199BC209A65ECBA8DAC5F0E3FE0AB5FB34FC4CF1778074CD2BC31F1F7C3FF000B3E3078FA1F857F047F69CF1B7C1AF10F853F671F8CFF00126FB56D4B43D0BC23E00F1DEA52A6B135C78BF55D1F53B1F01EBBE23F0AF877C21E3DB9B6860F06F88B5C9F53D1E3D43F31EF3E2D7ED01FB4CFC7CFF824AFC0DF8DFF000A3E157C23D13C47A27ED27771F8DFE13FED05E17F8D33FC58D1B50FF827C7C6FF008743E357C16B3F0968F05C786BE05349E34DFA66BDF119F42F135E6BDE28F0368D078784967AA5DBFAAE8DFB357EDE1F11FF0066DFD88FFE09E1F147F673F0CF827C19FB2E7C50FD90EEBE2B7ED6DA57C64F02DF7C37F1EFC2EFD87BC79E06F1B782EFFE0DFC38B4D435FF008C69E3FF008C0DF0AFC21A76A7A1FC49F06784BC3BE084D6FC4777FF00091EB6D61A6DADD007E84FFC14B3F6B3F107EC8DF013C27E21F066BFF0E7C15E38F8C3F1C3E18FC03F0B7C4AF8C1298FE157C245F1DDE6A5AB78DBE2F78F50EA7A2457DA2FC31F85FE15F1DF8D2DB48BAD7346B1D6F5BD1B48D1EFF52B7B3BE9CB7C13E07FDBC3F681D17F655FDBD3E2CFC18FDA33E11FFC14925FD9D7E14D9F8C3E1D6A965F0AB57F849F1EBC27F136E3FE12D1E28F0C7C5FFD9E7C25A3E833F883E14E8BE1DD174EF895F0DFC4BE19D3FC29E2AF88DA369FE32F0A680DE34BBB7B0F13D8FDE5FF000526FD973C69FB4DFC25F83FA97C33D27C37E2CF89BFB2EFED49F047F6BCF017C38F18EA56FA0F85FE2D6B1F05B55D51F53F85DAA78A2EB4BD6A0F0A5C78CBC25E22F1269DE1EF10DD69971A5D8F8ABFB0975F7B3F0E4FABDFDAFE747ED2BFB0DFED6BFB78B7ED8BF1B759F835E1DFD9B3C47F127F665F80DFB37FC36FD9BBE2E7C4EF0AF8B23F8DF6FF0006FF00691B1FDA57C6DA87ED01E21F817A8F8D3C19E17F09FC48D2EDEE3F67BF0CD8E93E27F883ABC1E0EF1178DF5BF1559E91A76A36BE18BB00B7FB377FC146BE20786FC4FF00B516A93FED69F0E7FE0A71FB36FC0BFD80756FDB3FC47F1DBE127C3CF067C367F873F127C3D26B7AAD97ECFF007DABFC36BAD67C0974FF00153C07A1F88BC5DE16D0F5BB73F12BE1EFFC215AC5A78CDB5A4D56C5EDBD93E197C6BFDBCFE0978FBF612F1B7ED43F18FC0BF18BE1C7EDEB7F3F803C6BF0ABC3DF06340F84CDFB31FC6CF147C09F16FC7CF86FE1FF0085BE2B9FC5526BFE33F054927C3FF16FC25D6ACFE2B5E6B3E32D5759BCF0AF8A6C2FF458975DD0D381D6FF00631F8EBFB66FC6DF1978CBC5DFB32E9BFF0004EEF86B3FFC13DFF69CFD8A75E8E2F1B7C24F1F7C45F8C9AA7ED3165E0ED3B46F3BC3DF03FC43E23F87F0FC22FD9FD7C33AE788FC2775E27D7747F1D6AFE2AF13C56BA7F86F41D024D704BD97837E1E7EDE7F197C5FFB08F877F682FD996DFE1AF81BF605B8D67E2FFC4BF1745F18BE13FC4A9BF6A9F8EBE04F80BF103E02FC27D3FE04D8C7AF5C788FC3FE19D76EFE21F887E2BEADE20F8E6DF0B35BD1B51B7F0B786A74BE9C6B1E22B200FB6FE14FFC144FF667F8D7AE7C0CF07FC39D73C51AF78FBE3BCBF15174EF8743C2D7969E3AF8630FC11BBBDD1FE2A5DFC73F0F5DCB15CFC24B7F0878AED20F044DFF0009535B4FAD78C356D1F45F0CC1AD497CB2A7E397ECE1FF000530FDA7BC71F1C7F662B2D7BF685F863F127E347C7BFDAB3E247C0CFDA13FE096FE1DF85DE18D07E25FEC55F0C3C1D2FC46975FF893AF78C6D758B9F8A7657BF06B4AF0D780B52F1B789BE28DB9F87FF150F8CEE6D3E1B5AE9579A9F84ADE4F77FD963F623FDB33E02FED45ABFEDB1E26F0F7C37D47E20FFC142BFE123D07F6EBF86BE00B5F875A45EFECAF6F669A9DF7ECD3E24F839E3695BC3937C41B3F85BA4CB2783FF695B5835DBED57E2EF8EB5E3F187C2FA7EBDA86830D95EF927C27FD873F6AEB0F849FB02FEC6F79FB1A7C36F8457FFB1B7ED19F043E2678FBF6F1F0F7C52F86B7FE1FF1D685F02FC5ABE2BF17F8FF00E12F8656FF00C59F1F354F8A5FB53DAC1A8683F11747F8C5E11F0EE83A63FC41F1B5CEA9AF6BF0DBE90F2807AB7C53FDB03F6D8B2F829FB4BFFC148FC13F153C1DA67ECDDFB2DFC71F8DDE14D3FF0064CBFF0082F68D6FF19BE017ECCFF19356F831F183C7FAF7C69D7B51D3FC79E12F889ACCDE10F88FE33F026A5E1DB34F87BA0D9681E19D2FC4BE1AF11A5DF8835187ED8F8BDFF054DF803F097E20FC6EF87107C3BFDA4FE2D6B1FB3345E18D63F68AD53E097C15D63E227873E0DF817C63F0DFC31F153C3BF11FC4DABD95FDA2EB3E19D4FC23E23B9BBB5D2BC090F8BFC7D707C25E33B9B7F054DA5686752B9F84FE237ECA7FB71CDF027F6AEFF8268F84BE09699AAFC09FDA63E3E7C64D6FC27FB62DDFC59F03DEF83FE1A7ECDDFB54FC59D6BE337C69F0D78D7E10789F5FFF0085AFAB7C53F075CF8D3E24780FC1FA0783FC3377F0F3C4D6DACF853C4977E2DF0C1B7D7B4C8D9A57C47FDAAFC2BFB6DFFC1647E1A7ECCFFB2968BF1DBFE12BF177ECCDA4F873C4B27C52F877F0B3C3FF000D3C75ADFEC2BF05F40D365F8B4BE29BBB0F14EA3F0A61B086C754B76F859A678EFC59A6CBA5F88B4FB5F064726B965A83007E9778CFFE0A41FB25FC3B93C612F8DBE21BF87342F0D7ECD3A07ED71A0F8BAFF4C98F84FE2B7C0CF10DC47A7DA788FE106B16EF3A78EF58875BD43C31E1D9BC1D63143E2CB9D73C73E06B2D2B47D47FE129D2E59BEC7F06F8917C65E11F0B78B9742F1278613C53E1ED1BC449E1BF196932681E2ED0135AD3ADF514D1BC53A0CB24D3689E21D356E459EB3A44F23DC699A8C3716539F3A0703F9C5F891FF0498FDA7BC7FE06FD8E3E05687ADF837C1FE17FF8249FECDFF04358FD92FE296BB67E0DF171FDA87F6D5F05687E101A95AFC41F0BEA16FABEADE0EFD97B4BB1F87769E13D5F40BA93C31E2DD67C4DE3883C6361FDA117C2CF09DEDD7F447F0BFC41E33F15FC39F047893E237806E7E1678FF5BF0BE8DA8F8D3E1C5DEBFA078AE5F0578A2E6C617D77C389E27F0B5F6A5A07886D74CD48DCDB58EB5A6DD793A9D925BDE3DB58CF34B636E01DDD145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401F8F3FF0469FF927DFF0502FFB4C37FC14F7FF005A77C555FB0D5F8F3FF0469FF927DFF0502FFB4C37FC14F7FF005A77C555FAE1A66BFA16B52EA1068FAD693AB4FA4DC7D8F54874CD46CEFE5D36EC8622D7508ED6695ECEE08473E45CAC72E15BE5F94E0035ABE4BF8C3FB26F84FE22DE5DF88BC3779FF08878A6EB74B746383ED1A16AD72CFB9AE2F6C94A4D697528CA49776122C6C7F7D358DC4E5E47FAD28A00FC7AF117EC8BF1AF42964167A1587896D91884BBD0B57B260EBFBD21BEC9A9C9A6DF0609102CA2D9C6E9638D1A472C17F1FF00F6AEFF008211693FB487C4ED27F68AF047873E367ECB7FB55787351B6D6F44FDA13F67FBC7F08F8B27D7AC123834ED63C49676ED0C5AAEA9616CAF6F0EBFA45E786BC5D3C060B2BEF12DDE99676DA7C7FD82D7CD371FB63FECBB693CF6B75F1C3C076D756D3496F736D71AA3433DBCF0BB473413C3242B24534522B4724722ABC6EACACA18115DD82CB332CC9D48E5D9763B3074545D5582C262314E929B6A0EA2A14EA3829B8C945CADCCE2D2BD99CF88C661309C9F5AC561F0DED39B93EB15E951E7E5B73727B49479B979A3CD6BDB995ED747E307C00F82FF00F070D7C36B1B0F0C6A3FB6EFECFBF1BFC39611A5A5AF8ABF698FD8EECED7C656F601B6DAA6A33FC28FDA27E19EA1E22BEB7B471E76A7AA35E6A379716C8752BB92E27B895BF53BE19FC15FDB73506B6BFF00DA2BF6CEF0FCF2C52979FC2DFB307ECFBE11F853E1BD461276B59EA9ADFC64D63F688F199B39E166477F0D6AFE11D6ADA60B7165AEC0C1513EA1D27E2E7C35D73C5EBE00D2FC63A35C78D5F40B4F142785DA692DB5A93C3F7D69657D6BAA4763771413496F25AEA16931D8AD246AF2096346B7B858897E2EFC3483C55E29F034BE32D1478BFC13E1C9BC5FE2AF0E09DDF56D13C336F6DA75E4DACDE5A246D20B24B6D5B4D977C4246617B02AA976DA13CB3328CDD3797E35548E1D62E50784AEA6B0929C69C714E2E9F32C3CAA4A34D566BD9B9CA3152E6690FEB386E573FAC50E5556545CBDAD3E555A37E6A4DF359558D9F3536F9959DD2B33BFB6B78ED2DADED6269DE2B6822B78DAE6E6E6F6E5A386358D1AE2F2F259EF2EE7655065B9BA9E6B99E42D2CF2C92BBBB7E54FFC15DBFE4947EC6DFF00695DFF00825BFF00EB697C25AFD1FD07E29FC3BF14781EEFE257877C63A16B5E03B0B3D6350BDF1469D78973A55A5A787D6E1F599AE268C178869D1DACF25C23A09162412046478D9BF2E7FE0A89E34F0AFC42F809FB12F8C3C13AF69DE26F0C6AFF00F055DFF8261FF666B7A54DF68B0BDFECFF00DB87E17E977BE44D85DFF66D42CAEED25E06D9ADE45FE1CD455C1636846B4ABE131546387C42C257955C3D5A71A18B719CD616B39C22A9E21C69D492A3371A9CB4E72E5B424D542B51A9ECF92B529FB6A6EB52E4A9097B5A2B92F569D9BE7A6BDA53BD48DE2BDA435F7A37FD84A28A2B94D428A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002A29E086E619ADAE618AE2DEE229209E09E349619E1950C72C3345206492291199248DD591D18AB0209152D1401E0DF0A7F657FD987E03EBDAE78ABE077ECE3F01BE0CF89FC4D66DA77893C47F0A7E107C3EF877AF78834F6BC4D45AC75CD63C21E1ED1F50D5ACDB508E3BF6B6BFB8B884DE4697453CF5571EF3451400514514005145140051451400572BA2F813C0FE1BF11F8CBC61E1DF06F85341F16FC45BCD1751F883E29D17C3DA4697E23F1DEA1E1CD12D3C33E1EBEF196B7636706A7E27BCD07C376163E1FD16E75BBABE9F4BD12CAD349B1782C2DA1B74EAA8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A00FE47FC45E1BFDA1FC5BFF000488FF0082CCE85FB3243F11AFBE21DE7FC15D7FE0A00DE20D17E0EC97517C5BF127C1A83F6EAB79FE3CF86BE1B3588FB74DE2BD77E0E47E36D3ECEC34E2354D5ADA7BCD2349126A97F67149CDF82B4AFF00827978BFF6D1FF0082685CFF00C10F7E155CFC3EF899E03F8B924DFB6678A3E117C26F8ABF08BC15E1BFD8887C39F130F895E08FDAE359F15E81E1AD33C4BF123C43E2DFF842EDFE1EDA7C40B8F12FC4483C6BA4DFDEC77D65A89D3AF2EBF417E067C5DF889FF04C1F8B7FB64FC12F8D5FB257ED7FF163E187C6FF00DB0FE3EFED8FF01BF680FD93FF00679F887FB4FF008435FF000D7ED2FE2A5F889E27F871F10F41F845A4F88BC67F0CFE207C36F1B6A3AFE830A788BC3B6FA1F8ABC391699ABE93A9C855E5D43EA2FF0087BB7C28FF00A336FF0082AEFF00E2ADFF006D2FFE74B401F88BFF0004DDF84BFF000570F8C7F01BF66DFDAF3C47FB4F78CBC2FF000EECC7C6DF187C62D57E21FED9BFB41FC5AF1D7C63F87BA18F8C7E0DB6F017FC32EF8C3E05E87F0E7E12F88A3D6EC3C337BA4F8FB42F8EDAB6B1E1FB6F0F43AF69D6B79A96B325869BE15FF04F6FDA9FC7FE30FD933C53E29F8D7FB6AFC6FB9FDAE0FEC37FB4178ABE1C7826CBF6CFFDAF3E20F8BBC4BF19747FD9DFE2BEBFAA4DF133E0DF8EBE067C3AF861F0CBC4BE10D2B4D6F1A784B4FF00067C4AF88CBA7F8CB41B4974FD760BED3B4B875AFE8BFF00E1EEDF0A3FE8CDBFE0ABBFF8AB7FDB4BFF009D2D1FF0F76F851FF466DFF055DFFC55BFEDA5FF00CE96803F1EBF65BFDA27FE0A71E05F8F7FF0465FD97BF6B0D5BE2478F3C15F14359D7BE2EE93FB5FF8575CD774CF0EFED07F06BC49FB177C4BF1A5BFC11FDAAFC3FF00DA6F3D8FC6DF83DF17F54F87D6F6DA96B06E742F8A1A75BE83AEDA0B6F11C5E24B6D5BF563F663F8A7E1AF87BE17B1B1F18FC61BBF0D59DA7C40F1F6A97FF0ED3F67BF127885EE34BBFF001CEBB7D0097C79A77877557BCFEDBB39A2D46DEFECA5FF0042B2BBB5B18E226D0C92F5BFF0F76F851FF466DFF055DFFC55BFEDA5FF00CE968FF87BB7C28FFA336FF82AEFFE2ADFF6D2FF00E74B5EC65B9A470387C661A74275618BAB84AAE54EAD0A7384B09F59E556C460F1B4A719FD61B92749493846D2B3927F3F9BE431CD71D9663655E10FECD86322A854A35AA52AF2C554C0D58BAAE863309270A52C0AE6A3273A55D54E5AD174E32854E5FE27E81AEEAFFB44FC64FDA27E107DBAFF00C5DF07BC0DF017E23782F4CB596FF4BB3F883F0FEE3C3DAD5D7C47F063D918127B91AA784A6D22E96D12C65D56D2F06936305B4377AAC31CB47C15F0A7C69F0F7E3E7C56D77C7A2E2FFC75F11BF611F89BE3FF0089BAD5B25EC9E1F8FC7FE28F89734927877489A60F6D676DE1DF0DE99A1E8567A6C331516DA41BC894C53973DB7FC3DDBE147FD19B7FC1577FF156FF00B697FF003A5A3FE1EEDF0A3FE8CDBFE0ABBFF8AB7FDB4BFF009D2D7D0478DF171CBBFB36382A1ECE59753CB275E53BE26585A3470F0A347DAAA49AA10C452AD8D951D633C4E239E4ED4A9A5E14381E3196226F339BFAC66B8BCDDD18E129C70947178BA95F9EA50A2AB3A91AAB0D56183552788A96A149C69C69AAD5632F2EF83FF03FE2737837E17FC0AD05EE20FD9F7F680F01F817E2BFC58D52FF0051D5E3D47C1D2F842CF4583E31FC3ED2661218F44B8F1F6B973E19F3159ADAE6C85D7896C45BBDA585D7D8BE7DF8D1A7DFE97FF04E5FF826C58EA76577A75F41FF00055DFF00827BF9F677D6D35A5D43E6FF00C148FC37347E6DBDC247347E6432472A6F41BE37475CAB293F69FF00C3DDBE147FD19B7FC1577FF156FF00B697FF003A5AF987E3AFC75F89BFF052CF89BFB22FC05F80BFB22FED87F0BBE1F7C2EFDB0FF66FFDACBE3FFC7FFDACBF66FF0088DFB31F80BC2BE02FD98FE2369BF17B4CF02F8174CF8BDA6F85BC5FF127E23FC49F17F85BC3FE16B4B4F0B787EFB49F0BE937D7FAF6BD7F15B44AA98E7BC658ACF70388C056C251A10C46694336A9529CEF52A62E8D3CCF0EEAD57ECE1ED6B56C26370B87AB5A56728E5B464A29D4928F7643C271C8ABE0EB2CC2AE3160F2FC6E5D4E35A846128D2C656CB312E14E70A8D53C3D1C460313568D0709B87D7EA538D554A85383FDFBA28A2BE34FAF0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFFD9,5,0,'image/jpeg','logo.jpg',0,NULL),(5,2,1,'[agnDYN name=\"Text\"/]',NULL,0,0,'text/plain','agnText',0,NULL),(6,2,1,'',NULL,0,0,'text/html','agnHtml',0,NULL);
/*!40000 ALTER TABLE `component_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_tbl`
--

DROP TABLE IF EXISTS `config_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_tbl` (
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `classid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tbl`
--

LOCK TABLES `config_tbl` WRITE;
/*!40000 ALTER TABLE `config_tbl` DISABLE KEYS */;
INSERT INTO `config_tbl` (`class`, `classid`, `name`, `value`) VALUES ('linkchecker',0,'linktimeout','20000'),('linkchecker',0,'threadcount','20');
/*!40000 ALTER TABLE `config_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_ban_tbl`
--

DROP TABLE IF EXISTS `cust_ban_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_ban_tbl` (
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`company_id`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_ban_tbl`
--

LOCK TABLES `cust_ban_tbl` WRITE;
/*!40000 ALTER TABLE `cust_ban_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `cust_ban_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_1_binding_tbl`
--

DROP TABLE IF EXISTS `customer_1_binding_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_1_binding_tbl` (
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mailinglist_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_type` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_status` int(10) unsigned DEFAULT NULL,
  `user_remark` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `exit_mailing_id` int(10) unsigned DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT NULL,
  `mediatype` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `cust_1_bind_un` (`customer_id`,`mailinglist_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_1_binding_tbl`
--

LOCK TABLES `customer_1_binding_tbl` WRITE;
/*!40000 ALTER TABLE `customer_1_binding_tbl` DISABLE KEYS */;
INSERT INTO `customer_1_binding_tbl` (`customer_id`, `mailinglist_id`, `user_type`, `user_status`, `user_remark`, `change_date`, `exit_mailing_id`, `creation_date`, `mediatype`) VALUES (1,1,'A',1,'',CURRENT_TIMESTAMP,0,CURRENT_TIMESTAMP,0),(2,1,'T',1,'',CURRENT_TIMESTAMP,0,CURRENT_TIMESTAMP,0);
/*!40000 ALTER TABLE `customer_1_binding_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_1_tbl`
--

DROP TABLE IF EXISTS `customer_1_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_1_tbl` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT '2',
  `mailtype` int(11) DEFAULT '0',
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_1_tbl`
--

LOCK TABLES `customer_1_tbl` WRITE;
/*!40000 ALTER TABLE `customer_1_tbl` DISABLE KEYS */;
INSERT INTO `customer_1_tbl` (`customer_id`, `email`, `gender`, `mailtype`, `firstname`, `lastname`, `creation_date`, `change_date`, `title`, `datasource_id`) VALUES (1,'nome.sobrenome@seudominio.com.br',0,1,'Nome','Sobrenome',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,NULL,0),(2,'sem.nome@seudominio.com.br',1,1,'Sem','Nome',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,NULL,0);
/*!40000 ALTER TABLE `customer_1_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_field_tbl`
--

DROP TABLE IF EXISTS `customer_field_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_field_tbl` (
  `company_id` int(11) NOT NULL DEFAULT '0',
  `col_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `default_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mode_edit` int(11) NOT NULL DEFAULT '0',
  `mode_insert` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`company_id`,`col_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_field_tbl`
--

LOCK TABLES `customer_field_tbl` WRITE;
/*!40000 ALTER TABLE `customer_field_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_field_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasource_description_tbl`
--

DROP TABLE IF EXISTS `datasource_description_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasource_description_tbl` (
  `datasource_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `sourcegroup_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasource_description_tbl`
--

LOCK TABLES `datasource_description_tbl` WRITE;
/*!40000 ALTER TABLE `datasource_description_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasource_description_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date_tbl`
--

DROP TABLE IF EXISTS `date_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `date_tbl` (
  `type` int(11) NOT NULL DEFAULT '0',
  `format` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date_tbl`
--

LOCK TABLES `date_tbl` WRITE;
/*!40000 ALTER TABLE `date_tbl` DISABLE KEYS */;
INSERT INTO `date_tbl` (`type`, `format`) VALUES (0,'d.M.yyyy'),(1,'MM/dd/yyyy'),(2,'EEEE d MMMM yyyy'),(3,'yyyy-MM-dd'),(6,'dd/MM/yyyy'),(7,'yyyy/MM/dd'),(8,'yyyy-MM-dd');
/*!40000 ALTER TABLE `date_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doc_mapping_tbl`
--

DROP TABLE IF EXISTS `doc_mapping_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doc_mapping_tbl` (
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagekey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `doc_mapping$pagekey$unique` (`pagekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doc_mapping_tbl`
--

LOCK TABLES `doc_mapping_tbl` WRITE;
/*!40000 ALTER TABLE `doc_mapping_tbl` DISABLE KEYS */;
INSERT INTO `doc_mapping_tbl` (`filename`, `pagekey`) VALUES ('what_are_templates_.htm','templateList'),('list_existing_mailings.htm','mailingList'),('sending_normal_file_attachment.htm','attachments'),('creating_a_new_mailing.htm','createNewMailing'),('entering_basic_mailing_data.htm','newMailingNormal'),('create_new_mailing_using_the_w.htm','newMailingWizard'),('inserting_content.htm','contentList'),('creating_text_and_html_modules.htm','contentView'),('using_graphic_elements.htm','pictureComponents'),('create_trackable_and_non-track.htm','trackableLinks'),('preview_-_for_in-depth_checkin.htm','preview'),('testing_and_sending_a_mailing.htm','mailingTestAndSend'),('send_mailing.htm','sendMailing'),('mailing_statistics_openemm.htm','mailingStatistic'),('heatmap_openemm.htm','heatmap'),('show_available_cm_templates.htm','cmTemplateList'),('editing_cm_templates.htm','cmTemplateView'),('using_cm_templates_in_mailings.htm','cmTemplateForMailing'),('show_available_module_types.htm','cmModuleTypeList'),('entering_basic_data.htm','cmModuleTypeView'),('show_available_content_modules.htm','cmContentModuleList'),('entering_basic_data2.htm','cmContentModuleView'),('saving_a_content_moduke_and_as.htm','cmContentModuleAssign'),('cm_categories.htm','cmCategoryList'),('entering_basic_template_data.htm','newTemplate'),('display_and_amend_details.htm','newTemplateNormal'),('create_a_new_archive.htm','newArchive'),('display_and_amend_details.htm','archiveView'),('managing_recipients.htm','recipientList'),('show_recipient_profile.htm','recipientView'),('create_new_recipients.htm','newRecipient'),('creating_a_new_import_profile.htm','newImportProfile'),('managing_fields.htm','manageFields'),('managing_a_profile__deleting_a.htm','manageProfile'),('the_import_assistant.htm','importStep1'),('assigning_the_csv_columns_to_t.htm','importStep2'),('errorhandling.htm','importStep3'),('importing_the_csv-file.htm','importStep4'),('export_function_for_recipient_.htm','export'),('blacklist_-_do_not_mail.htm','blacklist'),('types_of_address.htm','salutationForms'),('comparing_mailings2.htm','compareMailings'),('domain_statistics.htm','domainStatistic'),('recipient_statistics_openemm.htm','recipientStatistic'),('what_is_a_traget_group_.htm','targetGroupList'),('creating_and_managing_target_g.htm','targetGroupView'),('modifying_a_mailing_list.htm','mailinglists'),('creating_a_mailing_list.htm','newMailinglist'),('managing_forms.htm','formList'),('this_is_how_forms_work.htm','formView'),('using_trackable_links.htm','trackableLinkView'),('managing_actions.htm','actionList'),('creating_a_new_action.htm','newAction'),('managing_profile_fields.htm','profileFieldList'),('creating_new_fields.htm','newProfileField'),('creating_a_new_user_and_changi.htm','newUser'),('assigning_user_rights2.htm','userRights'),('bounce-filter.htm','bounceFilter'),('user_log.htm','userlog'),('automatic_update_of_openemm.htm','update'),('feedback_analysis_openemm.htm','feedbackAnalysis'),('ip_statistics.htm','ipStatistics'),('the_plugins_at_a_glance.htm','pluginmanagerList'),('auto-import.htm','autoImport'),('auto-export.htm','autoExport');
/*!40000 ALTER TABLE `doc_mapping_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dyn_content_tbl`
--

DROP TABLE IF EXISTS `dyn_content_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dyn_content_tbl` (
  `dyn_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dyn_name_id` int(10) unsigned NOT NULL DEFAULT '0',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dyn_content` longtext COLLATE utf8_unicode_ci,
  `dyn_order` int(10) unsigned DEFAULT NULL,
  `target_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`dyn_content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dyn_content_tbl`
--

LOCK TABLES `dyn_content_tbl` WRITE;
/*!40000 ALTER TABLE `dyn_content_tbl` DISABLE KEYS */;
INSERT INTO `dyn_content_tbl` (`dyn_content_id`, `dyn_name_id`, `company_id`, `dyn_content`, `dyn_order`, `target_id`) VALUES (1,1,1,'Nome da sua companhia para versão em texto',1,0),(2,2,1,'[agnDATE]',1,0),(3,4,1,'sua<br>\r\nCompanhia',1,0),(4,20,1,'http://www.suacompanhia.com.br/form.do?agnCI=1&amp;agnFN=perfil&amp;agnUID=##AGNUID##',1,0),(5,21,1,'http://www.suacompanhia.com.br/form.do?agnCI=1&agnFN=unsubscribe&agnUID=##AGNUID##',1,0),(6,22,1,'Sua companhia, www.suacompanhia.com.br<br>\r\nTelefone: xxxx/12343567 ...<br>',1,0),(7,33,1,'**********************************************************************\r\n                      Inscrição em Newsletter\r\n**********************************************************************\r\n\r\n[agnTITLE type=1],\r\n\r\nObrigado por se interessar em nossa lista. Por questões de segurança, clique no link abaixo para confirmar sua inscrição:\r\n\r\nhttp://www.suacompanhia.com.br/form.do?agnCI=1&agnFN=doi_finalizacao&agnUID=##AGNUID##\r\n(Atenção: Altere o link conforme o endereço de sua instalação e certifique-se que o rastreio do link está ativado!)\r\n\r\nObrigado\r\n\r\nsua companhia\r\n\r\n**********************************************************************\r\nImprint:\r\nnome da companhia ...',1,0);
/*!40000 ALTER TABLE `dyn_content_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dyn_name_tbl`
--

DROP TABLE IF EXISTS `dyn_name_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dyn_name_tbl` (
  `dyn_name_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mailing_id` int(10) unsigned NOT NULL DEFAULT '0',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dyn_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dyn_name_id`),
  KEY `mailing_id` (`mailing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dyn_name_tbl`
--

LOCK TABLES `dyn_name_tbl` WRITE;
/*!40000 ALTER TABLE `dyn_name_tbl` DISABLE KEYS */;
INSERT INTO `dyn_name_tbl` (`dyn_name_id`, `mailing_id`, `company_id`, `dyn_name`, `deleted`) VALUES (1,1,1,'0.1.1 Header-Text',0),(2,1,1,'0.2 date',0),(3,1,1,'0.3 Intro-text',0),(4,1,1,'0.4 Greeting',0),(5,1,1,'1.0 Headline ****',0),(6,1,1,'1.1 Sub-headline',0),(7,1,1,'1.2 Content',0),(8,1,1,'1.3 Link-URL',0),(9,1,1,'1.4 Link-Text',0),(10,1,1,'2.0 Headline ****',0),(11,1,1,'2.1 Sub-headline',0),(12,1,1,'2.2 Content',0),(13,1,1,'2.3 Link-URL',0),(14,1,1,'2.4 Link-Text',0),(15,1,1,'3.0 Headline ****',0),(16,1,1,'3.1 Sub-headline',0),(17,1,1,'3.2 Content',0),(18,1,1,'3.3 Link-URL',0),(19,1,1,'3.4 Link-Text',0),(20,1,1,'9.0 change-profil-URL',0),(21,1,1,'9.1 unsubscribe-URL',0),(22,1,1,'9.2 imprint',0),(23,1,1,'0.1 Header-image',0),(24,1,1,'1.5 Image-URL',0),(25,1,1,'1.7 Image-URL-1',0),(26,1,1,'1.6 Link-URL',0),(27,1,1,'2.5 Image-URL',0),(28,1,1,'2.7 Image-URL-1',0),(29,1,1,'2.6 Link-URL',0),(30,1,1,'3.5 Image-URL',0),(31,1,1,'3.7 Image-URL-1',0),(32,1,1,'3.6 Link-URL',0),(33,2,1,'Text',0);
/*!40000 ALTER TABLE `dyn_name_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dyn_target_tbl`
--

DROP TABLE IF EXISTS `dyn_target_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dyn_target_tbl` (
  `target_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `target_shortname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target_description` text COLLATE utf8_unicode_ci,
  `target_sql` text COLLATE utf8_unicode_ci,
  `target_representation` blob,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dyn_target_tbl`
--

LOCK TABLES `dyn_target_tbl` WRITE;
/*!40000 ALTER TABLE `dyn_target_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `dyn_target_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_predef_tbl`
--

DROP TABLE IF EXISTS `export_predef_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `export_predef_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `charset` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ISO-8859-1',
  `column_names` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `shortname` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `mailinglists` text COLLATE utf8_unicode_ci NOT NULL,
  `mailinglist_id` int(11) NOT NULL DEFAULT '0',
  `delimiter_char` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `separator_char` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `target_id` int(11) NOT NULL DEFAULT '0',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `user_type` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `timestamp_start` timestamp NULL DEFAULT NULL,
  `timestamp_end` timestamp NULL DEFAULT NULL,
  `creation_date_start` timestamp NULL DEFAULT NULL,
  `creation_date_end` timestamp NULL DEFAULT NULL,
  `mailinglist_bind_start` timestamp NULL DEFAULT NULL,
  `mailinglist_bind_end` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_predef_tbl`
--

LOCK TABLES `export_predef_tbl` WRITE;
/*!40000 ALTER TABLE `export_predef_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_predef_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_column_mapping_tbl`
--

DROP TABLE IF EXISTS `import_column_mapping_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_column_mapping_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `file_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `db_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mandatory` tinyint(1) NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_column_mapping_tbl`
--

LOCK TABLES `import_column_mapping_tbl` WRITE;
/*!40000 ALTER TABLE `import_column_mapping_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_column_mapping_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_gender_mapping_tbl`
--

DROP TABLE IF EXISTS `import_gender_mapping_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_gender_mapping_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) unsigned NOT NULL,
  `int_gender` int(10) unsigned NOT NULL,
  `string_gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_gender_mapping_tbl`
--

LOCK TABLES `import_gender_mapping_tbl` WRITE;
/*!40000 ALTER TABLE `import_gender_mapping_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_gender_mapping_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_log_tbl`
--

DROP TABLE IF EXISTS `import_log_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_log_tbl` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imported_lines` int(10) unsigned NOT NULL,
  `datasource_id` int(10) unsigned NOT NULL,
  `statistics` text COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_log_tbl`
--

LOCK TABLES `import_log_tbl` WRITE;
/*!40000 ALTER TABLE `import_log_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_log_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_profile_tbl`
--

DROP TABLE IF EXISTS `import_profile_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_profile_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `shortname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_separator` int(10) unsigned NOT NULL,
  `text_delimiter` int(10) unsigned NOT NULL,
  `file_charset` int(10) unsigned NOT NULL,
  `date_format` int(10) unsigned NOT NULL,
  `import_mode` int(10) unsigned NOT NULL,
  `null_values_action` int(10) unsigned NOT NULL,
  `key_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ext_email_check` tinyint(1) NOT NULL,
  `report_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `check_for_duplicates` int(10) unsigned NOT NULL,
  `mail_type` int(10) unsigned NOT NULL,
  `update_all_duplicates` decimal(1,0) DEFAULT '0',
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_profile_tbl`
--

LOCK TABLES `import_profile_tbl` WRITE;
/*!40000 ALTER TABLE `import_profile_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_profile_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue_parameter_tbl`
--

DROP TABLE IF EXISTS `job_queue_parameter_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue_parameter_tbl` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `parameter_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parameter_value` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  KEY `job_id` (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue_parameter_tbl`
--

LOCK TABLES `job_queue_parameter_tbl` WRITE;
/*!40000 ALTER TABLE `job_queue_parameter_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue_parameter_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue_result_tbl`
--

DROP TABLE IF EXISTS `job_queue_result_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue_result_tbl` (
  `job_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `result` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` int(10) DEFAULT '0',
  `hostname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue_result_tbl`
--

LOCK TABLES `job_queue_result_tbl` WRITE;
/*!40000 ALTER TABLE `job_queue_result_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue_result_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue_tbl`
--

DROP TABLE IF EXISTS `job_queue_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastStart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `running` int(1) NOT NULL DEFAULT '0',
  `lastResult` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startAfterError` int(1) NOT NULL DEFAULT '0',
  `lastDuration` int(10) NOT NULL DEFAULT '0',
  `interval` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nextStart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hostname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `runClass` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `runOnlyOnHosts` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailOnError` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue_tbl`
--

LOCK TABLES `job_queue_tbl` WRITE;
/*!40000 ALTER TABLE `job_queue_tbl` DISABLE KEYS */;
INSERT INTO `job_queue_tbl` (`id`, `description`, `created`, `lastStart`, `running`, `lastResult`, `startAfterError`, `lastDuration`, `interval`, `nextStart`, `hostname`, `runClass`, `runOnlyOnHosts`, `emailOnError`, `deleted`) VALUES (1,'AutoImport',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0,'OK',0,0,'**00',CURRENT_TIMESTAMP,NULL,'org.agnitas.emm.core.autoimport.service.AutoImportJobWorker',NULL,NULL,0),(2,'AutoExport',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0,'OK',0,0,'**00',CURRENT_TIMESTAMP,NULL,'org.agnitas.emm.core.autoexport.service.AutoExportJobWorker',NULL,NULL,0),(3,'DBCleaner',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0,'OK',0,0,'0300',CURRENT_TIMESTAMP,NULL,'org.agnitas.util.quartz.DBCleanerJobWorker',NULL,NULL,0),(4,'LoginTrackTableCleaner',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0,'OK',0,0,'0400',CURRENT_TIMESTAMP,NULL,'org.agnitas.util.quartz.LoginTrackTableCleanerJobWorker',NULL,NULL,0);
/*!40000 ALTER TABLE `job_queue_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_track_tbl`
--

DROP TABLE IF EXISTS `login_track_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_track_tbl` (
  `login_track_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_status` int(11) DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`login_track_id`),
  KEY `logtrck$ip_cdate_stat$idx` (`ip_address`,`creation_date`,`login_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_track_tbl`
--

LOCK TABLES `login_track_tbl` WRITE;
/*!40000 ALTER TABLE `login_track_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_track_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maildrop_status_tbl`
--

DROP TABLE IF EXISTS `maildrop_status_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maildrop_status_tbl` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `status_field` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mailing_id` int(11) NOT NULL DEFAULT '0',
  `senddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `step` int(11) DEFAULT NULL,
  `blocksize` int(11) DEFAULT NULL,
  `gendate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `genstatus` int(1) DEFAULT NULL,
  `genchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maildrop_status_tbl`
--

LOCK TABLES `maildrop_status_tbl` WRITE;
/*!40000 ALTER TABLE `maildrop_status_tbl` DISABLE KEYS */;
INSERT INTO `maildrop_status_tbl` (`status_id`, `company_id`, `status_field`, `mailing_id`, `senddate`, `step`, `blocksize`, `gendate`, `genstatus`, `genchange`) VALUES (1,1,'E',2,CURRENT_TIMESTAMP,0,0,CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP);
/*!40000 ALTER TABLE `maildrop_status_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_account_tbl`
--

DROP TABLE IF EXISTS `mailing_account_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_account_tbl` (
  `mailing_id` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `mailtype` int(11) NOT NULL DEFAULT '0',
  `no_of_mailings` int(11) NOT NULL DEFAULT '0',
  `no_of_bytes` int(11) NOT NULL DEFAULT '0',
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `maildrop_id` int(11) NOT NULL DEFAULT '0',
  `mailing_account_id` int(11) NOT NULL DEFAULT '0',
  `status_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `blocknr` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_account_tbl`
--

LOCK TABLES `mailing_account_tbl` WRITE;
/*!40000 ALTER TABLE `mailing_account_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailing_account_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_backend_log_tbl`
--

DROP TABLE IF EXISTS `mailing_backend_log_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_backend_log_tbl` (
  `mailing_id` int(10) DEFAULT NULL,
  `current_mails` int(10) DEFAULT NULL,
  `total_mails` int(10) DEFAULT NULL,
  `change_date` timestamp NULL DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT NULL,
  `status_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_backend_log_tbl`
--

LOCK TABLES `mailing_backend_log_tbl` WRITE;
/*!40000 ALTER TABLE `mailing_backend_log_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailing_backend_log_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_mt_tbl`
--

DROP TABLE IF EXISTS `mailing_mt_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_mt_tbl` (
  `mailing_id` int(10) unsigned NOT NULL DEFAULT '0',
  `param` text COLLATE utf8_unicode_ci NOT NULL,
  `mediatype` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `mailing_id` (`mailing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_mt_tbl`
--

LOCK TABLES `mailing_mt_tbl` WRITE;
/*!40000 ALTER TABLE `mailing_mt_tbl` DISABLE KEYS */;
INSERT INTO `mailing_mt_tbl` (`mailing_id`, `param`, `mediatype`) VALUES (1,'from=\"Informe o nome do remetente <naoresponda@openemm.org>\", subject=\"Por favor\\, informe o assunto!\", charset=\"ISO-8859-1\", linefeed=\"72\", mailformat=\"2\", reply=\"Informe o nome para resposta <naoresponda@openemm.org>\", onepixlog=\"bottom\", ',0),(2,'from=\"Informe o nome do remetente <naoresponda@openemm.org>\", subject=\"Por favor\\, confirme sua inscrição nesta lista\", charset=\"ISO-8859-1\", linefeed=\"72\", mailformat=\"0\", reply=\"Informe o nome para resposta <naoresponda@openemm.org>\", onepixlog=\"none\", ',0);
/*!40000 ALTER TABLE `mailing_mt_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_tbl`
--

DROP TABLE IF EXISTS `mailing_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_tbl` (
  `mailing_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `campaign_id` int(11) unsigned NOT NULL DEFAULT '0',
  `shortname` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `mailing_type` int(10) unsigned NOT NULL DEFAULT '0',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mailtemplate_id` int(10) unsigned DEFAULT '0',
  `is_template` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted` int(10) unsigned NOT NULL DEFAULT '0',
  `target_expression` text COLLATE utf8_unicode_ci,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mailinglist_id` int(10) unsigned NOT NULL DEFAULT '0',
  `needs_target` int(10) unsigned NOT NULL DEFAULT '0',
  `archived` int(11) unsigned NOT NULL DEFAULT '0',
  `cms_has_classic_content` int(1) NOT NULL DEFAULT '0',
  `dynamic_template` int(1) NOT NULL DEFAULT '0',
  `openaction_id` int(11) unsigned DEFAULT '0',
  `clickaction_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`mailing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_tbl`
--

LOCK TABLES `mailing_tbl` WRITE;
/*!40000 ALTER TABLE `mailing_tbl` DISABLE KEYS */;
INSERT INTO `mailing_tbl` (`mailing_id`, `company_id`, `campaign_id`, `shortname`, `description`, `mailing_type`, `creation_date`, `mailtemplate_id`, `is_template`, `deleted`, `target_expression`, `change_date`, `mailinglist_id`, `needs_target`, `archived`, `cms_has_classic_content`, `dynamic_template`, `openaction_id`, `clickaction_id`) VALUES (1,1,0,'pt_template','Criado por eMM-Xpress e traduzido por Estevão Costa',0,CURRENT_TIMESTAMP,0,1,0,'',CURRENT_TIMESTAMP,1,0,0,1,0,0,0),(2,1,0,'doi_mail','Envia e-mail para confirmar inscrição em lista',1,CURRENT_TIMESTAMP,0,0,0,'',CURRENT_TIMESTAMP,1,0,0,0,0,0,0);
/*!40000 ALTER TABLE `mailing_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailinglist_tbl`
--

DROP TABLE IF EXISTS `mailinglist_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailinglist_tbl` (
  `mailinglist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `shortname` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(1) DEFAULT '0',
  KEY `mailinglist_id` (`mailinglist_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailinglist_tbl`
--

LOCK TABLES `mailinglist_tbl` WRITE;
/*!40000 ALTER TABLE `mailinglist_tbl` DISABLE KEYS */;
INSERT INTO `mailinglist_tbl` (`mailinglist_id`, `company_id`, `description`, `shortname`, `creation_date`, `change_date`, `deleted`) VALUES (1,1,'','Lista de e-mails',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0);
/*!40000 ALTER TABLE `mailinglist_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailloop_tbl`
--

DROP TABLE IF EXISTS `mailloop_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailloop_tbl` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `forward` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `forward_enable` int(10) unsigned NOT NULL DEFAULT '0',
  `ar_enable` int(10) unsigned NOT NULL DEFAULT '0',
  `ar_sender` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ar_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `ar_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ar_html` longtext COLLATE utf8_unicode_ci NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subscribe_enable` int(1) unsigned NOT NULL DEFAULT '0',
  `mailinglist_id` int(11) unsigned NOT NULL DEFAULT '0',
  `form_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailloop_tbl`
--

LOCK TABLES `mailloop_tbl` WRITE;
/*!40000 ALTER TABLE `mailloop_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailloop_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailtrack_tbl`
--

DROP TABLE IF EXISTS `mailtrack_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailtrack_tbl` (
  `mailtrack_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) DEFAULT NULL,
  `mailing_id` int(10) DEFAULT NULL,
  `company_id` int(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`mailtrack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailtrack_tbl`
--

LOCK TABLES `mailtrack_tbl` WRITE;
/*!40000 ALTER TABLE `mailtrack_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailtrack_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onepixel_log_tbl`
--

DROP TABLE IF EXISTS `onepixel_log_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `onepixel_log_tbl` (
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mailing_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `open_count` int(10) unsigned NOT NULL DEFAULT '1',
  `change_date` timestamp NULL DEFAULT NULL,
  `ip_adr` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onepixel_log_tbl`
--

LOCK TABLES `onepixel_log_tbl` WRITE;
/*!40000 ALTER TABLE `onepixel_log_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `onepixel_log_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins_tbl`
--

DROP TABLE IF EXISTS `plugins_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins_tbl` (
  `plugin_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activate_on_startup` int(1) NOT NULL,
  PRIMARY KEY (`plugin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins_tbl`
--

LOCK TABLES `plugins_tbl` WRITE;
/*!40000 ALTER TABLE `plugins_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugins_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rdir_action_tbl`
--

DROP TABLE IF EXISTS `rdir_action_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdir_action_tbl` (
  `action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortname` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `action_type` int(10) unsigned NOT NULL DEFAULT '0',
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `operations` blob,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int(1) DEFAULT '0',
  PRIMARY KEY (`action_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdir_action_tbl`
--

LOCK TABLES `rdir_action_tbl` WRITE;
/*!40000 ALTER TABLE `rdir_action_tbl` DISABLE KEYS */;
INSERT INTO `rdir_action_tbl` (`action_id`, `shortname`, `description`, `action_type`, `company_id`, `operations`, `creation_date`, `change_date`, `deleted`) VALUES (1,'doi_confirmar_inscricao','Passo 2/2: Confirmar inscrição pendente em lista de e-mails',1,1,0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000017704000000017372002B6F72672E61676E697461732E616374696F6E732E6F70732E4163746976617465446F75626C654F7074496E6C8B81A57A32855A020000787078,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0),(3,'doi_inscrever_pendente','Passo 1/2: Salvar dados do usuário e enviar e-mail para confirmação de inscrição',1,1,0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002737200296F72672E61676E697461732E616374696F6E732E6F70732E537562736372696265437573746F6D65722AD691805687516A0200035A000B646F75626C65436865636B5A000B646F75626C654F7074496E4C00096B6579436F6C756D6E7400124C6A6176612F6C616E672F537472696E673B78700101740005454D41494C737200236F72672E61676E697461732E616374696F6E732E6F70732E53656E644D61696C696E6709E1AF9AA34EBEAB02000249000C64656C61794D696E757465734900096D61696C696E6749447870000000000000000478,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0),(4,'carregar_dados_usuario','Carregar dados de um usuário',1,1,0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200236F72672E61676E697461732E616374696F6E732E6F70732E476574437573746F6D65729A70BAE4FE18BCD30200015A000A6C6F6164416C7761797378700078,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0),(5,'usuario_subscribe','Inscrever usuário em lista de e-mails',1,1,0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200296F72672E61676E697461732E616374696F6E732E6F70732E537562736372696265437573746F6D65722AD691805687516A0200035A000B646F75626C65436865636B5A000B646F75626C654F7074496E4C00096B6579436F6C756D6E7400124C6A6176612F6C616E672F537472696E673B78700100740005454D41494C78,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0),(6,'usuario_unsubscribe','Remover assinatura de um usuário em uma lista de e-mails',1,1,0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000017704000000017372002B6F72672E61676E697461732E616374696F6E732E6F70732E556E737562736372696265437573746F6D657216BBF6CEE04FB108020000787078,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0),(7,'fullview','Permite visualizar versão HTML do e-mail (postagem) no navegador',1,1,0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200296F72672E61676E697461732E616374696F6E732E6F70732E476574417263686976654D61696C696E679DA1E22435E5A8B7020000787078,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0),(8,'arquivados','Exibe lista de postagens arquivadas (compilação das últimas postagens de uma campanha)',1,1,0xACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200266F72672E61676E697461732E616374696F6E732E6F70732E476574417263686976654C697374C1F8BF8298863A3002000149000A63616D706169676E494478700000000178,CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,0);
/*!40000 ALTER TABLE `rdir_action_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rdir_log_tbl`
--

DROP TABLE IF EXISTS `rdir_log_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdir_log_tbl` (
  `company_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `mailing_id` int(11) NOT NULL DEFAULT '0',
  `ip_adr` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdir_log_tbl`
--

LOCK TABLES `rdir_log_tbl` WRITE;
/*!40000 ALTER TABLE `rdir_log_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `rdir_log_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rdir_url_tbl`
--

DROP TABLE IF EXISTS `rdir_url_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdir_url_tbl` (
  `url_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mailing_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_id` int(10) unsigned NOT NULL DEFAULT '0',
  `measure_type` int(10) unsigned NOT NULL DEFAULT '0',
  `full_url` text COLLATE utf8_unicode_ci NOT NULL,
  `shortname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relevance` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdir_url_tbl`
--

LOCK TABLES `rdir_url_tbl` WRITE;
/*!40000 ALTER TABLE `rdir_url_tbl` DISABLE KEYS */;
INSERT INTO `rdir_url_tbl` (`url_id`, `company_id`, `mailing_id`, `action_id`, `measure_type`, `full_url`, `shortname`, `relevance`) VALUES (1,1,1,0,3,'http://www.suacompanhia.com.br/form.do?agnCI=1&agnFN=unsubscribe&agnUID=##AGNUID##',NULL,0),(2,1,2,0,3,'http://www.suacompanhia.com.br/form.do?agnCI=1&agnFN=doi_finalizacao&agnUID=##AGNUID##',NULL,0),(3,1,1,0,3,'http://www.suacompanhia.com.br/form.do?agnCI=1&amp;agnFN=perfil&amp;agnUID=##AGNUID##',NULL,0);
/*!40000 ALTER TABLE `rdir_url_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rulebased_sent_tbl`
--

DROP TABLE IF EXISTS `rulebased_sent_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rulebased_sent_tbl` (
  `mailing_id` int(11) DEFAULT NULL,
  `lastsent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rulebased_sent_tbl`
--

LOCK TABLES `rulebased_sent_tbl` WRITE;
/*!40000 ALTER TABLE `rulebased_sent_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `rulebased_sent_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softbounce_email_tbl`
--

DROP TABLE IF EXISTS `softbounce_email_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softbounce_email_tbl` (
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bnccnt` int(11) NOT NULL DEFAULT '0',
  `mailing_id` int(11) NOT NULL DEFAULT '0',
  `creation_date` timestamp NULL DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` int(11) NOT NULL DEFAULT '0',
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softbounce_email_tbl`
--

LOCK TABLES `softbounce_email_tbl` WRITE;
/*!40000 ALTER TABLE `softbounce_email_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `softbounce_email_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_tbl`
--

DROP TABLE IF EXISTS `tag_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_tbl` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `selectvalue` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company_id` int(10) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_tbl`
--

LOCK TABLES `tag_tbl` WRITE;
/*!40000 ALTER TABLE `tag_tbl` DISABLE KEYS */;
INSERT INTO `tag_tbl` (`tag_id`, `tagname`, `selectvalue`, `type`, `company_id`, `description`, `change_date`) VALUES
	(1,'agnCUSTOMERID','cust.customer_id','SIMPLE',0,'Insere o ID do destinatário.',CURRENT_TIMESTAMP),
	(2,'agnMAILTYPE','cust.mailtype','SIMPLE',0,NULL,CURRENT_TIMESTAMP),
	(3,'agnIMAGE','\'[rdir-domain]/image?ci=[company-id]&mi=[mailing-id]&name={name}\'','COMPLEX',0,NULL,CURRENT_TIMESTAMP),
	(4,'agnDB','cust.{column}','COMPLEX',0,'Insere o conteúdo de um campo de perfil do destinatário.',CURRENT_TIMESTAMP),
	(5,'agnTITLE','\'builtin\'','SIMPLE',0,NULL,CURRENT_TIMESTAMP),
	(6,'agnFIRSTNAME','cust.firstname','SIMPLE',0,NULL,CURRENT_TIMESTAMP),
	(7,'agnLASTNAME','cust.lastname','SIMPLE',0,NULL,CURRENT_TIMESTAMP),
	(8,'agnEMAIL','cust.email','SIMPLE',0,NULL,CURRENT_TIMESTAMP),
	(9,'agnDATE','date_format(current_timestamp, \'%d.%m.%Y\')','SIMPLE',0,NULL,CURRENT_TIMESTAMP),
	(10,'agnIMGLINK','\'<a href=\"[rdir-domain]/r.html?uid=[agnUID]\"><img src=\"[rdir-domain]/image?ci=[company-id]&mi=[mailing-id]&name={name}\" border=\"0\"></a>\'','COMPLEX',0,NULL,CURRENT_TIMESTAMP),
	(11,'agnFORM','\'[rdir-domain]/form.do?agnCI=1&agnFN={name}&agnUID=##agnUID##\'','COMPLEX',0,'Cria um link para um formulário.',CURRENT_TIMESTAMP),
	(12,'agnPROFILE','\'[rdir-domain]/form.do?agnCI=1&agnFN=perfil&agnUID=##agnUID##\'','COMPLEX',0,'Cria um link para o formulário de edição do perfil.',CURRENT_TIMESTAMP),
	(13,'agnUNSUBSCRIBE','\'[rdir-domain]/form.do?agnCI=1&agnFN=unsubscribe&agnUID=##agnUID##\'','COMPLEX',0,'Cria um link para o formulário de cancelar inscrição em uma lista.',CURRENT_TIMESTAMP),
	(14,'agnDYN','agnDYN textComponent {name}','FLOW',0,'Insere um componente textual em uma postagem.',CURRENT_TIMESTAMP),
	(15,'agnDVALUE','agnDVALUE textComponent {name}','FLOW',0,'Esta tag funciona somente com a tag agnDYN.',CURRENT_TIMESTAMP),
	(16,'agnALTERCALC','trunc(months_between(sysdate, cust.{column})/12, 0) {op} {value}','COMPLEX',0,'Funciona como agnALTER com operador e valor.',CURRENT_TIMESTAMP),
	(17,'agnDATEDB_LANG','to_char(cust.{column}, \'{format}\', \'nls_date_language = {lang}\')','COMPLEX',0,'Retorna uma data de uma coluna customizada formatada de acordo com linguagem.',CURRENT_TIMESTAMP),
	(18,'agnYEARCALC','to_char (cust.{field}, \'YYYY\') {op} {value}','COMPLEX',0,'Para calcular com colunas.',CURRENT_TIMESTAMP),
	(19,'agnYEARCALC_F','to_char (cust.{column}, \'{format}\') {op} {value}','COMPLEX',0,'Funciona como agnYEARCALC com formatação de data.',CURRENT_TIMESTAMP),
	(20,'agnUID','','SIMPLE',0,'agnUID',CURRENT_TIMESTAMP),
    (21, 'agnDBV','\'not available\'','COMPLEX',0,'Insere um coluna virtual não persistida no BD.', current_timestamp),
    (22, 'agnTITLEFIRST','titlefirst({type}, [company-id], cust.customer_id)','COMPLEX',0,'Insere o título seguido do nome do destinatário.', current_timestamp),
    (23, 'agnTITLEFULL','title2({type}, [company-id], cust.customer_id)','COMPLEX',0,'Insere o título seguido do nome e sobrenome do destinatário.', current_timestamp),
    (24, 'agnSUBSCRIBERCOUNT','\'1\'','SIMPLE',0,'Insere o número de destinatários.', current_timestamp);
/*!40000 ALTER TABLE `tag_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timestamp_tbl`
--

DROP TABLE IF EXISTS `timestamp_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timestamp_tbl` (
  `timestamp_id` int(10) DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cur` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prev` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `temp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timestamp_tbl`
--

LOCK TABLES `timestamp_tbl` WRITE;
/*!40000 ALTER TABLE `timestamp_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `timestamp_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_gender_tbl`
--

DROP TABLE IF EXISTS `title_gender_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_gender_tbl` (
  `title_id` int(11) NOT NULL DEFAULT '0',
  `gender` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`title_id`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_gender_tbl`
--

LOCK TABLES `title_gender_tbl` WRITE;
/*!40000 ALTER TABLE `title_gender_tbl` DISABLE KEYS */;
INSERT INTO `title_gender_tbl` (`title_id`, `gender`, `title`) VALUES (1,0,'Sr.'),(1,1,'Sra.'),(1,2,'Sr(a).');
/*!40000 ALTER TABLE `title_gender_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_tbl`
--

DROP TABLE IF EXISTS `title_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_tbl` (
  `company_id` int(11) NOT NULL DEFAULT '0',
  `title_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`title_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_tbl`
--

LOCK TABLES `title_tbl` WRITE;
/*!40000 ALTER TABLE `title_tbl` DISABLE KEYS */;
INSERT INTO `title_tbl` (`company_id`, `title_id`, `description`) VALUES (1,1,'Padrão Brasil');
/*!40000 ALTER TABLE `title_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userform_tbl`
--

DROP TABLE IF EXISTS `userform_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userform_tbl` (
  `form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formname` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(10) unsigned NOT NULL DEFAULT '0',
  `startaction_id` int(10) unsigned NOT NULL DEFAULT '0',
  `endaction_id` int(10) unsigned NOT NULL DEFAULT '0',
  `success_template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `error_template` longtext COLLATE utf8_unicode_ci NOT NULL,
  `success_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `error_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `error_use_url` int(1) unsigned NOT NULL DEFAULT '0',
  `success_use_url` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`form_id`),
  KEY `formname` (`formname`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userform_tbl`
--

LOCK TABLES `userform_tbl` WRITE;
/*!40000 ALTER TABLE `userform_tbl` DISABLE KEYS */;
INSERT INTO `userform_tbl` (`form_id`, `formname`, `description`, `company_id`, `startaction_id`, `endaction_id`, `success_template`, `error_template`, `success_url`, `error_url`, `error_use_url`, `success_use_url`) VALUES (20,'fullview','Exibir postagem no navegador',1,7,0,'$archiveHtml','Não foi possível exibir dados da postagem\r\n\r\n(Inserir HTML com página de erro, ou uma URL para a página de erro)','','',0,0),(21,'arquivados','Exibe lista com as últimas postagens de uma campanha',1,8,0,'<dl>\r\n#foreach( $mailing in $archiveListMailingIDs )\r\n<dt><a href=\"/form.do?agnCI=1&agnFN=fullview&agnUID=\r\n$archiveListUids.get($mailing)\">$archiveListNames.get($mailing)</a>\r\n<dd>$archiveListSubjects.get($mailing)\r\n#end','Erro ao exibir lista das últimas postagens.\r\n\r\n(Incluir HTML com erro ou uma URL para a página de erro)','','',0,0),(10,'soi','Inscrição em lista de e-mails sem confirmação - 1/2',1,0,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter subscription</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 200px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <form action=\"form.do\">\r\n          <input type=\"hidden\" name=\"agnCI\" value=\"1\">\r\n          <input type=\"hidden\" name=\"agnFN\" value=\"soi_confirmacao\">\r\n          <input type=\"hidden\" name=\"agnSUBSCRIBE\" value=\"1\">\r\n          <input type=\"hidden\" name=\"agnMAILINGLIST\" value=\"1\">          \r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>SUBSCRIBE NEWSLETTER 1/2</h1>\r\n                  <p>Thank you for your interest!<br>\r\n                  Register here:</p>\r\n                  <table border=0>\r\n                  <tr><td width=\"120\">salutation:</td>\r\n                      <td><select name=\"GENDER\">\r\n                            <option value=\"2\" selected>unknown</option>\r\n                            <option value=\"1\">Ms.</option>\r\n                            <option value=\"0\">Mr.</option>\r\n                          </select></td></tr>\r\n                  <tr><td>firstname:</td>\r\n                      <td><input type=\"text\" name=\"FIRSTNAME\" style=\"width: 200px;\"></td></tr>\r\n                  <tr><td>lastname:</td>\r\n                      <td><input type=\"text\" name=\"LASTNAME\" style=\"width: 200px;\"></td></tr>\r\n                  <tr><td>eMail:</td>\r\n                      <td><input type=\"text\" name=\"EMAIL\" style=\"width: 200px;\"></td></tr>\r\n                  <tr><td valign=\"top\">mail format:</td>\r\n                      <td><input type=\"radio\" name=\"MAILTYPE\" value=\"1\" checked>HTML (includes images)<br>\r\n                          <input type=\"radio\" name=\"MAILTYPE\" value=\"0\">Text (plaintext only)</td></tr>\r\n                  <tr><td colspan=\"2\">&nbsp;</td></tr>\r\n                  <tr><td><input type=\"submit\" value=\"Send\"></td>\r\n                      <td><input type=\"reset\" value=\"Cancel\" onClick=\"javascript:history.back();\"></td></tr>\r\n                  </table>         \r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </form>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>\r\n','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter subscription</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER SUBSCRIPTION ERROR</h1>\r\n                  <p>Sorry, an error occurred.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>\r\n','','',0,0),(11,'soi_confirmacao','Inscrição em lista de e-mails sem confirmação - 2/2',1,5,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter subscription</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER SUBSCRIPTION 2/2</h1>\r\n                  <p>Your newsletter registration was successful.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>\r\n','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter subscription</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER SUBSCRIPTION ERROR</h1>\r\n                  <p>Sorry, an error occurred.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>\r\n','','',0,0),(12,'unsubscribe','Cancelar assinatura de lista de e-mails - 1/2',1,0,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter unsubscribe</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 200px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <form action=\"form.do\">\r\n          <input type=\"hidden\" name=\"agnCI\" value=\"1\">\r\n          <input type=\"hidden\" name=\"agnFN\" value=\"unsubscribe_confirmacao\">\r\n          <input type=\"hidden\" name=\"agnUID\" value=\"$!agnUID\">       \r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>UNSUBSCRIBE NEWSLETTER 1/2</h1>\r\n                  <p>Do you really want to unsubscribe from our newsletter?</p>\r\n                  <table border=0>\r\n                  <tr><td width=\"120\"><input type=\"submit\" value=\" Yes \"></td>\r\n                      <td><input type=\"reset\" value=\" No \" onClick=\"javascript:history.back();\"></td></tr>\r\n                  </table>         \r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </form>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter unsubscription</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>UNSUBSCRIBE ERROR</h1>\r\n                  <p>Sorry, an error occurred.</p>\r\n                  <p>Please try it again.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>\r\n','','',0,0),(13,'unsubscribe_confirmacao','Cancelar assinatura de lista de e-mails - 2/2',1,6,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter unsubscribe</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>UNSUBSCRIBE NEWSLETTER 2/2</h1>\r\n                  <p>Your newsletter unsubscription was successful.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter unsubscription</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>UNSUBSCRIBE ERROR</h1>\r\n                  <p>Sorry, an error occurred.</p>\r\n                  <p>Please try it again.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>\r\n','','',0,0),(14,'perfil','Edição do perfil do destinatário - 1/2',1,4,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter change profile</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 200px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <form action=\"form.do\">\r\n          <input type=\"hidden\" name=\"agnCI\" value=\"1\">\r\n          <input type=\"hidden\" name=\"agnFN\" value=\"perfil_confirmacao\">\r\n          <input type=\"hidden\" name=\"agnUID\" value=\"$!agnUID\">        \r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>CHANGE DATA</h1>\r\n                  <p>Please change your data here:</p>\r\n                  <table border=0>\r\n                  <tr><td width=\"120\">salutation:</td>\r\n                      <td><select name=\"GENDER\">\r\n                            <option value=\"2\" #if($!customerData.GENDER == \"2\") selected #end>unknown</option>\r\n                            <option value=\"1\" #if($!customerData.GENDER == \"1\") selected #end>Ms.</option>\r\n                            <option value=\"0\" #if($!customerData.GENDER == \"0\") selected #end>Mr.</option>\r\n                          </select></td></tr>\r\n                  <tr><td>firstname:</td>\r\n                      <td><input type=\"text\" name=\"FIRSTNAME\" style=\"width: 200px;\" value=\"$!customerData.FIRSTNAME\"></td></tr>\r\n                  <tr><td>lastname:</td>\r\n                      <td><input type=\"text\" name=\"LASTNAME\" style=\"width: 200px;\" value=\"$!customerData.LASTNAME\"></td></tr>\r\n                  <tr><td>eMail:</td>\r\n                      <td><input type=\"text\" name=\"EMAIL\" style=\"width: 200px;\" value=\"$!customerData.EMAIL\"></td></tr>\r\n                  <tr><td valign=\"top\">eMail format:</td>\r\n                      <td><input type=\"radio\" name=\"MAILTYPE\" value=\"1\" #if($!customerData.MAILTYPE == \"1\") checked #end>HTML<br>\r\n                          <input type=\"radio\" name=\"MAILTYPE\" value=\"0\" #if($!customerData.MAILTYPE == \"0\") checked #end>Text</td></tr>\r\n                  <tr><td colspan=\"2\">&nbsp;</td></tr>\r\n                  <tr><td><input type=\"submit\" value=\"Save\"></td>\r\n                      <td><input type=\"reset\" value=\"Cancel\" onClick=\"javascript:history.back();\"></td></tr>\r\n                  </table>         \r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </form>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter change profile</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>CHANGE DATA</h1>\r\n                  <p>Sorry, your data could not be saved.<br>\r\n                  Please check your settings and try again.</p>\r\n                  <p>&nbsp;</p>\r\n                  <p>Greeting<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','','',0,0),(15,'perfil_confirmacao','Edição do perfil do destinatário - 2/2',1,5,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter change profile</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>CHANGE DATA</h1>\r\n                  <p>Your setting have been changed successfully.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter change profile</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>CHANGE DATA</h1>\r\n                  <p>Sorry, your data could not be saved.<br>\r\n                  Please check your settings and try again.</p>\r\n                  <p>&nbsp;</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','','',0,0),(16,'doi','Inscrição em lista de e-mails com confirmação - 1/3',1,0,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter registration</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 200px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <form action=\"form.do\">\r\n          <input type=\"hidden\" name=\"agnCI\" value=\"1\">\r\n          <input type=\"hidden\" name=\"agnFN\" value=\"doi_confirmacao\">\r\n          <input type=\"hidden\" name=\"agnSUBSCRIBE\" value=\"1\">\r\n          <input type=\"hidden\" name=\"agnMAILINGLIST\" value=\"1\">          \r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER REGISTRATION 1/3</h1>\r\n                  <p>Subscribe our newsletter here:</p>\r\n                  <table border=0>\r\n                  <tr><td width=\"120\">salutation:</td>\r\n                      <td><select name=\"GENDER\">\r\n                            <option value=\"2\" selected>unknown</option>\r\n                            <option value=\"1\">Ms.</option>\r\n                            <option value=\"0\">Mr.</option>\r\n                          </select></td></tr>\r\n                  <tr><td>firstname:</td>\r\n                      <td><input type=\"text\" name=\"FIRSTNAME\" style=\"width: 200px;\"></td></tr>\r\n                  <tr><td>lastname:</td>\r\n                      <td><input type=\"text\" name=\"LASTNAME\" style=\"width: 200px;\"></td></tr>\r\n                  <tr><td>eMail:</td>\r\n                      <td><input type=\"text\" name=\"EMAIL\" style=\"width: 200px;\"></td></tr>\r\n                  <tr><td valign=\"top\">eMail format:</td>\r\n                      <td><input type=\"radio\" name=\"MAILTYPE\" value=\"1\" checked>HTML<br>\r\n                          <input type=\"radio\" name=\"MAILTYPE\" value=\"0\">Text</td></tr>\r\n                  <tr><td colspan=\"2\">&nbsp;</td></tr>\r\n                  <tr><td><input type=\"submit\" value=\"Send\"></td>\r\n                      <td><input type=\"reset\" value=\"Cancel\" onClick=\"javascript:history.back();\"></td></tr>\r\n                  </table>         \r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </form>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter registration</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER REGISTRATION ERROR</h1>\r\n                  <p>Sorry, an error occurred.</p>\r\n                  <p>Please try it again.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','','',0,0),(17,'doi_confirmacao','Inscrição em lista de e-mails com confirmação - 2/3',1,3,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter registration</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER REGISTRATION 2/3</h1>\r\n                  <p>Your data were saved successfully.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter registration</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER REGISTRATION ERROR</h1>\r\n                  <p>Sorry, an error occurred.</p>\r\n                  <p>Please try it again.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','','',0,0),(18,'doi_finalizacao','Inscrição em lista de e-mails com confirmação - 3/3',1,1,0,'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter registration</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER REGISTRATION 3/3</h1>\r\n                  <h1>Wellcome</h1>\r\n                  <p>Your registration was finished.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<HTML>\r\n<head>\r\n<title>newsletter registration</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<style type=\"text/css\">\r\n<!--\r\nbody, table { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px; }\r\nh1 { font-family: Tahoma, Helvetica, sans-serif; font-size: 16px; }\r\nselect, input { font-family: Tahoma, Helvetica, sans-serif; font-size: 12px;}      \r\nselect { width: 120px; }\r\n-->\r\n</style>\r\n</head>\r\n\r\n<body bgcolor=\"#C0C0C0\" link=\"#bb2233\" vlink=\"#bb2233\" alink=\"#bb2233\">\r\n<table width=\"480\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"0\">\r\n  <tr bgcolor=\"#808080\">\r\n    <td bgcolor=\"#808080\">\r\n      <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" bgcolor=\"#FFFFFF\">\r\n        <tr>\r\n          <td>\r\n          <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n            <tr>\r\n              <td width=\"10\">&nbsp;</td>\r\n              <td><h1>NEWSLETTER REGISTRATION ERROR</h1>\r\n                  <p>Sorry, an error occurred.</p>\r\n                  <p>Please try it again.</p>\r\n                  <p>Greetings<br>\r\n                  Your online-Team</p>\r\n                  </td>                                 \r\n              <td width=\"10\">&nbsp;</td>\r\n            </tr>\r\n            <tr>\r\n              <td colspan=\"3\">&nbsp;</td>\r\n            </tr>            \r\n          </table>\r\n          </td>\r\n        </tr>\r\n      </table>\r\n    </td>\r\n  </tr>\r\n</table>\r\n</body>\r\n</html>','','',0,0),(19,'monitoramento_sistema','Permite monitorar a situação do sistema',1,0,0,'Sistema está ok.','Erro!\r\n\r\nEste form deve ser usado por um sistema de monitoramento, como o Nagios, para verificar se o OpenEMM está funcionando.\r\n\r\nPara chamá-lo use o link abaixo:\r\n\r\nhttp://suacompanhia.com.br/form.do?agnCI=1&agnFN=monitoramento_sistema\r\n\r\n(ATENÇÃO: Altere o link de acordo com a instalação do sistema!)','','',0,0);
/*!40000 ALTER TABLE `userform_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlog_tbl`
--

DROP TABLE IF EXISTS `userlog_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlog_tbl` (
  `logtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlog_tbl`
--

LOCK TABLES `userlog_tbl` WRITE;
/*!40000 ALTER TABLE `userlog_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlog_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webservice_user_tbl`
--

DROP TABLE IF EXISTS `webservice_user_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webservice_user_tbl` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '1',
  `default_data_source_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webservice_user_tbl`
--

LOCK TABLES `webservice_user_tbl` WRITE;
/*!40000 ALTER TABLE `webservice_user_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `webservice_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_admin_tbl`
--

DROP TABLE IF EXISTS `ws_admin_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ws_admin_tbl` (
  `ws_admin_id` int(22) NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ws_admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_admin_tbl`
--

LOCK TABLES `ws_admin_tbl` WRITE;
/*!40000 ALTER TABLE `ws_admin_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_admin_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

GRANT DELETE, INSERT, UPDATE, LOCK TABLES, SELECT, ALTER, INDEX, CREATE
TEMPORARY TABLES, DROP, CREATE ON openemm.* TO 'agnitas'@'localhost'
IDENTIFIED BY 'openemm';

FLUSH PRIVILEGES;

