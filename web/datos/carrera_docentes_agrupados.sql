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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_docentes`
--

LOCK TABLES `carrera_docentes` WRITE;
/*!40000 ALTER TABLE `carrera_docentes` DISABLE KEYS */;
INSERT INTO `carrera_docentes` VALUES (1,'Viviana','Escudero','Jaramillo','Profesor de Biologia','profesor','carrera/docente/viviana_escudero_jaramillo.png',1,'docente'),(2,'Darwin','Perez','Miranda','Coordinador Academico','candidato_doctor','carrera/docente/darwin_perez_miranda.png',2,'docente'),(3,'Konrad','Fritz','Leon','Coordinador Endodoncia','candidato_doctor','carrera/docente/konrad_fritz_M2dHS7t.png',1,'endodoncia'),(4,'Maria Gabriela','Barahona','Moore','Academica Endodoncia','profesor','carrera/docente/maria_gabriela_barahona.png',2,'endodoncia'),(5,'Ana Maria','Garcia','Arevalo','Academico Endodoncia','profesor','carrera/docente/ana_maria_garcia.png',3,'endodoncia'),(6,'Francisca','Riquelme','Pedreros','Academica Endodoncia','profesor','carrera/docente/francisca_riquelme.png',4,'endodoncia'),(7,'Francisco','Alarcon','Peredo','Coordinador Odontopediatria','candidato_doctor','carrera/docente/francisco_alarcon_KCqshV8.png',1,'odontopediatria'),(9,'Monica','Acuna','Olivares','Academico Odontopediatria','profesor','carrera/docente/monica_acuna_Nc2Vhri.png',2,'odontopediatria'),(10,'Veronica','Flores','Rojas','Academico Odontopediatria','profesor','carrera/docente/veronica_flores.png',3,'odontopediatria'),(11,'Manuela Camilla','Mondion','.','Academico Odontopediatria','profesor','carrera/docente/manuela_mondion.png',4,'odontopediatria');
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

-- Dump completed on 2018-01-23 20:23:11
