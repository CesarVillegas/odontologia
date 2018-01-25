-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: webodonto
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add contenido',7,'add_contenido'),(20,'Can change contenido',7,'change_contenido'),(21,'Can delete contenido',7,'delete_contenido'),(22,'Can add contactos',8,'add_contactos'),(23,'Can change contactos',8,'change_contactos'),(24,'Can delete contactos',8,'delete_contactos'),(25,'Can add admision',9,'add_admision'),(26,'Can change admision',9,'change_admision'),(27,'Can delete admision',9,'delete_admision'),(28,'Can add equipo',10,'add_equipo'),(29,'Can change equipo',10,'change_equipo'),(30,'Can delete equipo',10,'delete_equipo'),(31,'Can add contenido',11,'add_contenido'),(32,'Can change contenido',11,'change_contenido'),(33,'Can delete contenido',11,'delete_contenido'),(34,'Can add imagen',12,'add_imagen'),(35,'Can change imagen',12,'change_imagen'),(36,'Can delete imagen',12,'delete_imagen'),(37,'Can add servicio',13,'add_servicio'),(38,'Can change servicio',13,'change_servicio'),(39,'Can delete servicio',13,'delete_servicio'),(40,'Can add galeria',14,'add_galeria'),(41,'Can change galeria',14,'change_galeria'),(42,'Can delete galeria',14,'delete_galeria'),(43,'Can add kv store',15,'add_kvstore'),(44,'Can change kv store',15,'change_kvstore'),(45,'Can delete kv store',15,'delete_kvstore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$gzV3XhhZ526q$9q2S6eAdfTVmfbfXXe0qliNZAsaT1eUnu37ltL5MFSY=','2018-01-22 19:52:03.736688',1,'dortiz','','','dortiz@userena.cl',1,1,'2018-01-22 19:51:54.302002'),(2,'pbkdf2_sha256$36000$6wFoXAnfztWQ$ktGnV6ZP4H+XVp0+T0tBOLpS0tyNePkCD6j4XxqX/SI=','2018-01-23 11:43:15.696169',1,'admin','','','jggalleguillos@userena.cl',1,1,'2018-01-23 11:43:05.629313');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_admision`
--

DROP TABLE IF EXISTS `carrera_admision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_admision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` smallint(5) unsigned NOT NULL,
  `puntaje_minimo` double NOT NULL,
  `puntaje_maximo` double NOT NULL,
  `puntaje_ponderado` double NOT NULL,
  `vacantes` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_admision`
--

LOCK TABLES `carrera_admision` WRITE;
/*!40000 ALTER TABLE `carrera_admision` DISABLE KEYS */;
INSERT INTO `carrera_admision` VALUES (1,2017,500.5,760.3,550,63),(3,2016,600.23,800.35,650.9,21),(4,2018,450,900,300.45,70);
/*!40000 ALTER TABLE `carrera_admision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_contactos`
--

DROP TABLE IF EXISTS `carrera_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` longtext COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_contactos`
--

LOCK TABLES `carrera_contactos` WRITE;
/*!40000 ALTER TABLE `carrera_contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrera_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_contenido`
--

DROP TABLE IF EXISTS `carrera_contenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_contenido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seccion` varchar(100) NOT NULL,
  `texto` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_contenido`
--

LOCK TABLES `carrera_contenido` WRITE;
/*!40000 ALTER TABLE `carrera_contenido` DISABLE KEYS */;
INSERT INTO `carrera_contenido` VALUES (1,'perfil egresado','<h3 class=\"text-center text-sm-left\">Perfil del Egresado de la Carrera de Odontolog&iacute;a</h3>\r\n\r\n<hr class=\"divider divider-lg hr-sm-left-2 bg-java\" />\r\n<div class=\"offset-top-30\">\r\n<p>Profesional con una fuerte formaci&oacute;n cient&iacute;fica, humanista y tecnol&oacute;gica. Las competencias consideradas para el logro de este perfil son las siguientes:</p>\r\n\r\n<table class=\"table table-custom table-fixed striped-table\" data-responsive=\"true\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"50px\"><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_science.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Conocer y comprender las ciencias biom&eacute;dicas b&aacute;sicas, m&eacute;dicas generales, t&eacute;cnicas y cl&iacute;nicas para as&iacute; entender las condiciones normales y patolog&iacute;as relevantes a la Odontolog&iacute;a.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_tratamiento.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Realizar un diagn&oacute;stico de salud bucal en poblaciones adultas e infantiles, programando planes de tratamiento de las patolog&iacute;as orales m&aacute;s frecuentes, con enfoque de riesgo, basado en conocimientos cient&iacute;ficos centrados en la evidencia y con s&oacute;lidos principios &eacute;ticos y responsabilidad social.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_buscar.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Poseer una actitud de b&uacute;squeda permanente de nueva informaci&oacute;n con la finalidad de actualizar sus conocimientos de acuerdo a los avances de las ciencias m&eacute;dicas utilizando las tecnolog&iacute;as de la informaci&oacute;n y comunicaciones</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_equipo.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Formar parte de equipos multidisciplinarios de salud, teniendo una fuerte actitud de liderazgo y gesti&oacute;n, demostrando flexibilidad y adaptaci&oacute;n a los cambios surgidos en el perfil salud enfermedad de la poblaci&oacute;n chilena</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_compromiso.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Tener un alto compromiso con la salud bucal de la poblaci&oacute;n y el desarrollo comunitario en lo referente a la odontolog&iacute;a, realizando acciones de promoci&oacute;n, con la finalidad de mantener la salud oral, demostrando un alto compromiso &eacute;tico y tratando al paciente desde una &oacute;ptica hol&iacute;stica.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_decreto.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Ser competente en la toma de decisiones en el razonamiento y la realizaci&oacute;n de juicios cl&iacute;nicos, encaminados a poder desarrollar un diagn&oacute;stico diferencial y provisional o definitivo del proceso nosol&oacute;gico incluyendo, la interpretaci&oacute;n de la historia cl&iacute;nica y los datos obtenidos en los ex&aacute;menes cl&iacute;nicos, radiogr&aacute;ficos u otro tipo de pruebas diagn&oacute;sticas.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_urgencia.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Realizar de forma adecuada la resoluci&oacute;n situaciones de Urgencia dental y manejo del dolor que se presenten en pacientes de todas las edades y condiciones.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_reloj_arena.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Diagnosticar en forma oportuna las necesidades de tratamiento de patolog&iacute;as dento-maxilares, realizando actividades de intercepci&oacute;n o derivaci&oacute;n oportuna en los casos que correspondan.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_craneo.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Realizar diagn&oacute;stico y tratamiento de disfunciones cr&aacute;neo cervical de baja y mediana complejidad.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"mision\" src=\"/media/media/2018/01/23/icon_inclusion.svg\" style=\"width: 50px; height: 50px;\" /></td>\r\n			<td>Comunicarse y respetar la diversidad y pluralidad de las personas, sus familias y las comunidades en el cumplimiento de su rol, con responsabilidad social.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>'),(2,'objetivos','<div class=\"range range-xs-center range-sm-left\">\r\n<div class=\"cell-xs-10 cell-sm-6 section-image-aside section-image-aside-right text-center text-sm-left\">\r\n<div class=\"section-image-aside-img veil reveal-sm-block\"><img alt=\"mision\" src=\"/media/media/2018/01/23/mision.svg\" style=\"width: 100%; height: 100%;\" /></div>\r\n\r\n<div class=\"section-image-aside-body section-sm-bottom-66 section-sm-top-110 inset-md-right-93\">\r\n<h3>Misi&oacute;n</h3>\r\n\r\n<hr class=\"divider divider-lg hr-sm-left-2 bg-java\" />\r\n<div class=\"offset-top-34 offset-md-top-60\">\r\n<p>La carrera de Odontolog&iacute;a de la Universidad de La Serena tiene como misi&oacute;n aportar al mejoramiento de la realidad regional y nacional mediante la generaci&oacute;n de conocimiento y la formaci&oacute;n de profesionales competentes y socialmente responsables.</p>\r\n\r\n<p>Para ello promueve el desarrollo de una docencia de calidad, caracterizada por la integralidad desde lo t&eacute;cnico y lo humano, para el ejercicio criterioso y &eacute;tico de la profesi&oacute;n de manera individual y colegiada.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"range range-xs-center range-sm-right offset-top-0\">\r\n<div class=\"cell-xs-10 cell-sm-6 section-image-aside section-image-aside-left text-center text-sm-left\">\r\n<div class=\"section-image-aside-img veil reveal-sm-block\"><img alt=\"vision\" src=\"/media/media/2018/01/23/vision.svg\" style=\"width: 100%; height: 100%;\" /></div>\r\n\r\n<div class=\"section-image-aside-body offset-top-66 offset-sm-top-0 section-sm-bottom-66 section-sm-top-110 inset-md-left-93\">\r\n<h3>Visi&oacute;n</h3>\r\n\r\n<hr class=\"divider divider-lg hr-sm-left-2 bg-java\" />\r\n<div class=\"offset-top-34 offset-md-top-60\">\r\n<p>Constituirse en el referente de la zona norte del pa&iacute;s para la generaci&oacute;n de conocimiento y formaci&oacute;n de cirujanos dentistas tanto en pregrado como posgrado, siendo reconocida por su vinculaci&oacute;n con el medio.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(3,'plan','<h3 class=\"text-center text-sm-left\">Malla de la carrera en diagrama</h3>\r\n\r\n<hr class=\"divider divider-lg hr-sm-left-2 bg-java\" />\r\n<p><img alt=\"\" src=\"/media/media/2018/01/19/malla_carrera.svg\" /></p>\r\n\r\n<br />\r\n<br />\r\n<br />\r\n<h3 class=\"text-center text-sm-left\">Malla de la carrera en tabla</h3>\r\n\r\n<hr class=\"divider divider-lg hr-sm-left-2 bg-java\" />\r\n<table class=\"table table-custom table-primary table-fixed\" data-responsive=\"true\">\r\n	<tbody>\r\n		<tr>\r\n			<th class=\"col-md-1\">N&ordm;</th>\r\n			<th class=\"col-md-1\">C&oacute;digo</th>\r\n			<th class=\"col-md-4\">Nombre Asignatura</th>\r\n			<th class=\"col-md-1\">T</th>\r\n			<th class=\"col-md-1\">L</th>\r\n			<th class=\"col-md-1\">SCT</th>\r\n			<th class=\"col-md-1\">Requisitos</th>\r\n			<th class=\"col-md-1\">R&eacute;gimen</th>\r\n			<th class=\"col-md-1\">Periodicidad</th>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">1&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>29011</td>\r\n			<td>Introducci&oacute;n a la Odontolog&iacute;a</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>3</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>21012</td>\r\n			<td>Biolog&iacute;a Celular</td>\r\n			<td>4</td>\r\n			<td>2</td>\r\n			<td>6</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>24013</td>\r\n			<td>Qu&iacute;mica General y Org&aacute;nica</td>\r\n			<td>6</td>\r\n			<td>2</td>\r\n			<td>9</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>29014</td>\r\n			<td>Anatom&iacute;a General</td>\r\n			<td>4</td>\r\n			<td>4</td>\r\n			<td>8</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>22015</td>\r\n			<td>F&iacute;sica Aplicada de la Salud</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>20</strong></td>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">2&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>21021</td>\r\n			<td>Fisiolog&iacute;a General</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>29014<br />\r\n			21012</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>21022</td>\r\n			<td>Biolog&iacute;a Molecular y Gen&eacute;tica</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>29023</td>\r\n			<td>Salud P&uacute;blica</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>21024</td>\r\n			<td>Embriolog&iacute;a e Histolog&iacute;a General</td>\r\n			<td>4</td>\r\n			<td>2</td>\r\n			<td>6</td>\r\n			<td>29014<br />\r\n			21012</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>29025</td>\r\n			<td>Anatom&iacute;a de Cabeza y Cuello</td>\r\n			<td>4</td>\r\n			<td>4</td>\r\n			<td>10</td>\r\n			<td>29014</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>70026</td>\r\n			<td>Comunicaci&oacute;n Oral y Escrita</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>22</strong></td>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">3&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>29031</td>\r\n			<td>Patolog&iacute;a General</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>21021<br />\r\n			21022</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>29032</td>\r\n			<td>Farmacolog&iacute;a I</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>21021<br />\r\n			24013</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>21033</td>\r\n			<td>Microbiolog&iacute;a e Inmunolog&iacute;a</td>\r\n			<td>4</td>\r\n			<td>2</td>\r\n			<td>7</td>\r\n			<td>21022</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>15</td>\r\n			<td>29034</td>\r\n			<td>Biomateriales I</td>\r\n			<td>2</td>\r\n			<td>4</td>\r\n			<td>7</td>\r\n			<td>24013<br />\r\n			22015</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>16</td>\r\n			<td>29035</td>\r\n			<td>Crecimiento y Desarrollo Cr&aacute;neo-Facial</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>21024<br />\r\n			29025</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>17</td>\r\n			<td>21036</td>\r\n			<td>Bioqu&iacute;mica</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>24013<br />\r\n			21022</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>22</strong></td>\r\n			<td><strong>6</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">4&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>18</td>\r\n			<td>29041</td>\r\n			<td>Fisiolog&iacute;a Oral</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>21021</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>19</td>\r\n			<td>29042</td>\r\n			<td>Farmacolog&iacute;a II</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>29032</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>20</td>\r\n			<td>29043</td>\r\n			<td>Microbiolog&iacute;a Oral</td>\r\n			<td>4</td>\r\n			<td>2</td>\r\n			<td>7</td>\r\n			<td>21033</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>21</td>\r\n			<td>29044</td>\r\n			<td>Biomateriales II</td>\r\n			<td>2</td>\r\n			<td>4</td>\r\n			<td>7</td>\r\n			<td>29034</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>22</td>\r\n			<td>29045</td>\r\n			<td>Fisiopatolog&iacute;a General</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>29031</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>29046</td>\r\n			<td>Histolog&iacute;a Buco-Dentaria</td>\r\n			<td>2</td>\r\n			<td>2</td>\r\n			<td>4</td>\r\n			<td>29025<br />\r\n			21024</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>20</strong></td>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">5&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>24</td>\r\n			<td>29051</td>\r\n			<td>Precl&iacute;nico Integrado I</td>\r\n			<td>4</td>\r\n			<td>6</td>\r\n			<td>12</td>\r\n			<td>29044</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>25</td>\r\n			<td>29052</td>\r\n			<td>Patolog&iacute;a Bucal I</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>29031<br />\r\n			29046</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>26</td>\r\n			<td>29053</td>\r\n			<td>Cariolog&iacute;a</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>29043</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>27</td>\r\n			<td>29054</td>\r\n			<td>Bioestad&iacute;stica</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29023</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28</td>\r\n			<td>29055</td>\r\n			<td>Oclusi&oacute;n</td>\r\n			<td>4</td>\r\n			<td>2</td>\r\n			<td>6</td>\r\n			<td>29041</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>29</td>\r\n			<td>29056</td>\r\n			<td>Metodolog&iacute;a de la Investigaci&oacute;n</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>20</strong></td>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">6&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>30</td>\r\n			<td>29061</td>\r\n			<td>Precl&iacute;nico Integrado II</td>\r\n			<td>4</td>\r\n			<td>6</td>\r\n			<td>12</td>\r\n			<td>29051</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>31</td>\r\n			<td>29062</td>\r\n			<td>Patolog&iacute;a Bucal II</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>29052<br />\r\n			29046</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>32</td>\r\n			<td>29063</td>\r\n			<td>Periodoncia I</td>\r\n			<td>4</td>\r\n			<td>0</td>\r\n			<td>4</td>\r\n			<td>29043<br />\r\n			29046</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>33</td>\r\n			<td>29064</td>\r\n			<td>Epidemiolog&iacute;a y Demograf&iacute;a</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29054</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>34</td>\r\n			<td>29065</td>\r\n			<td>Radiolog&iacute;a e Imagenolog&iacute;a Buco-Maxilofacial</td>\r\n			<td>4</td>\r\n			<td>2</td>\r\n			<td>6</td>\r\n			<td>29035</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>35</td>\r\n			<td>29066</td>\r\n			<td>Semiolog&iacute;a</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29045<br />\r\n			29031</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>20</strong></td>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">7&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>36</td>\r\n			<td>29071</td>\r\n			<td>Endodoncia I</td>\r\n			<td>1</td>\r\n			<td>3</td>\r\n			<td>4</td>\r\n			<td>6&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>37</td>\r\n			<td>29072</td>\r\n			<td>Rehabilitaci&oacute;n Oral I</td>\r\n			<td>2</td>\r\n			<td>6</td>\r\n			<td>8</td>\r\n			<td>6&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>38</td>\r\n			<td>29073</td>\r\n			<td>Periodoncia II</td>\r\n			<td>1</td>\r\n			<td>4</td>\r\n			<td>4</td>\r\n			<td>6&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>39</td>\r\n			<td>29074</td>\r\n			<td>Cirug&iacute;a I</td>\r\n			<td>1</td>\r\n			<td>4</td>\r\n			<td>4</td>\r\n			<td>6&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>40</td>\r\n			<td>29075</td>\r\n			<td>Odontopediatr&iacute;a I</td>\r\n			<td>2</td>\r\n			<td>4</td>\r\n			<td>5</td>\r\n			<td>6&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>41</td>\r\n			<td>29076</td>\r\n			<td>Operator&iacute;a I</td>\r\n			<td>1</td>\r\n			<td>4</td>\r\n			<td>5</td>\r\n			<td>6&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>25</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">8&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>42</td>\r\n			<td>29081</td>\r\n			<td>Endodoncia II</td>\r\n			<td>1</td>\r\n			<td>4</td>\r\n			<td>4</td>\r\n			<td>29071</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>43</td>\r\n			<td>29082</td>\r\n			<td>Rehabilitaci&oacute;n Oral II</td>\r\n			<td>3</td>\r\n			<td>6</td>\r\n			<td>8</td>\r\n			<td>29072</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>44</td>\r\n			<td>29083</td>\r\n			<td>Periodoncia III</td>\r\n			<td>1</td>\r\n			<td>5</td>\r\n			<td>4</td>\r\n			<td>29073</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>45</td>\r\n			<td>29084</td>\r\n			<td>Cirug&iacute;a II</td>\r\n			<td>1</td>\r\n			<td>5</td>\r\n			<td>4</td>\r\n			<td>29074</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>46</td>\r\n			<td>29085</td>\r\n			<td>Odontopediatr&iacute;a II</td>\r\n			<td>2</td>\r\n			<td>5</td>\r\n			<td>5</td>\r\n			<td>29075</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>47</td>\r\n			<td>29086</td>\r\n			<td>Operator&iacute;a II</td>\r\n			<td>1</td>\r\n			<td>5</td>\r\n			<td>5</td>\r\n			<td>29076</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">9&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>48</td>\r\n			<td>29091</td>\r\n			<td>Pr&oacute;tesis Removible I</td>\r\n			<td>1</td>\r\n			<td>7</td>\r\n			<td>5</td>\r\n			<td>29082</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>49</td>\r\n			<td>29092</td>\r\n			<td>Cl&iacute;nica Integral del Adulto I</td>\r\n			<td>2</td>\r\n			<td>7</td>\r\n			<td>8</td>\r\n			<td>29081<br />\r\n			29082<br />\r\n			29083<br />\r\n			29084<br />\r\n			29086</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>50</td>\r\n			<td>29093</td>\r\n			<td>Cl&iacute;nica Integral del Ni&ntilde;o I</td>\r\n			<td>2</td>\r\n			<td>8</td>\r\n			<td>8</td>\r\n			<td>29085</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>51</td>\r\n			<td>29094</td>\r\n			<td>Cirug&iacute;a Maxilofacial</td>\r\n			<td>1</td>\r\n			<td>5</td>\r\n			<td>5</td>\r\n			<td>29084</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>52</td>\r\n			<td>29095</td>\r\n			<td>Odontolog&iacute;a Legal</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>53</td>\r\n			<td>29096</td>\r\n			<td>Administraci&oacute;n y Gesti&oacute;n en Salud</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29023</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>10</strong></td>\r\n			<td><strong>27</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">10&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>54</td>\r\n			<td>29101</td>\r\n			<td>Ortodoncia y Ortopedia</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29093</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>55</td>\r\n			<td>29102</td>\r\n			<td>Pr&oacute;tesis Removible II</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29091</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>56</td>\r\n			<td>29103</td>\r\n			<td>Cl&iacute;nica Integral del Adulto II</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29092</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>57</td>\r\n			<td>29104</td>\r\n			<td>Cl&iacute;nica Integral del Ni&ntilde;o II</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29093</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>58</td>\r\n			<td>29105</td>\r\n			<td>Cirug&iacute;a y Traumatolog&iacute;a Maxilofacial</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>29094</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>59</td>\r\n			<td>29106</td>\r\n			<td>Odontolog&iacute;a Geri&aacute;trica</td>\r\n			<td>2</td>\r\n			<td>0</td>\r\n			<td>2</td>\r\n			<td>&nbsp;</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>8</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">11&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>60</td>\r\n			<td>29111</td>\r\n			<td>Internado Cl&iacute;nico Asistencial I</td>\r\n			<td>0</td>\r\n			<td>53</td>\r\n			<td>30</td>\r\n			<td>10&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>0</strong></td>\r\n			<td><strong>53</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\" style=\"text-align:center;\">12&ordm; Nivel</th>\r\n		</tr>\r\n		<tr>\r\n			<td>61</td>\r\n			<td>29121</td>\r\n			<td>Internado Cl&iacute;nico Asistencial II</td>\r\n			<td>0</td>\r\n			<td>53</td>\r\n			<td>28</td>\r\n			<td>29111</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>62</td>\r\n			<td>29122</td>\r\n			<td>Informe y Defensa de Internado</td>\r\n			<td>0</td>\r\n			<td>3</td>\r\n			<td>2</td>\r\n			<td>29111</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td><strong>Total T.E.L:</strong></td>\r\n			<td><strong>0</strong></td>\r\n			<td><strong>53</strong></td>\r\n			<td><strong>30</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th colspan=\"9\">TIT: Preliminary English Test (PET)</th>\r\n		</tr>\r\n		<tr>\r\n			<td>63</td>\r\n			<td>899990201</td>\r\n			<td>Preliminary English Test (Pet)</td>\r\n			<td>0</td>\r\n			<td>0</td>\r\n			<td>0</td>\r\n			<td>2&ordm; Nivel</td>\r\n			<td>Semestral</td>\r\n			<td>Anual</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),(4,'organigrama','<p><img alt=\"\" src=\"/media/media/2018/01/23/organigrama_carrera.svg\" /></p>'),(5,'perfil profesional','<div class=\"range range-xs-center range-sm-left\">\r\n<div class=\"cell-xs-10 cell-sm-6 section-image-aside section-image-aside-right text-center text-sm-left\">\r\n<div class=\"section-image-aside-img veil reveal-sm-block\"><img alt=\"mision\" src=\"/media/media/2018/01/23/perfil_profesional_IlwY8PK.svg\" style=\"width: 100%; height: 100%;\" /></div>\r\n\r\n<div class=\"section-image-aside-body section-sm-bottom-66 inset-md-right-93\">\r\n<h3>Perfil del Profesional de la Carrera de Odontolog&iacute;a</h3>\r\n\r\n<hr class=\"divider divider-lg hr-sm-left-2 bg-java\" />\r\n<div class=\"offset-top-34 offset-md-top-60\">\r\n<table class=\"table table-responsive\" style=\"text-align:justify\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>T&iacute;tulo Profesional:</strong></td>\r\n			<td>Cirujano Dentista</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Grado Acad&eacute;mico: </strong></td>\r\n			<td>Licenciado en Odontolog&iacute;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Duraci&oacute;n:</strong></td>\r\n			<td>12 semestres</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Descripci&oacute;n:</strong></td>\r\n			<td>El Cirujano Dentista egresado de la Universidad de La Serena, ser&aacute; un profesional con una fuerte formaci&oacute;n cient&iacute;fica, humanista y tecnol&oacute;gica.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>');
/*!40000 ALTER TABLE `carrera_contenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_contenido`
--

DROP TABLE IF EXISTS `clinica_contenido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_contenido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seccion` varchar(100) NOT NULL,
  `texto` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_contenido`
--

LOCK TABLES `clinica_contenido` WRITE;
/*!40000 ALTER TABLE `clinica_contenido` DISABLE KEYS */;
INSERT INTO `clinica_contenido` VALUES (1,'Organigrama','<p><img alt=\"\" src=\"/static/images/contenido/clinica/organigrama.svg\" style=\"height:407px; width:800px\" /></p>'),(3,'Preguntas Frecuentes','<div class=\"text-left\"><!-- Bootstrap Accordion-->\r\n<div aria-multiselectable=\"true\" class=\"panel-group accordion offset-top-0\" id=\"accordion-1\" role=\"tablist\">\r\n<div class=\"panel panel-default\">\r\n<div class=\"panel-heading\" id=\"headingOne\" role=\"tab\">\r\n<div class=\"panel-title\"><a aria-expanded=\"true\" class=\"collapsed\" data-parent=\"#accordion-1\" data-toggle=\"collapse\" href=\"#collapseOne\" role=\"button\">Formas de Pago</a></div>\r\n</div>\r\n\r\n<div aria-labelledby=\"headingOne\" class=\"panel-collapse collapse\" id=\"collapseOne\" role=\"tabpanel\">\r\n<div class=\"panel-body\">Efectivo, tarjetas bancarias.</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"panel panel-default\">\r\n<div class=\"panel-heading\" id=\"headingTwo\" role=\"tab\">\r\n<div class=\"panel-title\"><a aria-expanded=\"true\" class=\"collapsed\" data-parent=\"#accordion-1\" data-toggle=\"collapse\" href=\"#collapseTwo\" role=\"button\">Admisi&oacute;n</a></div>\r\n</div>\r\n\r\n<div aria-labelledby=\"headingTwo\" class=\"panel-collapse collapse\" id=\"collapseTwo\" role=\"tabpanel\">\r\n<div class=\"panel-body\">A inicios del semestre mediante inscripci&oacute;n en libro de registro y llamado a proceso de Tamizaje.</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"panel panel-default\">\r\n<div class=\"panel-heading\" id=\"headingThree\" role=\"tab\">\r\n<div class=\"panel-title\"><a aria-expanded=\"true\" class=\"collapsed\" data-parent=\"#accordion-1\" data-toggle=\"collapse\" href=\"#collapseThree\" role=\"button\">Horario</a></div>\r\n</div>\r\n\r\n<div aria-labelledby=\"headingThree\" class=\"panel-collapse collapse\" id=\"collapseThree\" role=\"tabpanel\">\r\n<div class=\"panel-body\">Lunes a Viernes de 08.00 a 20.30 hrs, variaci&oacute;n de acuerdo a cada c&aacute;tedra.</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"panel panel-default\">\r\n<div class=\"panel-heading\" id=\"headingFourth\" role=\"tab\">\r\n<div class=\"panel-title\"><a aria-expanded=\"true\" class=\"collapsed\" data-parent=\"#accordion-1\" data-toggle=\"collapse\" href=\"#collapseFourth\" role=\"button\">Tel&eacute;fono</a></div>\r\n</div>\r\n\r\n<div aria-labelledby=\"headingFourth\" class=\"panel-collapse collapse\" id=\"collapseFourth\" role=\"tabpanel\">\r\n<div class=\"panel-body\">+56-51-2334660 (Atenci&oacute;n de tel&eacute;fonos desde las 08.00 a las 18.30 hrs.)</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"panel panel-default\">\r\n<div class=\"panel-heading\" id=\"headingFive\" role=\"tab\">\r\n<div class=\"panel-title\"><a aria-expanded=\"true\" class=\"collapsed\" data-parent=\"#accordion-1\" data-toggle=\"collapse\" href=\"#collapseFive\" role=\"button\">Direcci&oacute;n</a></div>\r\n</div>\r\n\r\n<div aria-labelledby=\"headingFive\" class=\"panel-collapse collapse\" id=\"collapseFive\" role=\"tabpanel\">\r\n<div class=\"panel-body\">J. Cisternas N&deg;1015, La Serena.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>'),(4,'Servicios','<h6>main color header</h6>\r\n                  <div class=\"offset-top-10\">\r\n                    <hr class=\"text-subline\">\r\n                  </div>\r\n                  <div class=\"offset-top-30\">\r\n                    <!-- Classic Responsive Table-->\r\n                    <table data-responsive=\"true\" class=\"table table-custom table-primary table-fixed\">\r\n                      <tr>\r\n                        <th>#</th>\r\n                        <th>First Name</th>\r\n                        <th>Last Name</th>\r\n                        <th>Username</th>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>1</td>\r\n                        <td>Rose</td>\r\n                        <td>Hanson</td>\r\n                        <td>@rosehanson</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>2</td>\r\n                        <td>Kelly</td>\r\n                        <td>Patel</td>\r\n                        <td>@kellypatel</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>3</td>\r\n                        <td>William</td>\r\n                        <td>Mills</td>\r\n                        <td>@williammills</td>\r\n                      </tr>\r\n                    </table>\r\n                  </div>');
/*!40000 ALTER TABLE `clinica_contenido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_equipo`
--

DROP TABLE IF EXISTS `clinica_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) NOT NULL,
  `cargo` varchar(10) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_equipo`
--

LOCK TABLES `clinica_equipo` WRITE;
/*!40000 ALTER TABLE `clinica_equipo` DISABLE KEYS */;
INSERT INTO `clinica_equipo` VALUES (1,'Maria','Angulo','Godoy','auxiliar','clinica/equipo/maria_angulo.jpg',1),(2,'Francisco','Pedreros','Fernandez','director','clinica/equipo/francisco_pedreros_DVFwiQz.jpg',1),(4,'Fabiola','Gutierrez','Rojas','enfermera','clinica/equipo/fabiola_gutierrez_XF8NDFA.jpg',1),(5,'Elizabeth','Conejeros','Concha','enfermera','clinica/equipo/elizabeth_conejeros_WxIaWVA.jpg',2),(6,'Jorge','Cortes','Rojas','auxiliar','clinica/equipo/jorge_cortes_0EUCEpW.jpg',1),(7,'Leticia','Pallante','Rojas','tecnico','clinica/equipo/leticia_pallante_DOgtPBQ.jpg',1),(8,'Ana','Pizarro','Gonzales','tecnico','clinica/equipo/ana_pizarro_8IQA1rS.jpg',1),(9,'Claudia','Galleguillos','Veliz','tecnico','clinica/equipo/claudia_galleguillos_gLQKWcS.jpg',1),(10,'Ermelinda','Pizarro','Robledo','tecnico','clinica/equipo/ermelinda_pizarro_AFxXJyb.jpg',1),(11,'Gloria','Pasten','Plaza','tecnico','clinica/equipo/gloria_pasten_F9qMwiU.jpg',1),(12,'Maribel','Vargas','Osorio','tecnico','clinica/equipo/maribel_vargas_dZdeBzY.jpg',1),(13,'Aline','Toro','Galvez','secretaria','clinica/equipo/aline_toro_q8sd3Ga.jpg',1),(14,'Jacqueline','Polanco','Toro','tecnico','clinica/equipo/jacqueline_polanco_2FD0kN4.jpg',1),(15,'Lorena','Diaz','Elgueta','auxiliar','clinica/equipo/lorena_diaz_TE77R36.jpg',1),(16,'Sheyla','Maldonado','Vicencio','secretaria','clinica/equipo/sheyla_maldonado_tXoIzFc.jpg',1),(17,'Anilsa','Varas','Aros','auxiliar','clinica/equipo/anilsa_varas.jpg',1),(18,'Monica','Ramos','Sepulveda','tecnico','clinica/equipo/monica_ramos.jpg',1),(19,'Rita','Vargas','Gonzales','tecnico','clinica/equipo/rita_vargas.jpg',1),(20,'Patricia','Diaz','Godoy','tecnico','clinica/equipo/patricia_diaz.jpg',1),(21,'Melissa','Cordova','Diaz','secretaria','clinica/equipo/melissa_cordova.jpg',1);
/*!40000 ALTER TABLE `clinica_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_galeria`
--

DROP TABLE IF EXISTS `clinica_galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_galeria`
--

LOCK TABLES `clinica_galeria` WRITE;
/*!40000 ALTER TABLE `clinica_galeria` DISABLE KEYS */;
INSERT INTO `clinica_galeria` VALUES (1,'Infraestructura');
/*!40000 ALTER TABLE `clinica_galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_imagen`
--

DROP TABLE IF EXISTS `clinica_imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_imagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `galeria_id` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clinica_imagen_galeria_id_9c8c52e8_fk_clinica_galeria_id` (`galeria_id`),
  CONSTRAINT `clinica_imagen_galeria_id_9c8c52e8_fk_clinica_galeria_id` FOREIGN KEY (`galeria_id`) REFERENCES `clinica_galeria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_imagen`
--

LOCK TABLES `clinica_imagen` WRITE;
/*!40000 ALTER TABLE `clinica_imagen` DISABLE KEYS */;
INSERT INTO `clinica_imagen` VALUES (1,'clinica/galeria/10_thumb.jpg',1,1),(2,'clinica/galeria/11_thumb.jpg',1,1),(3,'clinica/galeria/1_thumb.jpg',1,1),(4,'clinica/galeria/2_thumb.jpg',1,1),(5,'clinica/galeria/3_thumb.jpg',1,1),(6,'clinica/galeria/4_thumb.jpg',1,1),(7,'clinica/galeria/5_thumb.jpg',1,1),(8,'clinica/galeria/6_thumb.jpg',1,1),(9,'clinica/galeria/7_thumb.jpg',1,1),(10,'clinica/galeria/9_thumb.jpg',1,1);
/*!40000 ALTER TABLE `clinica_imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinica_servicio`
--

DROP TABLE IF EXISTS `clinica_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `valor` int(11) NOT NULL,
  `tipo_servicio` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_servicio`
--

LOCK TABLES `clinica_servicio` WRITE;
/*!40000 ALTER TABLE `clinica_servicio` DISABLE KEYS */;
INSERT INTO `clinica_servicio` VALUES (1,'Radiografías Panorámicas (Ortopantomografías)',5000,'imagenologia '),(2,'Telerradiografías',5000,'imagenologia '),(3,'Radiografía ATM Bilateral',5000,'imagenologia '),(4,'Radiografía Senos maxilares',5000,'imagenologia '),(5,'Radiografía Retroalveolar',5000,'imagenologia '),(6,'Radiografía Retroalveolar total',5000,'imagenologia '),(7,'Radiografía Aleta mordida unilateral adulto (Bite Wing)',5000,'imagenologia '),(8,'Radiografía Aleta mordida bilateral adulto (Bite Wing)',5000,'imagenologia '),(9,'Radiografía Aleta mordida unilateral pediátrica (Bite Wing)',5000,'imagenologia '),(10,'Radiografía Aleta mordida bilateral pediátrica (Bite Wing)',5000,'imagenologia '),(11,'Radiografía oclusal',5000,'imagenologia '),(12,'Exodoncias simples',5000,'odontologia'),(13,'Atención de niños y niñas de 4 a 12 años para realización de prevención y promoción de la salud oral, odontología restauradora y mínimamente invasiva',5000,'odontologia'),(14,'Destartraje',5000,'odontologia'),(15,'Pulido radicular',5000,'odontologia'),(16,'Tratamiento de periodontitis incipiente y moderada',5000,'odontologia'),(17,'Prótesis fija unitarias (coronas) y plurales (puentes) sobre dientes pilares',5000,'odontologia'),(18,'Tratamientos de prótesis removibles, metálicas y acrílicas para pacientes desdentados parciales',5000,'odontologia'),(19,'Tratamiento de endodoncia (tratamiento de conducto) en dientes anteriores y pre molares',5000,'odontologia'),(20,'Programación de exodoncias de terceros molares y cirugías (biopsias, cirugías de periodoncia) que requieren de pabellón de cirugía menor',5000,'odontologia'),(21,'Tratamientos de prótesis removibles, metálicas y acrílicas para pacientes desdentados parciales y totales',5000,'odontologia'),(22,'Profilaxis dentarias',5000,'odontologia'),(23,'Aplicaciones de flúor',5000,'odontologia'),(24,'Aplicación de sellantes',5000,'odontologia'),(25,'Endodoncias dientes temporales (pulpotomías)',5000,'odontologia'),(26,'Extracciones indicadas',5000,'odontologia'),(27,'Actividades de prevención y promoción de la salud oral',5000,'odontologia'),(28,'Tratamientos de conductos en incisivos, caninos y premolares (Endodoncia)',5000,'odontologia'),(29,'Tratamiento de las encías, destartraje y pulido radicular (Periodoncia)',5000,'odontologia'),(30,'Coronas y puentes fijos sobre dientes pilares (Prótesis fija)',5000,'odontologia'),(31,'Prótesis metal-acrílica y acrílica en desdentados parciales (Prótesis removible)',5000,'odontologia'),(32,'Odontología restauradora y mínimamente invasiva (Operatoria Dental).',5000,'odontologia'),(33,'Procedimientos de cirugía menor maxilofacial derivados de las asignaturas clínicas (exodoncias múltiples, terceros molares, alveoloplastías, entre otros)',5000,'odontologia');
/*!40000 ALTER TABLE `clinica_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-01-23 11:36:46.879599','1','Imagen object',2,'[{\"changed\": {\"fields\": [\"url\"]}}]',12,1),(2,'2018-01-23 11:43:42.905906','2','Contenido object',2,'[{\"changed\": {\"fields\": [\"seccion\"]}}]',7,2),(3,'2018-01-23 11:44:43.881618','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"seccion\", \"texto\"]}}]',7,2),(4,'2018-01-23 11:45:03.293299','5','Contenido object',1,'[{\"added\": {}}]',7,2),(5,'2018-01-23 11:47:06.410210','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"seccion\", \"texto\"]}}]',7,2),(6,'2018-01-23 11:48:19.257264','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"seccion\", \"texto\"]}}]',7,2),(7,'2018-01-23 11:51:19.043486','4','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(8,'2018-01-23 11:54:06.646946','2','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(9,'2018-01-23 11:55:06.103559','2','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(10,'2018-01-23 12:02:42.978096','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(11,'2018-01-23 12:06:39.126839','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(12,'2018-01-23 12:07:12.477995','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(13,'2018-01-23 12:09:11.165121','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(14,'2018-01-23 12:09:29.785627','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(15,'2018-01-23 12:09:56.228480','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(16,'2018-01-23 12:11:25.895796','5','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(17,'2018-01-23 12:16:30.459315','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(18,'2018-01-23 12:16:53.772835','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(19,'2018-01-23 12:17:38.497537','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(20,'2018-01-23 12:22:37.661978','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(21,'2018-01-23 12:25:37.760262','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(22,'2018-01-23 12:26:26.047632','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(23,'2018-01-23 12:27:53.888259','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(24,'2018-01-23 12:28:26.432824','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(25,'2018-01-23 12:29:15.987099','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(26,'2018-01-23 12:38:22.407434','1','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(27,'2018-01-23 12:52:14.208818','3','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(28,'2018-01-23 12:52:51.644036','3','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',7,2),(29,'2018-01-23 15:24:27.180854','3','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',11,1),(30,'2018-01-23 17:46:22.349849','3','Contenido object',2,'[{\"changed\": {\"fields\": [\"texto\"]}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(9,'carrera','admision'),(8,'carrera','contactos'),(7,'carrera','contenido'),(11,'clinica','contenido'),(10,'clinica','equipo'),(14,'clinica','galeria'),(12,'clinica','imagen'),(13,'clinica','servicio'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(15,'thumbnail','kvstore');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-01-22 19:24:27.011663'),(2,'auth','0001_initial','2018-01-22 19:24:27.386982'),(3,'admin','0001_initial','2018-01-22 19:24:27.481051'),(4,'admin','0002_logentry_remove_auto_add','2018-01-22 19:24:27.498421'),(5,'contenttypes','0002_remove_content_type_name','2018-01-22 19:24:27.570721'),(6,'auth','0002_alter_permission_name_max_length','2018-01-22 19:24:27.605524'),(7,'auth','0003_alter_user_email_max_length','2018-01-22 19:24:27.645272'),(8,'auth','0004_alter_user_username_opts','2018-01-22 19:24:27.657122'),(9,'auth','0005_alter_user_last_login_null','2018-01-22 19:24:27.691138'),(10,'auth','0006_require_contenttypes_0002','2018-01-22 19:24:27.694552'),(11,'auth','0007_alter_validators_add_error_messages','2018-01-22 19:24:27.707327'),(12,'auth','0008_alter_user_username_max_length','2018-01-22 19:24:27.749374'),(13,'carrera','0001_initial','2018-01-22 19:24:27.771436'),(14,'carrera','0002_auto_20180122_1624','2018-01-22 19:24:27.812200'),(15,'clinica','0001_initial','2018-01-22 19:24:27.883793'),(16,'clinica','0002_auto_20180122_1624','2018-01-22 19:24:27.957444'),(17,'sessions','0001_initial','2018-01-22 19:24:27.989818'),(18,'thumbnail','0001_initial','2018-01-22 19:24:28.187463'),(19,'carrera','0003_auto_20180123_0951','2018-01-23 12:51:31.470031'),(20,'clinica','0003_auto_20180123_0951','2018-01-23 12:51:31.477657');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('amhgo31l5k15okz0tl5xw6w2emqs7z27','ZGJkNTgxYTVlNTQ4MzcwNTUzMDc3NzZlYjQwMDFjZjFhMTQ5OWE1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjA1NjgzNWViODllNWFkZTI3NmExZDE3ZjU4ZmI1MjE2OWZhYWJiMmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-02-05 19:52:03.740929'),('hwhug60n12v8a2fhkgoc1fcrx3kpoaxe','MmE0MmQxMTc5Yjc2Y2JmM2U0YzdlOWE4NGNlMmM3ZWY2N2I1NGE0Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjEzYzAxMmFjZTdkMzgxMzVjMzA4MGJkZGNmN2NjMzdlZTExNjM5ZTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2018-02-06 11:43:15.699618');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `value` longtext COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||image||03104ebfd29f81cbbb6bbe3cd1405bff','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/5_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||0bfe99701ae83e39ef2646f8664da5a0','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/9_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||11dc94244275def6f9e6a12332c338dc','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/11_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||307f4eae95f0a00640fb541089d6742f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/6_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||54876f9455200bcea2d6ec7c5f922689','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/ed/dc/eddc727f92a965fa477b3c37ba96e1c4.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||5e285808a0a4bd01c81a0d40f2f3007d','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/54/30/54306b3eaf2590c9f4845c80e459b038.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||745df415421b4581d0ac4e5ba346dc79','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/91/e8/91e8347e0dfe7a43b42cfb45ac5a6b1b.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||76dc5d78a40c1a6a593956873b7c72bb','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/4_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||7d10ac09d03f6c21fdcdd219b2ae8119','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/0f/0b/0f0b305b80dfe6f98e83b321b1568d21.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||83a030d78f7dc048ce0a146835eb4a87','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/10_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||91bcdc347a563dc2e2b40220cc254a18','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/2_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||9fbdadacef9c574823faaf17d9ce83fc','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/8a/4c/8a4ce2582714d305bea24e8e012486e7.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||a0f9bd71ae769f5229a636a1623f4966','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/31/01/3101c7415bf49663fbacc938a363ad30.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||c629f75bb110a8e136ebfb9212498dc5','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/a4/26/a426e0b9b197cf5ad123ac579f0e2f9d.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||cd19e05e13235d715384926a04184ad6','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/51/c5/51c5978b4bfdf5c498435791aafdaff3.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||d4848adef6c0abecee3ca4c6e7aca39d','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/7_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||d5bede7622db85cbfb01c7c985d193e7','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/3b/65/3b65b669f7e99cc8b2d11753a14340c5.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||df52673099452122f6d0a73c4883397a','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/1_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||image||e75c28cbd2f4f2473803792e76dbee1f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/f9/5a/f95a4f24847a1897d47cf89554f7e96a.jpg\", \"size\": [370, 240]}'),('sorl-thumbnail||image||f16a4866605df380f130933bc1090e10','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"clinica/galeria/3_thumb.jpg\", \"size\": [1200, 800]}'),('sorl-thumbnail||thumbnails||03104ebfd29f81cbbb6bbe3cd1405bff','[\"9fbdadacef9c574823faaf17d9ce83fc\"]'),('sorl-thumbnail||thumbnails||0bfe99701ae83e39ef2646f8664da5a0','[\"d5bede7622db85cbfb01c7c985d193e7\"]'),('sorl-thumbnail||thumbnails||11dc94244275def6f9e6a12332c338dc','[\"7d10ac09d03f6c21fdcdd219b2ae8119\"]'),('sorl-thumbnail||thumbnails||307f4eae95f0a00640fb541089d6742f','[\"745df415421b4581d0ac4e5ba346dc79\"]'),('sorl-thumbnail||thumbnails||76dc5d78a40c1a6a593956873b7c72bb','[\"c629f75bb110a8e136ebfb9212498dc5\"]'),('sorl-thumbnail||thumbnails||83a030d78f7dc048ce0a146835eb4a87','[\"a0f9bd71ae769f5229a636a1623f4966\"]'),('sorl-thumbnail||thumbnails||91bcdc347a563dc2e2b40220cc254a18','[\"cd19e05e13235d715384926a04184ad6\"]'),('sorl-thumbnail||thumbnails||d4848adef6c0abecee3ca4c6e7aca39d','[\"5e285808a0a4bd01c81a0d40f2f3007d\"]'),('sorl-thumbnail||thumbnails||df52673099452122f6d0a73c4883397a','[\"e75c28cbd2f4f2473803792e76dbee1f\"]'),('sorl-thumbnail||thumbnails||f16a4866605df380f130933bc1090e10','[\"54876f9455200bcea2d6ec7c5f922689\"]');
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-24 15:41:16
