-- MySQL dump 10.13  Distrib 5.6.38, for macos10.12 (x86_64)
--
-- Host: localhost    Database: webodonto
-- ------------------------------------------------------
-- Server version	5.7.20

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-22 16:45:54
