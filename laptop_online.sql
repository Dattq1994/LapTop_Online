-- MySQL dump 10.16  Distrib 10.1.19-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.19-MariaDB

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
-- Current Database: `laptop_online`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `laptop_online` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `laptop_online`;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `id_card` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `id_customer` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_parent` (`id_parent`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF'),(2,'Aland Islands','AX'),(3,'Albania','AL'),(4,'Algeria','DZ'),(5,'American Samoa','AS'),(6,'Andorra','AD'),(7,'Angola','AO'),(8,'Anguilla','AI'),(9,'Antarctica','AQ'),(10,'Antigua And Barbuda','AG'),(11,'Argentina','AR'),(12,'Armenia','AM'),(13,'Aruba','AW'),(15,'Austria','AT'),(16,'Azerbaijan','AZ'),(17,'Bahamas','BS'),(18,'Bahrain','BH'),(19,'Bangladesh','BD'),(20,'Barbados','BB'),(21,'Belarus','BY'),(22,'Belgium','BE'),(23,'Belize','BZ'),(24,'Benin','BJ'),(25,'Bermuda','BM'),(26,'Bhutan','BT'),(27,'Bolivia','BO'),(28,'Bosnia And Herzegovina','BA'),(29,'Botswana','BW'),(30,'Bouvet Island','BV'),(31,'Brazil','BR'),(32,'British Indian Ocean Territory','IO'),(33,'Brunei Darussalam','BN'),(34,'Bulgaria','BG'),(35,'Burkina Faso','BF'),(36,'Burundi','BI'),(37,'Cambodia','KH'),(38,'Cameroon','CM'),(39,'Canada','CA'),(40,'Cape Verde','CV'),(41,'Cayman Islands','KY'),(42,'Central African Republic','CF'),(43,'Chad','TD'),(44,'Chile','CL'),(45,'China','CN'),(46,'Christmas Island','CX'),(47,'Cocos (keeling) Islands','CC'),(48,'Colombia','CO'),(49,'Comoros','KM'),(50,'Congo','CG'),(51,'Congo, The Democratic Republic Of','CD'),(52,'Cook Islands','CK'),(53,'Costa Rica','CR'),(54,'Cote D\'ivoire','CI'),(55,'Croatia','HR'),(56,'Cuba','CU'),(57,'Cyprus','CY'),(58,'Czech Republic','CZ'),(59,'Denmark','DK'),(60,'Djibouti','DJ'),(61,'Dominica','DM'),(62,'Dominican Republic','DO'),(63,'Ecuador','EC'),(64,'Egypt','EG'),(65,'El Salvador','SV'),(66,'Equatorial Guinea','GQ'),(67,'Eritrea','ER'),(68,'Estonia','EE'),(69,'Ethiopia','ET'),(70,'Falkland Islands (malvinas)','FK'),(71,'Faroe Islands','FO'),(72,'Fiji','FJ'),(73,'Finland','FI'),(74,'France','FR'),(75,'French Guiana','GF'),(76,'French Polynesia','PF'),(77,'French Southern Territories','TF'),(78,'Gabon','GA'),(79,'Gambia','GM'),(80,'Georgia','GE'),(81,'Germany','DE'),(82,'Ghana','GH'),(83,'Gibraltar','GI'),(84,'Greece','GR'),(85,'Greenland','GL'),(86,'Grenada','GD'),(87,'Guadeloupe','GP'),(88,'Guam','GU'),(89,'Guatemala','GT'),(90,'Guernsey','GG'),(91,'Guinea','GN'),(92,'Guinea-bissau','GW'),(93,'Guyana','GY'),(94,'Haiti','HT'),(95,'Heard Island And Mcdonald Islands','HM'),(96,'Holy See (vatican City State)','VA'),(97,'Honduras','HN'),(98,'Hong Kong','HK'),(99,'Hungary','HU'),(100,'Iceland','IS'),(101,'India','IN'),(102,'Indonesia','ID'),(103,'Iran, Islamic Republic Of','IR'),(104,'Iraq','IQ'),(105,'Ireland','IE'),(106,'Isle Of Man','IM'),(107,'Israel','IL'),(108,'Italy','IT'),(109,'Jamaica','JM'),(110,'Japan','JP'),(111,'Jersey','JE'),(112,'Jordan','JO'),(113,'Kazakhstan','KZ'),(114,'Kenya','KE'),(115,'Kiribati','KI'),(116,'Korea, Democratic People\'s Republic Of','KP'),(117,'Korea, Republic Of','KR'),(118,'Kuwait','KW'),(119,'Kyrgyzstan','KG'),(120,'Lao People\'s Democratic Republic','LA'),(121,'Latvia','LV'),(122,'Lebanon','LB'),(123,'Lesotho','LS'),(124,'Liberia','LR'),(125,'Libyan Arab Jamahiriya','LY'),(126,'Liechtenstein','LI'),(127,'Lithuania','LT'),(128,'Luxembourg','LU'),(129,'Macao','MO'),(130,'Macedonia, The Former Yugoslav Republic Of','MK'),(131,'Madagascar','MG'),(132,'Malawi','MW'),(133,'Malaysia','MY'),(134,'Maldives','MV'),(135,'Mali','ML'),(136,'Malta','MT'),(137,'Marshall Islands','MH'),(138,'Martinique','MQ'),(139,'Mauritania','MR'),(140,'Mauritius','MU'),(141,'Mayotte','YT'),(142,'Mexico','MX'),(143,'Micronesia, Federated States Of','FM'),(144,'Moldova, Republic Of','MD'),(145,'Monaco','MC'),(146,'Mongolia','MN'),(147,'Montserrat','MS'),(148,'Morocco','MA'),(149,'Mozambique','MZ'),(150,'Myanmar','MM'),(151,'Namibia','NA'),(152,'Nauru','NR'),(153,'Nepal','NP'),(154,'Netherlands','NL'),(155,'Netherlands Antilles','AN'),(156,'New Caledonia','NC'),(157,'New Zealand','NZ'),(158,'Nicaragua','NI'),(159,'Niger','NE'),(160,'Nigeria','NG'),(161,'Niue','NU'),(162,'Norfolk Island','NF'),(163,'Northern Mariana Islands','MP'),(164,'Norway','NO'),(165,'Oman','OM'),(166,'Pakistan','PK'),(167,'Palau','PW'),(168,'Palestinian Territory, Occupied','PS'),(169,'Panama','PA'),(170,'Papua New Guinea','PG'),(171,'Paraguay','PY'),(172,'Peru','PE'),(173,'Philippines','PH'),(174,'Pitcairn','PN'),(175,'Poland','PL'),(176,'Portugal','PT'),(177,'Puerto Rico','PR'),(178,'Qatar','QA'),(179,'Reunion','RE'),(180,'Romania','RO'),(181,'Russian Federation','RU'),(182,'Rwanda','RW'),(183,'Saint Helena','SH'),(184,'Saint Kitts And Nevis','KN'),(185,'Saint Lucia','LC'),(186,'Saint Pierre And Miquelon','PM'),(187,'Saint Vincent And The Grenadines','VC'),(188,'Samoa','WS'),(189,'San Marino','SM'),(190,'Sao Tome And Principe','ST'),(191,'Saudi Arabia','SA'),(192,'Senegal','SN'),(193,'Serbia And Montenegro','CS'),(194,'Seychelles','SC'),(195,'Sierra Leone','SL'),(196,'Singapore','SG'),(197,'Slovakia','SK'),(198,'Slovenia','SI'),(199,'Solomon Islands','SB'),(200,'Somalia','SO'),(201,'South Africa','ZA'),(202,'South Georgia And The South Sandwich Islands','GS'),(203,'Spain','ES'),(204,'Sri Lanka','LK'),(205,'Sudan','SD'),(206,'Suriname','SR'),(207,'Svalbard And Jan Mayen','SJ'),(208,'Swaziland','SZ'),(209,'Sweden','SE'),(210,'Switzerland','CH'),(211,'Syrian Arab Republic','SY'),(212,'Taiwan, Province Of China','TW'),(213,'Tajikistan','TJ'),(214,'Tanzania, United Republic Of','TZ'),(215,'Thailand','TH'),(216,'Timor-leste','TL'),(217,'Togo','TG'),(218,'Tokelau','TK'),(219,'Tonga','TO'),(220,'Trinidad And Tobago','TT'),(221,'Tunisia','TN'),(222,'Turkey','TR'),(223,'Turkmenistan','TM'),(224,'Turks And Caicos Islands','TC'),(225,'Tuvalu','TV'),(226,'Uganda','UG'),(227,'Ukraine','UA'),(228,'United Arab Emirates','AE'),(229,'United Kingdom','GB'),(230,'United States','US'),(231,'United States Minor Outlying Islands','UM'),(232,'Uruguay','UY'),(233,'Uzbekistan','UZ'),(234,'Vanuatu','VU'),(235,'Venezuela','VE'),(236,'Viet Nam','VN'),(237,'Virgin Islands, British','VG'),(238,'Virgin Islands, U.S.','VI'),(239,'Wallis And Futuna','WF'),(240,'Western Sahara','EH'),(241,'Yemen','YE'),(242,'Zambia','ZM'),(243,'Zimbabwe','ZW');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `town` varchar(255) NOT NULL,
  `id_country` int(11) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_country` (`id_country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `create_by` (`create_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `create_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `create_by` (`create_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_lines`
--

DROP TABLE IF EXISTS `order_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_lines`
--

LOCK TABLES `order_lines` WRITE;
/*!40000 ALTER TABLE `order_lines` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `pp_status` tinyint(1) NOT NULL DEFAULT '0',
  `txn_id` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `ipn` text,
  `response` varchar(100) DEFAULT NULL,
  `note` text,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer` (`id_customer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weight` int(11) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `display` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `processor` varchar(255) DEFAULT NULL,
  `keyboard` varchar(255) DEFAULT NULL,
  `graphics` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `battery` varchar(255) DEFAULT NULL,
  `wifi` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `description` text,
  `create_time` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `create_by` (`create_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_provider` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `unit` varchar(20) NOT NULL,
  `price1` decimal(8,2) NOT NULL,
  `price2` decimal(8,2) NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT '0',
  `id_discount` int(11) NOT NULL DEFAULT '0',
  `id_promotion` int(11) NOT NULL DEFAULT '0',
  `warranty` varchar(255) DEFAULT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_category` (`id_category`),
  KEY `id_promotion` (`id_promotion`),
  KEY `id_discount` (`id_discount`),
  KEY `create_by` (`create_by`),
  KEY `id_provider` (`id_provider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `create_by` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `create_by` (`create_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `tax_code` varchar(20) DEFAULT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-13 15:32:22
