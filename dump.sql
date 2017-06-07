-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: auser
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `shname` varchar(255) DEFAULT NULL,
  `inn` varchar(12) DEFAULT NULL,
  `kpp` varchar(9) DEFAULT NULL,
  `resident` varchar(255) DEFAULT 'Да',
  `okpo` varchar(8) DEFAULT NULL,
  `ogrn` varchar(15) DEFAULT NULL,
  `okopf` varchar(10) DEFAULT NULL,
  `okogu` varchar(7) DEFAULT NULL,
  `okfs` varchar(20) DEFAULT NULL,
  `date_ifns` date DEFAULT NULL,
  `nm_regorgan` varchar(150) DEFAULT NULL,
  `date_gosreg` date DEFAULT NULL,
  `nm_gosreg` varchar(150) DEFAULT NULL,
  `ur_locality` varchar(150) DEFAULT NULL,
  `ur_area` varchar(150) DEFAULT NULL,
  `ur_house` varchar(10) DEFAULT NULL,
  `ur_structure` varchar(10) DEFAULT NULL,
  `ur_apartment` varchar(10) DEFAULT NULL,
  `ur_area_fact` varchar(150) DEFAULT NULL,
  `ur_locality_fact` varchar(150) DEFAULT NULL,
  `ur_house_fact` varchar(10) DEFAULT NULL,
  `ur_structure_fact` varchar(10) DEFAULT NULL,
  `ur_apartment_fact` varchar(10) DEFAULT NULL,
  `oktmo_fact` varchar(11) DEFAULT NULL,
  `oktmo_ur` varchar(11) DEFAULT NULL,
  `date_reg_ustav` date DEFAULT NULL,
  `authorized_share_capital` varchar(10) DEFAULT NULL,
  `paid_share_capital` varchar(10) DEFAULT NULL,
  `region_activity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('1930dd0d-800f-3ab9-7d8d-593547155ea5','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ФАРМ СКД\", 443052, САМАРСКАЯ, САМАРА, КИРОВА, 85, ГЕНЕРАЛЬНЫЙ ДИРЕКТОР','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1a8fb3c6-0308-4354-be99-593547f7aca9','Закрытое акционерное общество \"ФК \"Интерлек\", 443035, г. Самара, ул. Минская, 38, Гербер В И','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2a8faeef-e265-daa3-6127-592bdec3ef7b','Общество с ограниченной ответственностью «Аста»','2017-05-29 08:41:04','2017-06-03 05:16:07','1','1',NULL,0,'ec86288b-e4e5-0ee5-26a1-592ecb5ec55d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'','ООО «Аста»','6311118863','631201001','Да','62477190','1106311000124',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10000','10000','Российская Федерация'),('4331585d-2db4-3a97-77bd-593547cac985','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('442b7588-f40c-726a-8abe-593547d764ec','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ЭКСПО-МЕД\", 443052, САМАРСКАЯ, САМАРА, КИРОВА, 3, 24, ДИРЕКТОР','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('69650579-99c1-bada-a2b8-593547e11746','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6e6ac4d4-d2f9-6c1f-4111-593547b0da64','Общество с ограниченной ответственностью \"Ларго\", 443117, Российская Федерация, 63 Самарская область, Самара, Крейсерная ул, 1, Устинов Сергей Николае','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('7ae8ac10-f62a-f923-8921-593547c8479e','ООО «ОКТАНТ», Страна: Российская Федерация; ОКАТО: 36401385000; Почтовый индекс: 443066; Субъект РФ: Самарская; Город: Самара; Улица: Безымянный 2-й; ','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('94b5ffac-96cb-3063-8745-59354761163b','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9f6f49a9-b7ba-5cb7-b82c-5935475495ac','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('b9f49b4f-21dc-4a20-5646-592571b11c40','Общество с ограниченной ответственностью «Солнечная долина»','2017-05-24 11:42:01','2017-06-01 10:07:18','1','1',NULL,0,'1',NULL,NULL,NULL,'88462703738','Студеный овраг, просека 10','Самара',NULL,'443031','Российская Федерация',NULL,'89171075104',NULL,'http://ksil.ru/',NULL,'30',NULL,'Ново-Садовая','Самара',NULL,'443068','Российская Федерация','','47.64 Торговля розничная спортивным оборудованием и спортивными товарами в специализированных магазинах','','ООО «Солнечная долина»','6318123326','631201001','Да','21121044','1026301511708','12300','4210014','16','2011-11-10','Инспекция Федеральной налоговой службы по Кировскому району г. Самары','2002-01-16','Инспекция Федеральной налоговой службы по Кировскому району г. Самары',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'14000','14000','Российская Федерация'),('bb4bf44c-adba-db8d-e489-59354734ae8a','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('bd40369c-a8bf-a72e-db33-593547f2c543','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"КМ\", 443068, САМАРСКАЯ, САМАРА, НИКОЛАЯ ПАНОВА, ДОМ 17, КВАРТИРА 3, ДИРЕКТОР','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('c6d1e835-feb4-0f3e-fbc8-5935472d7d68','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ДНЛ\"','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('c7968581-12be-16e7-489c-5935453d602a','Общество с ограниченной ответственностью «ГРУЗАВТОСЕРВИС»','2017-06-05 11:51:54','2017-06-05 11:51:54','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('e5100e85-3b31-c1fc-a02e-593547965428','ООО «ОКТАНТ», Страна: Российская Федерация; ОКАТО: 36401385000; Почтовый индекс: 443066; Субъект РФ: Самарская; Город: Самара; Улица: Безымянный 2-й; ','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('e8e0427c-c6c4-df40-1b85-5935471728fa','ООО  «БИОФАРМ-Самара», 443090, Российская Федерация, Самарская область, Самара г, Советской Армии ул, дом 146, Луциус Марина Васильевна','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','Да',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('f1c17d43-b29f-16ef-5774-5927e6b4501a','Общество с ограниченной ответственностью «Эффективные технологии»','2017-05-26 08:26:48','2017-06-04 05:06:44','1','1',NULL,0,'31f70edc-a407-1101-b579-592ecc3eb0ad',NULL,NULL,NULL,NULL,'Ташкентская, 171Г','Самара','Самарская область','443122','Россия',NULL,NULL,NULL,'https://fksrf.pro',NULL,NULL,NULL,'Ташкентская, 171Г','Самара','Самарская область','443122','Россия','',NULL,'','ООО «Эффективные технологии»','6324003370','631201001','Да','62450630','1096324003093',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
INSERT INTO `accounts_audit` VALUES ('4f7c4bec-509d-b39a-8f46-592ece37cc18','f1c17d43-b29f-16ef-5774-5927e6b4501a','2017-05-31 14:10:15','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','assigned_user_id','relate','1','31f70edc-a407-1101-b579-592ecc3eb0ad',NULL,NULL),('92e98ce8-12f8-7ec7-65b9-592fbd653f8b','b9f49b4f-21dc-4a20-5646-592571b11c40','2017-06-01 07:07:00','1','phone_office','phone',NULL,'89171075104',NULL,NULL),('a27e54d1-6ca6-f793-5fa1-5926b3cec92d','b9f49b4f-21dc-4a20-5646-592571b11c40','2017-05-25 10:35:28','1','inn','varchar',NULL,'6318123326',NULL,NULL),('a3a1a28d-fc51-f6b2-2f2e-5926b3573a3d','b9f49b4f-21dc-4a20-5646-592571b11c40','2017-05-25 10:35:28','1','kpp','varchar',NULL,'631201001',NULL,NULL),('c77add06-509f-3b2d-edf1-592ece9cfc9c','2a8faeef-e265-daa3-6127-592bdec3ef7b','2017-05-31 14:08:41','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','assigned_user_id','relate','1','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d',NULL,NULL);
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
INSERT INTO `accounts_contacts` VALUES ('c813f409-47e8-0d6c-dac8-5927e651e1ab','e41e39af-5bdc-0b83-c659-5927e5a9adf7','b9f49b4f-21dc-4a20-5646-592571b11c40','2017-05-31 14:36:43',1),('e91b708c-cfea-15e5-b9eb-592ed4c0a5e2','e41e39af-5bdc-0b83-c659-5927e5a9adf7','f1c17d43-b29f-16ef-5774-5927e6b4501a','2017-06-01 18:36:46',0);
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts_1_c`
--

DROP TABLE IF EXISTS `accounts_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_contacts_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_contacts_1_ida1` (`accounts_contacts_1accounts_ida`),
  KEY `accounts_contacts_1_idb2` (`accounts_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts_1_c`
--

LOCK TABLES `accounts_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `accounts_contacts_1_c` DISABLE KEYS */;
INSERT INTO `accounts_contacts_1_c` VALUES ('1522e253-9258-c8a9-edcc-592ed33ae10d','2017-05-31 14:30:06',0,'2a8faeef-e265-daa3-6127-592bdec3ef7b','9f4c2908-47c8-e20c-5f36-592bd28fd104'),('7d324419-9510-1d76-e5b8-592ece6600ca','2017-05-31 14:12:58',1,'f1c17d43-b29f-16ef-5774-5927e6b4501a','c8548377-e295-926c-28ff-592be34c26d7'),('ac6e2994-b285-3d4d-b230-592ecf1e70e5','2017-05-31 14:30:06',1,'2a8faeef-e265-daa3-6127-592bdec3ef7b','c8548377-e295-926c-28ff-592be34c26d7');
/*!40000 ALTER TABLE `accounts_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts_2_c`
--

DROP TABLE IF EXISTS `accounts_contacts_2_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts_2_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_contacts_2accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_contacts_2contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_contacts_2_ida1` (`accounts_contacts_2accounts_ida`),
  KEY `accounts_contacts_2_idb2` (`accounts_contacts_2contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts_2_c`
--

LOCK TABLES `accounts_contacts_2_c` WRITE;
/*!40000 ALTER TABLE `accounts_contacts_2_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts_2_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `tax_system_c` text,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('1930dd0d-800f-3ab9-7d8d-593547155ea5',0.00000000,0.00000000,NULL,NULL,NULL),('1a8fb3c6-0308-4354-be99-593547f7aca9',0.00000000,0.00000000,NULL,NULL,NULL),('2a8faeef-e265-daa3-6127-592bdec3ef7b',0.00000000,0.00000000,'','','^all^,^envd^'),('4331585d-2db4-3a97-77bd-593547cac985',0.00000000,0.00000000,NULL,NULL,NULL),('442b7588-f40c-726a-8abe-593547d764ec',0.00000000,0.00000000,NULL,NULL,NULL),('69650579-99c1-bada-a2b8-593547e11746',0.00000000,0.00000000,NULL,NULL,NULL),('6e6ac4d4-d2f9-6c1f-4111-593547b0da64',0.00000000,0.00000000,NULL,NULL,NULL),('7ae8ac10-f62a-f923-8921-593547c8479e',0.00000000,0.00000000,NULL,NULL,NULL),('94b5ffac-96cb-3063-8745-59354761163b',0.00000000,0.00000000,NULL,NULL,NULL),('9f6f49a9-b7ba-5cb7-b82c-5935475495ac',0.00000000,0.00000000,NULL,NULL,NULL),('b9f49b4f-21dc-4a20-5646-592571b11c40',0.00000000,0.00000000,'','',NULL),('bb4bf44c-adba-db8d-e489-59354734ae8a',0.00000000,0.00000000,NULL,NULL,NULL),('bd40369c-a8bf-a72e-db33-593547f2c543',0.00000000,0.00000000,NULL,NULL,NULL),('c6d1e835-feb4-0f3e-fbc8-5935472d7d68',0.00000000,0.00000000,NULL,NULL,NULL),('c7968581-12be-16e7-489c-5935453d602a',0.00000000,0.00000000,NULL,NULL,NULL),('e5100e85-3b31-c1fc-a02e-593547965428',0.00000000,0.00000000,NULL,NULL,NULL),('e8e0427c-c6c4-df40-1b85-5935471728fa',0.00000000,0.00000000,NULL,NULL,NULL),('f1c17d43-b29f-16ef-5774-5927e6b4501a',0.00000000,0.00000000,'','','^simple^');
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
INSERT INTO `accounts_opportunities` VALUES ('1162ba35-2230-38fd-354d-593547cd64ef','ff2a029c-ce86-9654-d396-593547877e19','c7968581-12be-16e7-489c-5935453d602a','2017-06-05 11:57:35',0),('2b359b69-0105-fea3-4708-593547768742','2b287e3d-3be6-8e31-d953-59354729b777','1930dd0d-800f-3ab9-7d8d-593547155ea5','2017-06-05 11:57:35',0),('2ceb89ca-76d4-ddbb-f33d-593547e2cb91','2cdedc53-6e01-8f7d-50e9-593547b58435','1a8fb3c6-0308-4354-be99-593547f7aca9','2017-06-05 11:57:35',0),('506f0fbf-287e-c9b9-d22a-5935478f286c','4fab04db-a548-fdfa-8305-593547fc0392','e5100e85-3b31-c1fc-a02e-593547965428','2017-06-05 11:57:35',0),('54dbd48e-1adf-2a03-6214-593547059dec','54d09f37-35dc-9643-fdcc-593547a3d571','4331585d-2db4-3a97-77bd-593547cac985','2017-06-05 11:57:35',0),('578a050f-1fbf-cf80-77ad-593547242360','577e5d4f-8881-9680-341e-59354747ca61','442b7588-f40c-726a-8abe-593547d764ec','2017-06-05 11:57:35',0),('58e10786-160c-191a-dbfb-59354795d658','58180d3a-79e4-1c00-963f-5935474a85c0','e8e0427c-c6c4-df40-1b85-5935471728fa','2017-06-05 11:57:35',0),('80c88362-00da-093d-5bce-593547efcb41','80bc4bcc-b15a-62a2-5261-5935473f9790','69650579-99c1-bada-a2b8-593547e11746','2017-06-05 11:57:35',0),('82faa5e5-0e67-00c3-7d59-59354781f271','82ee339f-88a3-354f-ec4a-593547dd9133','6e6ac4d4-d2f9-6c1f-4111-593547b0da64','2017-06-05 11:57:35',0),('8bf5e05b-55aa-6d96-5f6a-5935470c4e9d','8be94ebf-f5c8-f60f-2016-593547f47966','7ae8ac10-f62a-f923-8921-593547c8479e','2017-06-05 11:57:35',0),('a6b40e8f-3da2-248a-855c-5935477a974f','a6a8acd0-c5b7-ec07-4bbf-593547ded106','94b5ffac-96cb-3063-8745-59354761163b','2017-06-05 11:57:35',0),('b1a44de2-d822-0afd-b8f1-593547dadf6d','b195ff78-fceb-9b70-a6ee-593547d1e1fd','9f6f49a9-b7ba-5cb7-b82c-5935475495ac','2017-06-05 11:57:35',0),('cef01e15-4f48-33f5-238a-593547031de6','cee2789e-5dbc-b167-717b-593547b4b330','bb4bf44c-adba-db8d-e489-59354734ae8a','2017-06-05 11:57:35',0),('d6db511a-c4b4-6fcf-29a7-5935478b0a7e','d6cf35ac-2236-ada8-0e69-5935476a6923','c6d1e835-feb4-0f3e-fbc8-5935472d7d68','2017-06-05 11:57:35',0),('de45be23-2fec-2d57-0dd4-5935454ec7fb','de303aa4-129c-7622-eddd-5935456645d1','c7968581-12be-16e7-489c-5935453d602a','2017-06-05 11:53:40',1),('ed1ef4a8-5c77-9036-b358-5935476192db','ed12daf7-2072-4847-f6d3-59354706db44','bd40369c-a8bf-a72e-db33-593547f2c543','2017-06-05 11:57:35',0);
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('10a80e96-b098-6601-8379-59256453825f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOK_KnowledgeBase','module',90,0),('1136eacd-c082-6b79-6b1f-59256429d460','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Alerts','module',90,0),('11d9e0c1-fcf1-816e-1e18-592564720589','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOW_Processed','module',90,0),('11f625c9-e3e2-e001-4b25-592564854749','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOK_KnowledgeBase','module',90,0),('126232fb-5c60-0894-c06d-5925647f355f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOS_Contracts','module',90,0),('129a67f8-cb5e-f63f-be52-5925643b6da1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','TemplateSectionLine','module',89,0),('129ce679-2ebd-47a8-1484-592564b68dab','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Alerts','module',90,0),('13681532-b7e0-2ca3-e4a5-59256443d40a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOK_KnowledgeBase','module',90,0),('13ed1d0b-3245-032e-a4fc-592564c56a26','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOW_Processed','module',90,0),('13fc03ef-e460-576b-61b4-59256446a200','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOS_Contracts','module',90,0),('144aaa60-c9ff-1431-1285-592564b9b4dc','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','TemplateSectionLine','module',90,0),('14d325f7-8913-0a80-9927-592564d1fa37','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOK_KnowledgeBase','module',90,0),('1559f2e0-63fe-2f49-6d82-5925640b597d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOS_Contracts','module',90,0),('15c0aaec-03e8-2455-e599-592564e6156f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','TemplateSectionLine','module',90,0),('15c908f8-567c-ed28-ecad-5925640d9e0e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Contacts','module',90,0),('1611060c-a47a-f918-36da-592564c35afa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('1618c853-de1c-ce4b-6a2b-592564298f2d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOK_KnowledgeBase','module',90,0),('16771a55-95aa-2c2c-fb2d-592564be78f5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOW_Processed','module',90,0),('1736716a-e954-4f01-f2de-5925645a97ac','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOS_Contracts','module',90,0),('176379f9-8df8-6d6b-044c-59256442115a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','TemplateSectionLine','module',90,0),('18824dba-8e7c-8d21-7307-5925647e907a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOS_Contracts','module',90,0),('18e0f408-9f5c-e6fc-2cf3-592564cfbefd','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','TemplateSectionLine','module',90,0),('1a7bf93b-edd7-da92-947b-592564891071','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','TemplateSectionLine','module',90,0),('1b117f2c-54f5-e6fa-3d00-59256459734e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOW_Processed','module',90,0),('1bf08da0-6b79-3773-718b-592564c71ef1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','TemplateSectionLine','module',90,0),('1c3e0c8e-5cbb-694c-b944-592564e076f2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Bugs','module',90,0),('1da35dfc-eec1-4dc6-6de7-59256432df12','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','TemplateSectionLine','module',90,0),('1f5948d6-45c9-50cd-d57c-592564677870','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Accounts','module',89,0),('1fd004e6-6935-f325-9332-592564750cd3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOW_Processed','module',90,0),('203c7ae6-e17a-7e32-42fd-592564afdd3d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Documents','module',89,0),('207272ae-76df-407a-db68-59256477fffb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Accounts','module',90,0),('216f99a0-6cf1-4a49-7d6c-592564a63805','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Documents','module',90,0),('21d7b2f0-7636-7380-64bc-59256442bc74','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Accounts','module',90,0),('228eee29-bef8-0bb3-deac-592564cef734','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOW_Processed','module',90,0),('22995699-b1fb-fd93-d2a6-592564786c07','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Documents','module',90,0),('22e0512b-c62c-8c52-02e5-592564cc7b91','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Accounts','module',90,0),('23c08dcf-87be-6380-406f-592564729cde','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Documents','module',90,0),('23e54dbb-328c-fa24-a215-592564a30cc1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Accounts','module',90,0),('24b91c9d-58f1-fd40-2abc-5925643f8726','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Documents','module',90,0),('24fc9692-a40b-6cb9-c037-5925648bb3ad','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Accounts','module',90,0),('25e191a7-2fa9-0db7-cc00-592564f2f1b1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Documents','module',90,0),('26449795-ba99-ff69-5a1d-5925644f0327','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Accounts','module',90,0),('26e50096-7504-3457-fc87-5925645c8379','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Contacts','module',90,0),('26fcfaf3-e0de-3075-70cf-592564ec9f8c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Documents','module',90,0),('278d051e-1ec7-f16f-3301-592564cb15a3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Accounts','module',90,0),('27dd07ed-cd1f-5838-900a-5925646843f5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('283690bc-5685-c915-c572-59256424f6ba','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Documents','module',90,0),('28ea09d6-bf9f-c334-7063-592564771a82','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','OutboundEmailAccounts','module',90,0),('2ad92b97-fbfb-4123-7137-592b9c11685c','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','access','dp_founder_ul','module',89,0),('2bebba28-0624-5160-3f2f-5925641af4e2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Users','module',89,0),('2d544540-199e-1e66-72fb-592564fce02c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Users','module',90,0),('2e7663a1-0cf0-80c1-24b7-592564b5bcf4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Users','module',90,0),('2fcdd39a-2ea7-f27c-bba8-59256406b53a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Users','module',90,0),('2feb8d86-1135-82df-32e3-5925640e5732','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOS_Invoices','module',89,0),('30dd4943-3a0d-aefc-e1ee-5925640d66f9','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Users','module',90,0),('3138d219-df01-3589-97d5-5925646af5f3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOS_Invoices','module',90,0),('3148b73c-3663-09d4-71d2-592564ae7c82','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','FP_events','module',89,0),('31efe988-94a9-1fda-63e3-592564b0d6df','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Users','module',90,0),('3290e8d9-82c1-1701-61dd-592564de30a4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','FP_events','module',90,0),('32b52270-a828-0aab-71a3-5925644acba7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOS_Invoices','module',90,0),('33c32bee-5adb-b72d-bf7f-5925642084fa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','FP_events','module',90,0),('33fb84aa-0c4a-5298-eb81-59256450ca78','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Users','module',90,0),('34073948-24b6-28c0-bc63-592564cc987c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOS_Invoices','module',90,0),('34bacbce-d5ca-e3f3-6676-592b9cb08b77','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','view','dp_founder_ul','module',90,0),('351335c3-0ddb-0e87-21f5-59256428ecaa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','FP_events','module',90,0),('3529cdd6-2d00-8878-0fa5-5925646587d9','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Users','module',90,0),('3569d016-56e4-f64e-ffdb-592564774947','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOS_Invoices','module',90,0),('3651fb1f-effc-94b1-dd55-59256479a5fd','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','FP_events','module',90,0),('370d1cbb-fd14-f408-ebab-592564a1d676','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOS_Invoices','module',90,0),('3713a454-b48d-7546-2b38-592b9c2d6f04','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','list','dp_founder_ul','module',90,0),('3798bfef-339d-1062-60ed-59256449e812','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','FP_events','module',90,0),('38090d87-acc7-397d-4c63-59256407e023','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Contacts','module',90,0),('39194c6d-1c35-c53c-7f3b-592b9cb13af1','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','edit','dp_founder_ul','module',90,0),('39718a70-206a-89ca-22aa-592564ecf20d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','FP_events','module',90,0),('3abd5ba2-e9d7-2499-a551-59256444cb70','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','FP_events','module',90,0),('3ac034b5-2355-f0c2-e454-5925648456fe','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOS_Invoices','module',90,0),('3ca02bfb-bacb-2944-fe88-592564a9ff9c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOS_Invoices','module',90,0),('3e902a5b-9702-150f-4cfd-5926d2aef56a','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','access','dp_bkrv','module',89,0),('3f4bf13d-b119-cabe-b775-59256410df39','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Opportunities','module',89,0),('4076f279-cd3d-101c-63e2-592b9c984b99','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','delete','dp_founder_ul','module',90,0),('4090aa9b-a492-9f62-4ff9-5925643b5152','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Opportunities','module',90,0),('419033f6-7326-7ade-7646-5925648779be','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','jjwg_Maps','module',89,0),('41b8e304-7e50-c095-e2cf-5925643c4d33','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Opportunities','module',90,0),('4272d520-8637-4eb2-baa6-592b9cfb00a2','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','import','dp_founder_ul','module',90,0),('42d95587-a278-289c-eb94-592564e075da','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Opportunities','module',90,0),('44505817-5003-4aa2-b6cb-592564feeb1c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','jjwg_Maps','module',90,0),('44720a37-a225-70d7-d33c-59256458ae0c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Opportunities','module',90,0),('45278482-356e-a44c-da79-592b9cd44d36','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','export','dp_founder_ul','module',90,0),('4578ec44-70b3-fa55-1cb9-5925648295b0','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Opportunities','module',90,0),('461ac14c-4a85-c045-86fa-5925640acc8c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','FP_Event_Locations','module',89,0),('4673f515-c8b3-fa4f-75a1-592564951def','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Project','module',89,0),('4677a4e7-4f8d-39fc-8d21-59256431d9e0','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Opportunities','module',90,0),('4718eeb3-c4fb-614f-71ad-5925649ae43b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','jjwg_Maps','module',90,0),('475610da-a141-488b-81e1-592b9c7ae62d','2017-05-29 03:58:19','2017-05-29 03:58:19','1','1','massupdate','dp_founder_ul','module',90,0),('4786456b-0a15-6689-904e-5926d2b50cb1','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','view','dp_bkrv','module',90,0),('478ed2f3-ff64-cf3e-7320-5925647c590d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','FP_Event_Locations','module',90,0),('4803e562-2f2e-3871-489d-592564d25fec','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Project','module',90,0),('48f02fb2-371d-dc51-33e8-59256426b897','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','jjwg_Maps','module',90,0),('4911f675-7f10-ace8-9e62-5925649220b6','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','FP_Event_Locations','module',90,0),('498359df-ebb0-3b45-6ccd-5925643089fd','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Project','module',90,0),('49e4b481-b6bd-2b9d-61ca-5926d2b206df','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','list','dp_bkrv','module',90,0),('4a678ea5-9b38-2bd7-fda5-5925644303af','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Opportunities','module',90,0),('4a99b4c6-878b-d3fe-63d6-5925644eb0b5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','FP_Event_Locations','module',90,0),('4ab7f61f-d638-5a4e-1177-5925643d151e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','jjwg_Maps','module',90,0),('4abfa988-e469-35b5-f38e-59256434204e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Project','module',90,0),('4bccc8ad-39e8-e9e6-c825-5926d2302b62','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','edit','dp_bkrv','module',90,0),('4bf6dac8-fd03-c55c-ff6c-592564d17570','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','FP_Event_Locations','module',90,0),('4c125b13-a179-0105-9c01-592564c12cde','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Project','module',90,0),('4c4b9363-1c28-9982-4bbe-592564363399','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','jjwg_Maps','module',90,0),('4d433b8a-2f4a-da18-0129-59256458329b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','FP_Event_Locations','module',90,0),('4dd371b6-acd5-b07e-5a31-5926d2cdc50c','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','delete','dp_bkrv','module',90,0),('4dfac029-9049-408d-2df4-592564a964be','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Project','module',90,0),('4e051c7b-5060-d5e4-d988-592564778b88','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','jjwg_Maps','module',90,0),('4ed693c1-d8af-17f2-2c8b-592564690fd5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','FP_Event_Locations','module',90,0),('4f7774cc-cfe4-8c8d-b4a9-5925640c89cb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','jjwg_Maps','module',90,0),('4f99def4-72c1-f478-77a9-59256451b225','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Project','module',90,0),('4f9b51e1-5a4b-dde2-23e7-59272d8b429a','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','access','dp_realty','module',89,0),('4ff61581-2104-a4ed-fe44-5926d28a9f0f','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','import','dp_bkrv','module',90,0),('4ff6dc67-2f3a-abf6-cc32-592564985ca4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','FP_Event_Locations','module',90,0),('50675523-bbed-598e-d52d-592564554740','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Spots','module',89,0),('50b85d74-3ef0-4d3a-e135-5925649cf51d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOS_PDF_Templates','module',89,0),('50f3217a-b574-39ff-bf1e-592564d41ea3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Project','module',90,0),('518d99c4-558b-351b-ec1b-592564b8e454','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Spots','module',90,0),('520d7287-1b9d-5829-a93f-5926d220fa6f','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','export','dp_bkrv','module',90,0),('52318172-cebb-4f78-7b54-592564813de3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOS_PDF_Templates','module',90,0),('52c2e837-e4e9-b981-212f-592564bd6f1d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Spots','module',90,0),('539f0a19-2e9f-00f4-4050-592564ce262d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','OutboundEmailAccounts','module',90,0),('53c0c5ce-cd4e-eb95-33b9-5925644aecf5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOS_PDF_Templates','module',90,0),('54087b0d-f496-c657-71ce-592564e2b168','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Spots','module',90,0),('545a409e-6a2a-558d-af21-5926d26e8ac4','2017-05-25 12:46:45','2017-05-25 12:46:45','1','1','massupdate','dp_bkrv','module',90,0),('552ba5f1-642d-7626-679e-59256471f0b2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOS_PDF_Templates','module',90,0),('5587eb44-6152-9f3e-dbc8-5925647bde8f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Spots','module',90,0),('568c15d0-5418-63c4-6f83-592564490323','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOS_PDF_Templates','module',90,0),('56fa86f6-2a0d-8e91-c084-592564d07a81','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Spots','module',90,0),('5800fe63-193a-7aa9-0a00-592564804c36','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOS_PDF_Templates','module',90,0),('58446609-de3c-5851-a042-59272df93715','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','view','dp_realty','module',90,0),('584fc1ef-4481-5017-8b01-592564552c42','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Spots','module',90,0),('594005aa-2299-99d2-3ba1-5925643a7e4f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Contacts','module',90,0),('59739056-8eb7-34d5-a28e-59256456f9b0','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Spots','module',90,0),('5991f5de-6979-f127-9099-592564f0a3f7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOS_PDF_Templates','module',90,0),('5a6cb8f7-7a64-2561-7941-59272dcbd0fb','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','list','dp_realty','module',90,0),('5d8889c9-6f9a-f091-be0b-592564b4403f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOS_PDF_Templates','module',90,0),('5d9fe3df-96e1-45fc-171d-5925647f70fa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOD_IndexEvent','module',89,0),('5de47ae3-d6ee-012d-c786-59272d6b68f6','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','edit','dp_realty','module',90,0),('5edff6d6-735a-a946-92d0-59256434c86f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOD_IndexEvent','module',90,0),('5f2fde6b-f5d5-300e-3aac-5925641bb69c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','EmailTemplates','module',89,0),('60086668-8a2b-0191-e750-59256463b988','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOD_IndexEvent','module',90,0),('608cc0a5-a7f3-cfa2-44af-59272d36f1cd','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','delete','dp_realty','module',90,0),('6091cb62-3981-f1c1-fa33-592564003b02','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','ProjectTask','module',89,0),('60f6edde-afd7-e6df-71b6-5925642910a9','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','EmailTemplates','module',90,0),('610f9834-e450-d9d3-028e-592b0831978a','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','access','sro_svid_sro','module',89,0),('6132421a-cbed-4500-8e64-592564dd0c93','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOD_IndexEvent','module',90,0),('61c22bbe-611b-6673-1a18-59256403af7e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','ProjectTask','module',90,0),('6242c377-b887-86dc-604e-592564cb8584','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOD_IndexEvent','module',90,0),('624c6d7e-853c-9332-605d-592564f7f6d6','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','jjwg_Markers','module',89,0),('62739f95-df3e-6bf6-ae85-59256468c10f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','EmailTemplates','module',90,0),('62c2f9e9-c3a2-94b1-94e1-59272d7eab87','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','import','dp_realty','module',90,0),('62efa492-aa46-da6d-3545-59256453dbe6','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','ProjectTask','module',90,0),('63622169-091c-bff5-8096-592564f65d1d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOD_IndexEvent','module',90,0),('6402f0ba-2c1d-fd22-a5f5-592564ed85bb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','ProjectTask','module',90,0),('642439c1-b715-4471-27b5-5925648353a2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','jjwg_Markers','module',90,0),('6432d85d-75b1-c298-6020-592564020d99','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','EmailTemplates','module',90,0),('6481270c-1724-7422-8c07-59256477caf5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOD_IndexEvent','module',90,0),('6531ca27-0669-56d6-f989-592564d84294','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','ProjectTask','module',90,0),('655c8a63-2411-bc65-daba-59272dfa2ba9','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','export','dp_realty','module',90,0),('659fb557-481f-7e9f-e8cf-592564ba8443','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','jjwg_Markers','module',90,0),('65cc28c6-6bf3-2370-f957-592564bf312c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOD_IndexEvent','module',90,0),('660dba79-8158-d326-0ccb-5925648fb74d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','EmailTemplates','module',90,0),('664bc999-523b-a960-2689-592564a460d2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','ProjectTask','module',90,0),('674e687d-1e4a-469e-5ed3-5925649f4ee9','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','ProjectTask','module',90,0),('6770ad0a-4a60-5e12-685e-592564d1fcc4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','jjwg_Markers','module',90,0),('6792b1f9-7b21-dcae-147b-592b084b626c','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','view','sro_svid_sro','module',90,0),('67ab466a-9366-27b7-a290-592564f11b19','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','EmailTemplates','module',90,0),('6846f05d-3263-41a8-6406-592564f18f89','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','ProjectTask','module',90,0),('686df4ba-5306-e303-1e2d-59272d957776','2017-05-25 19:15:17','2017-05-25 19:15:17','1','1','massupdate','dp_realty','module',90,0),('68eaff61-686f-76b9-9d8f-592564b2b34b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','jjwg_Markers','module',90,0),('6903eb61-be7c-e77a-3157-5925642fb47b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','EmailTemplates','module',90,0),('6906cc52-71ba-1061-2ed0-592b086dee51','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','list','sro_svid_sro','module',90,0),('69ac0e7f-e756-6db1-22f3-5925646df4a7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Bugs','module',90,0),('6a5576b0-58d4-758d-58aa-592b085b0363','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','edit','sro_svid_sro','module',90,0),('6a692618-ab50-f579-b565-59256412f910','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','jjwg_Markers','module',90,0),('6a9f9837-5b1c-ff51-bb90-59256496105a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','EmailTemplates','module',90,0),('6bb7e990-1a78-3f9f-5830-592564028086','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','jjwg_Markers','module',90,0),('6bbe5e76-ddb8-17f7-c3cf-592b089ee0bd','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','delete','sro_svid_sro','module',90,0),('6cf6b475-7a06-0985-ec43-592564128da5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','jjwg_Markers','module',90,0),('6dab649e-4e0c-fca8-5242-592564fed239','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOS_Product_Categories','module',89,0),('6f18ede4-8148-63d2-c7c1-592564bdb0c1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOS_Product_Categories','module',90,0),('7028bee7-3248-fc92-78dc-592564fc9b11','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOD_Index','module',89,0),('706cb269-fa43-50dd-0f6a-592b082455e2','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','import','sro_svid_sro','module',90,0),('7074eac8-e178-1b90-e6b4-592564b79cdc','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOS_Product_Categories','module',90,0),('711e5a2c-8abd-ffb9-266c-59256488bbae','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Notes','module',89,0),('718a9cd4-880a-7da4-9f93-592564c5f57b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOD_Index','module',90,0),('71af4945-a6d5-c8db-2622-592564c39397','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOS_Product_Categories','module',90,0),('724033ab-b4a7-b31c-0ad7-592b085e903b','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','export','sro_svid_sro','module',90,0),('72617cc7-d088-32ed-9975-5925649e763e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Notes','module',90,0),('72dbf649-7d1f-26f6-3337-592564007a74','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOD_Index','module',90,0),('73338552-523e-a422-7ed6-5925644be58a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOS_Product_Categories','module',90,0),('739856ff-8f8f-3477-17e0-5925644ed1cb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Notes','module',90,0),('7430d855-a4ed-f680-52e4-5925643a6de4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOD_Index','module',90,0),('74998f8a-19ae-187e-9e19-592564dac258','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOS_Product_Categories','module',90,0),('750b1fc9-e895-b03b-8951-592564afb3c2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Notes','module',90,0),('75bbaaad-7827-6454-0595-5925649d732c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOD_Index','module',90,0),('75f71ed0-5ae0-d152-c517-5925640f3fc2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOS_Product_Categories','module',90,0),('762074c9-7bb0-f3f1-a812-59256494357b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Notes','module',90,0),('76a9d2ae-0e73-c4dc-c72e-592b083b760e','2017-05-28 17:26:32','2017-05-28 17:26:32','1','1','massupdate','sro_svid_sro','module',90,0),('772630ec-8fb5-f9d2-2d12-5925648dc9cb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOD_Index','module',90,0),('773bec7c-9403-3ee0-839c-59256452d1af','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Notes','module',90,0),('7755f8df-baec-3f94-11c8-592564cab0a4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','EAPM','module',89,0),('77b2e06d-6a5b-7e18-3c38-5925642dbb19','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOS_Product_Categories','module',90,0),('7857cdc1-7615-7c24-0488-5925646f00e3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOD_Index','module',90,0),('786e0443-0a04-19f4-fb59-5925642c15f9','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Notes','module',90,0),('791fdddd-0141-c6cc-def0-59256496af30','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','EAPM','module',90,0),('798cc1cf-8565-a8c2-a258-59256454a1f4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Notes','module',90,0),('799e87fc-93fd-0e29-6499-59256498b297','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOD_Index','module',90,0),('7a7125f6-0b75-5019-da7b-592564eed389','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','jjwg_Areas','module',89,0),('7a7aba15-8f2a-59b8-f69a-59256470a572','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','EAPM','module',90,0),('7bca0e8d-9cf5-84e3-dabf-592564156643','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','EAPM','module',90,0),('7c4b7014-5aa4-38a1-235f-592564f7358e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Campaigns','module',89,0),('7c99b69b-1427-cbd6-5899-5925648529cb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','jjwg_Areas','module',90,0),('7d24bb26-88cf-556f-ddf1-59256448abc3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','EAPM','module',90,0),('7d837f8d-3c93-7305-333f-592564a5b864','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Campaigns','module',90,0),('7e5bb1e9-2251-aa52-53a6-592564bd0b2b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','EAPM','module',90,0),('7e7c554d-c663-70f7-c369-592564badad4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','jjwg_Areas','module',90,0),('7f89a846-56e8-d3ea-f5d3-592564c4e88c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Campaigns','module',90,0),('7fc5a6fe-1514-4da6-9485-592564a3659c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','EAPM','module',90,0),('80d0a7af-1d88-98f4-df95-592564047141','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','jjwg_Areas','module',90,0),('80e001f9-97bb-ca7d-4e84-5925642a96cc','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Bugs','module',90,0),('80f61337-deb7-c246-daee-592564609465','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','EAPM','module',90,0),('819b446e-f296-4043-6346-5925644b7b3f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Campaigns','module',90,0),('8330d8ec-9dd2-7034-f9fd-59256439fb29','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Campaigns','module',90,0),('836bcd67-9fb8-72eb-702f-592564ee157a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOS_Products','module',89,0),('83b6e320-891b-314f-6788-592564c32dfe','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','jjwg_Areas','module',90,0),('846b7bfe-39a5-d1f0-0584-592564a35f98','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Campaigns','module',90,0),('8488260f-4b79-9ca5-b445-592564c2cf31','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Calls','module',89,0),('84b4b2fc-7dea-e223-640b-592564ae97bd','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOS_Products','module',90,0),('857dbad0-7b76-b8a9-1a54-592564f43c8c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','jjwg_Areas','module',90,0),('858abe37-2952-a449-fdb1-5925647bb1bc','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Campaigns','module',90,0),('85c16938-6029-c620-e135-59256438a294','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Calls','module',90,0),('85c9b074-3b6a-e033-d244-592564c466a1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOS_Products','module',90,0),('86c1b182-51b9-ac54-c64c-592564f99600','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOP_Case_Events','module',89,0),('86ca3522-c826-18ab-9799-592564b03dfe','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Campaigns','module',90,0),('86f48c68-cb76-090b-1b6d-59256445be37','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOS_Products','module',90,0),('880412ca-c9e0-e88a-7fa7-5925643130e1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Calls','module',90,0),('882d4255-3e6c-0270-eeb2-5925645c718e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOS_Products','module',90,0),('8833d87a-9bbf-2796-f98b-592564359ac9','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOP_Case_Events','module',90,0),('8897957c-2d5c-5fb4-7f30-59256456bb76','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','jjwg_Areas','module',90,0),('894cb07a-667c-f89e-2d4e-592564395de7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOS_Products','module',90,0),('89c40de8-033c-c9c9-40b7-592564aed98d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Calls','module',90,0),('89cb6560-dda5-3c2b-97af-5925644f817e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOP_Case_Events','module',90,0),('89fd6046-1985-d890-e42f-592b9c540b39','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','access','dp_founder_fl','module',89,0),('8a274117-2c0f-328a-40c3-592564335c06','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','jjwg_Areas','module',90,0),('8ad11ed4-6e92-27f9-2e81-592564817cc6','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOS_Products','module',90,0),('8b5b6647-b8db-86ba-34c6-592564ac2aad','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Calls','module',90,0),('8bdbcb74-f52c-8301-a74c-5925646b2e69','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOP_Case_Events','module',90,0),('8c1ad23c-e66f-5300-c512-5925646e0eeb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOS_Products','module',90,0),('8cc57d35-4834-0079-ce2f-59256449ae59','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Calls','module',90,0),('8e2c3825-ceef-5157-b639-592564212449','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Calls','module',90,0),('8e9b63f4-dcad-fd85-c262-5925647f397a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOP_Case_Events','module',90,0),('8f7fa86b-9be1-8398-e78c-592564234b9d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Calls','module',90,0),('9035e82e-8c79-9576-60ce-59256498ee24','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOP_Case_Events','module',90,0),('92416dfa-05ba-62ce-d5bc-592b9c18b6ba','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','view','dp_founder_fl','module',90,0),('9273f407-98c3-86b4-75f3-592564fa6e78','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOP_Case_Events','module',90,0),('92e3dc1b-dac6-c165-0834-5925643ebb85','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AM_ProjectTemplates','module',89,0),('93fd6338-ebdb-c244-f360-59256473717e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOP_Case_Events','module',90,0),('9410e7f9-c215-53b6-bd6d-592b9c62e6bd','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','list','dp_founder_fl','module',90,0),('9442d13a-4cdb-2885-b927-5925641594fa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AM_ProjectTemplates','module',90,0),('95310256-0fa2-8b0c-48b7-592564a6f140','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Alerts','module',89,0),('95641d65-a0a1-e7ea-c551-59256462edab','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AM_ProjectTemplates','module',90,0),('95e450ed-7712-b50e-9db9-592b9c0c7936','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','edit','dp_founder_fl','module',90,0),('96afbf57-6024-4d17-49a1-592564058860','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AM_ProjectTemplates','module',90,0),('97b928fd-cba8-4088-bc37-592b9cb03b49','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','delete','dp_founder_fl','module',90,0),('97de90d3-ee52-62e3-0aee-592564ccc78c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AM_ProjectTemplates','module',90,0),('98900fa1-069a-2cf6-4045-5925640fde45','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','OutboundEmailAccounts','module',90,0),('98ff6059-4b15-7ca5-72f4-592564e5aa56','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AM_ProjectTemplates','module',90,0),('997652b5-ef93-72ed-1a88-592b9cd5e35d','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','import','dp_founder_fl','module',90,0),('997d6ba6-3c16-b40c-da22-5925646d3e81','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','jjwg_Address_Cache','module',89,0),('9a43ae71-e6e0-bd53-800d-59256408667c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AM_ProjectTemplates','module',90,0),('9aeb33c6-aa31-82f4-3515-59256419e20b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','jjwg_Address_Cache','module',90,0),('9b0fbc2b-7a87-a6dc-a988-592b9cfeb212','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','export','dp_founder_fl','module',90,0),('9b6dab5a-dba0-f32b-c7cd-59256481b998','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AM_ProjectTemplates','module',90,0),('9c8e15ac-e95f-94a8-3a1b-59256427e6cb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','jjwg_Address_Cache','module',90,0),('9cccd982-742f-83df-749d-592b9c5155ba','2017-05-29 03:57:10','2017-05-29 03:57:10','1','1','massupdate','dp_founder_fl','module',90,0),('9e02c754-e6e4-24f4-dbf1-592564607787','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','ProspectLists','module',89,0),('9e6a31f8-1dbc-637f-42ed-5925646bcb8c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Emails','module',89,0),('9f366d67-8cf5-a7dc-d646-592564bf0017','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','ProspectLists','module',90,0),('9f7fe16d-9921-2140-9d95-5925641009f4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOP_Case_Updates','module',89,0),('a0095f6f-cc35-cbf9-155e-592564c6a49f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Emails','module',90,0),('a071b98a-e813-5a5e-c546-592564056454','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','ProspectLists','module',90,0),('a09d6109-005a-b7c1-4300-5925642f0330','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOP_Case_Updates','module',90,0),('a18ef381-b9e0-e600-9230-592564ffeafd','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','ProspectLists','module',90,0),('a1b95047-1e71-9594-d6fc-5925641cef1f','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOP_Case_Updates','module',90,0),('a2655c4a-9abe-9d12-7845-5925643fa5da','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Emails','module',90,0),('a2b6ae39-de64-0e4c-789e-5925640db8cc','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','ProspectLists','module',90,0),('a2d730cb-5018-919d-58f1-5925644eb25b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','jjwg_Address_Cache','module',90,0),('a2df7bce-230e-f51f-efda-592564ffb0cc','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOP_Case_Updates','module',90,0),('a3b1049b-9170-ea78-09f5-59256432ffb1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Emails','module',90,0),('a41861a2-5c5f-dd56-8346-5925641efb0b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOP_Case_Updates','module',90,0),('a41c170c-cb90-e272-0ce5-592564db6f12','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','ProspectLists','module',90,0),('a4706533-e8ea-05c7-3836-5925649caa49','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','jjwg_Address_Cache','module',90,0),('a4fd8eec-d5c0-306c-c68e-592564a73563','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Emails','module',90,0),('a525197d-c8c7-11af-be34-592564331c33','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','ProspectLists','module',90,0),('a579e34e-7b3c-a141-7c7f-592564deba53','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOP_Case_Updates','module',90,0),('a61fe7b2-8b5b-0d26-f2f8-5925644b0aa5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','jjwg_Address_Cache','module',90,0),('a626a4a5-22fb-7102-eeed-592564f29851','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','ProspectLists','module',90,0),('a65da3d1-7bdb-7095-dfd2-5925645eb267','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Emails','module',90,0),('a6b0bc39-90e3-5fe9-fbdc-592564e8aebf','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOP_Case_Updates','module',90,0),('a761f461-99d3-2dc2-7803-5925643de90e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Emails','module',90,0),('a7e82439-bd9b-b0ee-d60b-592564ded457','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','jjwg_Address_Cache','module',90,0),('a7f773d9-2f38-5b94-170c-5925646f2724','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOP_Case_Updates','module',90,0),('a815047a-a25d-6a67-ed5d-592564299580','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Alerts','module',90,0),('a8e70f2c-c33e-55e2-9c2a-5925647f06ff','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOS_Contracts','module',89,0),('a8fa4880-38b1-d883-26d2-592564a81a92','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Emails','module',90,0),('a937a342-208b-dd93-1afa-592564e1cd4c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Leads','module',89,0),('a98bbdf5-93ae-4e76-4b59-5925647c38c6','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','jjwg_Address_Cache','module',90,0),('acdee2ef-da71-e239-b6ed-5925641ba071','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Leads','module',90,0),('aef7bb67-e81b-7b38-8e21-5925647f77ef','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Leads','module',90,0),('b04b51e9-217f-bf61-d2a2-59256436f552','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Leads','module',90,0),('b182988b-6c00-7040-8e98-592564804e92','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Prospects','module',89,0),('b22c13ef-95a3-e88e-c3ea-592564d06495','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOS_Quotes','module',89,0),('b35d50c9-9573-ed56-2564-592564e5cb64','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Prospects','module',90,0),('b3a3b3c7-5b46-b4ec-113b-592564bb8255','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOS_Quotes','module',90,0),('b40f274b-56bb-b84d-003b-59256484cf91','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Leads','module',90,0),('b488b56d-07c7-573b-0e33-5925646c6428','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Prospects','module',90,0),('b503e4e0-8ad9-e420-32f7-592824dafd8b','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','access','dp_license','module',89,0),('b509c134-ea8a-5ee4-fb63-59256473781d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOS_Quotes','module',90,0),('b57dfad6-d1a8-4521-3e36-59256417d4e3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Leads','module',90,0),('b58c80c8-20d1-eef5-10de-592564275ef0','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOR_Reports','module',89,0),('b609639b-b963-475d-9431-592564f766fe','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Prospects','module',90,0),('b652beff-6f92-c2e1-1207-592564bb428a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOS_Quotes','module',90,0),('b6edd723-8d8e-ea05-3a68-59256410dacf','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOR_Reports','module',90,0),('b719c335-361d-5434-d1d5-59256405fce5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Leads','module',90,0),('b7b87a63-3ace-21b2-2891-592564546b12','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOS_Quotes','module',90,0),('b81a61df-8b0d-c08f-ea62-592564184c31','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOR_Reports','module',90,0),('b82bcf10-09ee-678e-6ea8-592564144a53','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Prospects','module',90,0),('b89803a4-a709-19fc-6dac-5925640b706a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Leads','module',90,0),('b940fbe9-1be8-5832-b408-5925644df2ea','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Prospects','module',90,0),('b9525773-ebce-299e-a2b8-592564d902fa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOR_Reports','module',90,0),('ba0b2353-2687-3ba0-94f1-5925649eabd7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOS_Quotes','module',90,0),('ba436fdf-f437-4df1-ced7-592564a021a3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Prospects','module',90,0),('bb63626f-14a6-7db4-ceab-59256405a686','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOR_Reports','module',90,0),('bb6baf92-b14e-d5e0-0f52-5925649277fa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Prospects','module',90,0),('bbdea725-c7de-f2bd-652d-592564c065a1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Calls_Reschedule','module',89,0),('bc02a448-967a-0970-a4d0-59256458de20','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOS_Quotes','module',90,0),('bc162da9-0dcb-1df8-4c1c-592824867fb1','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','view','dp_license','module',90,0),('bc1a0642-70fb-bd58-f89f-59256483596c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Alerts','module',90,0),('bcbc1548-6947-13f8-2018-592564d6aef3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOR_Reports','module',90,0),('bd94a534-3319-c9c5-b47d-59282449fe15','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','list','dp_license','module',90,0),('bde96f5e-b36d-b7e9-bb14-59256483588a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOS_Quotes','module',90,0),('be42632d-5408-c7d3-06d9-5925648efbaa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOR_Reports','module',90,0),('be9f8c89-8e4f-cea9-02d4-592564025250','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Meetings','module',89,0),('bea8b4ff-e1db-0585-8996-592564cfb9f2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Calls_Reschedule','module',90,0),('bf27e9ff-dae8-9e0b-c9c7-5928245babc6','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','edit','dp_license','module',90,0),('bf9890e9-6469-37a3-cf58-5925645d9e33','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOR_Reports','module',90,0),('bfcdf9d8-413e-466f-3472-592564f02c1c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Meetings','module',90,0),('c0312370-8eda-7184-dc43-592564aa00dc','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Calls_Reschedule','module',90,0),('c09277db-b273-117d-bc44-59282421474e','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','delete','dp_license','module',90,0),('c0db855d-6257-0995-6527-592564bc0676','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Meetings','module',90,0),('c191f75b-c9a0-ff99-9641-592564bf3577','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Calls_Reschedule','module',90,0),('c218689c-8812-5bfd-5e8b-5928248f6571','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','import','dp_license','module',90,0),('c237d749-bfc5-19a0-68b3-592564c18e14','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Meetings','module',90,0),('c34a0a42-3243-18da-e2b6-592564875092','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOW_Processed','module',89,0),('c37ac16e-68dd-95da-191b-592824ad8aaf','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','export','dp_license','module',90,0),('c386652c-6ddb-7dae-de19-592564f60250','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Calls_Reschedule','module',90,0),('c40870a5-e0f5-ceba-5bf5-592564d67e1a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Meetings','module',90,0),('c4d16e3b-e3a8-2e8e-05b6-592824c52301','2017-05-26 12:51:17','2017-05-26 12:51:17','1','1','massupdate','dp_license','module',90,0),('c4ffaa81-5029-0143-bba7-59256453e5b5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Calls_Reschedule','module',90,0),('c54626ca-2205-923e-0d02-592564ef6ebf','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Meetings','module',90,0),('c641ec1b-e63d-f4a7-b78a-5925645bb84a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Calls_Reschedule','module',90,0),('c666478f-25c6-df9b-236e-592564c829d5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Meetings','module',90,0),('c7a238f6-8063-6950-1ce6-592564919cd7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Calls_Reschedule','module',90,0),('c7d72dc4-2238-e2bc-bdc1-5925648d5907','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Meetings','module',90,0),('c9c73879-801f-2f3d-dc92-592564fb5ad7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','EmailMarketing','module',89,0),('caaa0ff1-2662-d488-7bae-592564a4cc89','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOK_KnowledgeBase','module',89,0),('cc63a273-5328-d30b-3699-592564290912','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','EmailMarketing','module',90,0),('cd7f7d50-4795-8816-1331-592564b55f12','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','EmailMarketing','module',90,0),('cd8b0646-d90a-ffe8-adb9-592564695e30','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Bugs','module',90,0),('ce79e5d9-a75e-d0f3-4d9a-592564e39851','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Cases','module',89,0),('ce945be8-3e14-8fac-5896-5925641deeb2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','EmailMarketing','module',90,0),('cfc1a7db-59de-db29-8676-5925646dcc08','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','EmailMarketing','module',90,0),('d0258c5b-6894-df16-51fd-5925641b8081','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Cases','module',90,0),('d0c80d70-d9fc-3638-9e4a-592564349e7d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Alerts','module',90,0),('d11e4709-20c5-5d80-ee86-59256403b831','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','EmailMarketing','module',90,0),('d19ef571-500a-e7b8-f466-592564ea3726','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Tasks','module',89,0),('d1a34f1d-0c3f-fa52-7115-59256466fa59','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AM_TaskTemplates','module',89,0),('d1c102a3-2993-a192-d878-59256464b217','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Cases','module',90,0),('d222ce7f-ce1e-a307-7622-592564d3f208','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','EmailMarketing','module',90,0),('d22700c5-19bd-c1a0-af9e-59256406ac3d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','SecurityGroups','module',89,0),('d321d382-fe5e-3613-273d-59256404e3b2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Tasks','module',90,0),('d335fc39-b447-17be-60ea-592564b8803a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AM_TaskTemplates','module',90,0),('d33c8c7c-53be-6906-4834-59256485a333','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Cases','module',90,0),('d35d7c4e-762d-b7bd-5fc1-592564d8c42b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','EmailMarketing','module',90,0),('d3f76523-7188-6078-cc8d-592564c2731b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','SecurityGroups','module',90,0),('d452862e-a776-d7ed-0e3c-5925645d41cd','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Tasks','module',90,0),('d47fee2e-e684-ac40-2c42-592564b27d95','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Cases','module',90,0),('d4e0d847-e5a5-0cbc-fced-5925643b47be','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOW_WorkFlow','module',89,0),('d4ed85f3-c423-b7c8-e959-5925643851a7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AM_TaskTemplates','module',90,0),('d57063b7-be97-b7eb-79ac-592564a4e5c4','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','SecurityGroups','module',90,0),('d570e2e1-8b6d-e21d-f470-5925647611f7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Tasks','module',90,0),('d5b1d0c6-eb5f-e00b-d1dd-592564f2c827','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Cases','module',90,0),('d62c9b9c-e4d0-f67b-4924-5925648f8ee3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AM_TaskTemplates','module',90,0),('d67021e7-4d95-b290-868e-5925642fc82a','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOW_WorkFlow','module',90,0),('d6a41f93-7c0b-6692-5e19-592564852d5d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Tasks','module',90,0),('d6c6750d-3aab-e4a8-14cf-592564086404','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','SecurityGroups','module',90,0),('d76c5c58-816f-3fa7-43de-5925640460c9','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Cases','module',90,0),('d79b21c4-db12-23c8-64bf-59256477f388','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AM_TaskTemplates','module',90,0),('d7c4551e-7866-8a41-23a4-592564fe9a20','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Tasks','module',90,0),('d80fd00d-bc92-bb06-ca91-592564db9aab','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','SecurityGroups','module',90,0),('d8118dfd-6f8d-e88e-2972-5925648cfe92','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOW_WorkFlow','module',90,0),('d8b31032-a0e5-a3c5-0a9e-59256448e044','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AM_TaskTemplates','module',90,0),('d8dbbab2-bc85-9e73-df6b-592564a6f2c0','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Cases','module',90,0),('d9155b0a-5bfc-b1c4-a543-592564e4757d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','Tasks','module',90,0),('d93c820e-6727-4b68-add5-59256405c0a2','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','SecurityGroups','module',90,0),('d99a8f45-1436-f414-1b70-592564af912b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOW_WorkFlow','module',90,0),('d9c81c10-63f7-0f13-7992-592564378318','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AM_TaskTemplates','module',90,0),('d9f20532-f485-885f-b380-5925648dc9f5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOS_Contracts','module',90,0),('da8680ef-4207-58ea-502a-5925649fa112','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','SecurityGroups','module',90,0),('daa40ed7-4ada-a968-ecb6-5925643e4917','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','Tasks','module',90,0),('db016c6f-af5c-1c6e-f594-5925649cb49b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AM_TaskTemplates','module',90,0),('dbb378cd-5c36-e292-a504-592564c8043c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOW_WorkFlow','module',90,0),('dbd49dbd-96cd-4810-973a-592564fd9d3c','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','SecurityGroups','module',90,0),('dd2d0077-a1c6-01ed-e29c-5925645afd45','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOW_WorkFlow','module',90,0),('de990503-546b-6054-ebfd-592564b70dcb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOK_KnowledgeBase','module',90,0),('df2aca5e-22f4-7ef7-9bf8-592564e76887','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOW_WorkFlow','module',90,0),('e09b4d5a-1560-54b2-7e13-592564d951d0','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOW_WorkFlow','module',90,0),('e646cbbe-5b4a-4a6a-3725-592564cd6f3b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOR_Scheduled_Reports','module',89,0),('e7ce0228-c508-6a29-f5be-592564e519d5','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','Alerts','module',90,0),('e7f5c4a6-95ab-641c-8791-59256401f007','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','OutboundEmailAccounts','module',89,0),('e90e8f5c-24e2-9e17-5870-592564824993','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOR_Scheduled_Reports','module',90,0),('e9a71ab8-82d1-c442-c5e1-592564277cba','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','OutboundEmailAccounts','module',90,0),('ea888bf2-f049-b3cf-c210-59256408536d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOR_Scheduled_Reports','module',90,0),('eb293405-926c-8af5-8ab6-592564ed89bd','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','OutboundEmailAccounts','module',90,0),('ebb007d2-62e5-e849-60dd-592564e9f985','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Bugs','module',89,0),('ebfd8757-8e2e-c9a1-29fa-59256458bdc6','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOR_Scheduled_Reports','module',90,0),('ecca2d44-59d4-5ca5-e1b5-5925642e0a8b','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','OutboundEmailAccounts','module',90,0),('ed2c78ab-59c5-d8ce-b665-59256457bb57','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Bugs','module',90,0),('ed93055d-235f-ddf3-7c4f-592564e9c172','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('eda1943d-c0f8-4675-b348-5925648e5bc1','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOR_Scheduled_Reports','module',90,0),('ee508cbe-f9df-8732-1278-592564c5555d','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','OutboundEmailAccounts','module',90,0),('eebea8f2-4149-fb32-9c88-5925641e6365','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('eedfe052-473d-a0ce-a966-5925648b835e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Bugs','module',90,0),('ef19df34-0607-a454-49e5-5925645c4d26','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOR_Scheduled_Reports','module',90,0),('efce29cb-3824-bcf7-0a2c-592564a15273','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('f01805df-9cb9-b299-3ecb-59256408b005','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','access','Contacts','module',89,0),('f0a3bf62-de49-d960-d4fd-592564688794','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','export','AOR_Scheduled_Reports','module',90,0),('f0b4d9b6-74bb-61e3-29d3-592564f57c61','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Bugs','module',90,0),('f0e2787c-abef-d10a-cd0a-5925640f73ca','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('f145b997-26c0-1299-7410-59256456ea78','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','Contacts','module',90,0),('f2800537-834c-01b7-e1f9-59256448c13e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','Contacts','module',90,0),('f2803842-58df-e514-6c6e-592564cce7b3','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('f29c3eab-b08c-bc8b-3290-59256455ae3e','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('f37e5c31-3303-c6f4-ad42-592564225605','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','edit','Contacts','module',90,0),('f3b9de43-1d56-2e5d-42e7-59256405f466','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('f5190af2-3c36-026d-eb5c-592564a52931','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOK_KnowledgeBase','module',90,0),('f73b0072-4b54-0452-feb9-592564555dad','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','view','AOW_Processed','module',90,0),('fb0102f1-7242-0a4b-c308-592564b18034','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','list','AOS_Contracts','module',90,0),('fba3006d-f61d-ae33-ed89-592564fc3525','2017-05-24 10:47:24','2017-05-24 10:47:24','1','','import','Alerts','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
INSERT INTO `aobh_businesshours` VALUES ('2d2e0b48-68d0-bce9-9e61-592ff2a52793','','2017-06-01 10:56:42','2017-06-01 10:56:42','1','1',NULL,0,'9','17',1,'Среда'),('55d70ec6-8eef-ae82-f264-592ff29a7210','','2017-06-01 10:56:42','2017-06-01 10:56:42','1','1',NULL,0,'9','17',1,'Четверг'),('5a90099b-afba-bcf9-40be-592ff2dc47b9','','2017-06-01 10:56:42','2017-06-01 10:56:42','1','1',NULL,0,'9','17',1,'Вторник'),('8ef00449-399d-c5c5-60b6-592ff2eb6578','','2017-06-01 10:56:42','2017-06-01 10:56:42','1','1',NULL,0,'9','17',1,'Пятница'),('d00500ba-4d65-4473-7d87-592ff2d0e095','','2017-06-01 10:56:42','2017-06-01 10:56:42','1','1',NULL,0,'9','17',0,'Суббота'),('e979c851-3668-392b-6f9f-592ff206ce3f','','2017-06-01 10:56:42','2017-06-01 10:56:42','1','1',NULL,0,'9','17',1,'Понедельник'),('f46f0c37-1af6-0eb3-f1bf-592ff2f5864b','','2017-06-01 10:56:42','2017-06-01 10:56:42','1','1',NULL,0,'9','17',0,'Воскресенье');
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2017-05-24 10:52:17','2017-05-24 10:52:17','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
INSERT INTO `aod_indexevent` VALUES ('108496bb-4fa1-1a59-6a78-5927e621c70b','Общество с ограниченной ответственностью «Эффективные технологии»','2017-05-26 08:26:49','2017-06-04 05:06:44','1','1',NULL,0,'',NULL,1,'f1c17d43-b29f-16ef-5774-5927e6b4501a','Accounts'),('121861d9-a81f-66ba-01c5-59354731fa5a','№0342100007916000053','2017-06-05 11:57:38','2017-06-05 11:57:38','1','1',NULL,0,NULL,NULL,1,'ed12daf7-2072-4847-f6d3-59354706db44','Opportunities'),('150bd195-f173-6b66-dc76-5935475c6b91','№0142200001316016337','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'58180d3a-79e4-1c00-963f-5935474a85c0','Opportunities'),('1695ac90-6eb3-255d-86e2-59354764555b','№0301200059616000756','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'4fab04db-a548-fdfa-8305-593547fc0392','Opportunities'),('1ba90601-bfdf-4377-42ca-593547dd93f6','ООО  «БИОФАРМ-Самара», 443090, Российская Федерация, Самарская область, Самара г, Советской Армии ул, дом 146, Луциус Марина Васильевна','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'e8e0427c-c6c4-df40-1b85-5935471728fa','Accounts'),('1ef5cc1d-e67d-8962-0225-5927e5aaa735','Семён Антонов','2017-05-26 08:23:21','2017-06-01 18:36:46','1','1',NULL,0,'',NULL,1,'e41e39af-5bdc-0b83-c659-5927e5a9adf7','Contacts'),('1f4e035d-9681-d125-3f57-592ff3dae686','bg@finexpert.pro','2017-06-01 10:59:52','2017-06-01 10:59:52','1','1',NULL,0,NULL,NULL,1,'fae30952-8727-4b43-31e1-592ecb7d6985','OutboundEmailAccounts'),('22b003a0-4576-580d-dccc-593010f0c3ef','mail@finexpert.pro','2017-06-01 13:02:21','2017-06-01 13:02:21','1','1',NULL,0,NULL,NULL,1,'11d5d4fd-51b1-58ce-89ad-5930102f7bbe','OutboundEmailAccounts'),('277c722e-964c-82d4-0122-593547613687','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ФАРМ СКД\", 443052, САМАРСКАЯ, САМАРА, КИРОВА, 85, ГЕНЕРАЛЬНЫЙ ДИРЕКТОР','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'1930dd0d-800f-3ab9-7d8d-593547155ea5','Accounts'),('2921a330-c0fc-345a-06cf-59354518aaa5','№0168200002417002508','2017-06-05 11:51:54','2017-06-05 11:51:54','1','1',NULL,0,NULL,NULL,1,'de303aa4-129c-7622-eddd-5935456645d1','Opportunities'),('298aae7c-e9d7-2b32-39f4-593547d2610d','Закрытое акционерное общество \"ФК \"Интерлек\", 443035, г. Самара, ул. Минская, 38, Гербер В И','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'1a8fb3c6-0308-4354-be99-593547f7aca9','Accounts'),('2d4cfc36-9b02-1ec0-959f-593547b6bf9f','№0168200002417002508','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'ff2a029c-ce86-9654-d396-593547877e19','Opportunities'),('3744e73a-19d2-f1d8-4c17-592ff3e6b359','web@finexpert.pro','2017-06-01 10:58:20','2017-06-01 10:58:44','1','1',NULL,0,'',NULL,1,'43741986-189e-3658-aed3-592ecc0ae2a7','OutboundEmailAccounts'),('3d410686-e884-625b-56b1-593547922355','93823,03','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'',NULL,1,'31f4e7f6-b2b5-31fa-7374-5935477aa657','Accounts'),('3e3b8b5b-70c6-fbb4-861e-593547179485','№0142200001316016298','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'2b287e3d-3be6-8e31-d953-59354729b777','Opportunities'),('405f1b3b-19b6-3542-1217-593547474daa','№0142200001316016291','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'2cdedc53-6e01-8f7d-50e9-593547b58435','Opportunities'),('4c41d620-83a1-97d7-aeb3-592ff3f05c36','info@finexpert.pro','2017-06-01 10:59:09','2017-06-01 10:59:09','1','1',NULL,0,NULL,NULL,1,'661e0cb5-da9b-ec0d-43ac-592ec3461184','OutboundEmailAccounts'),('517ec45a-635a-1ef5-acd1-593547162eaf','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'4331585d-2db4-3a97-77bd-593547cac985','Accounts'),('53dfb53b-5509-9b2a-a121-5935476029c0','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ЭКСПО-МЕД\", 443052, САМАРСКАЯ, САМАРА, КИРОВА, 3, 24, ДИРЕКТОР','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'442b7588-f40c-726a-8abe-593547d764ec','Accounts'),('575a9f17-74de-3459-4ecf-592bde3bc9a3','Общество с ограниченной ответственностью «Аста»','2017-05-29 08:41:04','2017-06-03 05:16:07','1','1',NULL,0,'',NULL,1,'2a8faeef-e265-daa3-6127-592bdec3ef7b','Accounts'),('5fd345d1-5289-b282-bd25-592c13624ff1','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','2017-05-29 12:27:56','2017-05-29 12:27:56','1','1',NULL,0,NULL,NULL,1,'530d26be-3d65-0f98-e3ce-592c13cd8158','Notes'),('6398b48a-ff65-6551-0cc8-592fe4c1154c','ул. Ташкентская, 171Г, офис 305','2017-06-01 09:56:09','2017-06-01 09:56:09','1','1',NULL,0,NULL,NULL,1,'434d0498-94b2-4741-fe5d-592fe46d1967','dp_realty'),('658a9c11-e055-ce93-55f1-593547fd0e25','№0142200001316016056','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'54d09f37-35dc-9643-fdcc-593547a3d571','Opportunities'),('6747c645-dedb-78dd-c2e4-59272dca0930','443068, г. Самара, ул. Ново-Садовая, д. 106, оф. 613','2017-05-25 19:16:57','2017-05-25 19:21:26','1','1',NULL,0,'',NULL,1,'55092ca4-45ce-f10f-c85d-59272dbd7b35','dp_realty'),('6a4d1b72-6821-a6ab-0127-593547d3e139','№0142200001316016328','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'577e5d4f-8881-9680-341e-59354747ca61','Opportunities'),('715cfdcd-3163-8148-4bc7-592c0fe6e575','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','2017-05-29 12:11:04','2017-05-29 12:11:04','1','1',NULL,0,NULL,NULL,1,'5825988b-e9b6-a0bf-09b1-592c0f8b7bf9','Notes'),('77960048-1922-5150-7b01-592be3afef89','Юрий Марянин','2017-05-29 09:00:55','2017-06-01 06:35:15','1','1',NULL,0,'',NULL,1,'c8548377-e295-926c-28ff-592be34c26d7','Contacts'),('7c719af4-3b17-dd30-71dc-59354768691c','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'69650579-99c1-bada-a2b8-593547e11746','Accounts'),('7eeb9c6f-0cbe-f09e-c7e0-59354772e5fe','Общество с ограниченной ответственностью \"Ларго\", 443117, Российская Федерация, 63 Самарская область, Самара, Крейсерная ул, 1, Устинов Сергей Николае','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'6e6ac4d4-d2f9-6c1f-4111-593547b0da64','Accounts'),('81ea1d6d-9909-ca83-e800-593544c029ca','Общество с ограниченной ответственностью «ГРУЗАВТОСЕРВИС»','2017-06-05 11:48:07','2017-06-05 11:48:07','1','1',NULL,0,'',NULL,1,'5e798e33-c6c9-c3d1-d3c9-593544e3aa51','Accounts'),('875bbc06-3cac-fdc3-f897-593547e0e43a','ООО «ОКТАНТ», Страна: Российская Федерация; ОКАТО: 36401385000; Почтовый индекс: 443066; Субъект РФ: Самарская; Город: Самара; Улица: Безымянный 2-й; ','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'7ae8ac10-f62a-f923-8921-593547c8479e','Accounts'),('8b0b0ce1-1a2a-39b2-f202-592ff33a3a67','web@finexpert.pro','2017-06-01 10:58:11','2017-06-01 10:58:11','1','1',NULL,0,NULL,NULL,1,'3f24d894-100d-909a-9e1d-592564482917','OutboundEmailAccounts'),('90f98d1e-85ea-1d69-1882-593547b47cb6','№0142200001316016046','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'80bc4bcc-b15a-62a2-5261-5935473f9790','Opportunities'),('98d60eb0-649c-31d2-dc71-592ec0849918','info@finexpert.pro','2017-05-31 13:08:04','2017-05-31 13:14:14','1','1',NULL,0,'',NULL,1,'8fd034b9-3149-f81f-9bf8-592ec0bc6ac4','OutboundEmailAccounts'),('9b3062a8-6343-c19d-8a3d-593547354d97','№0173100007916000083','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'8be94ebf-f5c8-f60f-2016-593547f47966','Opportunities'),('9f0c5914-798b-3f08-6cb1-592c0be9c351','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','2017-05-29 11:54:38','2017-05-29 11:54:38','1','1',NULL,0,NULL,NULL,1,'8a1a7600-d24c-a635-6013-592c0b1262af','Notes'),('a2d3340e-ce7e-eb7d-2dce-593547b6753b','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'94b5ffac-96cb-3063-8745-59354761163b','Accounts'),('a3160452-9b77-7855-ac9f-592ff39b5226','help@finexpert.pro','2017-06-01 10:57:51','2017-06-01 10:57:51','1','1',NULL,0,NULL,NULL,1,'18c7b585-1764-ef4b-c11e-592ec563a573','OutboundEmailAccounts'),('abfe7d5d-68f3-f03e-1d80-59354751ba5a','№0142200001316016027','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'82ee339f-88a3-354f-ec4a-593547dd9133','Opportunities'),('ad1505b3-c4b1-6049-1031-593547328436','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'9f6f49a9-b7ba-5cb7-b82c-5935475495ac','Accounts'),('b6e0e575-009d-4700-a214-5935475e6082','№0142200001316016041','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'a6a8acd0-c5b7-ec07-4bbf-593547ded106','Opportunities'),('b8e9099d-16bc-5f9c-0d9b-592ba18bedbb','632107606114','2017-05-29 04:18:47','2017-05-29 04:25:45','1','1',NULL,0,'',NULL,1,'aa75ec99-cd50-76a4-2f02-592ba18917bd','dp_founder_fl'),('ba903166-32cf-0594-00b2-592bd2b732af','Игорь Трофимычев','2017-05-29 07:49:28','2017-06-01 10:52:20','1','1',NULL,0,'',NULL,1,'9f4c2908-47c8-e20c-5f36-592bd28fd104','Contacts'),('c15338bb-a16d-8b3c-98d6-59354738a8b2','№0142200001316016032','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'b195ff78-fceb-9b70-a6ee-593547d1e1fd','Opportunities'),('cb115804-2672-4b7b-915b-593547449abc','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'bb4bf44c-adba-db8d-e489-59354734ae8a','Accounts'),('d2a22510-1016-e1da-913b-59300b5ef5a0','bg@finexpert.pro','2017-06-01 12:42:11','2017-06-01 13:01:00','1','1',NULL,0,'',NULL,1,'8798aa1f-063a-fac7-eac3-593005af9b98','OutboundEmailAccounts'),('d32250f7-ecda-956b-164f-5935477316fb','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ДНЛ\"','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'c6d1e835-feb4-0f3e-fbc8-5935472d7d68','Accounts'),('d33cb93f-01f4-c838-89ba-5925713e42ae','Общество с ограниченной ответственностью «Солнечная долина»','2017-05-24 11:42:01','2017-06-01 10:07:19','1','1',NULL,0,'',NULL,1,'b9f49b4f-21dc-4a20-5646-592571b11c40','Accounts'),('d91ed1f8-0332-5353-e191-593545cc7aed','Общество с ограниченной ответственностью «ГРУЗАВТОСЕРВИС»','2017-06-05 11:51:54','2017-06-05 11:51:54','1','1',NULL,0,NULL,NULL,1,'c7968581-12be-16e7-489c-5935453d602a','Accounts'),('dd92d96c-96f4-a95d-2a55-5926d365a66d','Российский капитал','2017-05-25 12:54:05','2017-05-25 12:54:05','1','1',NULL,0,NULL,NULL,1,'cc7ac549-b341-f38a-0bdc-5926d3163ea2','dp_bkrv'),('e164662f-04c4-d53f-2bcb-5935477d1a82','№0142200001316016040','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'cee2789e-5dbc-b167-717b-593547b4b330','Opportunities'),('e52f37e6-1e13-85fb-2c72-593547011eb2','№0142200001316015389','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,NULL,NULL,1,'d6cf35ac-2236-ada8-0e69-5935476a6923','Opportunities'),('e8996ebd-fffb-e3ba-dd48-593547e5703b','ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"КМ\", 443068, САМАРСКАЯ, САМАРА, НИКОЛАЯ ПАНОВА, ДОМ 17, КВАРТИРА 3, ДИРЕКТОР','2017-06-05 11:57:37','2017-06-05 11:57:37','1','1',NULL,0,NULL,NULL,1,'bd40369c-a8bf-a72e-db33-593547f2c543','Accounts'),('f41f5b5b-cdbe-b88f-3c60-593547c6a3bd','ООО «ОКТАНТ», Страна: Российская Федерация; ОКАТО: 36401385000; Почтовый индекс: 443066; Субъект РФ: Самарская; Город: Самара; Улица: Безымянный 2-й; ','2017-06-05 11:57:36','2017-06-05 11:57:36','1','1',NULL,0,NULL,NULL,1,'e5100e85-3b31-c1fc-a02e-593547965428','Accounts');
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
INSERT INTO `aos_pdf_templates` VALUES ('72f147d5-888a-1986-5d4f-592c0436e1a4','2136 АНКЕТА ПРИНЦИПАЛА без открытия счета (с 15.09.15)','2017-05-29 11:24:29','2017-05-29 12:27:43','1','1','<p align=\"right\"> </p>\n<p> </p>\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td width=\"295\">\n<p align=\"center\"><strong>Все пункты анкеты подлежат обязательному заполнению</strong></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p align=\"center\"><strong> </strong></p>\n<p align=\"center\"><strong>АНКЕТА КЛИЕНТА - ЮРИДИЧЕСКОГО ЛИЦА </strong></p>\n<p align=\"center\"><strong> (ЗАЕМЩИКА/ ПРИНЦИПАЛА/ЗАЛОГОДАТЕЛЯ/ ПОРУЧИТЕЛЯ – нужное подчеркнуть)</strong></p>\n<p class=\"Iiiaeuiue\" align=\"center\"><strong> </strong></p>\n<table style=\"width: 741px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"top\" width=\"184\">\n<p><strong>Полное наименование организации</strong></p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"557\">\n<p>$accounts_name</p>\n<p><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"184\">\n<p><strong>Краткое наименование организации</strong></p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"557\">\n<p>$accounts_shname</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"184\">\n<p>Адрес юридического лица в соответствии с учредительными документами:</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"557\">\n<p>$accounts_billing_address_postalcode $accounts_billing_address_country $accounts_ur_locality_fact $accounts_billing_address_state $accounts_ur_area_fact $accounts_billing_address_city $accounts_billing_address_street $accounts_ur_house $accounts_ur_structure</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"184\">\n<p>Адрес обособленного подразделения:</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"557\">\n<p> </p>\n<p>Нет</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"184\">\n<p>Телефон, телефакс:</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"557\">\n<p>$accounts_phone_office, $accounts_phone_alternate, $accounts_phone_fax</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"184\">\n<p>Страница в Интернете (адрес):</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"557\">\n<p>Нет</p>\n</td>\n</tr>\n<tr>\n<td rowspan=\"4\" valign=\"top\" width=\"184\">\n<p> </p>\n<p> </p>\n<p> </p>\n<p>Сведения о расчетных (валютных) счетах в банках</p>\n</td>\n<td valign=\"top\" width=\"222\">\n<p align=\"center\">Наименование банка</p>\n</td>\n<td valign=\"top\" width=\"182\">\n<p align=\"center\">Номер счета</p>\n</td>\n<td valign=\"top\" width=\"153\">\n<p align=\"center\">Наличие картотеки к счету (при наличии указать сумму и дату возникновения)</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"222\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"182\">\n<p>{=C43}</p>\n</td>\n<td valign=\"top\" width=\"153\">\n<p>Нет</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"222\">\n<p>{=C50}</p>\n</td>\n<td valign=\"top\" width=\"182\">\n<p>{=C47}</p>\n</td>\n<td valign=\"top\" width=\"153\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"222\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"182\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"153\">\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"5\" width=\"737\">\n<p align=\"center\"><strong><em>1. Учредительные и регистрационные данные об организации</em></strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>Дата регистрации организации:</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>{=C15}</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"5\" valign=\"top\" width=\"737\">\n<p>Основные идентификационные номера и коды:</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>ОГРН с указанием даты внесения в реестр</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>$accounts_ogrn, $accounts_date_gosreg</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>ИНН</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>$accounts_inn</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>КПП</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>$accounts_kpp</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>ОКПО</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>ОКВЭД (основной)</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>{=C12}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>Размер уставного капитала:</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>{=C151}</p>\n</td>\n</tr>\n<tr>\n<td rowspan=\"3\" valign=\"top\" width=\"174\">\n<p>Участники (акционеры) с указанием бенефициарного собственника:</p>\n</td>\n<td valign=\"top\" width=\"188\">\n<p align=\"center\">Полное наименование участника/акционера</p>\n<p align=\"center\">(Ф.И.О. - для физических лиц, резидент/нерезидент)</p>\n</td>\n<td valign=\"top\" width=\"156\">\n<p align=\"center\">ИНН, ОГРН, местонахождение (для юр. лиц) / реквизиты документа, удостоверяющего личность, адрес места жительства (для физ. лиц)</p>\n</td>\n<td valign=\"top\" width=\"88\">\n<p align=\"center\">Размер доли УК (кол-во акций), %</p>\n</td>\n<td valign=\"top\" width=\"130\">\n<p align=\"center\">Участие акционеров в управлении (активное/ не активное/ не участвуют)</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"188\">\n<p>{=C154} {=C155} {=C156} Резидент</p>\n</td>\n<td valign=\"top\" width=\"156\">\n<p>{=C157}</p>\n</td>\n<td valign=\"top\" width=\"88\">\n<p>{=C188}</p>\n</td>\n<td valign=\"top\" width=\"130\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"188\">\n<p>{=C193} {=C194} {=C195} Резидент</p>\n</td>\n<td valign=\"top\" width=\"156\">\n<p>{=C196}</p>\n</td>\n<td valign=\"top\" width=\"88\">\n<p>{=C227}</p>\n</td>\n<td valign=\"top\" width=\"130\">\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"5\" valign=\"top\" width=\"737\">\n<p><strong><em>Руководитель организации, заместители руководителя, главный бухгалтер, заместитель главного бухгалтера:</em></strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p align=\"center\"><strong><em>Должность</em></strong></p>\n</td>\n<td valign=\"top\" width=\"173\">\n<p align=\"center\"><strong><em>ФИО (полностью)</em></strong></p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"390\">\n<p align=\"center\"><strong><em>Реквизиты документа, удостоверяющего личность, адрес места жительства (регистрации, фактического места жительства)</em></strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>{=C59}</p>\n</td>\n<td valign=\"top\" width=\"173\">\n<p>{=C60} {=C61} {=C62}</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"390\">\n<p>{=C82} {=C81} {=C82} {=C83} {=C84} {=C85} {=C86} {=C87} {=C88} {=C89} {=C90}</p>\n<p>{=C91} {=C92} {=C93} {=C94} {=C95} {=C96} {=C97} {=C98} {=C99} {=C100} {=C101}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>{=C105}</p>\n</td>\n<td valign=\"top\" width=\"173\">\n<p>{=C106} {=C107} {=C108}</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"390\">\n<p>{=C126} {=C127} {=C128} {=C129} {=C130} {=C131} {=C132} {=C133} {=C134} {=C135} {=C136}</p>\n<p>{=C137} {=C138} {=C139} {=C140} {=C141} {=C142} {=C143} {=C144} {=C145} {=C146} {=C147}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"173\">\n<p> </p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"390\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"173\">\n<p> </p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"390\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td rowspan=\"5\" valign=\"top\" width=\"174\">\n<p>Участие в других организациях и/или совместная деятельность с другими организациями:</p>\n</td>\n<td colspan=\"2\" valign=\"top\" width=\"206\">\n<p align=\"center\">наименование организации, ИНН, ОГРН</p>\n</td>\n<td valign=\"top\" width=\"181\">\n<p align=\"center\">вид деятельности</p>\n</td>\n<td valign=\"top\" width=\"176\">\n<p align=\"center\">Величина уставного капитала/ доля участия организации</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"206\">\n<p>Нет</p>\n</td>\n<td valign=\"top\" width=\"181\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"176\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"206\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"181\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"176\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"206\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"181\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"176\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"206\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"181\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"176\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>Вхождение организации в Группу компаний/Холдинг (в том числе неформальный)</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>Нет</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"174\">\n<p>Численность работников</p>\n<p> </p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"563\">\n<p>Всего работников: ____</p>\n<p>Фонд оплаты труда: ________________________________ рублей.</p>\n</td>\n</tr>\n<tr>\n<td width=\"174\"> </td>\n<td width=\"173\"> </td>\n<td width=\"33\"> </td>\n<td width=\"181\"> </td>\n<td width=\"176\"> </td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"4\" width=\"737\">\n<p align=\"center\"><strong><em>2. Общие сведения о деятельности организации</em></strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p>Основные виды деятельности (в том числе лицензируемые с указанием наличия лицензий/свидетельств СРО):</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"491\">\n<p>{=C12}</p>\n</td>\n</tr>\n<tr>\n<td width=\"246\">\n<p>Отнесение организации к отрасли:</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"491\">\n<p><input type=\"checkbox\" />   Торговля   <input type=\"checkbox\" />   Транспорт     <input type=\"checkbox\" />   Финансовая деятельность   <input type=\"checkbox\" />  Промышленность</p>\n<p><input type=\"checkbox\" />   Строительство  <input type=\"checkbox\" />   ВПК  <input type=\"checkbox\" checked=\"checked\" />   Иная (указать) {=C12}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p>Данные о регионах деятельности организации (с указанием наименования региона и доли в общем объеме реализации):</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"491\">\n<p>Российская Федерация, Самарская область 63</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p>Продолжительность работы на рынке по основному виду деятельности:</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"491\">\n<p>С {=C15}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p>Наличие / отсутствие сезонности продаж с указанием периодов % изменения объемов реализации:</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"491\">\n<p>Отсутствует</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p><strong><em>Работа предприятия по государственным контрактам</em></strong></p>\n</td>\n<td valign=\"top\" width=\"166\">\n<p align=\"center\">201_</p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p align=\"center\">201_ (предыдущий год)</p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p align=\"center\">Текущий год</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p>Сколько процентов составляют госконтракты в общем объеме выручки(%)</p>\n</td>\n<td valign=\"top\" width=\"166\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p>Количество заключенных госконтрактов</p>\n</td>\n<td valign=\"top\" width=\"166\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"246\">\n<p> Общий объем заключенных госконтрактов (тыс. рублей)</p>\n</td>\n<td valign=\"top\" width=\"166\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"163\">\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"5\" width=\"737\">\n<p align=\"center\"><strong><em>3. Сведения об имуществе организации, находящемся в собственности  и/или в аренде/субаренде</em></strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"5\" width=\"737\">\n<p><strong>Сведения о недвижимом имуществе организации, находящейся в собственности и/или в аренде/субаренде</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"78\">\n<p align=\"center\">Тип объекта (жилое, нежилое, помещение, офис, склад и т.д.)</p>\n</td>\n<td width=\"191\">\n<p align=\"center\">Адрес местонахождения</p>\n</td>\n<td width=\"62\">\n<p align=\"center\">Площадь (кв. м.)</p>\n</td>\n<td valign=\"top\" width=\"198\">\n<p align=\"center\">№ и Дата Свидетельства о регистрации права собственности  <em>(если собственность) или </em></p>\n<p align=\"center\">№ и Дата Договора аренды/субаренды <em>(если аренда</em><em>)</em></p>\n</td>\n<td width=\"208\">\n<p align=\"center\">Примечание</p>\n<p align=\"center\"><em>При собственности недвижимости </em>– указать использование я (сдача в аренду, использование по собственному назначению и т.д.)</p>\n<p align=\"center\"><em>При аренде/субаренде недвижимости</em> - указать арендодателя и срок аренды</p>\n</td>\n</tr>\n<tr>\n<td width=\"78\">\n<p>{=C54}</p>\n</td>\n<td width=\"191\">\n<p align=\"center\">{=C51}</p>\n</td>\n<td width=\"62\">\n<p>{=C53}</p>\n</td>\n<td width=\"198\">\n<p align=\"center\">{=C55} {=C56} {=C57}</p>\n</td>\n<td width=\"208\">\n<p align=\"center\">Аренда до</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"16\" valign=\"top\" width=\"737\">\n<p align=\"center\"><strong><em>4. Финансовые показатели</em></strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"16\" valign=\"top\" width=\"737\">\n<p><strong>Сведения о действующих кредитах банков на дату составления Анкеты:</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"113\">\n<p align=\"center\">Наименование Банка-кредитора</p>\n</td>\n<td colspan=\"3\" width=\"85\">\n<p align=\"center\">Сумма кредита по Договору</p>\n</td>\n<td width=\"104\">\n<p align=\"center\">Сумма задолженности на дату заполнения Анкеты</p>\n</td>\n<td colspan=\"3\" width=\"48\">\n<p align=\"center\">% ставка</p>\n</td>\n<td width=\"76\">\n<p align=\"center\">Дата выдачи</p>\n</td>\n<td colspan=\"3\" width=\"76\">\n<p align=\"center\">Дата возврата</p>\n</td>\n<td colspan=\"3\" width=\"132\">\n<p align=\"center\">Обеспечение (с указанием залогодателя)</p>\n</td>\n<td width=\"104\">\n<p align=\"center\">Наличие просроченных платежей</p>\n</td>\n</tr>\n<tr>\n<td width=\"113\">\n<p align=\"center\">Нет</p>\n</td>\n<td colspan=\"3\" width=\"85\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"48\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"132\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td width=\"113\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"85\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"48\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"132\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td width=\"113\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"85\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"48\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"132\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td width=\"113\">\n<p>Итого</p>\n</td>\n<td colspan=\"3\" width=\"85\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"48\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"76\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"132\">\n<p align=\"center\"> </p>\n</td>\n<td width=\"104\">\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"16\" width=\"737\">\n<p><strong>Заёмные средства (кроме банков) на дату составления Анкеты:</strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"170\">\n<p align=\"center\">Организация/физическое лицо</p>\n</td>\n<td colspan=\"3\" width=\"149\">\n<p align=\"center\">Сумма предоставленных средств</p>\n</td>\n<td colspan=\"4\" width=\"149\">\n<p align=\"center\">Остаток на дату составления Анкеты</p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\">Дата предоставления</p>\n</td>\n<td colspan=\"2\" width=\"133\">\n<p align=\"center\">Дата погашения</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"170\">\n<p align=\"center\">Нет</p>\n</td>\n<td colspan=\"3\" width=\"149\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"4\" width=\"149\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"2\" width=\"133\">\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"170\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"3\" width=\"149\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"4\" width=\"149\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\"> </p>\n</td>\n<td colspan=\"2\" width=\"133\">\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"170\">\n<p>Итого</p>\n</td>\n<td colspan=\"3\" width=\"149\">\n<p> </p>\n</td>\n<td colspan=\"4\" width=\"149\">\n<p> </p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p> </p>\n</td>\n<td colspan=\"2\" width=\"133\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"16\" valign=\"top\" width=\"737\">\n<p><strong>Полученные гарантии на дату составления Анкеты:</strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" valign=\"top\" width=\"170\">\n<p align=\"center\">Наименование Банка-гаранта</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"149\">\n<p align=\"center\">Наименование бенефициара</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"149\">\n<p align=\"center\">Сумма гарантии</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"136\">\n<p align=\"center\">Срок действия</p>\n</td>\n<td colspan=\"2\" valign=\"top\" width=\"133\">\n<p align=\"center\">Предмет гарантии</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"170\">\n<p align=\"center\"><strong>Нет</strong></p>\n</td>\n<td colspan=\"3\" width=\"149\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"149\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"2\" width=\"133\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"170\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"3\" width=\"149\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"149\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"2\" width=\"133\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"170\">\n<p>Итого</p>\n</td>\n<td colspan=\"3\" width=\"149\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"149\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"2\" width=\"133\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"16\" valign=\"top\" width=\"737\">\n<p><strong>Выданные поручительства, предоставленные залоги в обеспечение исполнения обязательств третьими лицами на дату составления Анкеты:</strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" width=\"169\">\n<p align=\"center\">Вид предоставленного обеспечения</p>\n</td>\n<td colspan=\"5\" width=\"170\">\n<p align=\"center\">За кого предоставлено обеспечение</p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\">В пользу кого</p>\n</td>\n<td colspan=\"2\" width=\"101\">\n<p align=\"center\">Сумма обеспечения</p>\n</td>\n<td colspan=\"3\" width=\"161\">\n<p align=\"center\">Дата окончания обязательства</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" width=\"169\">\n<p align=\"center\"><strong>Нет</strong></p>\n</td>\n<td colspan=\"5\" width=\"170\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"2\" width=\"101\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"3\" width=\"161\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" width=\"169\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"5\" width=\"170\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"4\" width=\"136\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"2\" width=\"101\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td colspan=\"3\" width=\"161\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"113\"> </td>\n<td width=\"56\"> </td>\n<td width=\"1\"> </td>\n<td width=\"28\"> </td>\n<td width=\"104\"> </td>\n<td width=\"18\"> </td>\n<td width=\"20\"> </td>\n<td width=\"10\"> </td>\n<td width=\"76\"> </td>\n<td width=\"44\"> </td>\n<td width=\"6\"> </td>\n<td width=\"26\"> </td>\n<td width=\"75\"> </td>\n<td width=\"29\"> </td>\n<td width=\"29\"> </td>\n<td width=\"104\"> </td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"4\" valign=\"top\" width=\"737\">\n<p><strong>Инвестиционная деятельность – финансовые вложения, ценные бумаги, уставный капитал других организаций, представление другим организациям займов:</strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"198\">\n<p align=\"center\">Форма инвестиций</p>\n</td>\n<td valign=\"top\" width=\"321\">\n<p align=\"center\">Наименование объекта инвестирования</p>\n</td>\n<td valign=\"top\" width=\"110\">\n<p align=\"center\">Балансовая стоимость, тыс.руб.</p>\n</td>\n<td valign=\"top\" width=\"107\">\n<p align=\"center\">Рыночная стоимость, тыс.руб.</p>\n</td>\n</tr>\n<tr>\n<td width=\"198\">\n<p align=\"center\"><strong>Нет</strong></p>\n</td>\n<td width=\"321\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td width=\"110\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td width=\"107\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"198\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td width=\"321\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td width=\"110\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n<td width=\"107\">\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"5\" width=\"737\">\n<p align=\"center\"><strong><em>6. Прочие сведения об организации</em></strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"250\">\n<p>Наличие задолженности по оплате труда</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"487\">\n<p> <input type=\"checkbox\" />   Текущая задолженность. С указанием суммы _________________</p>\n<p> <input type=\"checkbox\" />   Просроченная задолженность. С указанием суммы _________________</p>\n<p> <input type=\"checkbox\" checked=\"checked\" />   Отсутствие задолженности</p>\n</td>\n</tr>\n<tr>\n<td rowspan=\"3\" valign=\"top\" width=\"250\">\n<p>Наличие просроченной задолженности по налогам и сборам (в случае наличия)</p>\n</td>\n<td colspan=\"2\" valign=\"top\" width=\"172\">\n<p align=\"center\">Вид налога</p>\n</td>\n<td valign=\"top\" width=\"186\">\n<p align=\"center\">Сумма задолженности, в рублях</p>\n</td>\n<td valign=\"top\" width=\"129\">\n<p align=\"center\">Дата возникновения</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"172\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"186\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"129\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"172\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"186\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"129\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"250\">\n<p>Сведения об аресте расчетных и текущих валютных счетов (с указанием банка и суммы):</p>\n</td>\n<td colspan=\"4\" width=\"487\">\n<p>Нет</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"250\">\n<p><strong>Наличие выгодоприобретателя</strong>(лицо, к выгоде которого действует клиент, в том числе на основании агентского договора, договоров поручения, комиссии и доверительного управления, при проведении операций с денежными средствами и иным имуществом)</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"487\">\n<p> </p>\n<p><input type=\"checkbox\" /> Да* (имеется)                             <input type=\"checkbox\" checked=\"checked\" /> Нет (отсутствует)</p>\n<p><input type=\"checkbox\" /> юридическое лицо</p>\n<p><input type=\"checkbox\" /> индивидуальный предприниматель</p>\n<p><input type=\"checkbox\" /> физическое лицо</p>\n<p> </p>\n<p>* Требуется заполнение сведений о выгодоприобретателе</p>\n<p> </p>\n</td>\n</tr>\n<tr>\n<td width=\"250\">\n<p><strong>Наличие бенефициарного владельца</strong></p>\n<p>(физическое лицо, которое в конечном счете прямо или косвенно (через третьих лиц) владеет (имеет преобладающее участие более 25 процентов в капитале) юридическим лицом либо имеет возможность контролировать действия клиента)</p>\n</td>\n<td colspan=\"4\" valign=\"top\" width=\"487\">\n<p> </p>\n<p><input type=\"checkbox\" checked=\"checked\" /> Да* (имеется)       </p>\n<p> </p>\n<p> Нет (отсутствует)  </p>\n<p> </p>\n<p>* Требуется заполнение сведений о бенефициарном владельце</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"5\" width=\"737\">\n<p align=\"center\"><strong>Сведения</strong></p>\n<p align=\"center\"><strong>о бенефициарном владельце</strong></p>\n<p> </p>\n<table style=\"width: 720px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"top\" width=\"369\">\n<p>Бенефициарный владелец – физическое лицо, которое в конечном счете прямо или косвенно (через третьих лиц) владеет (имеет преобладающее участие более 25 процентов в капитале) юридическим лицом либо имеет возможность контролировать действия клиента </p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p align=\"center\">Основания:</p>\n<table style=\"width: 274px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"28\">\n<p> <input type=\"checkbox\" /></p>\n</td>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"246\">\n<p><input type=\"checkbox\" checked=\"checked\" /> владение прямо или косвенно</p>\n<p><input type=\"checkbox\" /> более 25% в УК клиента</p>\n</td>\n</tr>\n<tr>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"28\">\n<p> </p>\n</td>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"246\">\n<p><input type=\"checkbox\" />Возможность контролировать действия клиента</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p align=\"center\"> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p><strong> </strong></p>\n<table style=\"width: 720px;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">1.</p>\n</td>\n<td valign=\"top\" width=\"321\">\n<p>Фамилия, имя и отчество (если иное не вытекает из закона или национального обычая)</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C154} {=C155} {=C156}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">2.</p>\n</td>\n<td valign=\"top\" width=\"321\">\n<p>Дата рождения</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C185}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">3.</p>\n</td>\n<td valign=\"top\" width=\"321\">\n<p>Место рождения</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C186}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">4.</p>\n</td>\n<td valign=\"top\" width=\"321\">\n<p>Гражданство (подданство)</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>РФ</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">5.</p>\n</td>\n<td width=\"321\">\n<p>Реквизиты документа удостоверяющего личность:</p>\n<ul>\n<li>наименование документа,</li>\n<li>серия  и  номер,</li>\n<li>орган, выдавший  документ,</li>\n<li>дата   выдачи документа,</li>\n<li>код подразделения (если имеется).     </li>\n</ul>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C180} {=C181} {=C182} {=C183} к\\п {=C184}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">6.</p>\n</td>\n<td width=\"321\">\n<p>Данные миграционной карты иностранного гражданина или лица без гражданства:</p>\n<ul>\n<li>номер карты,</li>\n<li>дата начала срока пребывания и дата окончания срока пребывания</li>\n</ul>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>Нет</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">7.</p>\n</td>\n<td width=\"321\">\n<p>Данные документа, подтверждающего право иностранного гражданина или лица без гражданства  на пребывание (проживание) в РФ (если имеется)</p>\n<ul>\n<li>вид на жительство</li>\n<li>виза</li>\n<li>разрешение на временное проживание</li>\n</ul>\n<p>(иной подтверждающий документ)</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p> </p>\n<table style=\"width: 266px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"266\">\n<div>\n<p>Нет</p>\n</div>\n<p align=\"center\"><em>(наименование)</em></p>\n<p>Серия (если имеется)____________, №____________________________</p>\n<p> </p>\n<p>Действует</p>\n<p>с «______»______________20______г.</p>\n<p>по «______»________________20____г.</p>\n<p> </p>\n<p>Выдан_________________________</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p align=\"center\"> </p>\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">8.</p>\n</td>\n<td width=\"321\">\n<p>Адрес места жительства (регистрации)</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C159} {=C160} {=C161} {=C162} {=C163} {=C164} {=C165} {=C166} {=C167} {=C168}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">9.</p>\n</td>\n<td width=\"321\">\n<p>Адрес фактического места жительства</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C159} {=C160} {=C161} {=C162} {=C163} {=C164} {=C165} {=C166} {=C167} {=C168}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">10.</p>\n</td>\n<td width=\"321\">\n<p>Адрес места пребывания</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C159} {=C160} {=C161} {=C162} {=C163} {=C164} {=C165} {=C166} {=C167} {=C168}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">11.</p>\n</td>\n<td width=\"321\">\n<p>Номера контактных телефонов</p>\n<p>(при наличии)</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C190} {=C191}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">12.</p>\n</td>\n<td width=\"321\">\n<p>Идентификационный номер налогоплательщика (если имеется)</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<p>{=C157}</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"47\">\n<p align=\"right\">13.</p>\n</td>\n<td width=\"321\">\n<p> Является ли бенефициарный владелец ПДЛ, лицом, связанным с ПДЛ</p>\n</td>\n<td valign=\"top\" width=\"352\">\n<table style=\"width: 274px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"28\">\n<p> </p>\n</td>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"246\">\n<p><input type=\"checkbox\" /> ДА</p>\n</td>\n</tr>\n<tr>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"28\">\n<p> <input type=\"checkbox\" /></p>\n</td>\n<td valign=\"bottom\" nowrap=\"nowrap\" width=\"246\">\n<p><input type=\"checkbox\" checked=\"checked\" /> НЕТ</p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<p><strong>            </strong>Помимо данных, указанных в настоящем документе, иных сведений о бенефициарном владельце не имею. Достоверность вышеуказанной информации подтверждаю.</p>\n<p> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"5\" valign=\"top\" width=\"737\">\n<p align=\"center\"><strong>ЗАПОЛНЯЕТСЯ РАБОТНИКОМ БАНКА</strong></p>\n<p>Обстоятельства и причины невозможности выявления бенефициарного владельца клиента:</p>\n<div>\n<p> </p>\n</div>\n<div>\n<p> </p>\n<p> </p>\n<p>                                      </p>\n</div>\n<p>Отметка Банка:</p>\n<p> </p>\n<div>\n<p> </p>\n</div>\n<div>\n<p> </p>\n</div>\n<p>Работник Банка, проводивший процедуру идентификации</p>\n<p>_________________________                         ________________/_____________________/    </p>\n<p> (Должность)                                                                  (подпись)                                      (Ф.И.О.)</p>\n<p align=\"center\">«____»___________20__.</p>\n<p align=\"center\"> </p>\n<p align=\"center\"> </p>\n<p align=\"center\"> </p>\n</td>\n</tr>\n<tr>\n<td colspan=\"5\" width=\"737\">\n<p align=\"center\"><strong> </strong></p>\n<p align=\"center\"><strong>Цели установления и предполагаемый характер деловых отношений с Банком</strong></p>\n</td>\n</tr>\n<tr>\n<td colspan=\"5\" width=\"737\">\n<p><input type=\"checkbox\" checked=\"checked\" /> краткосрочный характер (менее 6 месяцев) среднесрочный характер (до 1-го года) долгосрочный характер (1 год и более)</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" width=\"340\">\n<p><input type=\"checkbox\" /> безналичные расчеты в рублях</p>\n<p><input type=\"checkbox\" /> покупка/продажа валюты</p>\n<p><input type=\"checkbox\" /> международные расчеты</p>\n<p><input type=\"checkbox\" /> прием наличных денег в кассу банка</p>\n<p><input type=\"checkbox\" /> выдача наличных денег по чеку</p>\n<p><input type=\"checkbox\" /> инкассация/доставка денежной наличности</p>\n<p><input type=\"checkbox\" /> система «Клиент-Банк»</p>\n<p><input type=\"checkbox\" /> размещение средств в депозит</p>\n<p> </p>\n</td>\n<td colspan=\"3\" width=\"397\">\n<p><input type=\"checkbox\" /> неснижаемый остаток на счете</p>\n<p><input type=\"checkbox\" /> ценные бумаги КБ «Экономикс-Банк» (ООО)</p>\n<p><input type=\"checkbox\" /> кредитование</p>\n<p><input type=\"checkbox\" /> лизинг</p>\n<p><input type=\"checkbox\" /> «зарплатный» проект</p>\n<p><input type=\"checkbox\" /> эквайринг</p>\n<p><input type=\"checkbox\" />            документарные операции (гарантии, аккредитивы, инкассо)</p>\n<p>иное (указать) __________________________________</p>\n</td>\n</tr>\n<tr>\n<td width=\"250\"> </td>\n<td width=\"90\"> </td>\n<td width=\"82\"> </td>\n<td width=\"186\"> </td>\n<td width=\"129\"> </td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<p>  </p>\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td valign=\"top\" width=\"737\">\n<p align=\"center\"><strong>Цели финансово-хозяйственной деятельности</strong></p>\n<p align=\"center\"><strong> </strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"737\">\n<p><input type=\"checkbox\" checked=\"checked\" />    получение доходов от основной деятельности;</p>\n<p><input type=\"checkbox\" /> осуществление финансовых сделок (кредиты, инвестиции, депозиты);</p>\n<p><input type=\"checkbox\" /> оплата расходов, связанных с основной деятельностью ( в том числе оплата услуг/товаров, расходов хозяйственного характера, заработная плата, налоги и др.);</p>\n<p><input type=\"checkbox\" /> иное.</p>\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<table style=\"width: 737px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"4\" width=\"737\">\n<p><strong>Информация о наличии текущих судебных разбирательств в отношении организации/собственников бизнеса/аффилированных компаний: Нет</strong></p>\n</td>\n</tr>\n<tr>\n<td width=\"94\">\n<p> </p>\n</td>\n<td valign=\"top\" width=\"104\">\n<p align=\"center\"><em>Сумма иска (общая сумма исковых требований), руб.</em></p>\n</td>\n<td valign=\"top\" width=\"224\">\n<p align=\"center\"><em>Краткое содержание искового требования</em></p>\n</td>\n<td valign=\"top\" width=\"315\">\n<p align=\"center\"><em>Дата начала судебного процесса/ Стадии судебного процесса /Решение суда/Обеспечительные меры, наложенные судом</em></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"94\">\n<p>Организация как ответчик</p>\n</td>\n<td width=\"104\">\n<p> </p>\n</td>\n<td width=\"224\">\n<p> </p>\n</td>\n<td width=\"315\">\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"94\">\n<p>Организация как истец</p>\n</td>\n<td width=\"104\">\n<p> </p>\n</td>\n<td width=\"224\">\n<p> </p>\n</td>\n<td width=\"315\">\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> <strong> </strong></p>\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"737\">\n<p align=\"center\"><strong>Сведения о деловой репутации</strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"586\">\n<p>Имеются ли отзывы о юридическом лице других клиентов КБ «Экономикс-Банк» (ООО)</p>\n</td>\n<td valign=\"top\" width=\"151\">\n<p><input type=\"checkbox\" /> Да</p>\n<p><input type=\"checkbox\" checked=\"checked\" /> Нет</p>\n<p> </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"586\">\n<p>Имеются ли отзывы о юридическом лице от сторонних кредитных организаций, в которых юридическое лицо ранее находилось на обслуживании</p>\n</td>\n<td valign=\"top\" width=\"151\">\n<p><input type=\"checkbox\" /> Да</p>\n<p><input type=\"checkbox\" checked=\"checked\" /> Нет</p>\n<p> </p>\n</td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<p><strong>Дополнительная информация: </strong>Отсутствует</p>\n<p> </p>\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"4\" valign=\"top\" width=\"752\">\n<p><strong><em>Контактное лицо для работы с Банком:</em></strong></p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"92\">\n<p>Ф.И.О. </p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"659\">\n<p>$assigned_user_name_first_name $assigned_user_name_last_name </p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"92\">\n<p>Должность:</p>\n</td>\n<td colspan=\"3\" valign=\"top\" width=\"659\">\n<p>Тендерный специалист</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\" valign=\"top\" width=\"250\">\n<p>Тел.: $assigned_user_name_phone_mobile</p>\n</td>\n<td valign=\"top\" width=\"251\">\n<p>Факс:</p>\n</td>\n<td valign=\"top\" width=\"251\">\n<p>e-mail: $assigned_user_name_email1</p>\n</td>\n</tr>\n<tr>\n<td width=\"94\"> </td>\n<td width=\"144\"> </td>\n<td width=\"233\"> </td>\n<td width=\"235\"> </td>\n</tr>\n</tbody>\n</table>\n<p> </p>\n<p>$accounts_name, именуемое(ый) далее так же организация, обязуется обеспечить предоставление (передачу) физическими лицами, уполномоченными организацией, на заключение договора(ов) с КБ «Экономикс-Банк» (ООО), далее так же Банк, предоставление Банку и/или получение от Банка документов и информации об исполнении организацией заключенного(ных) с Банком договора(ов), согласия на обработку (включая автоматизированную обработку) их персональных данных в соответствии с Федеральным законом от 27.07.2006 № 152-ФЗ «О персональных данных», а также, на передачу КБ «Экономикс-Банк» (ООО) их персональных данных по запросам правоохранительных, налоговых, судебных органов и иных лиц в соответствии с законодательством Российской Федерации, на передачу персональных данных и/или информации о неисполнении и/или ненадлежащем исполнении организацией своих обязательств по заключенному(ым) с КБ «Экономикс-Банк» (ООО) договору(ам) третьим лицам с целью рассмотрения вопросов по заключению с организацией договора(ов), исполнению организацией обязательств по заключенному(ым) договору(ам), по взысканию с организации задолженности в рамках заключенных с организацией договоров, формирования истории обращений организации за кредитом  в Банк (кредитной истории в КБ «Экономикс-Банк» (ООО)), а так же выполнения КБ «Экономикс-Банк» (ООО) требований законодательства Российской Федераций и заключенного(ых) договора(ов).</p>\n<p>Настоящим $accounts_name, обязуется уведомить своих представителей – физических лиц, выгодоприобретателей – физических лиц, о начале обработки (в том числе автоматизированной) их персональных данных в КБ «Экономикс-Банк» (ООО) с даты предоставления соответствующей информации (персональных данных) о физических лицах в соответствии с Федеральным законом от 27.07.2006 № 152 – ФЗ «О персональных данных». Обработка персональных данных в КБ «Экономикс-Банк» (ООО) включает сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.</p>\n<p>Обработка персональных данных распространяется на персональные данные, которые стали известны (получены) Банком при заключении и/или исполнении договора(ов).</p>\n<p>Настоящим подтверждаем, что все указанные в анкете сведения являются полными, соответствуют действительности и могут быть подтверждены документально. Обязуемся немедленно информировать Банк обо всех изменениях сведений, приведенных в настоящей анкете, или существенных изменениях финансового состояния компании после подачи анкеты. Нам известно, что неизвещение или несвоевременное извещение о таких изменениях может явиться основанием для отказа в предоставлении кредитного продукта.</p>\n<p>Мы не возражаем против проверки в любое время всех сведений, содержащихся в настоящей анкете. Обнаружение скрытой или ложной информации является достаточным условием для отказа в предоставлении кредитного продукта.</p>\n<p>Лица, подписавшие настоящую анкету, действуют в пределах своих полномочий.</p>\n<p>Банк оставляет за собой право:</p>\n<p>1. Осуществлять обработку, в том числе автоматизированную, персональных данных представителей организации – физических лиц, передачу их персональных данных по запросам правоохранительных, налоговых, судебных органов, а так же передачу иным лицам в соответствии с законодательством Российской Федерации, на передачу персональных данных и /или информации об исполнении (неисполнении и/или ненадлежащем исполнении) организацией свих обязательств по заключенному(ным) с КБ «Экономикс-Банк» (ООО) договору(ам) третьим лицам, с целью рассмотрения вопросов по заключению с организацией договора(ов), исполнению организацией обязательств по заключенному(ым) с Банком договору(ам), по взысканию с организации задолженности в рамках заключенных с организацией договоров, формирования истории обращений организации за кредитом (кредитной истории в КБ «Экономикс-Банк» (ООО)), а так же выполнения КБ «Экономикс-Банк» (ООО) требований законодательства Российской Федераций и заключенного(ых) договора(ов). Настоящее право Банка действует до достижения цели обработки персональных данных. По достижении указанной цели Банк прекращает обработку персональных данных представителей организации, если иное не предусмотрено законодательством Российской Федерации. Организация вправе направить Банку заявление в письменном виде о прекращении обработки персональных данных представителей, в случаях предусмотренных законодательством Российской Федерации.</p>\n<p>2. Осуществлять проверку достоверности и полноты любой сообщаемой информации.</p>\n<p>3. Хранения копий предоставленных документов и оригиналов заявления и анкеты, даже если кредит (банковская гарантия) не будет предоставлен(а), соответствующий договор не будет заключен.  Принятие Банком Заявления к рассмотрению, а также возможные расходы организации (на оформление необходимых для получения кредита (банковской гарантии)/заключения договоров обеспечения документов, за проведение экспертизы и т.п.) не являются обязательством Банка предоставить кредит (банковскую гарантию) или возместить понесенные организацией издержки.</p>\n<p>           </p>\n<p>Настоящим, предоставляем свое        СОГЛАСИЕ                НЕСОГЛАСИЕ</p>\n<p>на получение КБ «Экономикс-Банк» (ООО) кредитного(ых) отчета(ов) из Бюро кредитных историй / Центрального каталога кредитных историй, для рассмотрения вопроса КБ «Экономикс-Банк» (ООО) о выдаче кредита/предоставлении банковской гарантии в соответствии с поданной заявкой на условиях, определенных Федеральным законом «О кредитных историях» №218-ФЗ от 30 декабря 2004 года.</p>\n<p> </p>\n<p>Дата «____» __________________ 2016 года</p>\n<p> </p>\n<p> </p>\n<p><strong>Руководитель                        ______________________________        {=C60} {=C61} {=C62}</strong></p>\n<p><strong>  </strong></p>\n<p><strong>Главный бухгалтер              ______________________________        {=C106} {=C107} {=C108}                                </strong></p>\n<p><strong>     М.П.</strong></p>',0,'1',1,'Accounts',NULL,NULL,15,15,16,16,9,9,'A4','Portrait');
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
INSERT INTO `aos_pdf_templates_audit` VALUES ('1db5ab95-c2ab-51f0-8d8e-592c046a2035','72f147d5-888a-1986-5d4f-592c0436e1a4','2017-05-29 11:24:35','1','type','enum','AOS_Quotes','Accounts',NULL,NULL);
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
INSERT INTO `aos_products` VALUES ('370b6306-65ed-bb2e-b3f6-5937a03ba327','КонтурЭксперт','2017-06-07 06:42:21','2017-06-07 06:42:21','1','1','Веб-сервис финансового анализа бухгалтерской отчетности',0,NULL,'XXXX','',NULL,'Good',0.000000,0.000000,'-99',0.000000,0.000000,'','',NULL,''),('3747f88c-a339-ca76-9d13-59379fd29547','Диадок','2017-06-07 06:40:53','2017-06-07 06:40:53','1','1','',0,NULL,'XXXX','',NULL,'Good',0.000000,0.000000,'-99',0.000000,0.000000,'','',NULL,''),('67102991-c05b-d692-901a-5937a0b72547','КонтурФокус','2017-06-07 06:41:15','2017-06-07 06:41:15','1','1','',0,NULL,'XXXX','',NULL,'Good',0.000000,0.000000,'-99',0.000000,0.000000,'','',NULL,''),('9c4c075d-f4d3-ae27-9243-5937954e75cd','Аккредитация','2017-06-07 05:55:53','2017-06-07 05:55:53','1','1','',0,NULL,'XXXX','',NULL,'Service',0.000000,0.000000,'-99',0.000000,0.000000,'','',NULL,''),('d39dce23-f6b3-7555-e2b3-593795939c61','Банковская гарантия','2017-06-07 05:56:07','2017-06-07 05:56:07','1','1','',0,NULL,'XXXX','',NULL,'Service',0.000000,0.000000,'-99',0.000000,0.000000,'','',NULL,'');
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','web@finexpert.pro'),('notify','fromname','ФинЭксперт'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.24'),('MySettings','tab','YTo0MTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6NzoiZHBfYmtydiI7czo3OiJkcF9ia3J2IjtzOjk6ImRwX3JlYWx0eSI7czo5OiJkcF9yZWFsdHkiO3M6MTA6ImRwX2xpY2Vuc2UiO3M6MTA6ImRwX2xpY2Vuc2UiO3M6MTI6InNyb19zdmlkX3NybyI7czoxMjoic3JvX3N2aWRfc3JvIjtzOjEzOiJkcF9mb3VuZGVyX2ZsIjtzOjEzOiJkcF9mb3VuZGVyX2ZsIjtzOjEzOiJkcF9mb3VuZGVyX3VsIjtzOjEzOiJkcF9mb3VuZGVyX3VsIjt9'),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Cases','1'),('Update','CheckUpdates','manual'),('system','name','Finexpert'),('system','adminwizard','1'),('notify','allow_default_outbound','0'),('captcha','on','0'),('captcha','public_key',''),('captcha','private_key',''),('ldap','hostname',''),('ldap','port',''),('ldap','base_dn',''),('ldap','login_filter',''),('ldap','bind_attr',''),('ldap','login_attr',''),('ldap','group_dn',''),('ldap','group_name',''),('ldap','group_user_attr',''),('ldap','group_attr',''),('ldap','admin_user','web@finexpert.pro'),('ldap','admin_password','yy8+YJVg5o1SohLq/gKTfA=='),('ldap','auto_create_users','0'),('ldap','enc_key',''),('system','ldap_enabled','0'),('ldap','group_attr_req_dn','0'),('ldap','group','0'),('ldap','authentication','0'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username','web@finexpert.pro'),('proxy','password','yy8+YJVg5o1SohLq/gKTfA==');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('9f4c2908-47c8-e20c-5f36-592bd28fd104','2017-05-29 07:49:28','2017-06-01 10:52:20','1','1',NULL,0,'1',NULL,'Игорь','Трофимычев','631900026560',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'Студеный овраг, просека 10','Самара',NULL,'443031','Российская Федерация',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','1970-01-06','',NULL,0,'Single'),('c8548377-e295-926c-28ff-592be34c26d7','2017-05-29 09:00:55','2017-06-01 06:35:15','1','1',NULL,0,'1',NULL,'Юрий','Марянин','631899107028',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','1986-03-20','',NULL,0,'Single'),('e41e39af-5bdc-0b83-c659-5927e5a9adf7','2017-05-26 08:23:20','2017-06-01 18:36:46','1','1',NULL,0,'1',NULL,'Семён','Антонов','632107606114',NULL,NULL,0,NULL,'+79879556095',NULL,NULL,NULL,'Ташкентская, 171Г','Самара','Самарская область','443122','Россия','Ташкентская, 171Г','Самара','Самарская область','443122','Россия',NULL,NULL,NULL,'',NULL,'',NULL,0,'Single');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
INSERT INTO `contacts_audit` VALUES ('13eb3fb1-cf3d-cb40-adb2-592ed491da7e','e41e39af-5bdc-0b83-c659-5927e5a9adf7','2017-05-31 14:36:43','1','phone_work','phone','+7(846)205-60-95','',NULL,NULL);
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `patr_c` varchar(100) DEFAULT NULL,
  `citizenship_fl_c` varchar(50) DEFAULT 'Российская Федерация',
  `resident_fl_c` tinyint(1) DEFAULT '1',
  `bithplace_fl_c` varchar(150) DEFAULT NULL,
  `edu_fl_c` varchar(100) DEFAULT NULL,
  `specialty_fl_c` varchar(80) DEFAULT NULL,
  `edu_institution_fl_c` varchar(150) DEFAULT NULL,
  `edu_institution_exp_date_fl_c` varchar(4) DEFAULT NULL,
  `doc_title_fl_c` varchar(20) DEFAULT NULL,
  `doc_series_fl_c` varchar(10) DEFAULT NULL,
  `doc_number_fl_c` varchar(10) DEFAULT NULL,
  `doc_issued_by_fl_c` varchar(100) DEFAULT NULL,
  `doc_issue_date_fl_c` date DEFAULT NULL,
  `doc_division_code_fl_c` varchar(8) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
INSERT INTO `contacts_cstm` VALUES ('9f4c2908-47c8-e20c-5f36-592bd28fd104',0.00000000,0.00000000,'','','Николаевич','Российская Федерация',1,'','','','','','паспорт','3615','013826','отделом УФМС России по Самарской области в промышленном районе в г. Самара','2015-01-22','',''),('c8548377-e295-926c-28ff-592be34c26d7',0.00000000,0.00000000,'','','Александрович','Российская Федерация',1,'','','','','','','','','',NULL,'',NULL),('e41e39af-5bdc-0b83-c659-5927e5a9adf7',0.00000000,0.00000000,'','','Геннадьевич','Российская Федерация',1,'','','','','','','','','',NULL,'','f1c17d43-b29f-16ef-5774-5927e6b4501a');
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_bkrv`
--

DROP TABLE IF EXISTS `dp_bkrv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_bkrv` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `rsch` varchar(25) DEFAULT NULL,
  `krch` varchar(20) DEFAULT NULL,
  `bik_bank` varchar(9) DEFAULT NULL,
  `inn_bank` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_bkrv`
--

LOCK TABLES `dp_bkrv` WRITE;
/*!40000 ALTER TABLE `dp_bkrv` DISABLE KEYS */;
INSERT INTO `dp_bkrv` VALUES ('cc7ac549-b341-f38a-0bdc-5926d3163ea2','Российский капитал','2017-05-25 12:54:05','2017-05-25 12:54:05','1','1','',0,'1','239845698374658973645','8443534','8345693','82764538');
/*!40000 ALTER TABLE `dp_bkrv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_bkrv_accounts_c`
--

DROP TABLE IF EXISTS `dp_bkrv_accounts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_bkrv_accounts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `dp_bkrv_accountsaccounts_ida` varchar(36) DEFAULT NULL,
  `dp_bkrv_accountsdp_bkrv_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dp_bkrv_accounts_ida1` (`dp_bkrv_accountsaccounts_ida`),
  KEY `dp_bkrv_accounts_alt` (`dp_bkrv_accountsdp_bkrv_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_bkrv_accounts_c`
--

LOCK TABLES `dp_bkrv_accounts_c` WRITE;
/*!40000 ALTER TABLE `dp_bkrv_accounts_c` DISABLE KEYS */;
INSERT INTO `dp_bkrv_accounts_c` VALUES ('ce33ed69-8e6e-6754-e112-5926d37e962c','2017-05-25 12:54:05',0,'b9f49b4f-21dc-4a20-5646-592571b11c40','cc7ac549-b341-f38a-0bdc-5926d3163ea2');
/*!40000 ALTER TABLE `dp_bkrv_accounts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_bkrv_audit`
--

DROP TABLE IF EXISTS `dp_bkrv_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_bkrv_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_dp_bkrv_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_bkrv_audit`
--

LOCK TABLES `dp_bkrv_audit` WRITE;
/*!40000 ALTER TABLE `dp_bkrv_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_bkrv_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_fl`
--

DROP TABLE IF EXISTS `dp_founder_fl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_fl` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_fl`
--

LOCK TABLES `dp_founder_fl` WRITE;
/*!40000 ALTER TABLE `dp_founder_fl` DISABLE KEYS */;
INSERT INTO `dp_founder_fl` VALUES ('aa75ec99-cd50-76a4-2f02-592ba18917bd','632107606114','2017-05-29 04:18:47','2017-05-29 04:25:45','1','1',NULL,0,'1');
/*!40000 ALTER TABLE `dp_founder_fl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_fl_audit`
--

DROP TABLE IF EXISTS `dp_founder_fl_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_fl_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_dp_founder_fl_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_fl_audit`
--

LOCK TABLES `dp_founder_fl_audit` WRITE;
/*!40000 ALTER TABLE `dp_founder_fl_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_founder_fl_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_fl_contacts_1_c`
--

DROP TABLE IF EXISTS `dp_founder_fl_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_fl_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `dp_founder_fl_contacts_1dp_founder_fl_ida` varchar(36) DEFAULT NULL,
  `dp_founder_fl_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dp_founder_fl_contacts_1_ida1` (`dp_founder_fl_contacts_1dp_founder_fl_ida`),
  KEY `dp_founder_fl_contacts_1_idb2` (`dp_founder_fl_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_fl_contacts_1_c`
--

LOCK TABLES `dp_founder_fl_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `dp_founder_fl_contacts_1_c` DISABLE KEYS */;
INSERT INTO `dp_founder_fl_contacts_1_c` VALUES ('6cfe21cf-a327-b942-48fe-592ba228106f','2017-05-29 04:25:45',0,'aa75ec99-cd50-76a4-2f02-592ba18917bd','e41e39af-5bdc-0b83-c659-5927e5a9adf7');
/*!40000 ALTER TABLE `dp_founder_fl_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_fl_cstm`
--

DROP TABLE IF EXISTS `dp_founder_fl_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_fl_cstm` (
  `id_c` char(36) NOT NULL,
  `fl_share_size_cur_c` decimal(4,2) DEFAULT NULL,
  `fl_size_perc_c` decimal(4,2) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_fl_cstm`
--

LOCK TABLES `dp_founder_fl_cstm` WRITE;
/*!40000 ALTER TABLE `dp_founder_fl_cstm` DISABLE KEYS */;
INSERT INTO `dp_founder_fl_cstm` VALUES ('aa75ec99-cd50-76a4-2f02-592ba18917bd',NULL,NULL,'');
/*!40000 ALTER TABLE `dp_founder_fl_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_ul`
--

DROP TABLE IF EXISTS `dp_founder_ul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_ul` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_ul`
--

LOCK TABLES `dp_founder_ul` WRITE;
/*!40000 ALTER TABLE `dp_founder_ul` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_founder_ul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_ul_accounts_1_c`
--

DROP TABLE IF EXISTS `dp_founder_ul_accounts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_ul_accounts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `dp_founder_ul_accounts_1dp_founder_ul_ida` varchar(36) DEFAULT NULL,
  `dp_founder_ul_accounts_1accounts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dp_founder_ul_accounts_1_ida1` (`dp_founder_ul_accounts_1dp_founder_ul_ida`),
  KEY `dp_founder_ul_accounts_1_idb2` (`dp_founder_ul_accounts_1accounts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_ul_accounts_1_c`
--

LOCK TABLES `dp_founder_ul_accounts_1_c` WRITE;
/*!40000 ALTER TABLE `dp_founder_ul_accounts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_founder_ul_accounts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_ul_audit`
--

DROP TABLE IF EXISTS `dp_founder_ul_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_ul_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_dp_founder_ul_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_ul_audit`
--

LOCK TABLES `dp_founder_ul_audit` WRITE;
/*!40000 ALTER TABLE `dp_founder_ul_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_founder_ul_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_founder_ul_cstm`
--

DROP TABLE IF EXISTS `dp_founder_ul_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_founder_ul_cstm` (
  `id_c` char(36) NOT NULL,
  `ul_share_size_cur_c` decimal(4,2) DEFAULT NULL,
  `ul_size_perc_c` decimal(4,2) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_founder_ul_cstm`
--

LOCK TABLES `dp_founder_ul_cstm` WRITE;
/*!40000 ALTER TABLE `dp_founder_ul_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_founder_ul_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_license`
--

DROP TABLE IF EXISTS `dp_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_license` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_license`
--

LOCK TABLES `dp_license` WRITE;
/*!40000 ALTER TABLE `dp_license` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_license_audit`
--

DROP TABLE IF EXISTS `dp_license_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_license_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_dp_license_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_license_audit`
--

LOCK TABLES `dp_license_audit` WRITE;
/*!40000 ALTER TABLE `dp_license_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_license_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_license_cstm`
--

DROP TABLE IF EXISTS `dp_license_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_license_cstm` (
  `id_c` char(36) NOT NULL,
  `num_license_c` varchar(20) DEFAULT NULL,
  `date_license_c` date DEFAULT NULL,
  `bywhom_license_c` varchar(100) DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  `srok_work_license_c` date DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_license_cstm`
--

LOCK TABLES `dp_license_cstm` WRITE;
/*!40000 ALTER TABLE `dp_license_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_license_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_realty`
--

DROP TABLE IF EXISTS `dp_realty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_realty` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status_nedv` varchar(100) DEFAULT NULL,
  `area_nedv` int(10) DEFAULT NULL,
  `target_nedv` varchar(100) DEFAULT NULL,
  `num_svid_nedv` varchar(30) DEFAULT NULL,
  `date_reg_nedv` date DEFAULT NULL,
  `num_dogovor_arend` varchar(20) DEFAULT NULL,
  `date_reg_dogovor_arend` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_realty`
--

LOCK TABLES `dp_realty` WRITE;
/*!40000 ALTER TABLE `dp_realty` DISABLE KEYS */;
INSERT INTO `dp_realty` VALUES ('434d0498-94b2-4741-fe5d-592fe46d1967','ул. Ташкентская, 171Г, офис 305','2017-06-01 09:56:09','2017-06-01 09:56:09','1','1',NULL,0,'1','arenda',14,'office','',NULL,NULL,'2014-12-15'),('55092ca4-45ce-f10f-c85d-59272dbd7b35','443068, г. Самара, ул. Ново-Садовая, д. 106, оф. 613','2017-05-25 19:16:57','2017-05-25 19:21:26','1','1',NULL,0,'1','arenda',53,'office',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dp_realty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_realty_accounts_c`
--

DROP TABLE IF EXISTS `dp_realty_accounts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_realty_accounts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `dp_realty_accountsaccounts_ida` varchar(36) DEFAULT NULL,
  `dp_realty_accountsdp_realty_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dp_realty_accounts_ida1` (`dp_realty_accountsaccounts_ida`),
  KEY `dp_realty_accounts_alt` (`dp_realty_accountsdp_realty_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_realty_accounts_c`
--

LOCK TABLES `dp_realty_accounts_c` WRITE;
/*!40000 ALTER TABLE `dp_realty_accounts_c` DISABLE KEYS */;
INSERT INTO `dp_realty_accounts_c` VALUES ('48513c17-245b-3520-a61a-592fe48d16f4','2017-06-01 09:56:09',0,'f1c17d43-b29f-16ef-5774-5927e6b4501a','434d0498-94b2-4741-fe5d-592fe46d1967'),('57169c46-7045-9182-e365-59272db8b573','2017-05-25 19:16:57',0,'b9f49b4f-21dc-4a20-5646-592571b11c40','55092ca4-45ce-f10f-c85d-59272dbd7b35');
/*!40000 ALTER TABLE `dp_realty_accounts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dp_realty_audit`
--

DROP TABLE IF EXISTS `dp_realty_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dp_realty_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_dp_realty_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dp_realty_audit`
--

LOCK TABLES `dp_realty_audit` WRITE;
/*!40000 ALTER TABLE `dp_realty_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dp_realty_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('1109896f-87b9-4312-3c04-592ff58b45df','2d63584a-c431-7ee0-9d12-5928039316ff','f1c17d43-b29f-16ef-5774-5927e6b4501a','Accounts',1,0,'2017-06-01 11:09:02','2017-06-01 11:09:02',0),('1112a8c0-65e5-2d13-15ff-592ec5a51e00','11202855-90ab-8c1d-b7bd-592ec5b8d1ab','7d90052f-7d85-3f5d-d344-592ec538b7f3','Users',1,0,'2017-05-31 13:28:47','2017-05-31 13:28:47',0),('1636b210-27fd-1003-3b2f-592ed4a330c0','2d63584a-c431-7ee0-9d12-5928039316ff','e41e39af-5bdc-0b83-c659-5927e5a9adf7','Contacts',1,0,'2017-05-31 14:36:43','2017-05-31 14:36:43',0),('260f034b-653f-3067-905d-592ecd411041','27e700ac-969b-bae8-11b7-592ecd56eace','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','Users',1,0,'2017-05-31 14:05:36','2017-05-31 14:05:36',0),('2d536e55-b78f-7d76-5acb-5928032fbae8','2d63584a-c431-7ee0-9d12-5928039316ff','f1c17d43-b29f-16ef-5774-5927e6b4501a','Accounts',1,0,'2017-05-26 10:29:49','2017-05-26 10:29:49',1),('2f424982-e72a-fbe1-664e-592803abe908','ae470cfc-302b-46c8-8425-592564a4429a','f1c17d43-b29f-16ef-5774-5927e6b4501a','Accounts',0,0,'2017-05-26 10:29:49','2017-05-26 10:29:49',1),('3b60d3fe-92f8-24a8-04de-592eccd54f5a','3b6f5255-0dee-cfa7-8935-592ecc05a57f','31f70edc-a407-1101-b579-592ecc3eb0ad','Users',1,0,'2017-05-31 14:01:15','2017-05-31 14:01:15',0),('72c30f60-a0d8-8f10-8270-592ecbaf7d60','73cc09ec-3089-fcc8-7745-592ecba1d009','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','Users',1,0,'2017-05-31 13:55:37','2017-05-31 13:55:37',1),('93cba79f-87b7-e4d4-8c55-592fbd2fd029','93dc24d3-46d5-55eb-f7e9-592fbdfdf146','b9f49b4f-21dc-4a20-5646-592571b11c40','Accounts',1,0,'2017-06-01 07:07:00','2017-06-01 07:07:00',0),('a43652ab-0083-202c-956d-592fb584e914','a448eb5c-dd1a-ae54-ec3a-592fb5fff42a','c8548377-e295-926c-28ff-592be34c26d7','Contacts',1,0,'2017-06-01 06:35:15','2017-06-01 06:35:15',0),('ad2048ea-027c-b3b2-c73c-592ec27623a5','2d63584a-c431-7ee0-9d12-5928039316ff','a5d87b7b-fe12-c0b4-169a-592ec2309e60','Users',1,0,'2017-05-31 13:17:09','2017-05-31 13:17:09',0),('ae332e3a-16b6-cc09-37f9-5925648d9340','ae470cfc-302b-46c8-8425-592564a4429a','1','Users',1,0,'2017-05-24 10:47:24','2017-05-24 10:47:24',0),('b6a68c33-39f5-ed67-bc88-592ec2dd1844','b6b44ded-4578-ca92-d3a7-592ec2653e05','af3ca2f0-02ee-ca6a-6fc8-592ec21b4b75','Users',1,0,'2017-05-31 13:19:52','2017-05-31 13:19:52',0),('c9acef2d-01ad-b4a3-902d-592fe783a0ff','93dc24d3-46d5-55eb-f7e9-592fbdfdf146','9f4c2908-47c8-e20c-5f36-592bd28fd104','Contacts',1,0,'2017-06-01 10:08:02','2017-06-01 10:08:02',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('11202855-90ab-8c1d-b7bd-592ec5b8d1ab','help@finexpert.pro','HELP@FINEXPERT.PRO',0,0,'2017-05-31 13:28:47','2017-05-31 13:28:47',0),('27e700ac-969b-bae8-11b7-592ecd56eace','bg@finexpert.pro','BG@FINEXPERT.PRO',0,0,'2017-05-31 14:05:36','2017-05-31 14:05:36',0),('2d63584a-c431-7ee0-9d12-5928039316ff','info@fksrf.pro','INFO@FKSRF.PRO',0,0,'2017-05-26 10:29:49','2017-05-26 10:29:49',0),('3b6f5255-0dee-cfa7-8935-592ecc05a57f','info@finexpert.pro','INFO@FINEXPERT.PRO',0,0,'2017-05-31 14:01:15','2017-05-31 14:01:15',0),('73cc09ec-3089-fcc8-7745-592ecba1d009','bg@finexepert.pro','BG@FINEXEPERT.PRO',0,0,'2017-05-31 13:55:37','2017-05-31 13:55:37',0),('93dc24d3-46d5-55eb-f7e9-592fbdfdf146','samara.sold@mail.ru','SAMARA.SOLD@MAIL.RU',0,0,'2017-06-01 07:07:00','2017-06-01 07:07:00',0),('a448eb5c-dd1a-ae54-ec3a-592fb5fff42a','bg@fksrf.pro','BG@FKSRF.PRO',0,0,'2017-06-01 06:35:15','2017-06-01 06:35:15',0),('ae470cfc-302b-46c8-8425-592564a4429a','web@fksrf.pro','WEB@FKSRF.PRO',0,0,'2017-05-24 10:47:24','2017-05-24 10:47:24',0),('b6b44ded-4578-ca92-d3a7-592ec2653e05','web@finexpert.pro','WEB@FINEXPERT.PRO',0,0,'2017-05-31 13:19:52','2017-05-31 13:19:52',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('bff53f0a-2eb5-3f4c-41e7-592564cebbf8','2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('c28d3d07-a18f-eb2d-ddcd-592564f26138','2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('dc4ad7b4-d6ac-7727-02d4-59256490e1fa','2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,NULL),('ded79ede-3f16-4286-5758-5925648b6ab7','2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL),('e1851900-1e03-5229-0560-592564416186','2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,NULL),('e4b8b10c-83f4-a8bb-8fce-5925647324c0','2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('e7729ed9-9530-cd0e-4868-5925644484bb','2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ',0,NULL,NULL,NULL),('ecd98b03-0523-3d10-dc13-592564de2f8e','2013-05-24 14:31:45','2017-05-24 10:47:24','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'email');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('30700794-e622-9037-3db7-592ec35aa474','2017-05-31 13:23:15','2017-05-31 13:23:15',NULL,'1','1',0,'2017-05-31 13:23:15',NULL,'New account information','archived','sent',NULL,NULL,'pick',NULL,'User',NULL),('34c82917-15e6-1bf5-ed5c-592ecc57b6db','2017-05-31 14:01:15','2017-05-31 14:01:15',NULL,'1','1',0,'2017-05-31 14:01:15',NULL,'New account information','archived','sent',NULL,NULL,'pick',NULL,'User',NULL),('4e095d7d-e027-760f-cb09-592ecdcb3d81','2017-05-31 14:05:42','2017-05-31 14:05:42',NULL,NULL,NULL,0,'2017-05-31 14:05:42',NULL,'Reset your account password','archived','sent',NULL,NULL,'pick',NULL,'User',NULL),('60ebd724-6ff7-1992-8234-592ecb4bb3d2','2017-05-31 13:55:37','2017-05-31 13:55:37',NULL,'1','1',0,'2017-05-31 13:55:37',NULL,'New account information','archived','sent',NULL,NULL,'pick',NULL,'User',NULL),('c64efe8a-91f4-dd73-3c5c-592ec467c8c6','2017-05-31 13:24:34','2017-05-31 13:24:34',NULL,'1','1',0,'2017-05-31 13:24:34',NULL,'New account information','archived','sent',NULL,NULL,'pick',NULL,'User',NULL),('d1202d3b-a4a5-7346-f8fd-592ec86008e9','2017-05-31 13:43:51','2017-05-31 13:43:51',NULL,NULL,NULL,0,'2017-05-31 13:43:51',NULL,'Reset your account password','archived','sent',NULL,NULL,'pick',NULL,'User',NULL),('e8cea28a-b983-d53d-8cb4-592ec597ea4a','2017-05-31 13:28:47','2017-05-31 13:28:47',NULL,'1','1',0,'2017-05-31 13:28:47',NULL,'New account information','archived','sent',NULL,NULL,'pick',NULL,'User',NULL);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
INSERT INTO `emails_email_addr_rel` VALUES ('1152343a-a4da-ca96-baf1-592ec38a86fb','30700794-e622-9037-3db7-592ec35aa474','from','b6b44ded-4578-ca92-d3a7-592ec2653e05',0),('35f9122a-a972-2f46-036a-592ecc2c59af','34c82917-15e6-1bf5-ed5c-592ecc57b6db','from','b6b44ded-4578-ca92-d3a7-592ec2653e05',0),('4f39d255-1158-2fce-4c7c-592ecdcf93a0','4e095d7d-e027-760f-cb09-592ecdcb3d81','from','b6b44ded-4578-ca92-d3a7-592ec2653e05',0),('622dc5a5-3f10-bae8-10ea-592ecbe865ec','60ebd724-6ff7-1992-8234-592ecb4bb3d2','from','b6b44ded-4578-ca92-d3a7-592ec2653e05',0),('c76317db-08f8-27c4-6c19-592ec4b834f0','c64efe8a-91f4-dd73-3c5c-592ec467c8c6','from','b6b44ded-4578-ca92-d3a7-592ec2653e05',0),('d27237be-043f-357e-2a6a-592ec81da09a','d1202d3b-a4a5-7346-f8fd-592ec86008e9','from','b6b44ded-4578-ca92-d3a7-592ec2653e05',0),('e9e6e725-023e-6565-07b1-592ec53120d0','e8cea28a-b983-d53d-8cb4-592ec597ea4a','from','b6b44ded-4578-ca92-d3a7-592ec2653e05',0);
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
INSERT INTO `emails_text` VALUES ('30700794-e622-9037-3db7-592ec35aa474','','','','','','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : semgen </p><p>Password : 8AxNvV </p><br /><p>http://auth.finexpert.pro</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',NULL,NULL,0),('c64efe8a-91f4-dd73-3c5c-592ec467c8c6','','','','','','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : iamy </p><p>Password : rKLaGV </p><br /><p>http://auth.finexpert.pro</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',NULL,NULL,0),('e8cea28a-b983-d53d-8cb4-592ec597ea4a','','','','','','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : help </p><p>Password : 6m818A </p><br /><p>http://auth.finexpert.pro</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',NULL,NULL,0),('d1202d3b-a4a5-7346-f8fd-592ec86008e9','','','','','','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on 2017-05-31 13:43:51 to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> http://auth.finexpert.pro/index.php?entryPoint=Changenewpassword&guid=e2844884-59fa-2ecf-0ee3-592ec88e46d5 </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',NULL,NULL,0),('60ebd724-6ff7-1992-8234-592ecb4bb3d2','','','','','','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : bg </p><p>Password : UbLILs </p><br /><p>http://auth.finexpert.pro</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',NULL,NULL,0),('34c82917-15e6-1bf5-ed5c-592ecc57b6db','','','','','','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : semgen </p><p>Password : mQP6VZ </p><br /><p>http://auth.finexpert.pro</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',NULL,NULL,0),('4e095d7d-e027-760f-cb09-592ecdcb3d81','','','','','','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on 2017-05-31 14:05:42 to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> http://auth.finexpert.pro/index.php?entryPoint=Changenewpassword&guid=646eec1f-a9b8-ff17-64f6-592ecdefb3eb </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',NULL,NULL,0);
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Accountstax_system_c','tax_system_c','LBL_TAX_SYSTEM',NULL,NULL,'Accounts','multienum',100,0,NULL,'2017-06-02 14:01:24',0,0,0,0,1,'true','tax_system_list',NULL,NULL,NULL),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Contactsaccount_id_c','account_id_c','LBL_FOR_KONTRAGENT_ACCOUNT_ID','','','Contacts','id',36,0,NULL,'2017-06-01 10:09:26',0,0,0,0,0,'true','','','',''),('Contactsbithplace_fl_c','bithplace_fl_c','LBL_BITHPLACE_FL','','','Contacts','varchar',150,0,'','2017-06-01 06:03:25',0,0,0,0,1,'true','','','',''),('Contactscitizenship_fl_c','citizenship_fl_c','LBL_CITIZENSHIP_FL','','','Contacts','varchar',50,0,'Российская Федерация','2017-06-01 05:58:32',0,0,0,0,1,'true','','','',''),('Contactsdoc_division_code_fl_c','doc_division_code_fl_c','LBL_DOC_DIVISION_CODE_FL','','','Contacts','varchar',8,0,'','2017-06-01 06:09:20',0,0,0,0,1,'true','','','',''),('Contactsdoc_issued_by_fl_c','doc_issued_by_fl_c','LBL_DOC_ISSUED_BY_FL','','','Contacts','varchar',100,0,'','2017-06-01 06:08:33',0,0,0,0,1,'true','','','',''),('Contactsdoc_issue_date_fl_c','doc_issue_date_fl_c','LBL_DOC_ISSUE_DATE_FL','','','Contacts','date',NULL,0,'','2017-06-01 06:09:00',0,0,0,0,1,'true','','','',''),('Contactsdoc_number_fl_c','doc_number_fl_c','LBL_DOC_NUMBER_FL','','','Contacts','varchar',10,0,'','2017-06-01 06:07:02',0,0,0,0,1,'true','','','',''),('Contactsdoc_series_fl_c','doc_series_fl_c','LBL_DOC_SERIES_FL','','','Contacts','varchar',10,0,'','2017-06-01 06:06:41',0,0,0,0,1,'true','','','',''),('Contactsdoc_title_fl_c','doc_title_fl_c','LBL_DOC_TITLE_FL','','','Contacts','varchar',20,0,'','2017-06-01 06:06:20',0,0,0,0,1,'true','','','',''),('Contactsedu_fl_c','edu_fl_c','LBL_EDU_FL','','','Contacts','varchar',100,0,'','2017-06-01 06:03:52',0,0,0,0,1,'true','','','',''),('Contactsedu_institution_exp_date_fl_c','edu_institution_exp_date_fl_c','LBL_EDU_INSTITUTION_EXP_DATE_FL','','','Contacts','varchar',4,0,'','2017-06-01 06:04:57',0,0,0,0,1,'true','','','',''),('Contactsedu_institution_fl_c','edu_institution_fl_c','LBL_EDU_INSTITUTION_FL','','','Contacts','varchar',150,0,'','2017-06-01 06:04:39',0,0,0,0,1,'true','','','',''),('Contactsfor_kontragent_c','for_kontragent_c','LBL_FOR_KONTRAGENT','','','Contacts','relate',255,0,NULL,'2017-06-01 10:09:26',0,0,0,0,1,'true','','Accounts','account_id_c',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Contactspatr_c','patr_c','LBL_PATR','','','Contacts','varchar',100,0,'','2017-05-26 08:12:11',0,0,0,0,1,'true','','','',''),('Contactsresident_fl_c','resident_fl_c','LBL_RESIDENT_FL','','','Contacts','bool',255,0,'1','2017-06-01 05:59:57',0,0,0,0,1,'true','','','',''),('Contactsspecialty_fl_c','specialty_fl_c','LBL_SPECIALTY_FL','','','Contacts','varchar',80,0,'','2017-06-01 06:04:22',0,0,0,0,1,'true','','','',''),('dp_founder_flcontact_id_c','contact_id_c','LBL_LINK_CONTACT_CONTACT_ID','','','dp_founder_fl','id',36,0,NULL,'2017-05-29 04:07:28',0,0,0,0,0,'true','','','',''),('dp_founder_flfl_share_size_cur_c','fl_share_size_cur_c','LBL_FL_SHARE_SIZE_CUR',NULL,NULL,'dp_founder_fl','decimal',4,0,NULL,'2017-05-29 04:04:06',0,0,0,0,1,'true','2',NULL,NULL,NULL),('dp_founder_flfl_size_perc_c','fl_size_perc_c','LBL_FL_SIZE_PERC','','','dp_founder_fl','decimal',4,0,'','2017-05-29 04:03:54',0,0,0,0,1,'true','2','','',''),('dp_founder_fllink_contact_c','link_contact_c','LBL_LINK_CONTACT','','','dp_founder_fl','relate',255,0,NULL,'2017-05-29 04:07:28',0,0,0,0,1,'true','','Contacts','contact_id_c',''),('dp_founder_ulaccount_id_c','account_id_c','LBL_LINK_KONTR_ACCOUNT_ID','','','dp_founder_ul','id',36,0,NULL,'2017-05-29 04:08:10',0,0,0,0,0,'true','','','',''),('dp_founder_ullink_kontr_c','link_kontr_c','LBL_LINK_KONTR','','','dp_founder_ul','relate',255,0,NULL,'2017-05-29 04:08:10',0,0,0,0,1,'true','','Accounts','account_id_c',''),('dp_founder_ulul_share_size_cur_c','ul_share_size_cur_c','LBL_UL_SHARE_SIZE_CUR','','','dp_founder_ul','decimal',4,0,'','2017-05-29 04:04:49',0,0,0,0,1,'true','2','','',''),('dp_founder_ulul_size_perc_c','ul_size_perc_c','LBL_UL_SIZE_PERC','','','dp_founder_ul','decimal',4,0,'','2017-05-29 04:05:12',0,0,0,0,1,'true','2','','',''),('dp_licenseaccount_id_c','account_id_c','LBL_LICENSE_FOR_ACCOUNT_ID','','','dp_license','id',36,0,NULL,'2017-05-26 13:04:34',0,0,0,0,0,'true','','','',''),('dp_licensebywhom_license_c','bywhom_license_c','LBL_BYWHOM_LICENSE','','','dp_license','varchar',100,0,'','2017-05-26 12:57:25',0,0,0,0,1,'true','','','',''),('dp_licensedate_license_c','date_license_c','LBL_DATE_LICENSE','','','dp_license','date',NULL,0,'','2017-05-26 12:56:49',0,0,0,0,1,'true','','','',''),('dp_licenselicense_for_c','license_for_c','LBL_LICENSE_FOR','','','dp_license','relate',255,0,NULL,'2017-05-26 13:04:34',0,0,0,0,1,'true','','Accounts','account_id_c',''),('dp_licensenum_license_c','num_license_c','LBL_NUM_LICENSE','','','dp_license','varchar',20,0,'','2017-05-26 12:56:31',0,0,0,0,1,'true','','','',''),('dp_licensesrok_work_license_c','srok_work_license_c','LBL_SROK_WORK_LICENSE','','','dp_license','date',NULL,0,'-1 day','2017-05-28 17:16:26',0,0,0,0,1,'true','','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Opportunitiescircs_c','circs_c','LBL_CIRCS',NULL,NULL,'Opportunities','varchar',255,0,NULL,'2017-06-05 11:57:46',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Opportunitiesdate_pub_protokol_c','date_pub_protokol_c','LBL_DATE_PUB_PROTOKOL','','','Opportunities','date',NULL,0,'','2017-06-05 10:24:38',0,0,0,0,1,'true','','','',''),('Opportunitiesemail_win_c','email_win_c','LBL_EMAIL_WIN','','','Opportunities','varchar',20,0,'','2017-06-05 11:32:56',0,0,0,0,1,'true','','','',''),('Opportunitiesemail_win_city_c','email_win_city_c','LBL_EMAIL_WIN_CITY','','','Opportunities','varchar',100,0,NULL,'2017-06-05 11:32:56',0,0,0,0,1,'true','','','',''),('Opportunitiesemail_win_country_c','email_win_country_c','LBL_EMAIL_WIN_COUNTRY','','','Opportunities','varchar',100,0,NULL,'2017-06-05 11:32:56',0,0,0,0,1,'true','','','',''),('Opportunitiesemail_win_postalcode_c','email_win_postalcode_c','LBL_EMAIL_WIN_POSTALCODE','','','Opportunities','varchar',20,0,NULL,'2017-06-05 11:32:56',0,0,0,0,1,'true','','','',''),('Opportunitiesemail_win_state_c','email_win_state_c','LBL_EMAIL_WIN_STATE','','','Opportunities','varchar',100,0,NULL,'2017-06-05 11:32:56',0,0,0,0,1,'true','','','',''),('Opportunitiesinn_winer_c','inn_winer_c','LBL_INN_WINER','','','Opportunities','varchar',12,0,'','2017-06-05 10:30:24',0,0,0,0,1,'true','','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Opportunitieskpp_winer_c','kpp_winer_c','LBL_KPP_WINER','','','Opportunities','varchar',10,0,'','2017-06-05 10:32:24',0,0,0,0,1,'true','','','',''),('Opportunitieslink_protokol_c','link_protokol_c','LBL_LINK_PROTOKOL','','','Opportunities','url',120,0,'','2017-06-05 10:55:00',0,0,0,0,1,'true','','','','_blank'),('Opportunitiesnmc_c','nmc_c','LBL_NMC','','','Opportunities','currency',26,0,'','2017-06-05 10:49:53',0,0,0,0,1,'true','','','',''),('Opportunitiesphone_winer_c','phone_winer_c','LBL_PHONE_WINER','','','Opportunities','phone',12,0,'','2017-06-05 10:49:24',0,0,0,0,1,'true','','','',''),('Opportunitiessubj_tender_c','subj_tender_c','LBL_SUBJ_TENDER',NULL,NULL,'Opportunities','varchar',255,0,NULL,'2017-06-05 13:19:24',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Opportunitiestcustomer_c','tcustomer_c','LBL_TCUSTOMER',NULL,NULL,'Opportunities','varchar',255,0,NULL,'2017-06-05 13:19:33',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Opportunitiests_c','ts_c','LBL_TS','','','Opportunities','enum',100,0,NULL,'2017-06-05 13:16:52',0,0,0,0,1,'true','ts_list','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2017-05-24 10:47:24',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2017-05-24 10:47:24',0,0,0,0,1,'true','8','','',''),('sro_svid_sroaccount_id_c','account_id_c','LBL_SRO_FOR_ACCOUNT_ID','','','sro_svid_sro','id',36,0,NULL,'2017-05-28 17:32:42',0,0,0,0,0,'true','','','',''),('sro_svid_srobywhom_sro_c','bywhom_sro_c','LBL_BYWHOM_SRO','','','sro_svid_sro','varchar',150,0,'','2017-05-28 17:29:17',0,0,0,0,1,'true','','','',''),('sro_svid_srodate_sro_c','date_sro_c','LBL_DATE_SRO',NULL,NULL,'sro_svid_sro','date',NULL,0,NULL,'2017-05-28 17:29:37',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('sro_svid_sronum_sro_c','num_sro_c','LBL_NUM_SRO','','','sro_svid_sro','varchar',80,0,'','2017-05-28 17:28:09',0,0,0,0,1,'true','','','',''),('sro_svid_srosrok_work_sro_c','srok_work_sro_c','LBL_SROK_WORK_SRO','','','sro_svid_sro','date',NULL,0,'-1 day','2017-05-28 17:30:08',0,0,0,0,1,'true','','','',''),('sro_svid_srosro_for_c','sro_for_c','LBL_SRO_FOR','','','sro_svid_sro','relate',255,0,NULL,'2017-05-28 17:32:42',0,0,0,0,1,'true','','Accounts','account_id_c','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES ('31c20014-8e6a-59a5-65e7-592ff42b2339','Отправленные E-mail','sent','f31e5295-fb72-0404-3f79-592ff4338a96',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'ec86288b-e4e5-0ee5-26a1-592ecb5ec55d\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d',0),('5d340d62-0698-ca91-171d-592ff494e536','Архивированные E-mail','archived','f31e5295-fb72-0404-3f79-592ff4338a96',0,0,1,'','','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d',0),('c146b087-a3f5-98b6-39c8-59300510e60e','E-mail','inbound','',1,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')','','1','1',0),('c337acae-99db-5407-e328-59300538df01','Drafts','draft','c146b087-a3f5-98b6-39c8-59300510e60e',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1','1',0),('c54283bf-35fc-fc9c-ed5f-593005c72cde','Отправленные E-mail','sent','c146b087-a3f5-98b6-39c8-59300510e60e',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','1','1',0),('c86757c9-6e60-2ad8-993e-5930057853cd','Архивированные E-mail','archived','c146b087-a3f5-98b6-39c8-59300510e60e',0,0,1,'','','1','1',0),('f31e5295-fb72-0404-3f79-592ff4338a96','E-mail','inbound','',1,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'ec86288b-e4e5-0ee5-26a1-592ecb5ec55d\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')','','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d',0),('f5400376-22b6-2593-9976-592ff4e35c10','Drafts','draft','f31e5295-fb72-0404-3f79-592ff4338a96',0,0,1,'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'ec86288b-e4e5-0ee5-26a1-592ecb5ec55d\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')','','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d',0);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
INSERT INTO `folders_subscriptions` VALUES ('32070bf7-3474-9adc-0a3a-592ff49745d6','31c20014-8e6a-59a5-65e7-592ff42b2339','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d'),('5d6e0966-ac14-0afc-d22a-592ff47765ca','5d340d62-0698-ca91-171d-592ff494e536','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d'),('c148909b-c961-8272-7958-59300576097b','c146b087-a3f5-98b6-39c8-59300510e60e','1'),('c339af01-0756-fb1a-4472-593005e2e13e','c337acae-99db-5407-e328-59300538df01','1'),('c5449d77-7a5f-621f-23e0-59300540e2af','c54283bf-35fc-fc9c-ed5f-593005c72cde','1'),('c869f298-f2b4-742b-94b7-59300588aaec','c86757c9-6e60-2ad8-993e-5930057853cd','1'),('f32410a7-b1c5-bc69-852a-592ff4daf106','f31e5295-fb72-0404-3f79-592ff4338a96','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d'),('fa7009f0-284f-1dcd-2e56-592ff47ade19','f5400376-22b6-2593-9976-592ff4e35c10','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d');
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
INSERT INTO `inbound_email` VALUES ('3d536431-a239-f708-0ad2-5930310b2199',0,'2017-06-01 15:22:33','2017-06-01 15:22:33','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','Почта','Active','imap.yandex.ru','bg@finexpert.pro','4GSvFbkjNBLtnF5amwVgiQ==',993,'::::ssl::imap::::::','INBOX',0,'pick',NULL,'YTo4OntzOjk6ImZyb21fbmFtZSI7czoyMzoi0K7RgNC40Lkg0JzQsNGA0Y/QvdC40L0iO3M6OToiZnJvbV9hZGRyIjtzOjE2OiJiZ0BmaW5leHBlcnQucHJvIjtzOjEzOiJyZXBseV90b19hZGRyIjtzOjA6IiI7czoxMToidHJhc2hGb2xkZXIiO3M6MTQ6ItCa0L7RgNC30LjQvdCwIjtzOjEwOiJzZW50Rm9sZGVyIjtzOjA6IiI7czoxMDoib25seV9zaW5jZSI7YjowO3M6MTM6ImZpbHRlcl9kb21haW4iO3M6MDoiIjtzOjE0OiJvdXRib3VuZF9lbWFpbCI7czozNjoiZmFlMzA5NTItODcyNy00YjQzLTMxZTEtNTkyZWNiN2Q2OTg1Ijt9','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d',1,NULL),('59d32a58-f857-49cb-e212-593006084395',0,'2017-06-01 12:19:11','2017-06-01 12:59:43','1','1','yandex','Active','imap.yandex.ru','mail@finexpert.pro','YJ77xLA4azeyKM3JS5a6YA==',993,'::::ssl::imap::::::','INBOX,Спам',0,'pick','','YTo4OntzOjk6ImZyb21fbmFtZSI7czoxMzoiQWRtaW5pc3RyYXRvciI7czo5OiJmcm9tX2FkZHIiO3M6MTg6Im1haWxAZmluZXhwZXJ0LnBybyI7czoxMzoicmVwbHlfdG9fYWRkciI7czowOiIiO3M6MTE6InRyYXNoRm9sZGVyIjtzOjE4OiLQo9C00LDQu9C10L3QvdGL0LUiO3M6MTA6InNlbnRGb2xkZXIiO3M6MjQ6ItCe0YLQv9GA0LDQstC70LXQvdC90YvQtSI7czoxMDoib25seV9zaW5jZSI7YjowO3M6MTM6ImZpbHRlcl9kb21haW4iO3M6MDoiIjtzOjE0OiJvdXRib3VuZF9lbWFpbCI7czozNjoiODc5OGFhMWYtMDYzYS1mYWM3LWVhYzMtNTkzMDA1YWY5Yjk4Ijt9','1',1,'');
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
INSERT INTO `inbound_email_cache_ts` VALUES ('59d32a58-f857-49cb-e212-593006084395_INBOX',1496321992),('59d32a58-f857-49cb-e212-593006084395_Спам',1496321992);
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (NULL,'530d26be-3d65-0f98-e3ce-592c13cd8158','2017-05-29 12:27:56','2017-05-29 12:27:56','1','1','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','application/pdf','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','Accounts','f1c17d43-b29f-16ef-5774-5927e6b4501a',NULL,0,0,NULL,0),(NULL,'5825988b-e9b6-a0bf-09b1-592c0f8b7bf9','2017-05-29 12:11:04','2017-05-29 12:11:04','1','1','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','application/pdf','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','Accounts','f1c17d43-b29f-16ef-5774-5927e6b4501a',NULL,0,0,NULL,0),(NULL,'8a1a7600-d24c-a635-6013-592c0b1262af','2017-05-29 11:54:37','2017-05-29 11:54:37','1','1','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','application/pdf','2136_АНКЕТА_ПРИНЦИПАЛА_без_открытия_счета_(с_15.09.15).pdf','Accounts','f1c17d43-b29f-16ef-5774-5927e6b4501a',NULL,0,0,NULL,0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
INSERT INTO `opportunities` VALUES ('2b287e3d-3be6-8e31-d953-59354729b777','№0142200001316016298','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,497650,497650,'-99','2017-06-12',NULL,'',NULL),('2cdedc53-6e01-8f7d-50e9-593547b58435','№0142200001316016291','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,62310.23,62310.23,'-99','2017-06-12',NULL,'',NULL),('4fab04db-a548-fdfa-8305-593547fc0392','№0301200059616000756','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,8526.67,8526.67,'-99','2017-06-12',NULL,'',NULL),('54d09f37-35dc-9643-fdcc-593547a3d571','№0142200001316016056','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,94550.6,94550.6,'-99','2017-06-12',NULL,'',NULL),('577e5d4f-8881-9680-341e-59354747ca61','№0142200001316016328','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,86807.23,86807.23,'-99','2017-06-12',NULL,'',NULL),('58180d3a-79e4-1c00-963f-5935474a85c0','№0142200001316016337','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,69503.39,69503.39,'-99','2017-06-12',NULL,'',NULL),('80bc4bcc-b15a-62a2-5261-5935473f9790','№0142200001316016046','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,94550.6,94550.6,'-99','2017-06-12',NULL,'',NULL),('82ee339f-88a3-354f-ec4a-593547dd9133','№0142200001316016027','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,97887.5,97887.5,'-99','2017-06-12',NULL,'',NULL),('8be94ebf-f5c8-f60f-2016-593547f47966','№0173100007916000083','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,9059040,9059040,'-99','2017-06-12',NULL,'',NULL),('a6a8acd0-c5b7-ec07-4bbf-593547ded106','№0142200001316016041','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,94550.6,94550.6,'-99','2017-06-12',NULL,'',NULL),('b195ff78-fceb-9b70-a6ee-593547d1e1fd','№0142200001316016032','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,81197.4,81197.4,'-99','2017-06-12',NULL,'',NULL),('cee2789e-5dbc-b167-717b-593547b4b330','№0142200001316016040','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,96314.6,96314.6,'-99','2017-06-12',NULL,'',NULL),('d6cf35ac-2236-ada8-0e69-5935476a6923','№0142200001316015389','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,231576.07,231576.07,'-99','2017-06-12',NULL,'',NULL),('de303aa4-129c-7622-eddd-5935456645d1','№0168200002417002508','2017-06-05 11:51:54','2017-06-05 11:53:40','1','1',NULL,1,'1',NULL,NULL,NULL,331519.05,331519.05,'-99','2017-06-12',NULL,'',NULL),('ed12daf7-2072-4847-f6d3-59354706db44','№0342100007916000053','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,6281.25,6281.25,'-99','2017-06-12',NULL,'',NULL),('ff2a029c-ce86-9654-d396-593547877e19','№0168200002417002508','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',NULL,0,'1',NULL,NULL,NULL,331519.05,331519.05,'-99','2017-06-12',NULL,'',NULL);
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `date_pub_protokol_c` date DEFAULT NULL,
  `subj_tender_c` varchar(255) DEFAULT NULL,
  `tcustomer_c` varchar(255) DEFAULT NULL,
  `inn_winer_c` varchar(12) DEFAULT NULL,
  `kpp_winer_c` varchar(10) DEFAULT NULL,
  `phone_winer_c` varchar(12) DEFAULT NULL,
  `nmc_c` decimal(26,6) DEFAULT NULL,
  `circs_c` varchar(255) DEFAULT NULL,
  `link_protokol_c` varchar(120) DEFAULT NULL,
  `email_win_city_c` varchar(100) DEFAULT NULL,
  `email_win_state_c` varchar(100) DEFAULT NULL,
  `email_win_postalcode_c` varchar(20) DEFAULT NULL,
  `email_win_country_c` varchar(100) DEFAULT NULL,
  `email_win_c` varchar(20) DEFAULT NULL,
  `ts_c` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
INSERT INTO `opportunities_cstm` VALUES ('2b287e3d-3be6-8e31-d953-59354729b777',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Поставка лекарственного препарата для нужд Государственного бюджетного учреждения здравоохранения \"Самарский областной клинический онкологический дисп','ГОСУДАРСТВЕННОЕ БЮДЖЕТНОЕ  УЧРЕЖДЕНИЕ ЗДРАВООХРАНЕНИЯ \"САМАРСКИЙ ОБЛАСТНОЙ КЛИНИЧЕСКИЙ ОНКОЛОГИЧЕСКИ','6319037334','631901001','78462792050;',4976500.000000,'С момента заключения Контракта по 31.12.2017г, по заявкам','https://etp.roseltorg.ru/file/get/t/Protocols/id/5701115/extract/0/name/0142200001316016298_first_parts_protocol.rtf',NULL,NULL,NULL,NULL,'farmskd@farmskd.ru;',NULL),('2cdedc53-6e01-8f7d-50e9-593547b58435',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Поставка лекарственных препаратов для нужд государственного бюджетного учреждения здравоохранения Самарской области &#034; Самарская городская поликли','Государственное бюджетное учреждение здравоохранения Самарской области \"Самарская городская поликлин','6313130633','631201001','78469277931,',623102.330000,'С момента заключения контракта по 30.11.2017','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700939/name/0142200001316016291_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'',NULL),('4fab04db-a548-fdfa-8305-593547fc0392',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Закупка изделий медицинского назначения для клинико-диагностической лаборатории (система взятия крови)\nЗакупка изделий медицинского назначения для кли','ГОСУДАРСТВЕННОЕ БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ ЗДРАВООХРАНЕНИЯ РЕСПУБЛИКАНСКИЙ КЛИНИЧЕСКИЙ ОНКОЛОГИЧЕСКИЙ ДИСП','6316152508','631801001','79172558710,',170533.330000,'Срок исполнения контракта: год 2017 месяц Июнь Срок исполнения отдельных этапов контракта: 06.2017 Периодичность поставки товаров (выполнения работ, оказания услуг): 06.2017','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700992/extract/0/name/0301200059616000756_first_parts_protocol.rtf',NULL,NULL,NULL,NULL,'oktantltd@mail.ru,sa',NULL),('54d09f37-35dc-9643-fdcc-593547a3d571',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Изготовление и поставка средств экстемпорального изготовления (Лот №1) для нужд Государственного бюджетного учреждения здравоохранения «Самарский обла','Государственное  бюджетное учреждение здравоохранения \"Самарская психиатрическая больница\", Российск','6311032045','631101001','78462689505,',945506.000000,'С момента заключения Контракта до 31.12.2017г.','https://etp.roseltorg.ru/file/get/t/Protocols/id/5701184/name/0142200001316016056_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'apteka258@inbox.ru,t',NULL),('577e5d4f-8881-9680-341e-59354747ca61',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Поставка медицинских расходных материалов для государственных бюджетных учреждений здравоохранения Самарской области\nПоставка медицинских расходных ма','ГЛАВНОЕ  УПРАВЛЕНИЕ  ОРГАНИЗАЦИИ  ТОРГОВ  САМАРСКОЙ ОБЛАСТИ, Российская Федерация, 443068, Самарская','6312012926','631201001','78462419346;',1736152.600000,'с момента подписания контракта по 31.12.2017 г','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700937/name/0142200001316016328_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'grinenko@samtel.ru;',NULL),('58180d3a-79e4-1c00-963f-5935474a85c0',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Поставка лекарственных средств для нужд Государственного бюджетного учреждения здравоохранения Самарской области «Тольяттинский кожно-венерологический','Государственное бюджетное учреждение здравоохранения Самарской области \"Тольяттинский кожно-венероло','6314036866','631801001','78462011680,',463355.900000,'с момента заключения контракта по 31.12.2017','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700973/name/0142200001316016337_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'lucius_mv@biotec\\.ru',NULL),('80bc4bcc-b15a-62a2-5261-5935473f9790',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Изготовление и поставка средств экстемпорального изготовления (Лот №3) для нужд Государственного бюджетного учреждения здравоохранения «Самарский обла','Государственное  бюджетное учреждение здравоохранения \"Самарская психиатрическая больница\", Российск','6311032045','631101001','78462689505,',945506.000000,'С момента заключения Контракта до 31.12.2017г.','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700976/name/0142200001316016046_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'apteka258@inbox.ru,t',NULL),('82ee339f-88a3-354f-ec4a-593547dd9133',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Изготовление и поставка средств экстемпорального изготовления (Лот №13) для нужд Государственного бюджетного учреждения здравоохранения «Самарский обл','Государственное  бюджетное учреждение здравоохранения \"Самарская психиатрическая больница\", Российск','6318226699','631801001','78469973555,',978875.000000,'С момента заключения Контракта до 31.12.2017г.','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700971/name/0142200001316016027_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'largo.samara@yandex.',NULL),('8be94ebf-f5c8-f60f-2016-593547f47966',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Карты-носители, предназначенные для сбора, хранения и транспортировки образцов крови','федеральное казенное учреждение \"Центр инженерно-технического обеспечения и вооружения Управления Фе','6316152508','631801001','79172558710,',30196800.000000,'В соответствии с приложением №2 к проекту государственного контракта','https://app.rts-tender.ru/files/FileDownloadHandler.ashx?FileGuid=b0bb4726-dc28-4040-ac2f-8aaf44a56b99',NULL,NULL,NULL,NULL,'oktantltd@mail.ru,sa',NULL),('a6a8acd0-c5b7-ec07-4bbf-593547ded106',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Изготовление и поставка средств экстемпорального изготовления (Лот №2) для нужд Государственного бюджетного учреждения здравоохранения «Самарский обла','Государственное  бюджетное учреждение здравоохранения \"Самарская психиатрическая больница\", Российск','6311032045','631101001','78462689505,',945506.000000,'С момента заключения Контракта до 31.12.2017г.','https://etp.roseltorg.ru/file/get/t/Protocols/id/5701177/name/0142200001316016041_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'apteka258@inbox.ru,t',NULL),('b195ff78-fceb-9b70-a6ee-593547d1e1fd',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Изготовление и поставка средств экстемпорального изготовления (Лот №14) для нужд Государственного бюджетного учреждения здравоохранения «Самарский обл','Государственное  бюджетное учреждение здравоохранения \"Самарская психиатрическая больница\", Российск','6311032045','631101001','78462689505,',811974.000000,'С момента заключения Контракта до 31.12.2017г.','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700975/name/0142200001316016032_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'apteka258@inbox.ru,t',NULL),('cee2789e-5dbc-b167-717b-593547b4b330',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Изготовление и поставка средств экстемпорального изготовления (Лот №11) для нужд Государственного бюджетного учреждения здравоохранения «Самарский обл','Государственное  бюджетное учреждение здравоохранения \"Самарская психиатрическая больница\", Российск','6311032045','631101001','78462689505,',963146.000000,'С момента заключения Контракта до 31.12.2017г.','https://etp.roseltorg.ru/file/get/t/Protocols/id/5701172/name/0142200001316016040_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'apteka258@inbox.ru,t',NULL),('d6cf35ac-2236-ada8-0e69-5935476a6923',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Поставка медицинских расходных материалов для государственных бюджетных учреждений здравоохранения Самарской области','ГЛАВНОЕ  УПРАВЛЕНИЕ  ОРГАНИЗАЦИИ  ТОРГОВ  САМАРСКОЙ ОБЛАСТИ, Российская Федерация, 443068, Самарская','6316226069','631601001','',3651686.650000,'С момента заключения контракта по 31.12.2017г','https://etp.roseltorg.ru/file/get/t/Protocols/id/5700935/name/0142200001316015389_second_parts_protocol.rtf',NULL,NULL,NULL,NULL,'',NULL),('de303aa4-129c-7622-eddd-5935456645d1',0.00000000,0.00000000,NULL,NULL,'2017-06-05','Ремонт автомобильных дорог общего пользования местного значения на территории муниципального образования \"Тереньгульский район\" Ульяновской','МУНИЦИПАЛЬНОЕ УЧРЕЖДЕНИЕ АДМИНИСТРАЦИЯ МУНИЦИПАЛЬНОГО ОБРАЗОВАНИЯ \"ТЕРЕНЬГУЛЬСКИЙ РАЙОН\"','6325065146','','8-927-027472',6630381.060000,'','http://sberbank-ast.ru/ViewDocument.aspx?id=479215767',NULL,NULL,NULL,NULL,'gas-163@mail.ru',NULL),('ed12daf7-2072-4847-f6d3-59354706db44',0.00000000,0.00000000,NULL,NULL,'2017-01-30','Поставка томатной пасты\nПоставка томатной пасты','ФЕДЕРАЛЬНОЕ ГОСУДАРСТВЕННОЕ  БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ ЗДРАВООХРАНЕНИЯ \"МЕДИЦИНСКИЙ РЕАБИЛИТАЦИОННЫЙ ЦЕНТ','6316211070','631601001','',125625.000000,'Срок исполнения контракта: год 2017 месяц Декабрь  Срок исполнения отдельных этапов контракта: декабрь 2017г  Периодичность поставки товаров (выполнения работ, оказания услуг): ежемесячно','http://www.sberbank-ast.ru/ViewDocument.aspx?id=448458706',NULL,NULL,NULL,NULL,'',NULL),('ff2a029c-ce86-9654-d396-593547877e19',0.00000000,0.00000000,NULL,NULL,'2017-06-05','Ремонт автомобильных дорог общего пользования местного значения на территории муниципального образования \"Тереньгульский район\" Ульяновской','МУНИЦИПАЛЬНОЕ УЧРЕЖДЕНИЕ АДМИНИСТРАЦИЯ МУНИЦИПАЛЬНОГО ОБРАЗОВАНИЯ \"ТЕРЕНЬГУЛЬСКИЙ РАЙОН\"','6325065146','','8-927-027472',6630381.060000,'1. Срок исполнения контракта: 12.2017 г.\n2. Срок исполнения отдельных этапов контракта: не предусматривается\n3. Периодичность поставки товаров (выполнения работ, оказания услуг): с момента заключения контракта по 01.09.2017 г., а также в соответствии с Ка','http://sberbank-ast.ru/ViewDocument.aspx?id=479215767',NULL,NULL,NULL,NULL,'gas-163@mail.ru',NULL);
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('11d5d4fd-51b1-58ce-89ad-5930102f7bbe','mail@finexpert.pro','user','','smtp','other','smtp.yandex.ru',465,'mail@finexpert.pro','2RcwcB/KXu8R3eg8C+kX6A==',1,'1','2017-06-01 13:02:21','2017-06-01 13:02:21','1','1',0,NULL),('18c7b585-1764-ef4b-c11e-592ec563a573','help@finexpert.pro','system-override','7d90052f-7d85-3f5d-d344-592ec538b7f3','SMTP','other','smtp.yandex.ru',465,'help@finexpert.pro','',1,'1',NULL,'2017-06-01 10:57:51','1','',0,''),('3f24d894-100d-909a-9e1d-592564482917','web@finexpert.pro','system','1','SMTP','other','smtp.yandex.ru',465,'web@finexpert.pro','1xeVJp9NemB1pAqKjO/pSg==',1,'1',NULL,'2017-06-01 10:58:11','1','',0,''),('43741986-189e-3658-aed3-592ecc0ae2a7','web@finexpert.pro','system-override','31f70edc-a407-1101-b579-592ecc3eb0ad','SMTP','other','smtp.yandex.ru',465,'web@finexpert.pro','1xeVJp9NemB1pAqKjO/pSg==',1,'1',NULL,'2017-06-01 11:00:11','1','',1,''),('661e0cb5-da9b-ec0d-43ac-592ec3461184','info@finexpert.pro','system-override','a5d87b7b-fe12-c0b4-169a-592ec2309e60','SMTP','other','smtp.yandex.ru',465,'info@finexpert.pro','',1,'1',NULL,'2017-06-01 11:00:25','1','',1,''),('8798aa1f-063a-fac7-eac3-593005af9b98','bg@finexpert.pro','system-override','1','SMTP','other','smtp.yandex.ru',465,'bg@finexpert.pro','6Mxn0luiVnAKXM3292oG7Q==',1,'1',NULL,'2017-06-01 13:01:00','1','',0,''),('8fd034b9-3149-f81f-9bf8-592ec0bc6ac4','info@finexpert.pro','user','','smtp','other','smtp.yandex.ru',25,'web@finexpert.pro','1xeVJp9NemB1pAqKjO/pSg==',1,'2','2017-05-31 13:08:04','2017-05-31 13:14:14','1','1',0,''),('cab726ed-8ff7-890a-dcb5-592ec4a52822','system','system-override','af3ca2f0-02ee-ca6a-6fc8-592ec21b4b75','SMTP','other','smtp.yandex.ru',465,'web@finexpert.pro','1xeVJp9NemB1pAqKjO/pSg==',1,'1',NULL,'2017-06-01 11:00:11','1',NULL,1,NULL),('fae30952-8727-4b43-31e1-592ecb7d6985','bg@finexpert.pro','system-override','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','SMTP','other','smtp.yandex.ru',465,'bg@finexpert.pro','',1,'1',NULL,'2017-06-01 10:59:51','1','',0,'');
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('1005d1f7-cdfd-c916-3628-59355a71520e','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1029aa0a-ba28-18a9-e9e3-59355a99ff22','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11318f85-020a-cb6a-51f7-59355a21a5b7','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11e0ee54-faa1-5f4a-b91d-59355afd7fc2','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12b8c3fd-dbe3-649d-3255-59355a5b4b09','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('130531fc-f020-72e0-9694-59355a44f67c','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13fa93ac-f01d-2c43-f055-59355af16775','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14acb3ea-f87f-d042-f528-59355a78904e','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('15a6665b-38ed-d340-3ca7-59355ad353b9','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('15fc660a-81f9-38f4-4368-59355a8a8c34','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('16b4babf-5387-de97-87e9-59355ae34dfd','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('176c0c4f-5855-55ae-9e07-59355a8645ed','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('1778786b-0e6b-c56e-a29a-59355a77522f','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('184574cf-096c-43f3-292a-59355a56d16b','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18471fce-34e4-cc4e-fcb1-59355a05bf7a','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18ff3a83-2dc3-e283-c0c9-59355abc1bde','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('192a31a3-41bd-7809-16ad-59355acd5bf3','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('19ee96ae-5bad-978f-bb2a-59355affc7cb','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1a32e965-65d9-a114-44d6-59355ac7c1f0','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1aa5b322-b2fb-a1b5-3c69-59355a8d3ade','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1af91203-609e-4604-21a3-59355addba6c','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b675f4f-31c8-b0de-4185-59355a52eae0','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1c2172d4-72d7-600f-c64c-59355a48d725','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1c613d00-0691-1ab2-89b8-59355a8c6a96','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ce0476d-871c-ed8c-b7b5-59355af73c08','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1d48e12e-5971-a174-ecc7-59355ae5e526','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d8a2cf3-52a0-8985-9f74-59355a6f2fb0','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e4e261e-7e7b-8399-88ad-59355a2c2253','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('1e6a90f0-d23b-4c4b-2457-59355a377dba','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f3c534a-0a66-52a9-e731-59355aa74517','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1fa301aa-6ec2-eac9-41ba-59355a8fc7e0','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20162ce6-0554-ef73-b18a-59355a91f710','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20578c04-6ca0-c747-771f-59355a95d6f7','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20e0f517-1589-e94e-d4e8-59355a4eb694','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2105abe0-2e1e-c3a4-ee01-59355a912e90','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('21b523d9-4179-bef1-73cd-59355a0567cd','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('21e2837d-bcee-18eb-5989-59355a0e666b','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('229662c0-b6bf-4aaa-0b02-59355aa9b7bc','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22ae28ac-daa9-822b-bde8-59355a4cb7cf','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2346f43d-d650-95df-7b34-59355ae4c38d','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2377095b-a02b-397b-0428-59355a7e6ea9','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('243d68fa-6743-e575-3aa0-59355a54bfaa','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('249f0d36-49d6-fa84-b881-59355a40b0aa','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('250da02b-dd8a-6df5-9980-59355a912e82','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('257942a8-1601-e08b-c2c4-59355ae1e1a9','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('25e82c1a-c1a4-9dfb-bc7c-59355ac676e4','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('269e6f47-f829-fc07-17da-59355ad6edbc','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('26e3c9d4-9f66-839c-4b8e-59355a996179','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27376874-1330-6f4b-d3d9-59355a976929','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('27d63de2-600a-7e97-872e-59355a448ef2','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('27d9e833-512a-1d3e-7009-59355abbb0e9','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('28ffb062-d843-ff89-4e51-59355a47a729','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29a37a81-2c57-b0cc-a732-59355aec97ed','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a386f43-e267-1c71-eb69-59355af1ace4','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ad87c53-31f0-9c8f-6d71-59355a2f808e','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b002dea-f12a-ea3e-22d8-59355aa5649f','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b797732-62a0-0eb1-52da-59355ade7495','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bdadcc2-dc7a-46a4-463d-59355ae01342','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c72a547-0a3a-6be3-9b56-59355aedc6a1','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d0be5b1-8ef9-ae71-c44b-59355a22fed6','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('2d1119ef-c16f-7f29-31f4-59355a208b09','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('2daca0fb-47f7-eace-f0d9-59355a1ce3ee','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2dd431fb-1829-adb3-5d72-59355a7d7475','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2e44ada8-37f2-da09-a08e-59355a7ecc95','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('2edf4d3a-10c1-086c-001a-59355a45d6fd','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('2f6c32c1-cf39-c434-f984-59355a900d1f','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f825bb9-6ed6-f82b-4e93-59355ab01800','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('3027511f-ddd5-4206-96eb-59355a019862','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('305bc32b-a85e-fc58-f1e9-59355aa697e5','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('30f705ed-5dcb-b698-a779-59355a1ecd09','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31198cb4-9bad-e890-27a3-59355a2bc145','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31267db9-0173-3299-03da-59355a1441c3','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('31c9c37a-07b9-73d5-9ab7-59355a24e683','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31e366ce-1d5d-4e6e-73d8-59355a93ac43','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('327dd55f-890a-47c3-858e-59355a4f0caa','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('33ecb818-d8f0-d86a-276a-59355a4055e4','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34c62ac8-1e93-9ab7-850e-59355ad897ed','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('357b2eeb-091d-45d9-1319-59355a4b59f1','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35aa1048-d2e6-c38e-7f0a-59355acb8316','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3652079e-48ee-854c-322f-59355ae3eaea','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3675aa06-58ff-d23b-c9a1-59355a25d700','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('3711166b-129b-6d9f-51c5-59355ae97c2f','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('373156a3-3a15-41fa-7b7d-59355ae6158a','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('37d095bd-0c84-cd9a-11bc-59355ad79cdf','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('37d5e01f-ad68-76ad-00fb-59355a11e67d','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a6d3aa1-625a-163a-2356-59355ab20bc9','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b569c89-a188-de93-bd45-59355aeaa76e','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3be0f1a5-6091-220d-00a6-59355a28c682','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('3c072b3d-c0cc-8af3-8ef1-59355a17aa04','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3cc70dac-83e1-9f5d-105d-59355a5585ff','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('3cde1920-6417-666f-9e6f-59355afca41e','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d87d244-d889-61c8-81eb-59355a91c3bb','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e2898ed-6247-e47c-8fda-59355a94d9b4','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ec90723-8a32-5ba7-c28a-59355af506e3','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f490795-05e7-267f-c0bc-59355aeb7068','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f703579-6e6d-4c09-e52f-59355a7bdac1','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('40209520-0612-d382-b11c-59355a6b1b56','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('40c49835-0168-db42-d01b-59355af16736','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('41604b33-f873-2368-c1ba-59355aeac894','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('41fb1b07-ae00-07c0-b433-59355a8d79ab','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('435c0f43-b330-f47a-8b83-59355afccf71','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('437cd2be-ab4e-66d4-4fda-59355ae3ba33','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4420ec0f-ca2d-dac0-f9dc-59355a1bbc1c','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('443aae88-1dfa-31d7-b5d0-59355a79d3a1','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45ad2ca9-6c96-3360-e5d1-59355aaf4bc9','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4682b892-782b-87fe-0309-59355a6c4fc5','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('472b8150-a344-98f2-9806-59355ab3ec61','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48693c76-b180-a82c-dd3e-59355a8fb945','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4960912a-30f2-854a-bdb2-59355a5f34aa','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4960a376-b680-5446-ae22-59355a6fa545','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a15be92-e1eb-3176-2be6-59355a5bdfbc','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a4b610e-4cc7-4685-7a01-59355a2d46c4','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4afc8549-ee63-b5ca-b7de-59355a0b7032','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('4b7131eb-8835-7c4e-9d69-59355ad0ac0e','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4be0e286-478e-b93c-dad9-59355a380eb5','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('4c65b6a1-4b13-6d5f-4e8d-59355a571e19','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d30fb39-0b8d-ef3e-825d-59355a237e9e','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d92b650-7cdc-c0ba-b93a-59355a86fbfc','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e7bb380-c947-1dbf-9125-59355a7f30dd','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e8cd2d8-882f-9860-7257-59355a928f31','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f242bd0-7054-e9e4-5e00-59355abb04e1','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f391828-6bf3-e92c-7400-59355adf9256','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('503c94bd-acdc-a0b9-829f-59355a6ccaea','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('50827b47-c12f-9512-1a0e-59355a410e83','sro_svid_sro_modified_user','Users','users','id','sro_svid_sro','sro_svid_sro','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50e143b6-96b4-9bfd-1570-59355a4b4b2e','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51355c47-1503-9523-e584-59355a0253e6','sro_svid_sro_created_by','Users','users','id','sro_svid_sro','sro_svid_sro','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51700ac1-adbc-8130-0351-59355a72a981','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51d67e6c-5ce7-0856-391d-59355a3a4ad2','sro_svid_sro_assigned_user','Users','users','id','sro_svid_sro','sro_svid_sro','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52ba7018-066f-efe4-646b-59355ac68704','securitygroups_sro_svid_sro','SecurityGroups','securitygroups','id','sro_svid_sro','sro_svid_sro','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','sro_svid_sro',0,0),('543f4d17-9c5b-593c-ea20-59355a1a7f41','dp_bkrv_modified_user','Users','users','id','dp_bkrv','dp_bkrv','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54f32aab-5893-ed25-eed0-59355a17c5bb','dp_bkrv_created_by','Users','users','id','dp_bkrv','dp_bkrv','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5522e032-3a88-bc34-930f-59355a8c1000','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5599495c-3c3c-8fc0-31a2-59355a970921','dp_bkrv_assigned_user','Users','users','id','dp_bkrv','dp_bkrv','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5660ad98-8d41-fd45-0034-59355ad815cc','securitygroups_dp_bkrv','SecurityGroups','securitygroups','id','dp_bkrv','dp_bkrv','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','dp_bkrv',0,0),('5715e42a-6643-53e9-9857-59355a574f7a','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('57e7ce7c-f7dc-76a6-a5a6-59355a7d862a','dp_founder_ul_modified_user','Users','users','id','dp_founder_ul','dp_founder_ul','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('57f4aef7-9d82-7280-962e-59355a731ac6','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('596e686a-8f07-39c4-0d77-59355a19fd47','dp_founder_ul_created_by','Users','users','id','dp_founder_ul','dp_founder_ul','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a4ea27d-f3f7-d97b-717c-59355a09a47b','dp_founder_ul_assigned_user','Users','users','id','dp_founder_ul','dp_founder_ul','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b108abf-dd1a-216b-4a60-59355a7b1125','securitygroups_dp_founder_ul','SecurityGroups','securitygroups','id','dp_founder_ul','dp_founder_ul','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','dp_founder_ul',0,0),('5bcf25ec-f83f-fdcd-5c9b-59355a8edf39','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c530135-39f0-7a64-0f8e-59355ab53b81','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('5cb49dd4-7972-0626-b05f-59355a8f2291','dp_founder_fl_modified_user','Users','users','id','dp_founder_fl','dp_founder_fl','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d050f96-7e4d-64f4-fa0f-59355a465924','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('5d08f400-7e80-9af6-24ca-59355ad6a1bc','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d7df992-d9e0-bd85-e654-59355a196aca','dp_founder_fl_created_by','Users','users','id','dp_founder_fl','dp_founder_fl','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5dbec992-ce44-e581-3f45-59355ae54e5e','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e1b994b-a86a-162f-db57-59355a187fa8','dp_founder_fl_assigned_user','Users','users','id','dp_founder_fl','dp_founder_fl','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e69759f-51bd-5b79-c4c8-59355a72aa89','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('5ec8d830-e70b-cea1-5b71-59355a9c7543','securitygroups_dp_founder_fl','SecurityGroups','securitygroups','id','dp_founder_fl','dp_founder_fl','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','dp_founder_fl',0,0),('5f124e5a-1498-a2bc-d1d3-59355a3b1256','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60491804-fd96-3044-327c-59355aafcbc9','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60a88b20-e6ef-4007-0922-59355a2ac197','dp_realty_modified_user','Users','users','id','dp_realty','dp_realty','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6169d1b0-c449-d97b-5674-59355ac323a1','dp_realty_created_by','Users','users','id','dp_realty','dp_realty','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6212d517-656a-4d70-f2cf-59355af8d8ec','dp_realty_assigned_user','Users','users','id','dp_realty','dp_realty','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62ba4135-0387-9c8e-b2bb-59355a5b4bc9','securitygroups_dp_realty','SecurityGroups','securitygroups','id','dp_realty','dp_realty','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','dp_realty',0,0),('64344031-c937-7828-164c-59355a2a6abd','dp_license_modified_user','Users','users','id','dp_license','dp_license','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64ca5089-8e9d-0ad7-1786-59355afbc3a6','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('64fdde09-937e-5aef-684e-59355aecd406','dp_license_created_by','Users','users','id','dp_license','dp_license','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65a80075-776c-8d09-5468-59355a600c3a','dp_license_assigned_user','Users','users','id','dp_license','dp_license','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6668fba9-923d-a4bc-63cf-59355a2e9b6e','securitygroups_dp_license','SecurityGroups','securitygroups','id','dp_license','dp_license','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','dp_license',0,0),('66cdbdc4-c96d-e645-4bad-59355a14a3e9','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('673504fe-d295-ae25-5b5e-59355ac61047','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('683d8572-1b6c-da01-ea4e-59355a43ee36','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6aa88536-1fa0-7300-4365-59355ac57a9a','spots_modified_user','Users','users','id','Spots','spots','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b9015d3-233d-3f5d-697d-59355ae4d28c','spots_created_by','Users','users','id','Spots','spots','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c3ee4db-cd3b-dbd4-e51c-59355a0180a1','spots_assigned_user','Users','users','id','Spots','spots','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ceeae70-d339-eb4d-e5e1-59355a8163a3','securitygroups_spots','SecurityGroups','securitygroups','id','Spots','spots','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Spots',0,0),('6e4185d6-2276-0514-4306-59355a3f36b0','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f363f8e-e778-4f24-eca2-59355aab10f7','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70d0d52b-c610-c4b9-daae-59355a6ef8dd','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('711e0f0a-8e5d-d39b-3b84-59355a142e67','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('71a83641-c378-90a8-7f07-59355a0d991f','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('723ef933-f3da-bc22-6625-59355a46c705','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75af6186-c615-d60b-aeea-59355aba871a','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75ddf1a1-7223-30f2-dfde-59355a69bd40','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('75f30cbd-e468-802e-fa77-59355a9cd842','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('768dd81d-8fdd-e505-8b8b-59355a6cfac3','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76decf2e-6368-28b2-8853-59355a269029','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('7732ff9f-e957-e882-fd48-59355aac5bfc','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('779032e2-29ed-c18b-67b2-59355a6c3b18','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('783d836c-e3d0-cbaa-6405-59355a8f7724','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('789c1039-0dd1-7d22-5fd7-59355addf0ae','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78de9b63-fb12-539d-314a-59355a666464','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('79941a54-7153-a758-dd53-59355a1ba8ee','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('7a099e22-9d73-3d47-434f-59355a5f7da8','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a5097e6-cd03-5f02-4232-59355a2e8ff8','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('7b0a64ca-6367-03d9-4002-59355a9e85ec','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b122d70-34f8-0eb6-0f76-59355ad2b71f','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('7b380d52-9ff9-550e-f5e4-59355a0e2fef','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7bb86459-56f9-6adc-91bb-59355ad0d6ce','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('7c59c1d2-2ccd-b89c-ad42-59355ac2b5e3','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('7c65ccda-fdd3-6870-c999-59355a5a5ac4','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d09be61-d22e-9d52-bb03-59355a70e24c','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('7d938977-fbcc-2e7d-fb3d-59355a78e9a5','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7dd20f60-c17f-50f8-3180-59355a04b4a8','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('7e99be28-f48d-5f2b-54ad-59355a708272','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('7f4a59aa-5034-6c68-a753-59355acb64ae','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('7f773725-baa1-d8c2-f394-59355a6c9bfa','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7fff7913-8e0f-bd43-a077-59355a8a37e2','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('8120553f-8f2a-a0c5-3057-59355ab544d0','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('81a1816c-a361-eb2b-27f4-59355a69f58b','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81fe6e12-c0a3-defc-a1d6-59355ae3f4ae','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('8287456d-fdb5-926a-2753-59355a3d7ef6','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82e20c3a-8984-7c71-fd2d-59355af01613','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('842f6156-8c54-d24b-06ff-59355aca4a36','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84df2171-7ad2-8bfb-36a3-59355af77e28','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('8591398c-8ab6-53d4-c5fa-59355a3c1bf0','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85af73de-e469-9409-3f5a-59355aac488f','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('85f607bc-3775-332d-0c2e-59355a3777ef','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8662acbc-d591-d989-4198-59355a0ca70b','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('8666f9f6-63a7-1d16-a888-59355a4522d1','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('870ed260-2393-8b65-8b4b-59355a7041d9','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('87c636e4-0b27-f6a1-05c4-59355acc236e','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('8878fff3-ba81-f866-9134-59355a85c81e','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('88fa5ab0-a05a-f3d2-ad0b-59355a4b8187','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('891a79ae-05dd-7fac-7df6-59355a139b61','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('89c8de37-e114-88fa-5537-59355ad8ef1e','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('8a704ad5-9672-e2da-e75c-59355a658c2e','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a8429f7-f191-d421-84d3-59355a11655b','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('8b13cf00-b43f-b34e-e659-59355ae53797','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('8b2aafd1-d2a0-439b-688f-59355a08db65','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8bab0f65-4b5f-634a-a974-59355ad52098','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('8c4bf7cf-79aa-6542-f888-59355a08c008','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('8c816d6d-666e-a38e-cca4-59355a7a68fd','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8cf09836-e952-bc72-8fa4-59355a05e8cc','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('8d6924f0-29b6-fa97-fcbe-59355ae702bd','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d964b2a-7bb8-bbad-ff1d-59355a23d291','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('8e290933-2e52-5b5b-e0da-59355a3446b1','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e3d777d-59f2-3171-a83c-59355abe18af','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('8ed4e19e-b6db-2e31-d0bd-59355ab78b45','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('8f8b0922-a7cf-54be-e0ed-59355a43ebbd','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('8f8f0fe2-0918-63ac-7e7a-59355a601ef5','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f9fbdb3-8818-908d-9314-59355af22132','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8fad65f6-7f27-b7dd-83bc-59355aee368b','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90426b2e-075e-7165-3b1a-59355a285379','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('90791c4c-46b4-b475-a84e-59355a6ffb78','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90ebe103-0026-94ae-5c1a-59355a6159f6','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('9118582e-1d5a-f796-0a05-59355afd3c94','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('911b4cf1-7ddb-f337-6a49-59355a3c9bac','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('91a9c181-cd95-c294-6ee9-59355ae0aa4d','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('91bcacac-5a0b-18cb-09dd-59355a435551','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('91d3dd56-afb8-34fb-7857-59355a96f9bc','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('929243a3-b39a-4dc5-a28c-59355ae3b6a0','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('92e8e971-bd47-bd78-cc30-59355ace176b','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('935104b5-9c96-a0e7-53bf-59355a6b0ec9','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('93666e7d-73d5-b443-dd1d-59355a2bf64e','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('938ce8e9-38fb-5dee-2703-59355ae56b5c','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('94070264-43a8-cbb0-b7a9-59355a07e052','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('941f11eb-e30e-5d02-cd1e-59355a88251b','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('9424b049-8869-1bdb-4a1a-59355a3aa20e','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94a57cb4-b9dd-a292-7188-59355ae749c8','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('94d21aeb-a8e1-a766-e3eb-59355a2bab88','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94d2ac88-af8a-0b4b-d5ea-59355a886ed9','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('956127da-1f89-db78-8efa-59355af555f9','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('9599970a-2cdb-5d91-5c7c-59355a3c47ef','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('95f33246-6ea0-54ac-ad02-59355a4b4757','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('9624031d-fe27-d721-a838-59355a5c1a6c','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96509026-a756-24a5-506b-59355affdcaa','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('96822d05-19bb-7582-c40e-59355a7744bd','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('96f85718-a418-664c-652b-59355a748d58','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97320658-7bb9-ebd1-cc26-59355aaddea3','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('975ee395-71f3-572b-c8c1-59355a23ab80','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('97a00c5c-6d75-51ac-f088-59355ae4175a','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97eb5cd5-858f-fc10-d7ac-59355aa3a7d0','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('98264185-361e-2fcd-3e03-59355adbd382','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('98b4ecd6-a210-7012-4ae5-59355a01289b','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('99048d83-9621-040c-4a0d-59355a0d0e21','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('993fd914-a49c-a5da-d0b0-59355a8d7862','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99561136-1807-d1b6-194e-59355afb19c4','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('99c66665-0dd9-0460-0f73-59355a4e2554','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('99f2faea-3102-d8dc-6f73-59355abd71ff','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('9a1761f8-9d2c-ab48-4fed-59355ae89853','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a91b99a-dc98-07ca-e968-59355ae1e18f','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('9abbb887-c049-0195-6f72-59355a5f56b0','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9b443d31-4378-cfb4-c8f5-59355a94f413','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('9b503dc9-3a7a-eff3-b791-59355a13bc23','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('9ba510ec-0493-e664-6421-59355abd0120','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9c003104-d754-a8ad-1d26-59355a2ed52b','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('9c81ec22-5d0d-41cb-ebc7-59355a59cd95','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9caafed4-5858-6b54-c5a7-59355a71313b','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('9cbef464-1f96-6314-2722-59355a45c2a1','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d35c9a2-6a9b-2fad-c2ae-59355af0ae1d','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d57c889-091b-32ce-95af-59355a58f08d','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('9d8fa024-95cb-6f30-b89c-59355a05847e','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9dd7186f-2838-c842-b44f-59355ac5d30d','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('9dff0fb7-001d-e991-a587-59355acafdc7','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e06797f-3ec7-903a-cfab-59355ad24077','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('9e40485d-9e41-ea5b-2026-59355a2a2560','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9eb091de-f85f-7d14-3b32-59355a72f7a6','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('9ee35fc6-0c1a-b0a8-446e-59355a88db89','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('9f3de196-e74f-50ea-d8e8-59355a82d484','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('9f4b5027-4078-a14b-00d8-59355a0c5669','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('9f8f575b-f0b1-e2f3-7530-59355a78ab91','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('9fe4ef2b-539e-b7ac-fb90-59355af357ff','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('9ffa0ba6-7e8d-3adb-8471-59355ab41ed7','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a04fbf61-87bc-9804-d7a3-59355a27d601','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('a081fe77-4741-4f6d-3d2e-59355ac17708','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('a094137a-fdf9-182c-a691-59355a5b3715','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a11005d5-8a47-69cc-ad2f-59355a82fee1','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('a14f1d46-9523-679d-d337-59355aa2ef1f','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a1a96c8f-4922-f48f-89a9-59355ababb4f','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('a1c7b2bc-8f0a-6be4-e267-59355a2f90e3','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1fa0402-a6cc-b648-b6b4-59355aca5748','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a2446ac8-4efb-0e2a-ad9a-59355a2b7ac2','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('a2ada329-0920-d4c6-47b7-59355a4069e2','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a37700a2-fa1b-a7cd-eeca-59355a075177','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('a390da60-b172-7e23-dad1-59355a715d41','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a423b434-dd37-1ef7-105b-59355ac71d90','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('a4660bd5-4bef-3314-6d68-59355af21931','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4724c18-5940-1e1d-6322-59355a5934e8','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4e5dcfa-0edd-3b9f-9699-59355a0e5c1a','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('a58990bb-8469-10c1-812e-59355ae95186','dp_founder_ul_accounts_1','dp_founder_ul','dp_founder_ul','id','Accounts','accounts','id','dp_founder_ul_accounts_1_c','dp_founder_ul_accounts_1dp_founder_ul_ida','dp_founder_ul_accounts_1accounts_idb','many-to-many',NULL,NULL,0,0),('a61b3b6b-8279-1a40-2c29-59355afc44b6','dp_realty_accounts','Accounts','accounts','id','dp_realty','dp_realty','id','dp_realty_accounts_c','dp_realty_accountsaccounts_ida','dp_realty_accountsdp_realty_idb','many-to-many',NULL,NULL,0,0),('a638e95f-61b7-df91-3cc7-59355af57e82','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6bfb7b9-2ca0-dbf5-8658-59355abbf637','accounts_contacts_1','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts_1_c','accounts_contacts_1accounts_ida','accounts_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('a6ed1e35-b384-6103-6006-59355afbb177','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a74fbbec-becd-3ec4-be24-59355aab863c','dp_bkrv_accounts','Accounts','accounts','id','dp_bkrv','dp_bkrv','id','dp_bkrv_accounts_c','dp_bkrv_accountsaccounts_ida','dp_bkrv_accountsdp_bkrv_idb','many-to-many',NULL,NULL,0,0),('a7f30034-6ccd-b673-bc4e-59355a3296bd','accounts_contacts_2','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts_2_c','accounts_contacts_2accounts_ida','accounts_contacts_2contacts_idb','many-to-many',NULL,NULL,0,0),('a7fb0467-4918-0313-ebb1-59355a1fa461','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a839fa9a-0ae2-90bb-6ed9-59355a6a97c5','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a83d047c-23e3-82a0-1dc8-59355a43ccda','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('a8b725b9-01ac-6b02-9b4f-59355afa4142','dp_founder_fl_contacts_1','dp_founder_fl','dp_founder_fl','id','Contacts','contacts','id','dp_founder_fl_contacts_1_c','dp_founder_fl_contacts_1dp_founder_fl_ida','dp_founder_fl_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('a8c9895b-8fc0-9c89-d8bc-59355a737bad','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('a8fb4528-e1a2-f992-4343-59355ac798f7','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa259fe1-b5c5-8ca8-733d-59355ac315fc','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('aa7256e8-6e66-cec2-30f6-59355ada233b','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aafddda2-50d8-3b13-1efd-59355a2403f7','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('abb6675a-0da4-cd27-13f1-59355a9f2758','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('ac7b0046-5dfc-233f-ce4d-59355a9c231b','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac7c057f-10d0-69aa-9bc0-59355aa6d3be','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('ad3a77a0-1d3f-7416-6f22-59355adb1a9d','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('ade96c12-cc00-2fa3-d1fc-59355ad44381','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae9048d3-e41e-dcac-ac76-59355a4a508c','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aec0809d-ebd1-a7d3-c533-59355ad67e0a','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('afa74679-9260-9a40-f8d5-59355af20df2','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('afaa886e-edff-f9e6-3c34-59355adbc457','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b057c4e5-e6ca-b78d-d200-59355a9b05c6','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('b06ba37f-a11a-814d-56ab-59355ac85e60','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1042ae9-6bf1-9130-465a-59355aa62990','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('b2098421-b9b2-6332-67f4-59355a6d4c54','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b22ae43d-e7ec-8d15-9a8b-59355a582f9f','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b22d0073-e71e-eced-213f-59355aa726a9','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('b2f63aa9-343f-59d9-9b87-59355af8b5ab','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b31cecde-016e-0f75-9f16-59355a0e0586','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3a81619-4a31-eb87-7746-59355a442bbc','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3d23e97-a89b-0356-31b4-59355a5747d3','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b46c1c56-e6ce-0e11-cc92-59355a15dd57','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b47541e8-e0b8-8372-312c-59355a11a250','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b52cbd36-523d-1ca0-a89c-59355a544500','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('b58bc025-d566-9078-cf1a-59355ae54c51','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b749e65a-40ee-68aa-ca81-59355a15f4c6','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('b78e8315-58ba-6c17-f607-59355a07a564','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b82def47-6447-c76e-89d1-59355a3f3ccc','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b85e0cc8-d38e-55ee-9ec8-59355a48e497','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b91ae194-21cc-1fa5-ea71-59355a573818','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b9403687-cf74-747c-cc18-59355a7aa5d5','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9c34e60-0dbd-74e1-141a-59355a6dc4ae','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b9ece14f-d86b-bbbd-eaae-59355a1a09a7','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('ba79617e-c0de-5f08-31ce-59355ab2c3ed','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('ba8ad03a-afcb-70b9-2358-59355ae3f2c0','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb160962-461d-5dfa-8c68-59355a3bf7d7','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('bb326322-dfad-5e59-25dc-59355aacbf20','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bbc49a16-3304-d8b2-9bfe-59355a054571','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc12ba39-3426-60a2-0662-59355ad2b5d0','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc7918e1-fcc5-7da1-8355-59355a203592','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd35c0a2-d7ea-f2a7-8f9d-59355a0b0f58','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd80fb80-d66d-8d33-9fcb-59355a50103b','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bdbf029c-af0c-494a-9129-59355a25f966','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('bddaceec-d241-f46f-82f1-59355af0c695','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be94d793-0db6-198b-62ef-59355ae3b239','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bec60912-923a-7c30-81ad-59355a0cbda3','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bfa2e6b6-0b95-3600-75a1-59355adf4aeb','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('c0260f84-3b17-2285-7fd1-59355aa72069','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0aff7f1-55ff-2c0b-3934-59355af6bf61','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('c10a420e-1a49-7a32-3671-59355ad1ef6d','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c18bb794-6d05-2eb0-5145-59355a5436bc','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('c1c30437-916c-65ae-9b80-59355a500993','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3751cdd-6897-3596-4200-59355a61f89e','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('c4581794-0e26-c99c-5d3e-59355a4376e6','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('c50bd9e7-dcf3-6829-db53-59355aa8baed','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('c5c41215-6c5b-2fbe-927d-59355aa62682','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c649b2c3-62c9-fddc-d111-59355afc6bc5','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6a046ca-db2c-5dd5-6a5b-59355ac0d507','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c71206bc-d375-2f4b-90f9-59355a8c4d7d','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7ba1967-84a0-da98-5652-59355adc79ed','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c854b583-21e7-36b9-3317-59355a0a2e03','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c92db393-1d6f-0477-3e76-59355a861177','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c9ba3ccc-a3b9-77de-5811-59355a29a6af','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('caae6c06-8d52-677b-43e6-59355a94c192','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb651dde-6cb9-fb68-2d93-59355a529416','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cbadc6a9-fee2-f4f9-0be8-59355a95a5ec','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc09ba0a-3741-08fc-724c-59355ac71587','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('cc9946af-46f8-e7c0-677e-59355a11a665','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ccb550ce-b596-9fd3-9e7a-59355acecde4','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cceb0a58-f050-b2b1-8a66-59355a6c9e1a','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd406923-ae1e-5441-e48c-59355ac9fb13','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd6a29d0-4d3a-d174-e757-59355a404937','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cdecc465-7945-d2ba-3584-59355aa3db23','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('ce28a5d4-0215-eccd-3589-59355aded9a0','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce7b0cf2-8311-97ac-4a68-59355aa8dc8b','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ceac5433-c1f3-3426-289d-59355a6db2d5','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('cf1f9132-6879-f714-9b82-59355a3c9d05','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cf6aa770-c8ef-6fd8-ec10-59355a68fed5','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('d050346c-692c-4282-e142-59355a70a67e','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('d0f97ed8-6bb1-4cdb-5835-59355ad403fa','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('d19a53d2-d54e-0b33-ac75-59355a76dbd8','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d1cf1643-aef4-5df6-7cf3-59355a380a02','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d23b266f-2306-98cd-f370-59355a383a1a','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3b38007-e9ce-d71b-d966-59355a006887','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d437338b-4ec6-d4a1-a3a7-59355a01f45e','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d49275f7-21eb-a0ae-8331-59355a261574','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d558ce21-8c97-2f19-a7a1-59355abfeb67','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d568286f-f800-a16a-01bf-59355ad75226','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6207981-1abc-5228-0ee1-59355a3ccf9b','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6452a6d-02fd-9fb9-5ace-59355a1c17ca','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6e38954-e0f6-57ff-847d-59355aaf683c','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('d70de424-47ab-015f-7c54-59355a65c569','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d79b425c-40fc-3637-49d0-59355a2d0d30','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d852b74d-62c6-4c2e-07b4-59355aa0f7e5','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d884ff65-b001-7cab-ebde-59355a0fb792','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d95b13b8-f5f3-1bcf-3ff3-59355a39d937','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('d9eddd8a-480c-41e9-b3fb-59355a8f67ed','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dabf7b29-eb84-778a-8da7-59355ac839e7','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db4a0e05-0192-ce28-83e5-59355a2f0686','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db721462-d681-ebad-fa0a-59355a09ab47','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dbf2daa4-5de7-c137-484c-59355a853f3a','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dcd04dee-f2bf-fd33-d8e0-59355a010863','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd1a1d0f-1fd7-ee6c-17a5-59355ac21d6d','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('ddad6058-0174-d818-d187-59355ab65b81','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de6a288a-ffc3-3137-4544-59355a1b7c34','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('decdf9ee-233e-72b4-2fc3-59355ace5d70','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df274cb0-29d6-b1e4-7f84-59355abb3c62','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('dfc2fdba-1aad-1cb7-12ce-59355a9b7b7f','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('e0a9d086-e6f6-0f77-255e-59355a05f0bf','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('e10c3b4d-0fa3-4174-ef29-59355a56da48','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e16aaf56-b866-b998-a1c3-59355a4bba40','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('e216611c-23bb-f24c-83e5-59355adeb722','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('e36438f3-73b1-32f8-4c3b-59355a3df56e','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('e45f8b26-7d3b-778d-685c-59355a9a5c67','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('e499f65b-a9cf-1738-d6d6-59355a17025b','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e692d0a6-fcaa-a592-ed1a-59355a7d4b1b','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('e782efc8-f7cc-c62b-0910-59355a1ae516','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('e7fd84ad-32b0-3dfe-6d2f-59355ad3004f','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e87106b7-9d4a-c4b1-e0a6-59355a6af38f','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9286bd7-bbfd-8e2d-9c97-59355ac82c75','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eafaabec-9fe4-cba5-2453-59355a89e245','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('efa941ae-8cf3-0e34-8d5d-59355a3653e1','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f03798a8-3d86-556b-c20a-59355a5da546','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('f147c39f-f972-9e78-1cea-59355accd506','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f22d4455-7cbc-5a68-5f9e-59355a5dc808','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f2586157-e199-c7df-558c-59355ae117ac','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3ea6002-f2a4-914e-386a-59355a81f9d2','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3ebd9a6-a38b-a32d-a573-59355ac7392d','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f46a00f8-38cf-049f-13a2-59355a4fb78d','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('9ef2e732-8331-b0ce-2e5d-592564fb2f50',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 07:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('a120b680-1757-229f-bcef-592564348ef3',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 12:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('a2ef5d99-d760-be9e-24e0-5925649c8f60',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 16:15:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('a48fc895-c74d-ca4e-9b94-592564195048',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 11:30:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('a606571d-ba31-c37f-a269-59256486afdd',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 06:00:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('a77671b5-8be3-33be-ae32-5925640cbfa5',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 09:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('a94f32f9-38c3-87a5-658f-592564b763cc',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 08:00:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('ab26f650-02f9-743d-1709-5925642e7797',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Perform Lucene Index','function::aodIndexUnindexed','2015-01-01 18:15:01',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',0),('ace7bd31-a898-1077-f590-5925644d5619',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Optimise AOD Index','function::aodOptimiseIndex','2015-01-01 09:15:01',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',0),('ae7475bd-d44d-9cab-de89-5925646c927b',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 08:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('b033f8dd-c87b-0589-a0ff-5925649ee29b',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 13:30:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('b1b3df87-0c25-6d61-59ba-592564f86a90',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 14:00:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('b306a670-ffa8-f0b8-14f5-5925647b1c99',0,'2017-05-24 10:47:24','2017-05-24 10:47:24','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 11:30:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sro_svid_sro`
--

DROP TABLE IF EXISTS `sro_svid_sro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sro_svid_sro` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sro_svid_sro`
--

LOCK TABLES `sro_svid_sro` WRITE;
/*!40000 ALTER TABLE `sro_svid_sro` DISABLE KEYS */;
/*!40000 ALTER TABLE `sro_svid_sro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sro_svid_sro_audit`
--

DROP TABLE IF EXISTS `sro_svid_sro_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sro_svid_sro_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_sro_svid_sro_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sro_svid_sro_audit`
--

LOCK TABLES `sro_svid_sro_audit` WRITE;
/*!40000 ALTER TABLE `sro_svid_sro_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sro_svid_sro_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sro_svid_sro_cstm`
--

DROP TABLE IF EXISTS `sro_svid_sro_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sro_svid_sro_cstm` (
  `id_c` char(36) NOT NULL,
  `num_sro_c` varchar(80) DEFAULT NULL,
  `date_sro_c` date DEFAULT NULL,
  `bywhom_sro_c` varchar(150) DEFAULT NULL,
  `srok_work_sro_c` date DEFAULT NULL,
  `account_id_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sro_svid_sro_cstm`
--

LOCK TABLES `sro_svid_sro_cstm` WRITE;
/*!40000 ALTER TABLE `sro_svid_sro_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sro_svid_sro_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('16770d6c-edd2-8f36-220b-593547f781cc','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:ff2a029c-ce86-9654-d396-593547877e19:№0168200002417002508] {SugarFeed.WITH} [Accounts:c7968581-12be-16e7-489c-5935453d602a:Общество с ограниченной ответственностью «ГРУЗАВТОСЕРВИС»] {','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','SugarFeed.FOR} ₽331,519.05',0,'1','Opportunities','ff2a029c-ce86-9654-d396-593547877e19',NULL,NULL),('20850c0c-5fce-5d34-434c-593787569db3','<b>{this.CREATED_BY}</b> test','2017-06-07 04:57:35','2017-06-07 04:57:52','1','1',NULL,1,'1','UserFeed','1',NULL,NULL),('2ec55180-4d6a-f61d-330c-5935479db3b2','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:2b287e3d-3be6-8e31-d953-59354729b777:№0142200001316016298] {SugarFeed.WITH} [Accounts:1930dd0d-800f-3ab9-7d8d-593547155ea5:ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ФАРМ СКД\", 443052,','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',' САМАРСКАЯ, САМАРА, КИРОВА, 85, ГЕНЕРАЛЬНЫЙ ДИРЕКТОР] {SugarFeed.FOR} ₽497,650.00',0,'1','Opportunities','2b287e3d-3be6-8e31-d953-59354729b777',NULL,NULL),('3066d8c6-d79c-aab4-badf-5935474662ec','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:2cdedc53-6e01-8f7d-50e9-593547b58435:№0142200001316016291] {SugarFeed.WITH} [Accounts:1a8fb3c6-0308-4354-be99-593547f7aca9:Закрытое акционерное общество \"ФК \"Интерлек\", 443035, г. Сам','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ара, ул. Минская, 38, Гербер В И] {SugarFeed.FOR} ₽62,310.23',0,'1','Opportunities','2cdedc53-6e01-8f7d-50e9-593547b58435',NULL,NULL),('57ed5eab-27a9-7aeb-04a0-593547c5941f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:54d09f37-35dc-9643-fdcc-593547a3d571:№0142200001316016056] {SugarFeed.WITH} [Accounts:4331585d-2db4-3a97-77bd-593547cac985:ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российск','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ая Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викторовна] {SugarFeed.FOR} ₽94,550.60',0,'1','Opportunities','54d09f37-35dc-9643-fdcc-593547a3d571',NULL,NULL),('5a5b9242-9be9-26c2-f2f5-59354701cffb','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:577e5d4f-8881-9680-341e-59354747ca61:№0142200001316016328] {SugarFeed.WITH} [Accounts:442b7588-f40c-726a-8abe-593547d764ec:ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ЭКСПО-МЕД\", 443052','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1',', САМАРСКАЯ, САМАРА, КИРОВА, 3, 24, ДИРЕКТОР] {SugarFeed.FOR} ₽86,807.23',0,'1','Opportunities','577e5d4f-8881-9680-341e-59354747ca61',NULL,NULL),('830f09b0-d5e0-1dd1-52d4-5935470f57bc','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:4fab04db-a548-fdfa-8305-593547fc0392:№0301200059616000756] {SugarFeed.WITH} [Accounts:e5100e85-3b31-c1fc-a02e-593547965428:ООО «ОКТАНТ», Страна: Российская Федерация; ОКАТО: 364013850','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','00; Почтовый индекс: 443066; Субъект РФ: Самарская; Город: Самара; Улица: Безымянный 2-й; Дом: 1; Офис: 321;, Халитов Фердинанд Фирдинасович] {SugarFeed.FOR} ₽8,526.67',0,'1','Opportunities','4fab04db-a548-fdfa-8305-593547fc0392',NULL,NULL),('83f275c3-6a56-42da-53e2-593547ee8ec9','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:80bc4bcc-b15a-62a2-5261-5935473f9790:№0142200001316016046] {SugarFeed.WITH} [Accounts:69650579-99c1-bada-a2b8-593547e11746:ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российск','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ая Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викторовна] {SugarFeed.FOR} ₽94,550.60',0,'1','Opportunities','80bc4bcc-b15a-62a2-5261-5935473f9790',NULL,NULL),('867d9c42-f9a9-d188-c7f1-5935473fe804','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:82ee339f-88a3-354f-ec4a-593547dd9133:№0142200001316016027] {SugarFeed.WITH} [Accounts:6e6ac4d4-d2f9-6c1f-4111-593547b0da64:Общество с ограниченной ответственностью \"Ларго\", 443117, Ро','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ссийская Федерация, 63 Самарская область, Самара, Крейсерная ул, 1, Устинов Сергей Николаевич] {SugarFeed.FOR} ₽97,887.50',0,'1','Opportunities','82ee339f-88a3-354f-ec4a-593547dd9133',NULL,NULL),('8b0e0078-b0f7-9ca9-fcfa-5935476f298b','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:58180d3a-79e4-1c00-963f-5935474a85c0:№0142200001316016337] {SugarFeed.WITH} [Accounts:e8e0427c-c6c4-df40-1b85-5935471728fa:ООО  «БИОФАРМ-Самара», 443090, Российская Федерация, Самарск','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ая область, Самара г, Советской Армии ул, дом 146, Луциус Марина Васильевна] {SugarFeed.FOR} ₽69,503.39',0,'1','Opportunities','58180d3a-79e4-1c00-963f-5935474a85c0',NULL,NULL),('8f0c4b92-81c9-37bb-0a81-593547a680c4','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:8be94ebf-f5c8-f60f-2016-593547f47966:№0173100007916000083] {SugarFeed.WITH} [Accounts:7ae8ac10-f62a-f923-8921-593547c8479e:ООО «ОКТАНТ», Страна: Российская Федерация; ОКАТО: 364013850','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','00; Почтовый индекс: 443066; Субъект РФ: Самарская; Город: Самара; Улица: Безымянный 2-й; Дом: 1; Офис: 321;, Халитов Фердинанд Фирдинасович] {SugarFeed.FOR} ₽9,059,040.00',0,'1','Opportunities','8be94ebf-f5c8-f60f-2016-593547f47966',NULL,NULL),('a2044fac-31d7-0bb7-013c-592bd2d1a783','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:9f4c2908-47c8-e20c-5f36-592bd28fd104:Игорь Трофимычев]','2017-05-29 07:49:28','2017-05-29 07:49:28','1','1',NULL,0,'1','Contacts','9f4c2908-47c8-e20c-5f36-592bd28fd104',NULL,NULL),('a96a1a7d-b9ea-9286-850e-593547f35485','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:a6a8acd0-c5b7-ec07-4bbf-593547ded106:№0142200001316016041] {SugarFeed.WITH} [Accounts:94b5ffac-96cb-3063-8745-59354761163b:ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российск','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ая Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викторовна] {SugarFeed.FOR} ₽94,550.60',0,'1','Opportunities','a6a8acd0-c5b7-ec07-4bbf-593547ded106',NULL,NULL),('b4f85e17-59ee-2d17-5fd7-593547154ffd','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:b195ff78-fceb-9b70-a6ee-593547d1e1fd:№0142200001316016032] {SugarFeed.WITH} [Accounts:9f6f49a9-b7ba-5cb7-b82c-5935475495ac:ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российск','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ая Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викторовна] {SugarFeed.FOR} ₽81,197.40',0,'1','Opportunities','b195ff78-fceb-9b70-a6ee-593547d1e1fd',NULL,NULL),('d1ec49b6-1920-8c59-8aa6-59354733d245','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:cee2789e-5dbc-b167-717b-593547b4b330:№0142200001316016040] {SugarFeed.WITH} [Accounts:bb4bf44c-adba-db8d-e489-59354734ae8a:ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российск','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','ая Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викторовна] {SugarFeed.FOR} ₽96,314.60',0,'1','Opportunities','cee2789e-5dbc-b167-717b-593547b4b330',NULL,NULL),('d2d0dc84-47e6-7269-dc9e-592be3c50488','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c8548377-e295-926c-28ff-592be34c26d7:Юрий Марянин]','2017-05-29 09:00:55','2017-05-29 09:00:55','1','1',NULL,0,'1','Contacts','c8548377-e295-926c-28ff-592be34c26d7',NULL,NULL),('d9b7c5de-5018-911e-d4fa-5935472a6f01','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:d6cf35ac-2236-ada8-0e69-5935476a6923:№0142200001316015389] {SugarFeed.WITH} [Accounts:c6d1e835-feb4-0f3e-fbc8-5935472d7d68:ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"ДНЛ\"] {SugarFeed.F','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','OR} ₽231,576.07',0,'1','Opportunities','d6cf35ac-2236-ada8-0e69-5935476a6923',NULL,NULL),('ea1f8b4f-e447-6a10-3c02-593545e77619','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:de303aa4-129c-7622-eddd-5935456645d1:№0168200002417002508] {SugarFeed.WITH} [Accounts:c7968581-12be-16e7-489c-5935453d602a:Общество с ограниченной ответственностью «ГРУЗАВТОСЕРВИС»] {','2017-06-05 11:51:54','2017-06-05 11:51:54','1','1','SugarFeed.FOR} ₽331,519.05',0,'1','Opportunities','de303aa4-129c-7622-eddd-5935456645d1',NULL,NULL),('f03eaaee-9c6f-ec4c-876a-5935470e4212','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:ed12daf7-2072-4847-f6d3-59354706db44:№0342100007916000053] {SugarFeed.WITH} [Accounts:bd40369c-a8bf-a72e-db33-593547f2c543:ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ \"КМ\", 443068, САМАР','2017-06-05 11:57:35','2017-06-05 11:57:35','1','1','СКАЯ, САМАРА, НИКОЛАЯ ПАНОВА, ДОМ 17, КВАРТИРА 3, ДИРЕКТОР] {SugarFeed.FOR} ₽6,281.25',0,'1','Opportunities','ed12daf7-2072-4847-f6d3-59354706db44',NULL,NULL),('f17c0131-270e-7a85-15c6-5927e51a6912','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e41e39af-5bdc-0b83-c659-5927e5a9adf7:Семён Антонов]','2017-05-26 08:23:20','2017-05-26 08:23:20','1','1',NULL,0,'1','Contacts','e41e39af-5bdc-0b83-c659-5927e5a9adf7',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (26,'d9cce47e-7f9e-88d1-db5d-59272c0293fe','1','dp_bkrv','cc7ac549-b341-f38a-0bdc-5926d3163ea2','Российский капитал','2017-05-25 19:13:28','detailview','2sf5r7pv4flgeorgcs8dih1h17',1,0),(47,'8864fff3-b56a-722b-c7be-5927340cd92e','1','dp_realty','55092ca4-45ce-f10f-c85d-59272dbd7b35','443068, г. Самара, ул. Ново-Садовая, д. 106, оф. 613','2017-05-25 19:45:02','editview','2sf5r7pv4flgeorgcs8dih1h17',1,0),(236,'aa6cc7d7-afe1-2200-2fa3-592c145e045d','1','AOS_PDF_Templates','72f147d5-888a-1986-5d4f-592c0436e1a4','2136 АНКЕТА ПРИНЦИПАЛА без открытия счета (с 15.09.15)','2017-05-29 12:29:05','editview','b75dak95gtn230f0j101s9dni0',1,0),(251,'a7ccbc94-3ea7-b748-15eb-592ec2f10922','1','Employees','a5d87b7b-fe12-c0b4-169a-592ec2309e60','Семён Антонов','2017-05-31 13:17:09','save','1neru5v10p9valgfpgsnem9ls4',0,0),(285,'9ab7893a-8814-0388-6411-592ec915d5c3','7d90052f-7d85-3f5d-d344-592ec538b7f3','Users','7d90052f-7d85-3f5d-d344-592ec538b7f3','Гузель Бильданова','2017-05-31 13:48:39','editview','1vjsuiftv4i3q32i6f9f8drl87',1,0),(299,'4e86ed83-df93-abd7-f2ca-592ecb697fb8','1','Users','a5d87b7b-fe12-c0b4-169a-592ec2309e60','Семён Антонов','2017-05-31 13:57:18','editview','1neru5v10p9valgfpgsnem9ls4',0,0),(334,'c40aa2f3-1aca-05f6-86b4-592ecea15448','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','Accounts','f1c17d43-b29f-16ef-5774-5927e6b4501a','Общество с ограниченной ответственностью «Эффективные технологии»','2017-05-31 14:10:56','detailview','aro12ntm817v1aftkcfcg5cok7',1,0),(347,'cfeaed1c-b739-815c-4eec-592ed4853b4b','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','Accounts','2a8faeef-e265-daa3-6127-592bdec3ef7b','Общество с ограниченной ответственностью «Аста»','2017-05-31 14:35:12','editview','4p6m3b06818pvsm9n88m2o2c01',1,0),(352,'dcd352e5-f7a3-336a-99b3-592ed588557a','1','dp_founder_fl','aa75ec99-cd50-76a4-2f02-592ba18917bd','632107606114','2017-05-31 14:40:41','editview','jbijv5bnvdenbhr89sco0p2em3',1,0),(369,'b89cedbb-9b46-9bf0-57ae-592fa8f31ec6','1','Users','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','Юрий Марянин','2017-06-01 05:39:02','editview','mv06mheharv62pjdebcvtu5n83',1,0),(413,'8b4b8b7c-095d-d5f6-4e72-592fe4f4fa86','1','dp_realty','434d0498-94b2-4741-fe5d-592fe46d1967','ул. Ташкентская, 171Г, офис 305','2017-06-01 09:56:14','detailview','mv06mheharv62pjdebcvtu5n83',1,0),(417,'7e174ea9-e964-dacd-f7fa-592fe7da9d16','1','Accounts','b9f49b4f-21dc-4a20-5646-592571b11c40','Общество с ограниченной ответственностью «Солнечная долина»','2017-06-01 10:07:19','detailview','mv06mheharv62pjdebcvtu5n83',1,0),(439,'38b0cbaf-13e7-c954-1b64-592ff39903e7','1','OutboundEmailAccounts','3f24d894-100d-909a-9e1d-592564482917','web@finexpert.pro','2017-06-01 10:58:30','editview','mv06mheharv62pjdebcvtu5n83',1,0),(442,'44a011b7-1891-a858-149a-592ff3c19803','1','OutboundEmailAccounts','43741986-189e-3658-aed3-592ecc0ae2a7','web@finexpert.pro','2017-06-01 10:58:47','editview','mv06mheharv62pjdebcvtu5n83',0,0),(445,'a5fb8a9a-470d-bd5b-8358-592ff368ce1f','1','OutboundEmailAccounts','661e0cb5-da9b-ec0d-43ac-592ec3461184','info@finexpert.pro','2017-06-01 10:59:09','detailview','mv06mheharv62pjdebcvtu5n83',0,0),(446,'103ec771-debc-b0c2-0f67-592ff3a2e11c','1','Users','1','Administrator','2017-06-01 10:59:14','editview','mv06mheharv62pjdebcvtu5n83',1,0),(451,'2692c11c-fc61-08fd-6b8f-592ff37323cd','1','OutboundEmailAccounts','cab726ed-8ff7-890a-dcb5-592ec4a52822','system','2017-06-01 11:00:02','detailview','mv06mheharv62pjdebcvtu5n83',0,0),(454,'473d57d4-8c1a-343e-a48e-593005564eb1','1','Contacts','9f4c2908-47c8-e20c-5f36-592bd28fd104','Игорь Трофимычев','2017-06-01 12:14:06','editview','onrtllggi2vcocson33qvcrn74',1,0),(465,'7790fd62-987a-8058-d575-59300e9f04b9','1','OutboundEmailAccounts','8fd034b9-3149-f81f-9bf8-592ec0bc6ac4','info@finexpert.pro','2017-06-01 12:52:26','editview','onrtllggi2vcocson33qvcrn74',1,0),(466,'d212c0f7-133b-1193-3231-59300fc44435','1','InboundEmail','59d32a58-f857-49cb-e212-593006084395','yandex','2017-06-01 12:59:43','save','0s4gncfd2v99q09o7tmvvecru5',1,0),(470,'1ad67563-a6d6-a9d2-88b4-5930108e5054','1','OutboundEmailAccounts','8798aa1f-063a-fac7-eac3-593005af9b98','bg@finexpert.pro','2017-06-01 13:01:16','detailview','onrtllggi2vcocson33qvcrn74',1,0),(471,'4ab575c4-619b-9c72-46e5-5930109f7f6f','1','OutboundEmailAccounts','fae30952-8727-4b43-31e1-592ecb7d6985','bg@finexpert.pro','2017-06-01 13:01:22','detailview','onrtllggi2vcocson33qvcrn74',1,0),(472,'8f38ee2e-0ca1-eeb7-60f9-59301067cc6e','1','OutboundEmailAccounts','18c7b585-1764-ef4b-c11e-592ec563a573','help@finexpert.pro','2017-06-01 13:02:13','detailview','onrtllggi2vcocson33qvcrn74',1,0),(474,'10d930fc-b8c1-8cac-64f7-593010af39d1','1','OutboundEmailAccounts','11d5d4fd-51b1-58ce-89ad-5930102f7bbe','mail@finexpert.pro','2017-06-01 13:02:27','editview','onrtllggi2vcocson33qvcrn74',1,0),(475,'541170b6-5bed-c9cf-fb13-593031fa4933','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','InboundEmail','3d536431-a239-f708-0ad2-5930310b2199','Почта','2017-06-01 15:22:33','save','705ntdh4skk2tfr5410eudfte4',1,0),(478,'7cf38aa0-2305-5254-4e6b-593056ee4960','1','Contacts','c8548377-e295-926c-28ff-592be34c26d7','Юрий Марянин','2017-06-01 18:03:41','editview','hu1ki0jhbfgbhf85st0oh0l7d0',1,0),(494,'1740f7d2-1e22-8daa-108b-593064b37851','1','Employees','31f70edc-a407-1101-b579-592ecc3eb0ad','Семён Антонов','2017-06-01 19:00:31','save','hu1ki0jhbfgbhf85st0oh0l7d0',1,0),(498,'4e19efd0-781f-e376-5a37-593064003490','1','Employees','7d90052f-7d85-3f5d-d344-592ec538b7f3','Гузель Бильданова','2017-06-01 19:00:38','save','hu1ki0jhbfgbhf85st0oh0l7d0',1,0),(502,'c0006f01-1f58-cf31-45d5-5930643ce2e4','1','Employees','af3ca2f0-02ee-ca6a-6fc8-592ec21b4b75','Любовь Антонова','2017-06-01 19:00:48','save','hu1ki0jhbfgbhf85st0oh0l7d0',1,0),(515,'7ced000c-d7fd-25ad-4c31-59324636941b','1','Accounts','2a8faeef-e265-daa3-6127-592bdec3ef7b','Общество с ограниченной ответственностью «Аста»','2017-06-03 05:16:07','detailview','hu1ki0jhbfgbhf85st0oh0l7d0',1,0),(519,'1af48737-67b6-8e74-4680-593395589e8c','1','Contacts','e41e39af-5bdc-0b83-c659-5927e5a9adf7','Семён Антонов','2017-06-04 05:07:23','detailview','hu1ki0jhbfgbhf85st0oh0l7d0',1,0),(520,'ab7b0fd2-3ded-c79a-0e48-59339513f29b','1','Accounts','f1c17d43-b29f-16ef-5774-5927e6b4501a','Общество с ограниченной ответственностью «Эффективные технологии»','2017-06-04 05:08:10','editview','hu1ki0jhbfgbhf85st0oh0l7d0',1,0),(522,'cf4c0eae-858a-6b88-b5a7-593546348300','1','Opportunities','de303aa4-129c-7622-eddd-5935456645d1','№0168200002417002508','2017-06-05 11:52:32','editview','0dbiqleqapk59kdj1ujv0dheh1',0,0),(523,'ba22f7b1-7183-4ced-2e13-593547f4736a','1','Opportunities','82ee339f-88a3-354f-ec4a-593547dd9133','№0142200001316016027','2017-06-05 11:57:50','detailview','0dbiqleqapk59kdj1ujv0dheh1',1,0),(530,'a220836b-5421-bd91-d5f5-593559b3bcca','1','Opportunities','4fab04db-a548-fdfa-8305-593547fc0392','№0301200059616000756','2017-06-05 13:17:33','detailview','0dbiqleqapk59kdj1ujv0dheh1',1,0),(532,'d0033fff-8541-75f4-3d7e-59355a62feb0','1','Accounts','c7968581-12be-16e7-489c-5935453d602a','Общество с ограниченной ответственностью «ГРУЗАВТОСЕРВИС»','2017-06-05 13:20:00','editview','0dbiqleqapk59kdj1ujv0dheh1',1,0),(534,'8d64a738-4777-3c44-2864-59355b918fd5','1','Opportunities','2b287e3d-3be6-8e31-d953-59354729b777','№0142200001316016298','2017-06-05 13:23:05','editview','0dbiqleqapk59kdj1ujv0dheh1',1,0),(536,'8a9b0094-fcd6-4631-920a-593668c33dda','1','Accounts','4331585d-2db4-3a97-77bd-593547cac985','ОТКРЫТОЕ АКЦИОНЕРНОЕ ОБЩЕСТВО \"АПТЕКА 258\", 443070, Российская Федерация, Самарская область, г. Самара, ул. Аэродромная, д. 43, Кондрашова Лариса Викт','2017-06-06 08:29:57','detailview','5el4haurgtfopl0rak4dvalrm7',1,0),(537,'3afcf0dc-5e18-83f8-e3c4-5937877cc03c','1','Accounts','e5100e85-3b31-c1fc-a02e-593547965428','ООО «ОКТАНТ», Страна: Российская Федерация; ОКАТО: 36401385000; Почтовый индекс: 443066; Субъект РФ: Самарская; Город: Самара; Улица: Безымянный 2-й; ','2017-06-07 04:55:35','editview','5el4haurgtfopl0rak4dvalrm7',1,0),(539,'551d48c1-94dd-9c97-6787-593787249d88','1','Opportunities','8be94ebf-f5c8-f60f-2016-593547f47966','№0173100007916000083','2017-06-07 04:56:44','editview','5el4haurgtfopl0rak4dvalrm7',1,0),(540,'c9e053b6-53b4-df5b-a53d-593795d1cb37','1','AOS_Products','9c4c075d-f4d3-ae27-9243-5937954e75cd','Аккредитация','2017-06-07 05:55:53','detailview','5el4haurgtfopl0rak4dvalrm7',1,0),(541,'e3610383-c9be-8956-0d6a-5937954aabf7','1','AOS_Products','d39dce23-f6b3-7555-e2b3-593795939c61','Банковская гарантия','2017-06-07 05:56:08','detailview','5el4haurgtfopl0rak4dvalrm7',1,0),(542,'65c7d219-7f1c-e6cb-bacd-59379fa7250e','1','AOS_Products','3747f88c-a339-ca76-9d13-59379fd29547','Диадок','2017-06-07 06:40:53','detailview','5el4haurgtfopl0rak4dvalrm7',1,0),(543,'9f1e9505-eefe-ada6-6805-5937a09f9a02','1','AOS_Products','67102991-c05b-d692-901a-5937a0b72547','КонтурФокус','2017-06-07 06:41:15','detailview','5el4haurgtfopl0rak4dvalrm7',1,0),(544,'65c1cc3a-9034-e7a1-2bd6-5937a0d2122a','1','AOS_Products','370b6306-65ed-bb2e-b3f6-5937a03ba327','КонтурЭксперт','2017-06-07 06:42:21','detailview','5el4haurgtfopl0rak4dvalrm7',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('323753ed-04ad-de2b-0a21-5926cf321f6c','upload/upgrades/module/project_lp2017_05_25_153515.zip','6e652259e49d8e0ee2a2d506e3d89d6e','module','installed','1495715715','project_lp','Дополнительные параметры','project_lp','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjY6IjYuNS4yNCI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiZHAiO3M6NjoiYXV0aG9yIjtzOjQ6ImlhbXkiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjQ3OiLQlNC+0L/QvtC70L3QuNGC0LXQu9GM0L3Ri9C1INC/0LDRgNCw0LzQtdGC0YDRiyI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxMDoicHJvamVjdF9scCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDUtMjUgMTI6MzU6MTUiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNDk1NzE1NzE1O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mjp7czoyOiJpZCI7czoxMDoicHJvamVjdF9scCI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxMzoiPGJhc2VwYXRoPi9scCI7czoyOiJ0byI7czozMjoiY3VzdG9tL21vZHVsZWJ1aWxkZXIvcGFja2FnZXMvbHAiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2017-05-25 12:36:33',1),('60b11b2a-aca4-c019-6603-592566248774','upload/upgrades/langpack/ru.zip','8be6d98cef9222ffa18dfcf37aa23ebd','langpack','installed','7.8.3.6','Russian (Russia)','Перевод: www.crowdin.com/project/suitecrmtranslations','ru_RU','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoxNjoiUnVzc2lhbiAoUnVzc2lhKSI7czoxMToiZGVzY3JpcHRpb24iO3M6NjA6ItCf0LXRgNC10LLQvtC0OiB3d3cuY3Jvd2Rpbi5jb20vcHJvamVjdC9zdWl0ZWNybXRyYW5zbGF0aW9ucyI7czo0OiJ0eXBlIjtzOjg6ImxhbmdwYWNrIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjM6IlllcyI7czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YTowOnt9czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo2OiJhdXRob3IiO3M6MTg6IlN1aXRlQ1JNIENvbW11bml0eSI7czo3OiJ2ZXJzaW9uIjtzOjc6IjcuOC4zLjYiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE3LTA1LTA4Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJydV9SVSI7czo5OiJpbWFnZV9kaXIiO3M6MTc6IjxiYXNlcGF0aD4vaW1hZ2VzIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2luY2x1ZGUiO3M6MjoidG8iO3M6NzoiaW5jbHVkZSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5zdGFsbCI7czoyOiJ0byI7czo3OiJpbnN0YWxsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2017-05-24 10:55:35',1),('67cb0767-7802-6378-0fed-5926d29a86d7','upload/upgrades/module/lp2017_05_29_065759.zip','1b2988aac36703959220c97125abeb57','module','installed','1496030279','lp','Дополнительные параметры','lp','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiZHAiO3M6NjoiYXV0aG9yIjtzOjQ6ImlhbXkiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjQ3OiLQlNC+0L/QvtC70L3QuNGC0LXQu9GM0L3Ri9C1INC/0LDRgNCw0LzQtdGC0YDRiyI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyOiJscCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTctMDUtMjkgMDM6NTc6NTkiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNDk2MDMwMjc5O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6OTp7czoyOiJpZCI7czoyOiJscCI7czo1OiJiZWFucyI7YTo1OntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czo3OiJkcF9ia3J2IjtzOjU6ImNsYXNzIjtzOjc6ImRwX2JrcnYiO3M6NDoicGF0aCI7czoyNzoibW9kdWxlcy9kcF9ia3J2L2RwX2JrcnYucGhwIjtzOjM6InRhYiI7YjoxO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czoxMzoiZHBfZm91bmRlcl91bCI7czo1OiJjbGFzcyI7czoxMzoiZHBfZm91bmRlcl91bCI7czo0OiJwYXRoIjtzOjM5OiJtb2R1bGVzL2RwX2ZvdW5kZXJfdWwvZHBfZm91bmRlcl91bC5waHAiO3M6MzoidGFiIjtiOjE7fWk6MjthOjQ6e3M6NjoibW9kdWxlIjtzOjEzOiJkcF9mb3VuZGVyX2ZsIjtzOjU6ImNsYXNzIjtzOjEzOiJkcF9mb3VuZGVyX2ZsIjtzOjQ6InBhdGgiO3M6Mzk6Im1vZHVsZXMvZHBfZm91bmRlcl9mbC9kcF9mb3VuZGVyX2ZsLnBocCI7czozOiJ0YWIiO2I6MTt9aTozO2E6NDp7czo2OiJtb2R1bGUiO3M6OToiZHBfcmVhbHR5IjtzOjU6ImNsYXNzIjtzOjk6ImRwX3JlYWx0eSI7czo0OiJwYXRoIjtzOjMxOiJtb2R1bGVzL2RwX3JlYWx0eS9kcF9yZWFsdHkucGhwIjtzOjM6InRhYiI7YjoxO31pOjQ7YTo0OntzOjY6Im1vZHVsZSI7czoxMDoiZHBfbGljZW5zZSI7czo1OiJjbGFzcyI7czoxMDoiZHBfbGljZW5zZSI7czo0OiJwYXRoIjtzOjMzOiJtb2R1bGVzL2RwX2xpY2Vuc2UvZHBfbGljZW5zZS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo3ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2RwX2JrcnZfYWNjb3VudHNfQWNjb3VudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo4MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2RwX3JlYWx0eV9hY2NvdW50c19BY2NvdW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkFjY291bnRzIjt9fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6Mjp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9kcF9ia3J2X2FjY291bnRzTWV0YURhdGEucGhwIjt9aToxO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9kcF9yZWFsdHlfYWNjb3VudHNNZXRhRGF0YS5waHAiO319czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YTo1OntpOjA7YToyOntzOjQ6ImZyb20iO3M6Mzk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZHBfYmtydiI7czoyOiJ0byI7czoxNToibW9kdWxlcy9kcF9ia3J2Ijt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjQ1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2RwX2ZvdW5kZXJfdWwiO3M6MjoidG8iO3M6MjE6Im1vZHVsZXMvZHBfZm91bmRlcl91bCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo0NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9kcF9mb3VuZGVyX2ZsIjtzOjI6InRvIjtzOjIxOiJtb2R1bGVzL2RwX2ZvdW5kZXJfZmwiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NDE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZHBfcmVhbHR5IjtzOjI6InRvIjtzOjE3OiJtb2R1bGVzL2RwX3JlYWx0eSI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo0MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9kcF9saWNlbnNlIjtzOjI6InRvIjtzOjE4OiJtb2R1bGVzL2RwX2xpY2Vuc2UiO319czo4OiJsYW5ndWFnZSI7YToxMDp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2RwX2JrcnYucGhwIjtzOjk6InRvX21vZHVsZSI7czo3OiJkcF9ia3J2IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjU4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2RwX2JrcnYucGhwIjtzOjk6InRvX21vZHVsZSI7czo3OiJkcF9ia3J2IjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0FjY291bnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjM7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQWNjb3VudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo2MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9kcF9yZWFsdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czo5OiJkcF9yZWFsdHkiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NjA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZHBfcmVhbHR5LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6OToiZHBfcmVhbHR5IjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X1JVIjt9aTo2O2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0FjY291bnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjc7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQWNjb3VudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fWk6ODthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6OTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX1zOjc6InZhcmRlZnMiO2E6NDp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjc0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvZHBfYmtydl9hY2NvdW50c19kcF9ia3J2LnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NzoiZHBfYmtydiI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo3NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2RwX2JrcnZfYWNjb3VudHNfQWNjb3VudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo3ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2RwX3JlYWx0eV9hY2NvdW50c19kcF9yZWFsdHkucGhwIjtzOjk6InRvX21vZHVsZSI7czo5OiJkcF9yZWFsdHkiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6Nzc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9kcF9yZWFsdHlfYWNjb3VudHNfQWNjb3VudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7fX1zOjEyOiJsYXlvdXRmaWVsZHMiO2E6Mjp7aTowO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MDp7fX1pOjE7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=','2017-05-25 12:46:45',1),('d3eb6ab5-2acd-b923-651c-592b08293fdc','upload/upgrades/module/sro2017_05_28_202219.zip','662ed9e49383d17e08ae7c69998251a9','module','installed','1495992139','sro','','sro','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6Mzoic3JvIjtzOjY6ImF1dGhvciI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czozOiJzcm8iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE3LTA1LTI4IDE3OjIyOjE5IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTQ5NTk5MjEzOTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6Mzoic3JvIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJzcm9fc3ZpZF9zcm8iO3M6NToiY2xhc3MiO3M6MTI6InNyb19zdmlkX3NybyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL3Nyb19zdmlkX3Nyby9zcm9fc3ZpZF9zcm8ucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvc3JvX3N2aWRfc3JvIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL3Nyb19zdmlkX3NybyI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vcnVfUlUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9SVSI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=','2017-05-28 17:26:32',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('14906690-13e2-b525-a51d-59272d6decb3','dp_realty2_DP_REALTY',0,'2017-05-25 19:15:37','2017-05-25 19:15:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('154b8ac1-c8ac-3f6c-2f45-592ec546ebfb','global',0,'2017-05-31 13:28:47','2017-05-31 14:00:29','7d90052f-7d85-3f5d-d344-592ec538b7f3','YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC5tLlkiO3M6NToidGltZWYiO3M6MzoiSC5pIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MTQ6InNtdHAueWFuZGV4LnJ1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjE4OiJoZWxwQGZpbmV4cGVydC5wcm8iO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czozOiJmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjY6Im1haWx0byI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiMTUxZDVkNTktZGNlNy00OGI5LWZiZGEtNTkyZWM1ZjliYTg4IjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7fQ=='),('17489146-3d4f-19b2-274f-592eced37d43','Users2_USER',0,'2017-05-31 14:08:37','2017-05-31 14:08:37','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('27b10dc0-6fbe-4225-2009-5926d49d7ee5','Prospects2_PROSPECT',0,'2017-05-25 12:56:54','2017-05-25 12:56:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('30e0011c-a1f1-744f-081f-59282451af06','dp_license2_DP_LICENSE',0,'2017-05-26 12:52:02','2017-05-26 12:52:02','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('36935201-623f-6714-b274-59355c1cef3c','Spots2_SPOTS',0,'2017-06-05 13:26:43','2017-06-05 13:26:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3a860cbc-57dc-302a-d9d3-59256e040e17','Project2_PROJECT',0,'2017-05-24 11:28:38','2017-05-24 11:28:38','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3e12fe37-dff6-6e50-bc30-592568798c55','Contacts2_CONTACT',0,'2017-05-24 11:02:44','2017-05-24 11:02:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3e42fa07-7c9c-8d59-77f1-592ec97f2d6a','Home',0,'2017-05-31 13:47:17','2017-05-31 13:47:17','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjE1N2FkZTk2LTRiOTQtZWRkYy02NGFhLTU5MmVjOWE4MGZlMiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjE1Zjc4NThkLTIxMDUtNWNkMi03MTBmLTU5MmVjOTRkMWNiNCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE2OGM2NmFjLWJlNzQtYzdjMC0zMWE2LTU5MmVjOTgyMTYyMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE2ZGY4YTJkLTE5MjUtZWQ1Yi0zNjQ5LTU5MmVjOTU3MDhjMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTc2ZTY1MDUtOTA1Zi01MWM4LTIzMGYtNTkyZWM5MjVlMDJlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMTdlOTQzNmUtNDBjYy00MWE4LTNhMWUtNTkyZWM5ZGZjMDljIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIxNWY3ODU4ZC0yMTA1LTVjZDItNzEwZi01OTJlYzk0ZDFjYjQiO2k6MTtzOjM2OiIxNjhjNjZhYy1iZTc0LWM3YzAtMzFhNi01OTJlYzk4MjE2MjIiO2k6MjtzOjM2OiIxNmRmOGEyZC0xOTI1LWVkNWItMzY0OS01OTJlYzk1NzA4YzMiO2k6MztzOjM2OiIxNzZlNjUwNS05MDVmLTUxYzgtMjMwZi01OTJlYzkyNWUwMmUiO2k6NDtzOjM2OiIxN2U5NDM2ZS00MGNjLTQxYTgtM2ExZS01OTJlYzlkZmMwOWMiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjE1N2FkZTk2LTRiOTQtZWRkYy02NGFhLTU5MmVjOWE4MGZlMiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('3e78a73b-d41f-ea04-6401-592ecc776849','global',0,'2017-05-31 14:01:15','2017-05-31 14:01:15','31f70edc-a407-1101-b579-592ecc3eb0ad','YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC5tLlkiO3M6NToidGltZWYiO3M6MzoiSC5pIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MTQ6InNtdHAueWFuZGV4LnJ1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjE3OiJ3ZWJAZmluZXhwZXJ0LnBybyI7czoxMzoibWFpbF9zbXRwcGFzcyI7czoxNjoiOEpJUlNPanJrbGVyaXRlciI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6MzoiZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiM2U0NjcwYTctZmUyMC1iZjIxLTI2OGYtNTkyZWNjZjY4NWI3IjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7fQ=='),('40667997-ade2-36ab-9d41-592ec97d1fa6','Accounts2_ACCOUNT',0,'2017-05-31 13:48:34','2017-05-31 13:48:34','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('450f3f0d-e413-d1a1-dbfa-59256d454f66','Employees2_EMPLOYEE',0,'2017-05-24 11:24:34','2017-05-24 11:24:34','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('45b5cf69-3679-b142-42de-592ec99d9368','Home2_CALL',0,'2017-05-31 13:47:17','2017-05-31 13:47:17','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('47922506-3136-e03d-8870-592ec978719d','Home2_MEETING',0,'2017-05-31 13:47:17','2017-05-31 13:47:17','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('48c468f4-b879-452f-90e8-592bf87275eb','AOS_PDF_Templates2_AOS_PDF_TEMPLATES',0,'2017-05-29 10:31:55','2017-05-29 10:31:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('499af557-58e4-bc64-e614-59256e6c09fe','Campaigns2_CAMPAIGN',0,'2017-05-24 11:28:10','2017-05-24 11:28:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4a520bb1-c210-4065-cd73-592ba000f033','dp_founder_fl2_DP_FOUNDER_FL',0,'2017-05-29 04:14:57','2017-05-29 04:14:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4a98e342-5c4b-70a1-c4ab-592ec971157d','Home2_OPPORTUNITY',0,'2017-05-31 13:47:17','2017-05-31 13:47:17','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4c8f6d85-4c67-4b55-7035-592ec98420ec','Home2_ACCOUNT',0,'2017-05-31 13:47:17','2017-05-31 13:47:17','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4e6ec4a5-9fa0-dca6-da9d-592ec91b8103','Home2_LEAD',0,'2017-05-31 13:47:17','2017-05-31 13:47:17','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('505a955e-3944-0bcd-9e68-592ec9029dec','Home2_SUGARFEED',0,'2017-05-31 13:47:17','2017-05-31 13:47:17','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('570197b0-d0a4-ea81-4690-592ff38b9870','EmailMan2_EMAILMAN',0,'2017-06-01 10:59:28','2017-06-01 10:59:28','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5917301b-dc1b-0fc8-aa0a-592ec360a9b1','ETag',0,'2017-05-31 13:24:07','2017-05-31 13:57:19','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('59487d1e-21ee-04e2-56a8-5925657dc335','Home',0,'2017-05-24 10:52:17','2017-05-28 17:31:38','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjE4YTliNmMwLTk5NTYtNGVkMy05N2NlLTU5MjU2NTI3ZjA0YyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjE5MjJjYzEyLWEwNmUtNjYyNy00MGQ1LTU5MjU2NTYxNTQ4ZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE5YWRiZTJiLTg0ZmUtM2RlNS1mNzU1LTU5MjU2NWQ0ZDhmNCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjE5ZjdlN2Q2LWZiNDItZGI2NS1iOTllLTU5MjU2NTRjZTcxNCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWE1ZjhkM2UtMjA2NC05NTkzLTdlNTItNTkyNTY1MWY3N2I1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWFjY2IwYjctYzgyMS01NDZiLWY2ZTUtNTkyNTY1ZGM0YTI0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIxYTVmOGQzZS0yMDY0LTk1OTMtN2U1Mi01OTI1NjUxZjc3YjUiO2k6MTtzOjM2OiIxOTIyY2MxMi1hMDZlLTY2MjctNDBkNS01OTI1NjU2MTU0OGUiO2k6MjtzOjM2OiIxOWFkYmUyYi04NGZlLTNkZTUtZjc1NS01OTI1NjVkNGQ4ZjQiO2k6MztzOjM2OiIxOWY3ZTdkNi1mYjQyLWRiNjUtYjk5ZS01OTI1NjU0Y2U3MTQiO2k6NDtzOjM2OiIxYWNjYjBiNy1jODIxLTU0NmItZjZlNS01OTI1NjVkYzRhMjQiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjE4YTliNmMwLTk5NTYtNGVkMy05N2NlLTU5MjU2NTI3ZjA0YyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('5a384144-4d46-c2f4-1f47-592ba989011f','dp_founder_ul2_DP_FOUNDER_UL',0,'2017-05-29 04:52:42','2017-05-29 04:52:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5b5315e2-79af-68f9-cb4a-592ecb8d24ea','ETag',0,'2017-05-31 13:56:57','2017-06-01 05:39:14','af3ca2f0-02ee-ca6a-6fc8-592ec21b4b75','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('5b917778-bd89-90a5-be3b-5926d401874e','FP_Event_Locations2_FP_EVENT_LOCATIONS',0,'2017-05-25 12:57:40','2017-05-25 12:57:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5ba6173b-ae33-fc8e-c31b-592ec36160f7','ACLRoles2_ACLROLE',0,'2017-05-31 13:21:52','2017-05-31 13:21:52','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5d41d5f1-21c5-a576-372d-592565ade681','Home2_CALL',0,'2017-05-24 10:52:17','2017-05-24 10:52:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5f1a3c40-23eb-9a5a-8fa4-592ff41ef766','ProspectLists2_PROSPECTLIST',0,'2017-06-01 11:01:45','2017-06-01 11:01:45','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6009eec0-f7eb-18e1-5a56-592565bb469a','Home2_MEETING',0,'2017-05-24 10:52:17','2017-05-24 10:52:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('601368ac-21c8-c4cd-c793-592ec3d97082','global',0,'2017-05-31 13:23:15','2017-05-31 13:57:19','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MTQ6InNtdHAueWFuZGV4LnJ1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjE4OiJpbmZvQGZpbmV4cGVydC5wcm8iO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czozOiJmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjA6IiI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO30='),('6295b8a3-4af7-8ccb-e8a3-592565c5ecb4','Home2_OPPORTUNITY',0,'2017-05-24 10:52:17','2017-05-24 10:52:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('65300a0a-e81c-49f5-0259-59256ee16f85','AOW_WorkFlow2_AOW_WORKFLOW',0,'2017-05-24 11:28:59','2017-05-24 11:28:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('65cc5abf-0361-9dd8-eed1-592565d2c010','Home2_ACCOUNT',0,'2017-05-24 10:52:17','2017-05-24 10:52:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('660cb0fb-1786-4053-bf53-593544aa102c','Import2_ACCOUNT',0,'2017-06-05 11:48:08','2017-06-05 11:48:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6831b2ff-a382-cdf9-df7a-5925655f906c','Home2_LEAD',0,'2017-05-24 10:52:17','2017-05-24 10:52:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6a97551f-9d31-1c94-73b0-5925658141c4','Home2_SUGARFEED',0,'2017-05-24 10:52:17','2017-05-24 10:52:17','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6d91333e-145e-b5d5-c731-59378738b93d','Cases2_CASE',0,'2017-06-07 04:58:29','2017-06-07 04:58:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('775ed48c-4659-e55d-9beb-59256767ae98','Accounts2_ACCOUNT',0,'2017-05-24 11:00:14','2017-05-24 11:00:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7b87d441-dc83-91d9-7695-592ec2915d1f','Users2_USER',0,'2017-05-31 13:16:26','2017-05-31 13:16:26','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7ba490ad-faed-7b97-9dcb-592ece3dad94','Home',0,'2017-05-31 14:08:21','2017-05-31 14:08:21','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjYxNTNhNDczLTQ3NjUtMmNjZC1iMWI1LTU5MmVjZWExMjQzYiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjYxZDE1NjUyLTlmMTAtYTZlZi1mM2VhLTU5MmVjZTBlMjgwZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjYyNjFjZjMzLTM1YTYtNDIwOS1mZTliLTU5MmVjZThhNWIzMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjYyYjhhNjY3LWNmN2MtZDczYi1jYzg5LTU5MmVjZWE5Yjg2MiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjM1N2FmZTAtMzQxMS1hMzM5LWNlMmItNTkyZWNlNDNjNmQwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjQ1ODYyYmQtY2UxMC03MWM2LTIwNDctNTkyZWNlMmRlZDhjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI2MWQxNTY1Mi05ZjEwLWE2ZWYtZjNlYS01OTJlY2UwZTI4MGYiO2k6MTtzOjM2OiI2MjYxY2YzMy0zNWE2LTQyMDktZmU5Yi01OTJlY2U4YTViMzMiO2k6MjtzOjM2OiI2MmI4YTY2Ny1jZjdjLWQ3M2ItY2M4OS01OTJlY2VhOWI4NjIiO2k6MztzOjM2OiI2MzU3YWZlMC0zNDExLWEzMzktY2UyYi01OTJlY2U0M2M2ZDAiO2k6NDtzOjM2OiI2NDU4NjJiZC1jZTEwLTcxYzYtMjA0Ny01OTJlY2UyZGVkOGMiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjYxNTNhNDczLTQ3NjUtMmNjZC1iMWI1LTU5MmVjZWExMjQzYiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('8348c239-1c6f-4f02-4818-592ece94cd3e','Home2_CALL',0,'2017-05-31 14:08:21','2017-05-31 14:08:21','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('850ca910-ae31-7d3b-87ac-592ece643dab','Home2_MEETING',0,'2017-05-31 14:08:21','2017-05-31 14:08:21','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('85374e28-3be1-c38a-83c7-593555bcfa4d','AOK_Knowledge_Base_Categories2_AOK_KNOWLEDGE_BASE_',0,'2017-06-05 12:56:57','2017-06-05 12:56:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('869e1a6d-3452-fa51-59cd-592ece16beb8','Home2_OPPORTUNITY',0,'2017-05-31 14:08:21','2017-05-31 14:08:21','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('881b8335-ad52-00cb-ec20-592ece8e6315','Home2_ACCOUNT',0,'2017-05-31 14:08:21','2017-05-31 14:08:21','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('89fca7df-4082-921b-33fe-592ece3aa2eb','Home2_LEAD',0,'2017-05-31 14:08:21','2017-05-31 14:08:21','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8a753bdd-b46a-6525-ebbd-5931440c5f0d','Opportunities2_OPPORTUNITY',0,'2017-06-02 10:56:04','2017-06-07 04:57:00','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToic2FsZXNfc3RhZ2UiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),('8be19614-0600-a6d2-090d-592ece2500df','Home2_SUGARFEED',0,'2017-05-31 14:08:21','2017-05-31 14:08:21','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8f20ea50-5fac-96d9-6590-59378ab2485b','AOS_Products2_AOS_PRODUCTS',0,'2017-06-07 05:10:13','2017-06-07 05:10:13','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('93b44bae-e5ca-9dd5-f482-5935459f7fd2','Import2_OPPORTUNITY',0,'2017-06-05 11:51:55','2017-06-05 11:51:55','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('97c208fe-ed01-db14-b167-592ecbb870ec','global',0,'2017-05-31 13:55:37','2017-06-01 15:22:36','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YTo0Nzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6NDoiMTgwMCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czo0OiIzNjAwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL1NhbWFyYSI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQubS5ZIjtzOjU6InRpbWVmIjtzOjM6IkguaSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjE0OiJzbXRwLnlhbmRleC5ydSI7czoxMzoibWFpbF9zbXRwdXNlciI7czoxNjoiYmdAZmluZXhwZXJ0LnBybyI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjM6ImYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NjoibWFpbHRvIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiI5MzI4MGZlZi0xMDc0LTE1MmEtYjFhZS01OTJlY2IyODhmYTYiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUiI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo2OiLQktGB0LUiO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NjoiVGFza3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTQ6ImRwX2ZvdW5kZXJfdWxRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTQ6IlByb3NwZWN0TGlzdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO2I6MDt9'),('98a324f6-2150-e75e-949d-592ebfa441b6','OAuthKeys2_OAUTHKEY',0,'2017-05-31 13:04:43','2017-05-31 13:04:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9c608ae9-c86f-6682-09d8-592564d88a8f','global',0,'2017-05-24 10:47:24','2017-06-07 05:53:06','1','YTo3ODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjljMmNmYzg0LWRlNDktOThmOS04ZGQ2LTU5MjU2NDJlMTk4OSI7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL01vc2NvdyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjoidXQiO3M6MToiMSI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjE0OiJzbXRwLnlhbmRleC5ydSI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjE6ImRlZmF1bHRfZW1haWxfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo2OiLQktGB0LUiO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTA6IkVtcGxveWVlc1EiO2E6NDp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJDYW1wYWlnbnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6ODoiUHJvamVjdFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9XX1dvcmtGbG93USI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjY6IlRhc2tzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjg6ImRwX2JrcnZRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IlByb3NwZWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxOToiRlBfRXZlbnRfTG9jYXRpb25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEwOiJkcF9yZWFsdHlRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTE6ImRwX2xpY2Vuc2VRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6InNyb19zdmlkX3Nyb1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiZHBfZm91bmRlcl9mbFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiZHBfZm91bmRlcl91bFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMDoiRG9jdW1lbnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE4OiJBT1NfUERGX1RlbXBsYXRlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMDoiT0F1dGhLZXlzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjIyOiJPdXRib3VuZEVtYWlsQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQUNMUm9sZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTU6IlNlY3VyaXR5R3JvdXBzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE0OiJkYXlfc3RhcnRfdGltZSI7czo1OiIwODowMCI7czoxMjoiZGF5X2VuZF90aW1lIjtzOjU6IjE5OjAwIjtzOjE4OiJDYWxlbmRhckFjdGl2aXRpZXMiO3M6NTA4OiJZVG8wT250ek9qZzZJazFsWlhScGJtZHpJanRoT2pNNmUzTTZORG9pWW05a2VTSTdjem8yT2lJMlFqVXhOekVpTzNNNk5qb2lZbTl5WkdWeUlqdHpPalk2SWpnM056RTVReUk3Y3pvME9pSjBaWGgwSWp0ek9qWTZJa1UxUlRWRk5TSTdmWE02TlRvaVEyRnNiSE1pTzJFNk16cDdjem8wT2lKaWIyUjVJanR6T2pZNklqY3lRak5CTVNJN2N6bzJPaUppYjNKa1pYSWlPM002TmpvaU5EZzNNVFkySWp0ek9qUTZJblJsZUhRaU8zTTZOam9pUlRWRk5VVTFJanQ5Y3pvMU9pSlVZWE5yY3lJN1lUb3pPbnR6T2pRNkltSnZaSGtpTzNNNk5qb2lOekEzUXpsRElqdHpPalk2SW1KdmNtUmxjaUk3Y3pvMk9pSTFNVFZCTnpFaU8zTTZORG9pZEdWNGRDSTdjem8yT2lKRk5VVTFSVFVpTzMxek9qazZJa1pRWDJWMlpXNTBjeUk3WVRvek9udHpPalE2SW1KdlpIa2lPM002TmpvaU4wUTJORFU1SWp0ek9qWTZJbUp2Y21SbGNpSTdjem8yT2lKRE1qbENPRUVpTzNNNk5Eb2lkR1Y0ZENJN2N6bzJPaUpGTlVVMVJUVWlPMzE5IjtzOjI2OiJjYWxlbmRhcl9kaXNwbGF5X3RpbWVzbG90cyI7czoxOiIxIjtzOjEwOiJzaG93X3Rhc2tzIjtzOjQ6InRydWUiO3M6MTA6InNob3dfY2FsbHMiO3M6NDoidHJ1ZSI7czoxNDoic2hvd19jb21wbGV0ZWQiO3M6NDoidHJ1ZSI7czozMjoiY2FsZW5kYXJfZGlzcGxheV9zaGFyZWRfc2VwYXJhdGUiO3M6MToiMSI7czo5OiJFbWFpbE1hblEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czozNDoiSW5ib3VuZEVtYWlsX0luYm91bmRFbWFpbF9PUkRFUl9CWSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjE0OiJPcHBvcnR1bml0aWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjk6Ik1lZXRpbmdzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjExOiJBT1NfUXVvdGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjMwOiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJTcG90c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJDYXNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjIzOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO319'),('9fb07069-97cd-9705-bf96-592ebffff188','OutboundEmailAccounts2_OUTBOUNDEMAILACCOUNTS',0,'2017-05-31 13:05:31','2017-05-31 13:05:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9ffa34a5-f08f-bfa2-288f-592ec5da9e16','SecurityGroups2_SECURITYGROUP',0,'2017-05-31 13:28:50','2017-05-31 13:28:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a46d82fa-07fa-40e4-a203-593554465b65','AOS_Quotes2_AOS_QUOTES',0,'2017-06-05 12:55:57','2017-06-05 12:55:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a96647e4-c4d4-697c-4541-592ece13c5d6','Accounts2_ACCOUNT',0,'2017-05-31 14:08:24','2017-05-31 14:08:24','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('aad7dc27-b3d5-cfb3-e2f5-592ecea964f9','Contacts2_CONTACT',0,'2017-05-31 14:10:49','2017-05-31 14:10:49','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ac86ac33-4eed-706f-2ef2-592be385f438','Documents2_DOCUMENT',0,'2017-05-29 09:00:22','2017-05-29 09:00:22','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b205e08a-ff6b-4093-e437-592564bca40d','ETag',0,'2017-05-24 10:47:24','2017-05-31 13:58:55','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTY7fQ=='),('b39dab77-91f1-94ec-bac4-592b0a25f993','sro_svid_sro2_SRO_SVID_SRO',0,'2017-05-28 17:37:49','2017-05-28 17:37:49','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b49d86f0-7c65-30ae-2541-592ec67d6b22','Home',0,'2017-05-31 13:34:08','2017-05-31 13:34:08','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjlhNjIzMmE1LTIxYWYtZmZkNi01YjhlLTU5MmVjNmVjMzhlMCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjlhZDYzMWEyLTJmNjctMzA2OS1jZTQ5LTU5MmVjNmUxZWQ3ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjliNWRiMDhkLTVmYjktYWZmMi0yZjk5LTU5MmVjNjMyZWE1ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjliYWEzZmJkLTJiMGYtZWM0MC1lN2NlLTU5MmVjNmZhNDAxNCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOWM0NGEwNzEtYWY4MC03N2VkLTJjOTktNTkyZWM2NWMxNGRhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOWNjZDhiN2QtOGMxMS0zZDAyLTliN2QtNTkyZWM2Y2I0NjdkIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI5YWQ2MzFhMi0yZjY3LTMwNjktY2U0OS01OTJlYzZlMWVkN2QiO2k6MTtzOjM2OiI5YjVkYjA4ZC01ZmI5LWFmZjItMmY5OS01OTJlYzYzMmVhNWQiO2k6MjtzOjM2OiI5YmFhM2ZiZC0yYjBmLWVjNDAtZTdjZS01OTJlYzZmYTQwMTQiO2k6MztzOjM2OiI5YzQ0YTA3MS1hZjgwLTc3ZWQtMmM5OS01OTJlYzY1YzE0ZGEiO2k6NDtzOjM2OiI5Y2NkOGI3ZC04YzExLTNkMDItOWI3ZC01OTJlYzZjYjQ2N2QiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjlhNjIzMmE1LTIxYWYtZmZkNi01YjhlLTU5MmVjNmVjMzhlMCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('bc0cd0c9-afcf-10ad-cc1f-592ec6d0bcaa','Home2_CALL',0,'2017-05-31 13:34:08','2017-05-31 13:34:08','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('be1b6fe2-cd77-a0ab-c881-592ec6f387f6','Home2_MEETING',0,'2017-05-31 13:34:08','2017-05-31 13:34:08','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c03f03aa-9570-5e9c-4a20-592ec6323225','Home2_OPPORTUNITY',0,'2017-05-31 13:34:08','2017-05-31 13:34:08','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c246f90b-e720-c652-3086-592ec6ddf806','Home2_ACCOUNT',0,'2017-05-31 13:34:08','2017-05-31 13:34:08','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c3de6c8e-202d-65f6-9666-592ec4379434','global',0,'2017-05-31 13:24:34','2017-05-31 13:24:34','af3ca2f0-02ee-ca6a-6fc8-592ec21b4b75','YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MTQ6InNtdHAueWFuZGV4LnJ1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjE3OiJ3ZWJAZmluZXhwZXJ0LnBybyI7czoxMzoibWFpbF9zbXRwcGFzcyI7czoxNjoiOEpJUlNPanJrbGVyaXRlciI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6MzoiZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('c55e0473-fe77-396f-5fc0-592ec6e4f016','Home2_LEAD',0,'2017-05-31 13:34:08','2017-05-31 13:34:08','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c5999065-527a-5b71-3275-5930057cdad2','Emails',0,'2017-06-01 12:14:13','2017-06-01 12:22:40','1','YTo0OntzOjExOiJmb2N1c0ZvbGRlciI7czoxMTk6ImE6Mjp7czo0OiJpZUlkIjtzOjM2OiJjNTQyODNiZi0zNWZjLWZjOWMtZWQ1Zi01OTMwMDVjNzJjZGUiO3M6NjoiZm9sZGVyIjtzOjM3OiJTVUdBUi7QntGC0L/RgNCw0LLQu9C10L3QvdGL0LUgRS1tYWlsIjt9IjtzOjE2OiJkZWZhdWx0SUVBY2NvdW50IjtzOjM2OiI1OWQzMmE1OC1mODU3LTQ5Y2ItZTIxMi01OTMwMDYwODQzOTUiO3M6MTE6InNob3dGb2xkZXJzIjtzOjcyOiJZVG94T250cE9qQTdjem96TmpvaU5UbGtNekpoTlRndFpqZzFOeTAwT1dOaUxXVXlNVEl0TlRrek1EQTJNRGcwTXprMUlqdDkiO3M6MTM6ImVtYWlsU2V0dGluZ3MiO2E6NTp7czoxODoiZW1haWxDaGVja0ludGVydmFsIjtzOjI6Ii0xIjtzOjE4OiJhbHdheXNTYXZlT3V0Ym91bmQiO3M6MToiMSI7czoxMzoic2VuZFBsYWluVGV4dCI7czoxOiIwIjtzOjEzOiJzaG93TnVtSW5MaXN0IjtzOjI6IjIwIjtzOjIyOiJkZWZhdWx0T3V0Ym91bmRDaGFyc2V0IjtzOjU6IlVURi04Ijt9fQ=='),('c871552a-673d-d88f-4d60-592ec61936fb','Home2_SUGARFEED',0,'2017-05-31 13:34:08','2017-05-31 13:34:08','a5d87b7b-fe12-c0b4-169a-592ec2309e60','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cd70bdcd-d3d0-bbbd-59fd-592fa894dd08','ETag',0,'2017-06-01 05:39:28','2017-06-01 05:39:28','31f70edc-a407-1101-b579-592ecc3eb0ad','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('d1617df4-198a-f092-fbe2-592ecfd58bdc','dp_founder_ul2_DP_FOUNDER_UL',0,'2017-05-31 14:14:01','2017-05-31 14:14:01','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('da06d998-ae27-dd20-b926-592ec6f43c62','ETag',0,'2017-05-31 13:35:37','2017-05-31 14:02:50','7d90052f-7d85-3f5d-d344-592ec538b7f3','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6OTt9'),('dc22c045-21f4-83c7-e553-5926d2945207','dp_bkrv2_DP_BKRV',0,'2017-05-25 12:47:04','2017-05-25 12:47:04','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dd379fae-d419-840b-d1c7-592567f5da71','Home2_LEAD_1accb0b7-c821-546b-f6e5-592565dc4a24',0,'2017-05-24 10:57:12','2017-05-24 10:57:12','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e0eb954d-6618-3c34-df48-593794603e4b','AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES',0,'2017-06-07 05:53:06','2017-06-07 05:53:06','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ed1e2fd0-7eae-de84-f9ec-592ecb58cfc8','ETag',0,'2017-05-31 13:56:19','2017-06-01 05:39:03','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Nzt9'),('eeb2b52b-fbc8-8ad1-bf98-592ff49e5d4c','Emails',0,'2017-06-01 11:02:55','2017-06-01 15:22:36','ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','YTo0OntzOjExOiJmb2N1c0ZvbGRlciI7czo5NDoiYToyOntzOjQ6ImllSWQiO3M6MzY6ImYzMWU1Mjk1LWZiNzItMDQwNC0zZjc5LTU5MmZmNDMzOGE5NiI7czo2OiJmb2xkZXIiO3M6MTI6IlNVR0FSLkUtbWFpbCI7fSI7czoxNjoiZGVmYXVsdElFQWNjb3VudCI7czozNjoiM2Q1MzY0MzEtYTIzOS1mNzA4LTBhZDItNTkzMDMxMGIyMTk5IjtzOjExOiJzaG93Rm9sZGVycyI7czo3MjoiWVRveE9udHBPakE3Y3pvek5qb2lNMlExTXpZME16RXRZVEl6T1MxbU56QTRMVEJoWkRJdE5Ua3pNRE14TUdJeU1UazVJanQ5IjtzOjEzOiJlbWFpbFNldHRpbmdzIjthOjU6e3M6MTg6ImVtYWlsQ2hlY2tJbnRlcnZhbCI7czoyOiItMSI7czoxODoiYWx3YXlzU2F2ZU91dGJvdW5kIjtzOjE6IjEiO3M6MTM6InNlbmRQbGFpblRleHQiO3M6MToiMCI7czoxMzoic2hvd051bUluTGlzdCI7czoyOiIyMCI7czoyMjoiZGVmYXVsdE91dGJvdW5kQ2hhcnNldCI7czo1OiJVVEYtOCI7fX0='),('f7650952-659d-0d03-1167-593540662326','import',0,'2017-06-05 11:28:07','2017-06-05 11:50:53','1','YToxOntzOjEyOiJmaWVsZF92YWx1ZXMiO3M6NDM1OiJ7ImN1c3RvbV9kZWxpbWl0ZXIiOiI7IiwiY3VzdG9tX2VuY2xvc3VyZSI6IiZxdW90OyIsImltcG9ydF90eXBlIjoiaW1wb3J0Iiwic291cmNlIjoiY3N2Iiwic291cmNlX2lkIjoiIiwiaW1wb3J0X21vZHVsZSI6Ik9wcG9ydHVuaXRpZXMiLCJoYXNfaGVhZGVyIjoib24iLCJpbXBvcnRsb2NhbGVfY2hhcnNldCI6IlVURi04IiwiaW1wb3J0bG9jYWxlX2RhdGVmb3JtYXQiOiJkLm0uWSIsImltcG9ydGxvY2FsZV90aW1lZm9ybWF0IjoiSC5pIiwiaW1wb3J0bG9jYWxlX3RpbWV6b25lIjoiRXVyb3BlXC9TYW1hcmEiLCJpbXBvcnRsb2NhbGVfY3VycmVuY3kiOiItOTkiLCJpbXBvcnRsb2NhbGVfZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiOiIyIiwiaW1wb3J0bG9jYWxlX251bV9ncnBfc2VwIjoiIiwiaW1wb3J0bG9jYWxlX2RlY19zZXAiOiIsIn0iO30=');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$1$Wbv7KmQO$UUr8Z6wWsFI29T64hcOiL1',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2017-05-24 10:47:24','2017-05-31 13:58:55','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0),('31f70edc-a407-1101-b579-592ecc3eb0ad','semgen','$1$fdBqb7H8$03gOs4nWxRgic4OVXY7Gb.',1,'2017-05-31 14:01:00',NULL,1,'Семён','Антонов',1,0,1,NULL,'2017-05-31 14:01:15','2017-06-01 19:00:31','1','1','Генеральный директор',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0),('7d90052f-7d85-3f5d-d344-592ec538b7f3','help','$1$aLfW7WQK$al0QGTLeSsp7Y.BTJcT4h1',0,'2017-05-31 13:46:00',NULL,1,'Гузель','Бильданова',0,0,1,NULL,'2017-05-31 13:28:47','2017-06-01 19:00:38','1','1','Менеджер по работе с клиентами','2017-05-31_17-44-55.png','Отдел продаж',NULL,'+79179685070','8 800 25 05 805 (доб. 9000)',NULL,NULL,'Active',NULL,'Самара',NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'31f70edc-a407-1101-b579-592ecc3eb0ad',0),('a5d87b7b-fe12-c0b4-169a-592ec2309e60','semgen','$1$5xJhdQFY$Ra0QQKjRlhgOyq1zJeOpg/',0,'2017-05-31 13:32:00',NULL,1,'Семён','Антонов',1,0,1,NULL,'2017-05-31 13:17:09','2017-05-31 14:00:29','1','1','Генеральный директор',NULL,NULL,NULL,'+79879556095',NULL,NULL,NULL,'Active',NULL,'Самара',NULL,NULL,NULL,1,0,1,'Active',NULL,NULL,'',0),('af3ca2f0-02ee-ca6a-6fc8-592ec21b4b75','iamy','$1$EcoUoE69$TqAFW61CKK91DyZZfexrU1',1,'2017-05-31 13:24:00',NULL,1,'Любовь','Антонова',0,0,1,NULL,'2017-05-31 13:19:52','2017-06-01 19:00:48','1','1','Руководитель отдела ИТ',NULL,NULL,NULL,'+79276503841',NULL,NULL,NULL,'Active',NULL,'Самара',NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0),('ec86288b-e4e5-0ee5-26a1-592ecb5ec55d','bg','$1$Q9Sch6Hs$fVoRuV2faZHv5iKtawdQk/',0,'2017-05-31 14:07:00',NULL,1,'Юрий','Марянин',0,0,1,NULL,'2017-05-31 13:55:37','2017-06-01 05:39:03','1','1','Ведущий специалист',NULL,'Отдел продаж',NULL,'+79879554585','8 800 25-05-805 (доб. 7000)',NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
INSERT INTO `users_last_import` VALUES ('1515562a-dc7c-56ea-b88c-5935475eaa6a','1','Opportunities','Opportunity','ed12daf7-2072-4847-f6d3-59354706db44',0),('1705f88d-3500-fca6-7945-59354706ca33','1','Opportunities','Opportunity','58180d3a-79e4-1c00-963f-5935474a85c0',0),('18a57ca0-554c-4918-e87a-5935473c3360','1','Opportunities','Opportunity','4fab04db-a548-fdfa-8305-593547fc0392',0),('29345f75-6e67-2a5d-b028-593547474be9','1','Opportunities','Account','1930dd0d-800f-3ab9-7d8d-593547155ea5',0),('2b343a7f-249f-4065-029b-593547bf41af','1','Opportunities','Account','1a8fb3c6-0308-4354-be99-593547f7aca9',0),('2e210769-579c-1e3c-7382-59354724fa16','1','Opportunities','Account','e5100e85-3b31-c1fc-a02e-593547965428',0),('2fabb001-2dc2-2b21-6be3-593547575fb8','1','Opportunities','Opportunity','ff2a029c-ce86-9654-d396-593547877e19',0),('37b206f4-4b99-aacf-177d-5935471fd408','1','Opportunities','Account','e8e0427c-c6c4-df40-1b85-5935471728fa',0),('3ef90c2f-5a9e-bc2c-42ca-593547d45ae5','1','Opportunities','Account','31f4e7f6-b2b5-31fa-7374-5935477aa657',0),('40b95d56-9172-d014-5dd5-59354781b81d','1','Opportunities','Opportunity','2b287e3d-3be6-8e31-d953-59354729b777',0),('423bd926-58c2-a28a-c250-59354762512f','1','Opportunities','Opportunity','2cdedc53-6e01-8f7d-50e9-593547b58435',0),('53084215-54d6-7693-2190-593547c8d63a','1','Opportunities','Account','4331585d-2db4-3a97-77bd-593547cac985',0),('55c7718c-2d9f-0259-4e50-5935474d91c5','1','Opportunities','Account','442b7588-f40c-726a-8abe-593547d764ec',0),('6798f304-8540-e279-032d-5935479f911f','1','Opportunities','Opportunity','54d09f37-35dc-9643-fdcc-593547a3d571',0),('6c6a8f45-9df8-eb52-aa79-59354745cd95','1','Opportunities','Opportunity','577e5d4f-8881-9680-341e-59354747ca61',0),('7e3d6087-9863-3ab6-77e8-59354700714d','1','Opportunities','Account','69650579-99c1-bada-a2b8-593547e11746',0),('80cf6324-6cc8-2890-f1cd-59354777e499','1','Opportunities','Account','6e6ac4d4-d2f9-6c1f-4111-593547b0da64',0),('89f53259-5d6a-7b8c-0e55-593547382a3b','1','Opportunities','Account','7ae8ac10-f62a-f923-8921-593547c8479e',0),('92c94be4-57ac-23de-39d9-593547f79087','1','Opportunities','Opportunity','80bc4bcc-b15a-62a2-5261-5935473f9790',0),('9d34ec00-9b24-674f-a700-593547b80568','1','Opportunities','Opportunity','8be94ebf-f5c8-f60f-2016-593547f47966',0),('a4eb6be9-3dc4-9b9f-5693-59354748e79e','1','Opportunities','Account','94b5ffac-96cb-3063-8745-59354761163b',0),('af3d8bcb-df93-3a6e-1a6b-593547fbc99c','1','Opportunities','Account','9f6f49a9-b7ba-5cb7-b82c-5935475495ac',0),('b14c771d-97c6-1533-96f3-5935473a9ef2','1','Opportunities','Opportunity','82ee339f-88a3-354f-ec4a-593547dd9133',0),('b910b121-36ff-c354-a83d-593547c46884','1','Opportunities','Opportunity','a6a8acd0-c5b7-ec07-4bbf-593547ded106',0),('c4a2ef6b-9bad-6527-02a4-593547e4bb60','1','Opportunities','Opportunity','b195ff78-fceb-9b70-a6ee-593547d1e1fd',0),('ccbbf94b-2573-a29b-2b39-59354728c56d','1','Opportunities','Account','bb4bf44c-adba-db8d-e489-59354734ae8a',0),('d5008c30-970b-5c41-58b2-593547da6798','1','Opportunities','Account','c6d1e835-feb4-0f3e-fbc8-5935472d7d68',0),('e342c115-65e3-3da8-b73c-593547f84e7e','1','Opportunities','Opportunity','cee2789e-5dbc-b167-717b-593547b4b330',0),('e70508f0-988f-0902-77a5-593547b5a223','1','Opportunities','Opportunity','d6cf35ac-2236-ada8-0e69-5935476a6923',0),('eae3f1a7-ba78-72f0-f673-5935472c8d5d','1','Opportunities','Account','bd40369c-a8bf-a72e-db33-593547f2c543',0);
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
INSERT INTO `users_password_link` VALUES ('646eec1f-a9b8-ff17-64f6-592ecdefb3eb','bg','2017-05-31 14:05:42',1),('e2844884-59fa-2ecf-0ee3-592ec88e46d5','help','2017-05-31 13:43:51',1);
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-07  9:57:39
