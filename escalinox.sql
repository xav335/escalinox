-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: escalinox
-- ------------------------------------------------------
-- Server version	5.5.58-0+deb8u1

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (4,'Fránck','Langleron.','','','','franck_langleron@hotmail.com','0650735822','',1,0,1),(5,'xavier','gonzalez','','','','xavier@gonzalez.pm','06 81 73 18 70','test de message ',0,0,1),(6,'TARTINE','MIONZE','','17220','LA JARRILAND','EDDYMIONZE@FREE.FR','05 46 35 44 04','ouah, il est beau ce site, Bravo pour ce travail fait avec passion, j\'adore ce beau portail, je veux le même!!!!\r\n\r\nje vous fais plein de bisous bon courage et à bientôt!!',0,0,1),(7,'ilhé\'rtk:g','y\"jz(yj(sj','zrj(-is(èz-udsgjd','srtjsrujzr','trqhrqsisr','manucynthia1@gmail.com','0612063049','cc',0,0,1),(8,'OLIVIER','COURBOT','3 RUE DE MAGNAN NORD','33450','SAINT SULPICE ET CAMEYRAC','oliviercourbot@sfr.fr','0687489162','bonjour,\r\nje suis venu vous voir debut de semaine derniere pour un plan de travail en tole damier avez vous le prix et delai \r\ncordialement',0,0,1),(9,'Nicolas','Charrié ','18 lot le lavoir ','33370','Tresses','nicchar@hotmail.com','0688318495','Rebonsoir,\r\n\r\nSuite à notre discussion de tout à l\'heure, voici les dimensions du \"U\": 640x1650x640 sur 1500 + 30 de large et une plaque de 1650x660 dont retour de 30 mm sur les 660.\r\nSinon, à la place du U, deux plaques de 1530x680 dont 40 de retour sur les 680.\r\nPlus ou moins 1cm sur les retours, à voir.\r\n\r\nMerci encore. \r\nBonne semaine.\r\nNicolas, voisin de Jean Marie...',0,0,1),(10,'Arnaud','Marchand','22 Rochereau','33230','Abzac','contact@gidonet.fr','0640177658','Bonjour,\r\n\r\nJe me présente, je suis Mr Marchand Arnaud, jeune entrepreneur ayant 4 ans d\'expérience dans le nettoyage industriel.\r\n\r\nÉtant récemment à mon compte dans le nettoyage industriel sur la commune d\'Abzac, je souhaite mettre à profit mon expérience dans le nettoyage industriel.\r\n\r\nNous possédons une clientèle diverse et variée :\r\n- Des avocats sur Coutras et Saint-Seurin-Sur-l\'Isle\r\n- Des fleuristes sur Coutras\r\n- Les rhums Guiose à Saint-Seurin-Sur-l\'Isle\r\n- La ville de Coutras (CCAS et château d\'Eygreteau)\r\n\r\nJe souhaiterais savoir si vous avez déjà une société de nettoyage qui s\'occupe de votre prestation, ou si vous souhaitez confier cette tâche à une entreprise de nettoyage.\r\n\r\nJe suis à votre disposition pour tout entretien et éventuellement le cas échéant la visite de vos locaux afin de voir avec vous les différents besoins de nettoyage et/ou de vitrerie dont vous pourriez bénéficier au sein de ma structure.\r\n\r\nDans l\'attente de votre réponse, recevez mes sincères salutations.\r\n\r\nCordialement,\r\n\r\nMr Marchand Arnaud. ',0,0,1),(11,'ICONEO','GONZALEZ','12 route de Bordeaux','33360','latresnL','jgonzalez@iconeo.fr','0681731870','Maintenance serveur = Test de production\r\n',0,0,1),(12,'Michał','Wygoda','kossynierów 48','41219','sosnowiec','m.wygoda@polstalsj.pl','+48601536887','Bonjour, \r\n  \r\nNous sommes une entreprise  polonaise  ,,POLSTAL” specialisée dans  la production et distribution de produits d’acier au carbone, l’inox mais aussi d\'acier de qualité, résistant à l\'acide et à la chaleur. \r\nAcier au carbone dans les categories: S235JR+N, S235JRC+N, S355J2+N, S355J2C+N,\r\nAciers pour chaudières/P235GH/P265GH/P355GH/16Mo3/13CrMo4-5/10CrMo9-10/P265-355NH, NL1, NLS, S355-460 NL\r\nNous fournissons stock et directement fabriqués en Pologne et Europe. Nous avons l’usine de production, qui nous permet de notre usine  où il y a le production de la plupart de nos produits fait aussi se realise aussi les services de comme: coupe, soudre, peinture, pliage, forage etc. \r\n  \r\nNous realisons des offres spéciales en prenous en consideration les attendu de nos clients. \r\n Nos prix sont inférieurs aux prix des autres producteurs  et la qualité de nos produits est supérieure.\r\nSi vous êtes intéressé de la par cette offre, je vous prie de nous contacter a l’ intermediare de telephone: +48 601 536 887 ou par e-mail. Après avoir connu vos besoins nous allons  vous preparer  votre commande avec le prix de produit et les condition de livraison. \r\nVouilez trouver ci-joint les informations de notre société et notre offre. \r\nC’est un video a propos de nous :  \r\nhttps://www.youtube.com/watch?v=c_j5PhsjgY8\r\n\r\nCordialement,\r\n\r\n\r\nMichał Wygoda \r\n\r\nDépartement Export\r\n',0,0,1),(13,'francois ','alonso','19 avenue des provinces ','33370','artigues pres bordeaux','alonso-francois@orange.fr','0628693363','bonsoir , je serai interressé par le devis pour un escalier et un garde corps en acier galvanisé a chaud ( ou autre ) d\'une plateforme beton de 2metres par 2 metres a une hauteur de 1m30',0,0,1),(14,'Jean','Duval','67, Chemin du Gary','33450','Saint-Loubès','jean.duval.aero@outlook.fr','0623763237','Bonjour, \r\nje me permets de vous contactez car je suis actuellement à la recherche d\'une entreprise qui aurait la possibilité de me prendre en alternance pour mon BAC PRO Technicien en Chaudronnerie Industriel. Et c\'est donc pour cela que je vous contacte, pour savoir si vous prenez des alternants pour Septembre prochain.\r\nCordialement, Duval Jean ',0,0,1),(15,'cluzeau','damien','Sylvain bois','23 route d','saint denis de pile','maintenance@sylvain-bois.fr','0651064740','bonjour\r\n\r\nje vous sollicite pour la réalisation d\'un carter de protection en acier \r\ncette demande est assez urgente \r\nVous pouvez me contacter au 0651064740\r\nje vous en remercie par avance',0,0,1),(16,'Yakinto','Garcia','23 rue des Gemeaux','33450 ','Saint Loubes','denis.lefebvre111@orange.fr','06.78.49.87.26','Bonjour\r\nJe suis en terminale chaudronnerie industrielle du lycée Jean Taris à Peyrehorade.\r\nM\'accepteriez vous en stage du 19 novembre au 21 décembre 2018 ?\r\nCordialement.\r\nYakinto Garcia.',0,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2018-01-19','Nos nouvelles réalisations','Venez découvrir nos nouvelles réalisations : portails, verrières, escaliers, portes de garage... \r\nTout est réalisé sur mesure et les pièces sont uniques.\r\n\r\nNous sommes à votre écoute pour tous vos projets !\r\n\r\nTous nos devis sont entièrement gratuits alors n\'hésitez pas à nous contacter !','/20171102_132117-1.jpg',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference`
--

LOCK TABLES `reference` WRITE;
/*!40000 ALTER TABLE `reference` DISABLE KEYS */;
INSERT INTO `reference` VALUES (1,'       Plateforme de travail inox pour chai de vin','       Plateforme de travail inox pour chai de vin','Réalisation d\'une plateforme de travail en inox 316L et caillebotis galvanisés.\r\nLa main courante est alimentée en eau.\r\nChaque cheminée de citerne dispose d\'une vanne d\'alimentation permettant un nettoyage pratique de celle ci.\r\nLes vannes d\'alimentation sont directement soudées sur la main courante.','','0','1'),(2,'         Coursive en acier galvanisé et platelage en bois','         Coursive en acier galvanisé et platelage en bois','Réalisation d\'une coursive en acier galvanisé et garde corps sur un projet de rénovation.\r\nRéalisation d\'une verrière d\'atelier effet rouille de type ancien avec une fenêtre faisant office de passe plats.','','0','1'),(3,'     Ensemble chaudronné','     Ensemble chaudronné ','Réalisation d\'un ensemble chaudronné comportant deux trémies ainsi qu\'un conduit avec brides soudés','','0','1'),(5,'  Plateforme de travail pour une industrie alimentaire',' Plateforme de travail ','Réalisation d\'une plateforme de travail en aluminium et de trémies inox 304 L déversant du sucre','','0','1'),(6,' Borne multiservices',' Borne multiservices','Réalisation de bornes multiservices en petites ou grandes séries.','','0','1'),(7,'    Carters inox 316 L','    Carters inox 316 L','Réalisation de carters inox 316 L découpés au laser puis pliés, assembés et soudés.\r\nRéalisation de petites, moyennes et grandes séries.','','0','1'),(8,'     Boitiers de contrôle en aluminium','     Boitiers de contrôle en aluminium','Réalisation de boitiers de contrôle en aluminium. \r\nSoudure TIG alu\r\nPonçage des boitiers avant thermolaquage.\r\n','','0','1'),(9,'       Agencement d\'un restaurant gastronomique','       Agencement d\'un restaurant gastronomique','Habillage d\'une cloison cintrée et fabrication de portes coulissantes revenant à fleur de cloison, lorsque celles-ci sont fermées. \r\nL\'habillage se compose de trois matières différentes : le bandeau en alu brossé ; au milieu un habillage en acier que nous avons fait rouiller puis stopper par la suite pour un aspect \"terre de mars\" ; le bas, quant à lui, est en inox brossé, embouti, rappelant le processus d\'une ébullition en cuisine.\r\nLes poignées ont été entièrement créées.\r\nHabillage de l\'escalier et des autres portes du restaurant en inox brossé.\r\n\r\n','','0','1'),(10,'         Nos verrières et portes verrières','         Nos verrières et portes verrières','Réalisation porte et verrière d\'atelier en acier noir mat ; Verre feuilleté 33/2 - fermeture à l\'ancienne avec crémone.\r\n\r\nCréation d\'une porte verrière et son encadrement sur mesure en acier thermolaqué gris anthracite ; verre feuilleté 44/2 (fort pouvoir isolant acoustiquement)\r\n','','0','1'),(11,'       Tuyauterie','       Tuyauterie','Ensemble de tuyauterie pour circuit hydraulique (diamètre 114 mm)','','0','1'),(12,'Rechargement galet','Rechargement galet','Rechargement galet','','0','0'),(13,'Pièce retournement','Pièce retournement','Pièce retournement en acier soudée au TIG','','0','1'),(14,'Pupitre','Pupitre','Pupitre','','0','0'),(15,'         Nos portails','         Nos portails','Portail 1 coulissant en acier galvanisé effet pointe de diamant - dimension 6 m * 1m60\r\n\r\nPortail 2 coulissant en aluminium entièrement soudé et thermolaqué - dimension 3m50 * 1m60\r\n\r\nPortail 3 double battant en acier galvanisé puis thermolaqué, effet pointe de diamant\r\n\r\nPortail 4 double battant en alu, entièrement soudé puis thermolaqué ral 7016','','0','1'),(16,'    Chassis bac hydraulique','    Chassis bac hydraulique','Chassis permettant de fixer des éléments hydrauliques avec son bac de rétention plié et soudé, à la base.','','0','1'),(17,'      Réservoir hydraulique inox','      Réservoir hydraulique inox','Réalisation d\'un bac de rétention hydraulique inox 316 L avec son capot et ses deux échelles','','0','1'),(18,'      Citernes, pare chocs arrières et arceaux de camions de pompiers','      Citernes, pare chocs arrières et arceaux de camions de pompiers','Réalisation de citernes et pare chocs arrières pour camions de pompiers.\r\nFabrication des arceaux en inox avec des soudures étanches, permettant à l\'eau de circuler à l\'intérieur.','','0','1'),(19,'Carter d\'auto portée','Carter d\'auto portée','Carter d’auto portée en inox 316L','','0','1'),(20,'        Portes de garage','        Portes de garage','Réalisations de portes de garage en acier galvanisé.\r\nSerrures et charnières inox.\r\nPortes entièrement réalisées sur mesure suivant les dimensions relevées sur place.','','0','1'),(21,'       Meuble Télé','       Meuble Télé','Réalisation d\'un meuble télé en acier brut vernis et bois vernis.\r\nPorte suspendue à galandage rappelant les portes de granges.\r\nTiroirs acier montés sur coulisses.','','0','1'),(22,'Quelques luminaires','Quelques luminaires','Luminaire','','0','0'),(23,'        Nos escaliers','        Nos escaliers','Escalier 1 : réalisation d\'un escalier colimaçon en acier brut, soudé sur place en TIG.\r\n\r\nEscalier 2 : Conception et réalisation d’un escalier en métal brute vernis et son garde corps avec sa main courante en bois.','','0','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_image`
--

LOCK TABLES `reference_image` WRITE;
/*!40000 ALTER TABLE `reference_image` DISABLE KEYS */;
INSERT INTO `reference_image` VALUES (23,4,'/Photo_4-4.jpg','non'),(24,4,'/Photo_6-4.jpg','oui'),(38,3,'/Photo_4-3.jpg','oui'),(39,3,'/Photo_5-3.jpg','non'),(40,3,'/Photo_6-3.jpg','non'),(41,5,'/Photo_1-5.jpg','oui'),(42,5,'/Photo_2-5.jpg','non'),(43,5,'/Photo_3-5.jpg','non'),(47,1,'/PHOTO_MANU_303-1.jpg','non'),(48,1,'/DSC00959-1.jpg','oui'),(49,1,'/DSC00956-1.jpg','non'),(50,1,'/DSC00969-1.jpg','non'),(51,1,'/DSC00966-1.jpg','non'),(52,1,'/DSC00965-1.jpg','non'),(53,1,'/DSC00963-1.jpg','non'),(54,1,'/DSC00973-1.jpg','non'),(55,2,'/P1010828-2.jpg','non'),(56,2,'/P1010829-2.jpg','non'),(57,2,'/P1010830-2.jpg','oui'),(58,2,'/P1010835-2.jpg','non'),(59,2,'/P1010840-2.jpg','non'),(60,2,'/P1020113-2.jpg','non'),(61,6,'/P1040568-6.jpg','oui'),(62,6,'/P1040569-6.jpg','non'),(63,6,'/P1040570-6.jpg','non'),(64,6,'/P1040571-6.jpg','non'),(67,7,'/20160720_164037-7.jpg','oui'),(68,7,'/20160720_164604-7.jpg','non'),(69,7,'/20160720_163954-7.jpg','non'),(70,8,'/20160712_094011-8.jpg','non'),(71,8,'/20160712_094035-8.jpg','non'),(72,8,'/20160712_094139-8.jpg','non'),(73,8,'/20160712_094158-8.jpg','non'),(74,8,'/20160712_094215-8.jpg','non'),(77,8,'/20160712_111333-8.jpg','non'),(78,8,'/20160729_160015-8.jpg','non'),(79,8,'/20160729_160106-8.jpg','oui'),(80,8,'/20160729_160242-8.jpg','non'),(81,9,'/P1040528-9.jpg','oui'),(82,9,'/P1040493-9.jpg','non'),(83,9,'/P1040535-9.jpg','non'),(84,9,'/P1040555-9.jpg','non'),(85,9,'/P1040546-9.jpg','non'),(86,9,'/P1040488-9.jpg','non'),(87,9,'/P1040441-9.jpg','non'),(94,11,'/DSC04162-11.jpg','non'),(95,11,'/Tuyauterie_de_contr_le-11.jpg','non'),(96,11,'/Tuyauterie-11.jpg','oui'),(97,11,'/DSC04171-11.jpg','non'),(98,12,'/P1000607-12.jpg','oui'),(99,12,'/P1000605-12.jpg','non'),(100,12,'/P1000610-12.jpg','non'),(101,12,'/P1000609-12.jpg','non'),(102,13,'/P1010727-13.jpg','oui'),(104,13,'/P1010675-13.jpg','non'),(105,13,'/P1010680-13.jpg','non'),(106,13,'/P1010667-13.jpg','non'),(107,14,'/P1000627-14.jpg','oui'),(108,14,'/P1000629-14.jpg','non'),(109,14,'/P1000630-14.jpg','non'),(110,15,'/Maryseee-15.jpg','oui'),(111,15,'/Marysee-15.jpg','non'),(118,15,'/20160810_081324-15.jpg','non'),(119,15,'/David-15.jpg','non'),(120,15,'/Davidd-15.jpg','non'),(121,15,'/Portail_1-15.jpg','non'),(122,15,'/portail_2-15.jpg','non'),(123,15,'/Portail_Cyril-15.jpg','non'),(124,15,'/portail_cyril_peint-15.jpeg','non'),(125,16,'/DSC04295-16.jpg','oui'),(126,16,'/DSC04302-16.jpg','non'),(127,16,'/DSC04297-16.jpg','non'),(128,16,'/DSC04300-16.jpg','non'),(129,17,'/DSC04353-17.jpg','oui'),(130,17,'/DSC04305-17.jpg','non'),(131,17,'/DSC04303-17.jpg','non'),(132,17,'/DSC04309-17.jpg','non'),(133,17,'/DSC04315-17.jpg','non'),(134,18,'/Capture-18.png','oui'),(135,18,'/DSC04237-18.jpg','non'),(136,18,'/DSC04166-18.jpg','non'),(139,19,'/20161028_102025-19.jpg','oui'),(140,19,'/20161028_101942-19.jpg','non'),(141,19,'/20161028_102107-19.jpg','non'),(142,18,'/20160810_081124-18.jpg','non'),(143,18,'/20160810_081221-18.jpg','non'),(144,18,'/20160921_112526-18.jpg','non'),(145,18,'/20160920_100811-18.jpg','non'),(146,18,'/20160920_141024-18.jpg','non'),(147,18,'/20160921_113536-18.jpg','non'),(148,10,'/verri_re_2-10.jpg','oui'),(149,10,'/verri_re_2_bis-10.jpg','non'),(150,10,'/DSC03941-10.jpg','non'),(151,10,'/DSC03944-10.jpg','non'),(152,20,'/porte_garage_1-20.jpg','oui'),(153,20,'/porte_garage_2-20.jpg','non'),(154,20,'/porte_garage_3-20.jpg','non'),(155,20,'/porte_garage_4-20.jpg','non'),(156,20,'/porte_garage_5-20.jpg','non'),(157,20,'/porte_garage_6-20.jpg','non'),(158,20,'/porte_garage_7-20.jpg','non'),(159,21,'/20171016_190725-21.jpg','oui'),(160,21,'/20171016_184041-21.jpg','non'),(161,21,'/20171016_184233-21.jpg','non'),(162,21,'/20171016_184020-21.jpg','non'),(163,22,'/Lampe-22.jpg','oui'),(164,22,'/P1040491-22.jpg','non'),(167,23,'/20171102_132117-23.jpg','oui'),(168,23,'/20171102_132241-23.jpg','non'),(169,23,'/20171102_160254-23.jpg','non'),(170,23,'/20171102_160404-23.jpg','non'),(171,23,'/Escalier_acier_1_bis-23.jpg','non'),(172,23,'/Escalier_acier_1-23.jpg','non');
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

-- Dump completed on 2018-08-01  8:46:43
