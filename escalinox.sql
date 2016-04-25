-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: escalinox
-- ------------------------------------------------------
-- Server version	5.5.38-0+wheezy1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'escalinox','escalinox33','administrateur'),(2,'admin','admin335','ico');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `adresse` varchar(250) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `message` text,
  `newsletter` tinyint(4) NOT NULL DEFAULT '0',
  `fromgoldbook` tinyint(4) NOT NULL DEFAULT '0',
  `fromcontact` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (4,'Fránck','Langleron.','','','','franck_langleron@hotmail.com','0650735822','',1,0,1);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_categorie`
--

DROP TABLE IF EXISTS `contact_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_categorie` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_categorie` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_categorie`
--

LOCK TABLES `contact_categorie` WRITE;
/*!40000 ALTER TABLE `contact_categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldbook`
--

DROP TABLE IF EXISTS `goldbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (1,'2015-09-06 00:00:00','Franck Langleron','franck_langleron@hotmail.com','Très professionnel ! je recommande!!',0),(2,'2015-09-07 00:00:00','Xavier Gonzalez','xavier@gonzalez.pm','Prestation nickel, très pro, très satisfait',1),(3,'2015-11-07 00:00:00','L\'angléron','franck_langleron@hotmail.com','mon message \r\nc\'est ça!!!',1),(4,'2015-11-22 00:00:00','L\'angléron','franck_langleron@hotmail.com','Blablabla...',1);
/*!40000 ALTER TABLE `goldbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_news`
--

DROP TABLE IF EXISTS `media_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `url_media` varchar(250) NOT NULL,
  `url_apercu` varchar(250) NOT NULL,
  `type_media` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`id_news`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_news`
--

LOCK TABLES `media_news` WRITE;
/*!40000 ALTER TABLE `media_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `date_news` date NOT NULL,
  `titre` varchar(250) NOT NULL,
  `contenu` text,
  `image1` varchar(250) DEFAULT NULL,
  `accueil` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (30,'2015-11-07','Nouveaux produits','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type speci','/Photo_5-30.jpg',1),(31,'2015-11-22','Nouvelle réalisation Ensemble chaudronné',' Lòrem ipsum dolor sit amet, consectetur adipiscing elit. Donec pellentesque ut risus id aliquam. Duis dapibus rhoncus neque ac tempus. Nunc laoreet tincidunt libero, a fermentum lacus semper ac. Donec lobortis pretium urna euismod auctor. Duis ut mattis metus, ac ultricies eros. Etiam a porta purus, efficitur pulvinar nibh. Mauris a rutrum quam. In arcu leo, egestas vitae mi a, viverra finibus mauris. Nunc consectetur tellus at ligula pulvinar sodales efficitur quis est. Proin porttitor massa mauris, ut vulputate nulla malesuada sed. Mauris fermentum fermentum rhoncus. Nullam convallis at enim at placerat. Nulla ut augu','/Photo_4-31.jpg',0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `bas_page` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (12,'2015-01-01 00:00:00','Ceci est la toute nouvelle actu',' ');
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_detail`
--

DROP TABLE IF EXISTS `newsletter_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_newsletter` int(10) unsigned NOT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `texte` text,
  PRIMARY KEY (`id`,`id_newsletter`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_detail`
--

LOCK TABLES `newsletter_detail` WRITE;
/*!40000 ALTER TABLE `newsletter_detail` DISABLE KEYS */;
INSERT INTO `newsletter_detail` VALUES (326,12,'','/IMG_5187-12.jpg','http://dev.votreimmopro.com','');
/*!40000 ALTER TABLE `newsletter_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference`
--

DROP TABLE IF EXISTS `reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `titre_accueil` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `fichier_pdf` varchar(100) NOT NULL,
  `accueil` enum('0','1') NOT NULL DEFAULT '0',
  `online` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference`
--

LOCK TABLES `reference` WRITE;
/*!40000 ALTER TABLE `reference` DISABLE KEYS */;
INSERT INTO `reference` VALUES (1,'mon titre','mon titre accueil','description...','/rib-1.pdf','0','1'),(2,'Nouvelle Ref','Ref titre',' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet velit blandit, gravida mauris quis, viverra elit. Proin dictum mollis mauris eget rutrum. Fusce luctus pharetra nisi ac luctus. Nulla posuere felis vitae nisl varius imperdiet. Praesent elementum consequat sapien, quis tincidunt quam cursus id. Duis in est blandit, gravida ligula nec, rutrum mi. Quisque sagittis semper erat, nec congue metus volutpat eget. Vestibulum neque risus, tristique id porta vel, fringilla eu mi. Sed blandit eleifend ante sit amet eleifend. Sed id lectus sed enim ultricies pretium vel at nisl.\r\n\r\nNam tempus ipsum ac leo elementum, et interdum sapien sollicitudin. Etiam mauris arcu, laoreet sed volutpat ut, sagittis ac ex. Quisque eu auctor nibh, id euismod nisi. Mauris interdum, enim eu dictum posuere, eros lorem pulvinar nulla, condimentum ultrices mauris nisl vitae nulla. Sed imperdiet condimentum massa tempus sodales. Suspendisse consequat purus ac dignissim euismod. Aliquam a metus purus. Sed egestas magna urna. Aenean non ligula lorem. Pellentesque dignissim velit vitae rutrum feugiat. Aenean convallis metus vel pharetra rhoncus. Donec viverra sem quis mauris pretium, id maximus arcu finibus.\r\n\r\nNunc at lacus non felis mollis mollis et fringilla libero. Maecenas facilisis in turpis rutrum feugiat. Pellentesque et dolor eget nibh finibus maximus. Donec cursus leo in odio tristique, a lacinia odio convallis. Cras ornare risus id mattis bibendum. Duis ullamcorper magna luctus justo eleifend, sed imperdiet sapien convallis. Sed consequat mollis ante, auctor ullamcorper purus imperdiet a. Etiam eu ultrices quam. Morbi fermentum lectus et auctor dignissim. Cras mattis risus id tortor lobortis, et fermentum sem tincidunt. ','','0','1'),(3,'Ensemble chaudronné','Ensemble chaudronné','Réalisation d\'un ensemble chaudronné comportant deux trémies ainsi qu\'un conduit avec brides soudés','','0','1'),(4,'L\'ultime','L\'ultime test',' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet velit blandit, gravida mauris quis, viverra elit. Proin dictum mollis mauris eget rutrum. Fusce luctus pharetra nisi ac luctus. Nulla posuere felis vitae nisl varius imperdiet. Praesent elementum consequat sapien, quis tincidunt quam cursus id. Duis in est blandit, gravida ligula nec, rutrum mi. Quisque sagittis semper erat, nec congue metus volutpat eget. Vestibulum neque risus, tristique id porta vel, fringilla eu mi. Sed blandit eleifend ante sit amet eleifend. Sed id lectus sed enim ultricies pretium vel at nisl.\r\n\r\nNam tempus ipsum ac leo elementum, et interdum sapien sollicitudin. Etiam mauris arcu, laoreet sed volutpat ut, sagittis ac ex. Quisque eu auctor nibh, id euismod nisi. Mauris interdum, enim eu dictum posuere, eros lorem pulvinar nulla, condimentum ultrices mauris nisl vitae nulla. Sed imperdiet condimentum massa tempus sodales. Suspendisse consequat purus ac dignissim euismod. Aliquam a metus purus. Sed egestas magna urna. Aenean non ligula lorem. Pellentesque dignissim velit vitae rutrum feugiat. Aenean convallis metus vel pharetra rhoncus. Donec viverra sem quis mauris pretium, id maximus arcu finibus. ','','0','1'),(5,'Plateforme de travail pour une industrie alimentaire','Plateforme de travail ','Réalisation d\'une plateforme de travail en aluminium et de trémies inox 304 L déversant du sucre','','0','1');
/*!40000 ALTER TABLE `reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_image`
--

DROP TABLE IF EXISTS `reference_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_image` (
  `num_image` int(11) NOT NULL AUTO_INCREMENT,
  `num_reference` int(11) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `defaut` enum('oui','non') NOT NULL DEFAULT 'non',
  PRIMARY KEY (`num_image`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_image`
--

LOCK TABLES `reference_image` WRITE;
/*!40000 ALTER TABLE `reference_image` DISABLE KEYS */;
INSERT INTO `reference_image` VALUES (21,3,'/Photo_5-3.jpg','non'),(22,3,'/Photo_6-3.jpg','non'),(23,4,'/Photo_4-4.jpg','non'),(24,4,'/Photo_6-4.jpg','oui'),(25,1,'/Photo_2-1.jpg','non'),(26,1,'/Photo_5-1.jpg','oui'),(27,2,'/Photo_1-2.jpg','oui'),(28,5,'/Photo_1-5.jpg','oui'),(29,5,'/Photo_2-5.jpg','non'),(30,5,'/Photo_3-5.jpg','non'),(31,3,'/Photo_4-3.jpg','oui');
/*!40000 ALTER TABLE `reference_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-25 12:33:09
