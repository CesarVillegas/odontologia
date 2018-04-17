-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: webodonto
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `clinica_servicio`
--

DROP TABLE IF EXISTS `clinica_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinica_servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `tipo_servicio` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinica_servicio`
--

LOCK TABLES `clinica_servicio` WRITE;
/*!40000 ALTER TABLE `clinica_servicio` DISABLE KEYS */;
INSERT INTO `clinica_servicio` VALUES (1,'Radiografías Panorámicas (Ortopantomografías)','imagenologia '),(2,'Telerradiografías','imagenologia '),(3,'Radiografía ATM Bilateral','imagenologia '),(4,'Radiografía Senos maxilares','imagenologia '),(5,'Radiografía Retroalveolar','imagenologia '),(6,'Radiografía Retroalveolar total','imagenologia '),(7,'Radiografía Aleta mordida unilateral adulto (Bite Wing)','imagenologia '),(8,'Radiografía Aleta mordida bilateral adulto (Bite Wing)','imagenologia '),(9,'Radiografía Aleta mordida unilateral pediátrica (Bite Wing)','imagenologia '),(10,'Radiografía Aleta mordida bilateral pediátrica (Bite Wing)','imagenologia '),(11,'Radiografía oclusal','imagenologia '),(12,'Exodoncias simples','odontologia'),(13,'Atención de niños y niñas de 4 a 12 años para realización de prevención y promoción de la salud oral, odontología restauradora y mínimamente invasiva','odontologia'),(14,'Destartraje supra y sub gingival (Higiene bucal)','odontologia'),(15,'Pulido radicular','odontologia'),(16,'Tratamiento de periodontitis incipiente y moderada','odontologia'),(17,'Prótesis fija unitarias (coronas) y plurales (puentes) sobre dientes pilares','odontologia'),(18,'Tratamientos de prótesis removibles, metálicas y acrílicas para pacientes desdentados parciales','odontologia'),(19,'Tratamiento de endodoncia (tratamiento de conducto) en dientes anteriores y pre molares','odontologia'),(23,'Aplicaciones de flúor','odontologia'),(24,'Aplicación de sellantes','odontologia'),(25,'Endodoncias dientes temporales (pulpotomías)','odontologia'),(27,'Actividades de prevención y promoción de la salud oral','odontologia'),(32,'Odontología restauradora y mínimamente invasiva (Operatoria Dental)','odontologia'),(33,'Procedimientos de cirugía menor maxilofacial derivados de las asignaturas clínicas (exodoncias múltiples, terceros molares, alveoloplastías, entre otros)','odontologia');
/*!40000 ALTER TABLE `clinica_servicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-17 10:32:08
