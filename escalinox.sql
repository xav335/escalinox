-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: escalinox
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb8u1

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (4,'Fránck','Langleron.','','','','franck_langleron@hotmail.com','0650735822','',1,0,1),(5,'xavier','gonzalez','','','','xavier@gonzalez.pm','06 81 73 18 70','test de message ',0,0,1),(6,'TARTINE','MIONZE','','17220','LA JARRILAND','EDDYMIONZE@FREE.FR','05 46 35 44 04','ouah, il est beau ce site, Bravo pour ce travail fait avec passion, j\'adore ce beau portail, je veux le même!!!!\r\n\r\nje vous fais plein de bisous bon courage et à bientôt!!',0,0,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference`
--

LOCK TABLES `reference` WRITE;
/*!40000 ALTER TABLE `reference` DISABLE KEYS */;
INSERT INTO `reference` VALUES (1,'   Plateforme de travail inox pour chai de vin','   Plateforme de travail inox pour chai de vin','Réalisation d\'une plateforme de travail en inox 316L et caillebotis galvanisés.\r\nLa main courante est alimentée en eau.\r\nChaque cheminée de citerne dispose d\'une vanne d\'alimentation permettant un nettoyage pratique de celle ci.\r\nLes vannes d\'alimentation sont directement soudées sur la main courante.','','0','1'),(2,'  Coursive en acier galvanisé et platelage en bois','  Coursive en acier galvanisé et platelage en bois','Réalisation d\'une coursive en acier galvanisé et garde corps sur un projet de rénovation.\r\nRéalisation d\'une verrière d\'atelier effet rouille de type ancien avec une fenêtre faisant office de passe plats.','','0','1'),(3,'     Ensemble chaudronné','     Ensemble chaudronné ','Réalisation d\'un ensemble chaudronné comportant deux trémies ainsi qu\'un conduit avec brides soudés','','0','1'),(5,'  Plateforme de travail pour une industrie alimentaire',' Plateforme de travail ','Réalisation d\'une plateforme de travail en aluminium et de trémies inox 304 L déversant du sucre','','0','1'),(6,' Borne multiservices',' Borne multiservices','Réalisation de bornes multiservices en petites ou grandes séries.','','0','1'),(7,'    Carters inox 316 L','    Carters inox 316 L','Réalisation de carters inox 316 L découpés au laser puis pliés, assembés et soudés.\r\nRéalisation de petites, moyennes et grandes séries.','','0','1'),(8,'     Boitiers de contrôle en aluminium','     Boitiers de contrôle en aluminium','Réalisation de boitiers de contrôle en aluminium. \r\nSoudure TIG alu\r\nPonçage des boitiers avant thermolaquage.\r\n','','0','1'),(9,'Agencement d\'un restaurant gastronomique','Agencement d\'un restaurant gastronomique','Habillage d\'une cloison cintrée et fabrication de portes coulissantes revenant à fleur de cloison, lorsque celles-ci sont fermées. \r\nL\'habillage se compose de trois matières différentes : le bandeau en alu brossé ; au milieu un habillage en acier que nous avons fait rouiller puis stopper par la suite pour un aspect \"terre de mars\" ; le bas, quant à lui, est en inox brossé, embouti, rappelant le processus d\'une ébullition en cuisine.\r\nLes poignées ont été entièrement créées.\r\nHabillage de l\'escalier et des autres portes du restaurant en inox brossé.\r\n\r\n','','0','1'),(10,'Porte verrière','Porte verrière','Création d\'une porte verrière et son encadrement sur mesure en acier thermolaqué gris anthracite ; verre feuilleté 44/2 (fort pouvoir isolant acoustiquement)\r\n','','0','0'),(11,'Tuyauterie','Tuyauterie','Ensemble de tuyauterie pour circuit hydraulique (diamètre 114 mm)','','0','0'),(12,'Rechargement galet','Rechargement galet','Rechargement galet','','0','0'),(13,'Pièce retournement','Pièce retournement','Pièce retournement','','0','0'),(14,'Pupitre','Pupitre','Pupitre','','0','0'),(15,'Nos portails','Nos portails','Portail 1 coulissant en acier galvanisé effet pointe de diamant - dimension 6 m * 1m60\r\nPortail 2 coulissant en aluminium entièrement soudé et thermolaqué - dimension 3m50 * 1m60\r\nPortail 3 double battant en acier galvanisé puis thermolaqué, effet pointe de diamant\r\nPortail 4 double battant en alu, entièrement soudé puis thermolaqué ral 7016','','0','0'),(16,'    Chassis bac hydraulique','    Chassis bac hydraulique','Chassis permettant de fixer des éléments hydrauliques avec son bac de rétention plié et soudé, à la base.','','0','1'),(17,'      Réservoir hydraulique inox','      Réservoir hydraulique inox','Réalisation d\'un bac de rétention hydraulique inox 316 L avec son capot et ses deux échelles','','0','1'),(18,'Citernes, pare chocs arrières et arceaux de camions de pompiers','Citernes, pare chocs arrières et arceaux de camions de pompiers','Réalisation de citerne et pare chocs arrières pour camions de pompiers.\r\nFabrication des arceaux en inox avec des soudures étanches, permettant à l\'eau de circuler dedans.','','0','0'),(19,'Carter d\'autoportée','Carter d\'autoportée','Carter d\'autoportée','','0','0');
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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_image`
--

LOCK TABLES `reference_image` WRITE;
/*!40000 ALTER TABLE `reference_image` DISABLE KEYS */;
INSERT INTO `reference_image` VALUES (23,4,'/Photo_4-4.jpg','non'),(24,4,'/Photo_6-4.jpg','oui'),(38,3,'/Photo_4-3.jpg','oui'),(39,3,'/Photo_5-3.jpg','non'),(40,3,'/Photo_6-3.jpg','non'),(41,5,'/Photo_1-5.jpg','oui'),(42,5,'/Photo_2-5.jpg','non'),(43,5,'/Photo_3-5.jpg','non'),(47,1,'/PHOTO_MANU_303-1.jpg','non'),(48,1,'/DSC00959-1.jpg','oui'),(49,1,'/DSC00956-1.jpg','non'),(50,1,'/DSC00969-1.jpg','non'),(51,1,'/DSC00966-1.jpg','non'),(52,1,'/DSC00965-1.jpg','non'),(53,1,'/DSC00963-1.jpg','non'),(54,1,'/DSC00973-1.jpg','non'),(55,2,'/P1010828-2.jpg','non'),(56,2,'/P1010829-2.jpg','non'),(57,2,'/P1010830-2.jpg','oui'),(58,2,'/P1010835-2.jpg','non'),(59,2,'/P1010840-2.jpg','non'),(60,2,'/P1020113-2.jpg','non'),(61,6,'/P1040568-6.jpg','oui'),(62,6,'/P1040569-6.jpg','non'),(63,6,'/P1040570-6.jpg','non'),(64,6,'/P1040571-6.jpg','non'),(67,7,'/20160720_164037-7.jpg','oui'),(68,7,'/20160720_164604-7.jpg','non'),(69,7,'/20160720_163954-7.jpg','non'),(70,8,'/20160712_094011-8.jpg','non'),(71,8,'/20160712_094035-8.jpg','non'),(72,8,'/20160712_094139-8.jpg','non'),(73,8,'/20160712_094158-8.jpg','non'),(74,8,'/20160712_094215-8.jpg','non'),(77,8,'/20160712_111333-8.jpg','non'),(78,8,'/20160729_160015-8.jpg','non'),(79,8,'/20160729_160106-8.jpg','oui'),(80,8,'/20160729_160242-8.jpg','non'),(81,9,'/P1040528-9.jpg','oui'),(82,9,'/P1040493-9.jpg','non'),(83,9,'/P1040535-9.jpg','non'),(84,9,'/P1040555-9.jpg','non'),(85,9,'/P1040546-9.jpg','non'),(86,9,'/P1040488-9.jpg','non'),(87,9,'/P1040441-9.jpg','non'),(88,10,'/DSC03941-10.jpg','oui'),(89,10,'/DSC03942-10.jpg','non'),(90,10,'/DSC03943-10.jpg','non'),(91,10,'/DSC03944-10.jpg','non'),(92,10,'/20141121_124907-10.jpg','non'),(94,11,'/DSC04162-11.jpg','non'),(95,11,'/Tuyauterie_de_contr_le-11.jpg','non'),(96,11,'/Tuyauterie-11.jpg','oui'),(97,11,'/DSC04171-11.jpg','non'),(98,12,'/P1000607-12.jpg','oui'),(99,12,'/P1000605-12.jpg','non'),(100,12,'/P1000610-12.jpg','non'),(101,12,'/P1000609-12.jpg','non'),(102,13,'/P1010727-13.jpg','oui'),(104,13,'/P1010675-13.jpg','non'),(105,13,'/P1010680-13.jpg','non'),(106,13,'/P1010667-13.jpg','non'),(107,14,'/P1000627-14.jpg','oui'),(108,14,'/P1000629-14.jpg','non'),(109,14,'/P1000630-14.jpg','non'),(110,15,'/Maryseee-15.jpg','oui'),(111,15,'/Marysee-15.jpg','non'),(118,15,'/20160810_081324-15.jpg','non'),(119,15,'/David-15.jpg','non'),(120,15,'/Davidd-15.jpg','non'),(121,15,'/Portail_1-15.jpg','non'),(122,15,'/portail_2-15.jpg','non'),(123,15,'/Portail_Cyril-15.jpg','non'),(124,15,'/portail_cyril_peint-15.jpeg','non'),(125,16,'/DSC04295-16.jpg','oui'),(126,16,'/DSC04302-16.jpg','non'),(127,16,'/DSC04297-16.jpg','non'),(128,16,'/DSC04300-16.jpg','non'),(129,17,'/DSC04353-17.jpg','oui'),(130,17,'/DSC04305-17.jpg','non'),(131,17,'/DSC04303-17.jpg','non'),(132,17,'/DSC04309-17.jpg','non'),(133,17,'/DSC04315-17.jpg','non'),(134,18,'/Capture-18.png','oui'),(135,18,'/DSC04237-18.jpg','non'),(136,18,'/DSC04166-18.jpg','non'),(139,19,'/20161028_102025-19.jpg','oui'),(140,19,'/20161028_101942-19.jpg','non'),(141,19,'/20161028_102107-19.jpg','non'),(142,18,'/20160810_081124-18.jpg','non'),(143,18,'/20160810_081221-18.jpg','non'),(144,18,'/20160921_112526-18.jpg','non'),(145,18,'/20160920_100811-18.jpg','non'),(146,18,'/20160920_141024-18.jpg','non'),(147,18,'/20160921_113536-18.jpg','non');
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

-- Dump completed on 2016-12-09 10:18:21
