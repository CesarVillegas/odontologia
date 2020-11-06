-- MySQL dump 10.13  Distrib 5.6.49, for Linux (x86_64)
--
-- Host: localhost    Database: webodonto
-- ------------------------------------------------------
-- Server version	5.6.49

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
-- Table structure for table `carrera_actividadgruposinteres`
--

DROP TABLE IF EXISTS `carrera_actividadgruposinteres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_actividadgruposinteres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` longtext NOT NULL,
  `descripcion` longtext,
  `objetivo` longtext,
  `anio` varchar(30) DEFAULT NULL,
  `grupo_interes` varchar(200) NOT NULL,
  `orden` int(11) NOT NULL,
  `mostrar` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_actividadgruposinteres`
--

LOCK TABLES `carrera_actividadgruposinteres` WRITE;
/*!40000 ALTER TABLE `carrera_actividadgruposinteres` DISABLE KEYS */;
INSERT INTO `carrera_actividadgruposinteres` VALUES (1,'Clínica asistencial docente','Atención odontológica integral realizada por los estudiantes de cuarto y quinto año de la carrera a la comunidad en general.','Contribuir al Perfil de Egreso en todas las competencias.','2016 <br> 2017<br> 2018','Comunidad',1,1),(2,'Semana de prevención del cáncer oral (MINSAL)','Instalación de stand de enseñanza de técnica de Autoexamen oral realizada por estudiantes de 5to nivel de la carrera. <br>Se confeccionó afiche del tema y se entregó volantes de la campaña “Saca la lengua” <br>Esta actividad fue dirigida a toda la comunidad Universitaria (estudiantes, académicos y funcionarios) y público en general.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Patología bucal I en lo referente a cáncer oral','2016 <br>2017','Entidad pública',1,1),(3,'Feria de la salud oral','Consiste en stands con temas de salud oral realizados por estudiantes y docentes de la asignatura de Microbiología oral, quienes exponen a estudiantes y profesores de colegios municipales y subvencionados y también a toda la comunidad de la Universidad de La Serena ( estudiantes y funcionarios).','Analizar y exponer a la comunidad como la microbiología oral influye en la salud bucal, contenidos tratados en la asignatura de Microbiología oral y además contribuir al Perfil de Egreso en C1, C3, C5, C10.','2016 <br> 2017','Entidad pública',1,1),(4,'Obra de teatro “Educación y prevención en salud oral en preescolares”','Exposición lúdica realizada por estudiantes de la asignatura de Odontopediatría II con temática de educación y prevención en salud oral para niños de prekinder y kínder del jardín infantil “Los Papayitos” de La Serena.','Contribuir al análisis a la educación y prevención en salud oral en pacientes pre escolares, contenidos tratados en la asignatura de Odontopediatría y además contribuir al Perfil de Egreso en C5, C10.','2017','Institución de educación',1,1),(5,'Feria de prevención del cáncer.','Instalación de Stand en Feria de Cáncer, organizado por el MINSAL, Región de Coquimbo donde se presentan varias carreras de distintas universidades regionales en relación al tema de prevención del Cáncer. <br>Esta actividad contó con la participación de la docente de Patología bucal Dra. Rosita Cuevas y estudiantes de 5to nivel, fomentando el autoexamen oral para detectar lesiones potencialmente malignas y concientizando a la comunidad sobre el cáncer oral.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Patología bucal I en lo referente a cáncer oral.','2017','Entidad pública',1,1),(6,'Intervención comunitaria educativa para “Centro de Madres de La Compañía Alta Nº1”','Actividad expositiva orientada a realizar prevención y promoción en agrupaciones comunitarias de la Región de Coquimbo.<br>En esta actividad participaron estudiantes de la asignatura Odontología geriátrica, correspondiente al décimo nivel.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Odontología geriátrica en lo referente a educación y promoción del autocuidado de la salud oral y protésica.','2017','Institución de educación',1,1),(7,'Intervención a la comunidad “Renacer” de Las Compañías','Actividad expositiva orientada a realizar prevención y promoción en agrupaciones comunitarias de la Región de Coquimbo.<br> En esta actividad participaron estudiantes de la asignatura Odontología geriátrica, correspondiente a décimo nivel.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Odontología geriátrica en lo referente a educación y promoción del autocuidado de la salud oral y detección temprana de lesiones bucales malignas.','2017','Entidad privada',1,1),(8,'Actividad práctica de educación en salud oral en adultos mayores residentes del hogar de ancianos “Hogar de Cristo” y sus cuidadores','Actividad expositiva orientada a realizar prevención y promoción en agrupaciones comunitarias de la Región de Coquimbo. <br>En esta actividad participaron los estudiantes de la asignatura Odontología geriátrica, correspondiente al décimo nivel.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Odontología geriátrica en lo referente a educación y promoción del autocuidado de la salud oral y protésica en el paciente adulto mayor.','2017','Entidad privada',1,1),(9,'Actividad de intervención: “Odontología Geriátrica” en pacientes portadores de prótesis del CESFAM Dr. Emilio Schaffhauser.','Actividad expositiva orientada a realizar prevención y promoción en pacientes adultos mayores portadores de prótesis dentales CESFAM Dr. Emilio Schaffhauser.<br>En esta actividad participaron estudiantes de la asignatura Odontología geriátrica, correspondiente al décimo nivel.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Odontología geriátrica en lo referente a educación y promoción del autocuidado de la salud oral y protésica en el paciente adulto mayor.','2017','Entidad pública',1,1),(10,'Actividad de intervención de salud oral dentro del programa “Más adultos mayores autovalentes”','Actividad expositiva orientada a realizar prevención y promoción en pacientes adultos mayores portadores de prótesis dentales del programa de salud “Más adultos mayores autovalentes” del CESFAM Pedro Aguirre Cerda.<br>En esta actividad participaron estudiantes de la asignatura Odontología geriátrica, correspondiente al décimo nivel.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Odontología geriátrica en lo referente a educación y promoción del autocuidado de la salud oral y protésica en el paciente adulto mayor.','2017','Entidad pública',1,1),(11,'Obra de teatro “Educación y prevención en salud oral en preescolares”','Exposición lúdica realizada por estudiantes de la asignatura de Odontología integral infantil 2 con temática de educación y prevención en salud oral para niños de prekinder y kínder del jardín infantil “Los Papayitos” de La Serena.','Contribuir al Perfil de Egreso de la carrera en C5 y C10 y al resultado de aprendizaje de la asignatura de Odontología integral infantil 2 en lo referente a educación y promoción del autocuidado de la salud oral en pacientes preescolares.','2017','institución de educación',1,1),(12,'Convenio de colaboración ULS-JUNAEB','Consiste en charlas de salud oral impartidas por estudiantes de la carrera a profesores de centros educacionales pertenecientes a JUNAEB en apoyo al módulo dental de dicha institución.  Participan docentes y alumnos voluntarios.','Contribuir al Perfil de Egreso en C1, C4, C5, C10.','2017<br>2018','Entidad pública',1,1),(13,'Módulo “Atención a pacientes con necesidades especiales”','Actividad clínica enmarcada en el módulo de atención odontológica a pacientes con necesidades especiales. En donde los estudiantes se interiorizan de las diferentes situaciones y patologías dentales que puede presentar un paciente con necesidades especiales, realizando actividades preventivas y restauradoras.','Contribuir a los resultados de aprendizaje de la asignatura de Internado Clínico Asistencial (12vo semestre).','2018','Entidad privada (ONG) <br>Fundación Fortezza',1,1),(14,'Proyecto FDI “ Recuperando sonrisas”','Es un proyecto que está enfocado en prevenir, diagnosticar y tratar las enfermedades orales más prevalentes en niños de 7-8 años de edad que pertenecen al SENAME por estudiantes de 5to año.','Contribuir a los resultados de aprendizaje de la asignatura de Internado Clínica integral del niño I y II (11vo y 12vo semestre).','2019','Entidad publica SENAME',1,1),(15,'Proyecto FDI “Devolviendo sonrisas”','Proyecto  que busca beneficiar con  atención odontológica integral y protésica a adultos mayores del Hogar de Cristo','Contribuir a los resultados de aprendizaje de las asignaturas de área de Rehabilitación Oral.','2020<br>2021','Entidad privada.',1,1);
/*!40000 ALTER TABLE `carrera_actividadgruposinteres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_actividadcientificoproductivo`
--

DROP TABLE IF EXISTS `carrera_actividadcientificoproductivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_actividadcientificoproductivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` longtext NOT NULL,
  `descripcion` longtext,
  `anio` varchar(30) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `mostrar` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_actividadcientificoproductivo`
--

LOCK TABLES `carrera_actividadcientificoproductivo` WRITE;
/*!40000 ALTER TABLE `carrera_actividadcientificoproductivo` DISABLE KEYS */;
INSERT INTO `carrera_actividadcientificoproductivo` VALUES (1,'Segunda Jornada de Abordaje Interdisciplinario de Disfunciones Temporomandibulares y Cráneo Cervicales.','Actividad expositiva sobre Disfunciones Temporomandibulares y Cráneo Cervicales, tratadas desde el punto de vista de la Kinesiología y Odontología. Participaron como expositores y asistentes docentes de la carrera Odontología y Kinesiología al igual que estudiantes de ambas carreras.','2014',1,1),(2,'Workshop de materiales de impresión por Dentalstore.','Actividad teórico-práctica sobre los últimos materiales de impresión, en donde participaron docentes y estudiantes de la asignatura de biomateriales I','2014',1,1),(3,'X Jornadas de especialidades odontológicas regionales de La Serena.','Jornadas organizadas por Hospital de La Serena con temáticas de: Referencia y Contrarreferencia en la red de salud, ética y temas relacionados con la Endodoncia, Periodoncia e infecciones odontogénicas. Actividad gratuita para los estudiantes de Odontología.','2015',1,1),(4,'Jornada de Autismo y Odontología','Actividad expositiva de la Asociación Latinoamericana de Odontología para Pacientes Especiales (ALOPE) destinada a profesionales del área de la salud y estudiantes. Actividad en que asisten docentes y estudiantes del 5° y 7° nivel.','2016',1,1),(5,'II Jornadas de Patología Bucal Filial V Región de Valparaíso','Organización de Jornada de actualización en Patología oral con exposición de docente Dra. Rosa Cuevas y presentación de poster de estudiantes con 2 Casos clínicos.','2016',1,1),(6,'XI Jornadas de especialidades odontológicas regionales de La Serena',' Jornadas organizadas por Hospital de La Serena con temáticas de: Referencia y Contrarreferencia en la red de salud, Deberes y derechos de los pacientes y temas relacionados con disfunción temporomandibular. Además, se dictó una charla del colegio de dentistas. Actividad gratuita a estudiantes de 8vo nivel.','2016',1,1),(7,'IV jornadas odontológicas Integramédica','Espacio de exposición de temas de innovación, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos dictadas por expositores nacionales e internacionales. <br>Actividad gratuita para docentes y estudiantes de 3er y 4to año de la carrera.','2016',1,1),(8,'Curso teórico práctico sobre manejo de tejido alveolar post –extracción más hands ON','Curso sobre el manejo del alveolo post extracción con conceptos de Sockte Shield y root submergence, además del uso de injertos óseos, y un hands on de provisionalización inmediata (carga inmediata unitaria y plural). Actividad en que asistieron docentes y estudiantes de la carrera.','2016',1,1),(9,'Taller de Antropología forense','Taller realizado en el museo de La Serena con participación de la Antropóloga forense, la chilena María Rosado, profesora de la Universidad de Rawson, USA, con módulos de Reconstitución facial e Identificación forense.<br>Participación de alumnos de la asignatura de Patología Oral y docente Dra. Rosa Cuevas con el tema Morfología dentaria','2016',1,1),(10,'Feria de la salud oral','Consiste en stands con temas de salud oral realizados por estudiantes y docentes de la asignatura de Microbiología oral, quienes exponen a estudiantes y profesores de colegios municipales y subvencionados y también a toda la comunidad de la Universidad de La Serena (estudiantes y funcionarios). La actividad consistió en exponer sobre la influencia de la microbiología oral en la salud bucal.','2016 - 2017',1,1),(11,'Convenio de colaboración ULS-JUNAEB','Consiste en charlas de salud oral impartidas por estudiantes de la carrera a profesores de centros educacionales pertenecientes a JUNAEB en apoyo al módulo dental de dicha institución. <br>Participan docentes y alumnos voluntarios.','2017 - 2018',1,1),(12,'Ciclo de conferencias Odontológicas','Actividad de difusión de temas odontológicos a la comunidad. <br>Se dictó 3 charlas por docentes de la Carrera de Odontología y participó personas de la comunidad externa más alumnos de la carrera. Las actividades fueron las siguientes:<br>- ¿Qué pasa si no me trato un diente con caries?, dictante: Dr. Andrés Guerrero <br>- Cuidado oral en pacientes portadores de prótesis, dictante: Dr. Darwin Pérez<br>- Autoexamen oral y cuidados preventivos en el adulto, dictante: Dra. Rosa Cuevas','2016',1,1),(13,'Ciclo de conferencias Odontológicas','Actividad de difusión de temas odontológicos a la comunidad. <br>Se dictó 3 charlas por docentes de la Carrera de Odontología y participó personas de la comunidad externa más alumnos de la carrera. Las actividades fueron las siguientes<br>-Autoevaluación y cuidados de la boca, dictante: Dra. Rosa Cuevas.<br>-Cuidado y mantención de la boca de pacientes portadores de prótesis dentales. Dictante: Dr. Christian Castillo.<br>-Cómo cuidar la salud bucal en los niños. Dictante: Francisco Alarcón.','2017',1,1),(14,'Programa radial sobre el cáncer oral','Entrevista realizada a la docente Dr. Rosa Cuevas en la Radio Universitaria, sobre la prevención, autocuidado y diagnóstico temprano del cáncer oral, programa que fue difundido a toda la Región de Coquimbo siendo escuchado por la comunidad y el estudiantado.','2017',1,1),(15,'Obra de teatro “Educación y prevención en salud oral en preescolares”','Exposición lúdica realizada por estudiantes y supervisados por docentes de la asignatura de Odontopediatría II con temática de educación y prevención en salud oral para niños de prekinder y kínder del jardín infantil “Los Papayitos” de La Serena.','2017',1,1),(16,'V jornadas odontológicas Integramédica con presentación de 8 posters.','Espacio de exposición de temas de innovación, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos dictadas por expositores nacionales e internacionales. <br>En esta oportunidad se presentaron 8 posters con temáticas relacionadas a la rehabilitación oral, odontología restauradora, oclusión y trastornos temporomandibulares. Estos posters fueron desarrollados por docentes y estudiantes de las asignaturas de Oclusión, Rehabilitación oral II y Operatoria dental II. <br>Actividad gratuita para docentes y estudiantes de 3er, 4to año de la carrera.','2017',1,1),(17,'Evento CIROMAX (sistema cerec)','Exposición e interacción por parte de docentes y estudiantes de 7° y 9° nivel al sistema CEREC AC (scanner intraoral) y Talladora CM XL.','2017',1,1),(18,'Workshop Técnica ART de 3M','Actividad teórica práctica sobre el tratamiento restaurador atraumático como complemento a la asignatura de Operatoria dental. Asistiendo docentes y estudiantes de 8vo nivel.','2017',1,1),(19,'I Jornadas de actualización Odontológica UPV','Actividad en la cual se expusieron temas relacionados con la rehabilitación oral y patología, exponiendo la docente Dra. Rosita Cuevas. Asistieron docentes y alumnos de manera gratuita.','2017',1,1),(20,'Capacitación en sistema de resinas indirectas con SR Nexco','Actividad expositiva y práctica del sistema de resinas indirectas, en la cual participaron docentes, estudiantes de 11° nivel y laboratoristas de la Región de Coquimbo.','2018',1,1),(21,'Curso teórico práctico de biomateriales','Actividad expositiva y práctica auspiciada por Denstply Sirona sobre los últimos avances de los biomateriales dentales, en esta oportunidad asistieron docentes y estudiantes.','2018',1,1),(22,'VI jornadas odontológicas Integramédica con presentación de 3 posters.','Espacio de exposición de temas de innovación, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos dictadas por expositores nacionales e internacionales. <br>En esta oportunidad se presentaron 3 posters con temáticas relacionadas a la rehabilitación oral, odontología restauradora, oclusión y trastornos temporomandibulares. Estos posters fueron desarrollados por docentes y estudiantes de las asignaturas de Oclusión, Rehabilitación oral II y Operatoria dental II. <br>Actividad gratuita para docentes y estudiantes de 3er, 4to año de la carrera.','2018',1,1),(23,'Ciclo de conferencias Odontológicas','Actividad de difusión de temas odontológicos a la comunidad.<br>Se dictó 2 charlas por docentes de la Carrera de Odontología y participó personas de la comunidad externa más alumnos de la carrera. Las actividades fueron las siguientes<br>-Autoexamen de la  boca en la prevención del cáncer oral, dictante: Dra. Rosa Cuevas.<br>-Cuidado e higiene  de las prótesis dentales. Dictante: Dr. Christian Castillo.','2019',1,1),(24,'Jornada Internacional de odontología para pacientes con necesidades especiales ALOPE CHILE – Zona Norte','Actividad expositiva de la Asociación Latinoamericana de Odontología para Pacientes Especiales (ALOPE) ZONA NORTE destinada a profesionales del área de la salud y estudiantes, en la cual se abarcó temáticas de atención a pacientes postrados, con asutismo y trasplantados. <br>Actividad en que asistieron  docentes y estudiantes del 7°,  9° y 11° nivel.<br>Se presento  a la comunidad el módulo: ”Atención a pacientes con necesidades especiales en salud” de la carrera de odontología U.L.S.','2019',1,1),(25,'Academia Quirúrgica de Estudiantes de Odontología  de la Universidad de La Serena (AQUEULS).','Grupo de estudiantes con afinidad por la cirugía maxilofacial quienes convocan  a charlas y talleres prácticos  sobre temáticas del área,  con expositores de la carrera asi como también externos regionales y nacionales.','2018-2019',1,1),(26,'Sociedad Científica de Estudiantes de Odontología de la Universidad de La Serena (SOCEULS).','Sociedad conformada por estudiantes cuyo fin es promover el desarrollo de actividades científicas dentro de la comunidad odontológica de la región. Generando las instancias necesarias que permitan a la comunidad odontológica regional ser partícipe de jornadas de actualización y divulgación científica, promoviendo además la participación de los estudiantes en el área de la investigación, otorgándoles habilidades, herramientas y orientación, en beneficio de su formación profesional.','2019 -2020',1,1),(27,'VI jornadas odontológicas Bupa Chile (Integramédica) con presentación de 12 productos  entre posters y charlas.','Espacio de exposición de temas de innovación, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos dictadas por expositores nacionales e internacionales. <br>En esta oportunidad se presentaron 12 productos, entre charlas y posters con temáticas relacionadas a la rehabilitación oral, odontología restauradora, oclusión y trastornos temporomandibulares. Estos productos fueron desarrollados por docentes y estudiantes de las asignaturas de Oclusión, Rehabilitación oral II y Operatoria dental II<br>Actividad gratuita para docentes y estudiantes de la carrera.','2019',1,1);
/*!40000 ALTER TABLE `carrera_actividadcientificoproductivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_actividadpoliticapublicaparticipacion`
--

DROP TABLE IF EXISTS `carrera_actividadpoliticapublicaparticipacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_actividadpoliticapublicaparticipacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(20) NOT NULL,
  `institucion_externa` varchar(100) NOT NULL,
  `objetivo_reunion` longtext NOT NULL,
  `tipo_participacion` longtext NOT NULL,
  `orden` int(11) NOT NULL,
  `mostrar` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_actividadpoliticapublicaparticipacion`
--

LOCK TABLES `carrera_actividadpoliticapublicaparticipacion` WRITE;
/*!40000 ALTER TABLE `carrera_actividadpoliticapublicaparticipacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrera_actividadpoliticapublicaparticipacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_tipopoliticapublica`
--

DROP TABLE IF EXISTS `carrera_tipopoliticapublica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_tipopoliticapublica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(400) NOT NULL,
  `mostrar` tinyint(1) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_tipopoliticapublica`
--

LOCK TABLES `carrera_tipopoliticapublica` WRITE;
/*!40000 ALTER TABLE `carrera_tipopoliticapublica` DISABLE KEYS */;
INSERT INTO `carrera_tipopoliticapublica` VALUES (1,'Actividades de conocimiento entre estudiantes y posibles empleadores',1,1),(2,'Actividades de impacto regional',1,1);
/*!40000 ALTER TABLE `carrera_tipopoliticapublica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_actividadpoliticapublica`
--

DROP TABLE IF EXISTS `carrera_actividadpoliticapublica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_actividadpoliticapublica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` longtext NOT NULL,
  `descripcion` longtext,
  `anio` varchar(30) DEFAULT NULL,
  `grupo_interes` varchar(200) NOT NULL,
  `orden` int(11) NOT NULL,
  `mostrar` tinyint(1) NOT NULL,
  `participantes` longtext,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carrera_actividadpol_tipo_id_69d2e56f_fk_carrera_t` (`tipo_id`),
  CONSTRAINT `carrera_actividadpol_tipo_id_69d2e56f_fk_carrera_t` FOREIGN KEY (`tipo_id`) REFERENCES `carrera_tipopoliticapublica` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_actividadpoliticapublica`
--

LOCK TABLES `carrera_actividadpoliticapublica` WRITE;
/*!40000 ALTER TABLE `carrera_actividadpoliticapublica` DISABLE KEYS */;
INSERT INTO `carrera_actividadpoliticapublica` VALUES (1,'X Jornadas de especialidades odontológicas regionales de La Serena','Jornadas organizadas por Hospital de La Serena con temáticas de: Referencia y Contrarreferencia en la red de salud, ética y temas relacionados con la Endodoncia, Periodoncia e infecciones odontogénicas.','2015','Entidad Pública',1,1,'Actividad gratuita para todos los estudiantes.',1),(2,'Visitas a Centro de Salud de Atención Primaria de la comuna de La Serena','Pasantía observacional a Centro de Salud de Atención Primaria.','2015 – 2016','Entidad Pública',1,1,'Obligatorio para los estudiantes de 6to nivel de la cátedra de preclínico integrado II unidad de introducción a la cirugía.',1),(3,'XI Jornadas de especialidades odontológicas regionales de La Serena',' Jornadas organizadas por Hospital de La Serena con temáticas de: Referencia y Contrarreferencia en la red de salud, Deberes y derechos de los pacientes y temas relacionados con disfunción temporomandibular. Además, se dictó una charla del colegio de dentistas.','2016','Entidad Pública',1,1,'Invitación gratuita a estudiantes de 8vo nivel.',1),(4,'Pasantía clínica en centro de salud de atención primaria de la comuna de La serena','Pasantía en la cual se realizó actividades de Prevención y Promoción en Salud Oral junto con intervenciones clínicas de tipo observacional con el fin de evaluar diagnóstico y criterio clínico de cada alumno; todo esto bajo la supervisión de los equipos Odontológicos pertenecientes a cada Centro de Salud de Atención Primaria de la comuna de La Serena.','2017 - 2018','Entidad Pública',1,1,'Obligatorio para los estudiantes de 5to año en la cátedra de Clínica integral del adulto.',1),(5,'4ta Jornadas odontológicas de Integramédica','Espacio para exponer temas de innovación en odontología, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos que se están realizando en el país por expositores nacionales e internacionales.','2016','Entidad privada',1,1,'Estudiantes de 3er, 4to año de la carrera.',1),(6,'5ta Jornadas odontológicas de Integramédica','Espacio para exponer temas de innovación en odontología, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos que se están realizando en el país por expositores nacionales e internacionales. En esta oportunidad los estudiantes de nuestra carrera expusieron 6 posters.','2017','Entidad privada',1,1,'Estudiantes de 3er, 4to y 5to año de la carrera.',1),(7,'6ta Jornadas odontológicas de Integramédica','Espacio para exponer temas de innovación en odontología, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos que se están realizando en el país por expositores nacionales e internacionales. En esta oportunidad los estudiantes de nuestra carrera expusieron 3 posters','2018','Entidad Privada',1,1,'Estudiantes de 3er, 4to y 5to año de la carrera.',1),(8,'Invitación a reuniones de sociedades de especialidades Odontológicas como ITI','Son 3 a 5  Reuniones anuales de un grupo de profesionales ligados a la rehabilitación en implantología que busca actualización constante a través de charlas dictadas por referentes nacionales e internacionales','2017-2018-2019-2020','Entidad privada',1,1,'Estudiantes de los últimos niveles de la carrera.',1),(9,'Convenio de colaboración ULS-JUNAEB','Consiste en charlas de salud oral impartidas por estudiantes de la carrera a profesores de centros educacionales pertenecientes a JUNAEB en apoyo al módulo dental de dicha institución.','2017-2018','Entidad Pública',1,1,'Estudiantes voluntarios de los últimos niveles de la carrera.',1),(10,'Internado extramural en centros de atención primaria.','Los estudiantes del último año realizan su internado extramural en centros de Atención Primaria de La Serena y Coquimbo, contribuyendo al futuro desempeño como profesionales y además a la salud oral de la comunidad con el ejercicio de actividades que son propias del Cirujano dentista.','2018','Entidad Pública',1,1,'Estudiantes del 12° nivel.',1),(11,'XIV Jornadas Odontológicas.','Jornadas organizadas por Hospital de La Serena con temáticas de: Cariología y Odontogeriatría.','2019','Entidad Pública',1,1,'Estudiantes del ciclo clínico de la carrera.',1),(12,'7ma Jornadas odontológicas Bupa Chile (Integramédica)','Espacio para exponer temas de innovación en odontología, nuevas líneas de trabajo y últimas investigaciones en temas odontológicos que se están realizando en el país por expositores nacionales e internacionales. En esta oportunidad los estudiantes y docentes de nuestra carrera expusieron 12 artículos entre posters y charlas.','2019','Entidad privada',1,1,'Estudiantes de 3er, 4to y 5to año de la carrera.',1),(13,'Convenio de colaboración ULS-JUNAEB','Charlas de salud oral impartidas por estudiantes de la carrera a profesores de centros educacionales pertenecientes a JUNAEB en apoyo al módulo dental de dicha institución. Las cuales son impartidas de acuerdo a calendario anual.','2017-2018','Centros educacionales regionales pertenecientes a JUNAEB.',1,1,'Estudiantes voluntarios de los últimos niveles de la carrera.',2),(14,'Proyecto “Rehabilitación maxilofacial con prótesis ocular”','Consiste en la rehabilitación de pacientes con perdida ocular del hospital San Juan de Dios de La Serena. Se considera una actividad anexa a los estudiantes interesados en conocer la subespecialidad odontológica de somato prótesis.','2018','Pacientes del hospital san Juan de Dios de La Serena.',1,1,'-Estudiantes y docentes de la asignatura de Prótesis Removible.<br>-Estudiantes de la carrera interesados en el área.<br>-Docente y clínico del Hospital clínico de la Universidad de Chile como Experto externo a la institución.',2),(15,'Módulo “Atención a pacientes con necesidades especiales”','Actividad clínica enmarcada en el módulo de atención odontológica a pacientes con necesidades especiales del internado clínico asistencial.','2018','Fundación Fortezza.',1,1,'Estudiantes de 12º nivel.',2),(16,'Proyecto FDI “Recuperando Sonrisas”','Proyecto  que busca beneficiar con  atención odontológica a 50 niños con vulnerabilidad social, la cual es financiada a tráves del FDI EE.','2019','SENAME.',1,1,'Estudiantes de 9 º nivel  (Asignatura de  Clínica Integral del Niño)',2),(17,'Proyecto FDI “Devolviendo sonrisas”','Proyecto  que busca beneficiar con  atención odontológica integral y protésica a adultos mayores del Hogar de Cristo.','2020-2021','Hogar de Cristo',1,1,'Contribuir a los resultados de aprendizaje de las asignaturas de área de Rehabilitación Oral.',2);
/*!40000 ALTER TABLE `carrera_actividadpoliticapublica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera_actividadnumerobeneficiario`
--

DROP TABLE IF EXISTS `carrera_actividadnumerobeneficiario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_actividadnumerobeneficiario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anio` varchar(10) NOT NULL,
  `beneficiario` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_actividadnumerobeneficiario`
--

LOCK TABLES `carrera_actividadnumerobeneficiario` WRITE;
/*!40000 ALTER TABLE `carrera_actividadnumerobeneficiario` DISABLE KEYS */;
INSERT INTO `carrera_actividadnumerobeneficiario` VALUES (1,'2016','1132'),(2,'2017','1901'),(3,'2018','2147'),(4,'2019','2358'),(5,'2020**','104');
/*!40000 ALTER TABLE `carrera_actividadnumerobeneficiario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-06 20:27:48
