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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 12:35:01
