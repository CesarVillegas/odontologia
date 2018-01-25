-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
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
-- Table structure for table `carrera_docentes`
--

DROP TABLE IF EXISTS `carrera_docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_docentes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) NOT NULL,
  `apellido_paterno` varchar(100) NOT NULL,
  `apellido_materno` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nivel` int(11) NOT NULL,
  `area` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_docentes`
--

LOCK TABLES `carrera_docentes` WRITE;
/*!40000 ALTER TABLE `carrera_docentes` DISABLE KEYS */;
INSERT INTO `carrera_docentes` VALUES (6,'Darwin','Perez','cortes','coordinador','candidato_doctor','carrera/docente/darwin_perez_n4uH4nV.png',1,'otro'),(9,'Francisco','Alarcon','.','Unidad Odontologia Pediatrica','candidato_doctor','carrera/docente/francisco_alarcon_k5JVgey.png',2,'otro'),(12,'Viviana','Escudero','.','Coordinador de Ciencias Basicas','profesor','carrera/docente/viviana_escudero_BDciCzC.png',3,'otro'),(13,'Konrad','Fritz','.','Unidad de Endodoncia','candidato_doctor','carrera/docente/konrad_fritz.png',4,'otro'),(14,'Andres','Guerrero','.','Unidad de Cirugia y Pabellon','candidato_doctor','carrera/docente/foto_generica_docentes_nvZpFYq.png',5,'otro'),(16,'Alejandro','Zamorano','.','Unidad de Acreditacion','magister','carrera/docente/foto_generica_docentes_1pgECst.png',6,'otro'),(17,'Paula','Arriagada','.','Unidad de RAD e Internado asistencial','magister','carrera/docente/foto_generica_docentes_LlfJJHF.png',7,'otro'),(18,'Angeles','Valdivia','.','Unidad de Periodoncia','candidato_doctor','carrera/docente/foto_generica_docentes_mOLHFvA.png',8,'otro'),(19,'Christian','Castillo','.','Coordinador de Preclínico','candidato_doctor','carrera/docente/foto_generica_docentes_MA94EFZ.png',9,'otro'),(20,'Rosa','Cuevas','.','Unidad de Anatomia patologica y biopsias','candidato_doctor','carrera/docente/foto_generica_docentes_a3is9wD.png',10,'otro'),(21,'Guillermo','Ortiz','.','Unidad de Radiologia e Imagenologia clinica','candidato_doctor','carrera/docente/foto_generica_docentes_n5qWGI5.png',12,'otro');
/*!40000 ALTER TABLE `carrera_docentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-23 19:31:41
