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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_contenido`
--

LOCK TABLES `carrera_contenido` WRITE;
/*!40000 ALTER TABLE `carrera_contenido` DISABLE KEYS */;
INSERT INTO `carrera_contenido` VALUES (1,'perfil','<div class=\"offset-top-90 offset-md-top-110\">\r\n	<h6>Perfil del Egresado de la Carrera de Odontología</h6>\r\n	<div class=\"offset-top-10\">\r\n		<hr class=\"text-subline\">\r\n	</div>\r\n	<div class=\"offset-top-30\">\r\n		<!-- Classic Responsive Table-->\r\n<table class=\"table table-responsive\" style=\"text-align:justify\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>T&iacute;tulo Profesional:</strong></td>\r\n			<td>Cirujano Dentista</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Grado Acad&eacute;mico: </strong></td>\r\n			<td>Licenciado en Odontolog&iacute;a</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Duraci&oacute;n:</strong></td>\r\n			<td>12 semestres</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Perfil Profesional:</strong></td>\r\n			<td>El Cirujano Dentista egresado de la Universidad de La Serena, ser&aacute; un profesional con una fuerte formaci&oacute;n cient&iacute;fica, humanista y tecnol&oacute;gica.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n<br/><br/>\r\n<div class=\"offset-top-90 offset-md-top-110\">\r\n	<h6>Perfil del Egresado de la Carrera de Odontología</h6>\r\n	<p style=\"text-align:justify\">Profesional con una fuerte formación científica, humanista y tecnológica. Las competencias consideradas para el logro de este perfil son las siguientes:\r\n	<div class=\"offset-top-10\">\r\n		<hr class=\"text-subline\">\r\n	</div>\r\n	<div class=\"offset-top-30\">\r\n		<!-- Classic Responsive Table-->\r\n		<table data-responsive=\"true\" class=\"table table-custom table-fixed bordered-table\">\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>1. Conocer y comprender las ciencias biomédicas básicas, médicas generales, técnicas y clínicas para así entender las condiciones normales y patologías relevantes a la Odontología.\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>2. Realizar un diagnóstico de salud bucal en poblaciones adultas e infantiles, programando planes de tratamiento de las patologías orales más frecuentes, con enfoque de riesgo, basado en conocimientos científicos centrados en la evidencia y con sólidos principios éticos y responsabilidad social.\r\n\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>3. Poseer una actitud de búsqueda permanente de nueva información con la finalidad de actualizar sus conocimientos de acuerdo a los avances de las ciencias médicas utilizando las tecnologías de la información y comunicaciones\r\n\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>4. Formar parte de equipos multidisciplinarios de salud, teniendo una fuerte actitud de liderazgo y gestión, demostrando flexibilidad y adaptación a los cambios surgidos en el perfil salud enfermedad de la población chilena\r\n\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>5. Tener un alto compromiso con la salud bucal de la población y el desarrollo comunitario en lo referente a la odontología, realizando acciones de promoción, con la finalidad de mantener la salud oral, demostrando un alto compromiso ético y tratando al paciente desde una óptica holística.\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>6. Ser competente en la toma de decisiones en el razonamiento y la realización de juicios clínicos, encaminados a poder desarrollar un diagnóstico diferencial y provisional o definitivo del proceso nosológico incluyendo, la interpretación de la historia clínica y los datos obtenidos en los exámenes clínicos, radiográficos u otro tipo de pruebas diagnósticas.\r\n\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>7. Realizar de forma adecuada la resolución situaciones de Urgencia dental y manejo del dolor que se presenten en pacientes de todas las edades y condiciones.\r\n\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>8. Diagnosticar en forma oportuna las necesidades de tratamiento de patologías dento-maxilares, realizando actividades de intercepción o derivación oportuna en los casos que correspondan.\r\n\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>9. Realizar diagnóstico y tratamiento de disfunciones cráneo cervical de baja y mediana complejidad.\r\n\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			</td>\r\n			<td>10. Comunicarse y respetar la diversidad y pluralidad de las personas, sus familias y las comunidades en el cumplimiento de su rol, con responsabilidad social.\r\n\r\n			</td>\r\n		</tr>\r\n</table>'),(2,'mision','<table class=\"table table-responsive\" style=\"text-align:justify\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Misi&oacute;n:</strong></td>\r\n			<td>La carrera de Odontolog&iacute;a de la Universidad de La Serena tiene como misi&oacute;n aportar al mejoramiento de la realidad regional y nacional mediante la generaci&oacute;n de conocimiento y la formaci&oacute;n de profesionales competentes y socialmente responsables. Para ello promueve el desarrollo de una docencia de calidad, caracterizada por la integralidad desde lo t&eacute;cnico y lo humano, para el ejercicio criterioso y &eacute;tico de la profesi&oacute;n de manera individual y colegiada.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Visi&oacute;n:</strong></td>\r\n			<td>Constituirse en el referente de la zona norte del pa&iacute;s para la generaci&oacute;n de conocimiento y formaci&oacute;n de cirujanos dentistas tanto en pregrado como posgrado, siendo reconocida por su vinculaci&oacute;n con el medio&rdquo;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>'),(3,'plan','<h5>Malla de la Carrera</h5>\r\n\r\n<p><img alt=\"\" src=\"/media/media/2018/01/19/malla_carrera.svg\" /></p>'),(4,'organigrama','<p><img alt=\"\" src=\"/media/media/2018/01/18/organigrama_carrera.svg\" /></p>');
/*!40000 ALTER TABLE `carrera_contenido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-19 11:09:02
