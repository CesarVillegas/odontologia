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
INSERT INTO `clinica_contenido` VALUES (1,'Organigrama','<p><img alt=\"\" src=\"/static/images/contenido/clinica/organigrama.svg\" style=\"height:407px; width:800px\" /></p>'),(3,'Preguntas Frecuentes','<div class=\"responsive-tabs responsive-tabs-classic\" data-type=\"accordion\">\r\n<ul class=\"resp-tabs-list tabs-group-default\" data-group=\"tabs-group-default\">\r\n	<li>Direcci&oacute;n</li>\r\n	<li>Formas de Pago</li>\r\n	<li>Admisi&oacute;n</li>\r\n	<li>Horario</li>\r\n	<li>Teléfono</li>\r\n</ul>\r\n\r\n<div class=\"resp-tabs-container tabs-group-default\" data-group=\"tabs-group-default\">\r\n<div>J. Cisternas N°1015, La Serena. \r\n</div>\r\n\r\n<div>Efectivo, tarjetas bancarias.</div>\r\n\r\n<div>A inicios del semestre mediante inscripción en libro de registro y llamado a proceso de Tamizaje.</div>\r\n\r\n<div>Lunes a Viernes de 08.00 a 20.30 hrs, variación de acuerdo a cada cátedra.</div>\r\n\r\n<div>+56-51-2334660 (Atención de teléfonos desde las 08.00 a las 18.30 hrs.)</div>\r\n</div>\r\n</div>'),(4,'Servicios','<h6>main color header</h6>\r\n                  <div class=\"offset-top-10\">\r\n                    <hr class=\"text-subline\">\r\n                  </div>\r\n                  <div class=\"offset-top-30\">\r\n                    <!-- Classic Responsive Table-->\r\n                    <table data-responsive=\"true\" class=\"table table-custom table-primary table-fixed\">\r\n                      <tr>\r\n                        <th>#</th>\r\n                        <th>First Name</th>\r\n                        <th>Last Name</th>\r\n                        <th>Username</th>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>1</td>\r\n                        <td>Rose</td>\r\n                        <td>Hanson</td>\r\n                        <td>@rosehanson</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>2</td>\r\n                        <td>Kelly</td>\r\n                        <td>Patel</td>\r\n                        <td>@kellypatel</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>3</td>\r\n                        <td>William</td>\r\n                        <td>Mills</td>\r\n                        <td>@williammills</td>\r\n                      </tr>\r\n                    </table>\r\n                  </div>');
/*!40000 ALTER TABLE `clinica_contenido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 12:35:44
