-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cubo3_proyectodwh
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `dimanio`
--

DROP TABLE IF EXISTS `dimanio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimanio` (
  `anyo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Anio` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`anyo_id`),
  UNIQUE KEY `idx_dimanio_pk` (`anyo_id`),
  KEY `idx_dimanio_lookup` (`Anio`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimanio`
--

LOCK TABLES `dimanio` WRITE;
/*!40000 ALTER TABLE `dimanio` DISABLE KEYS */;
INSERT INTO `dimanio` VALUES (1,2014),(2,2015),(3,2016);
/*!40000 ALTER TABLE `dimanio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimdepartamento`
--

DROP TABLE IF EXISTS `dimdepartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimdepartamento` (
  `departamento_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_dep` int(11) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`departamento_id`),
  UNIQUE KEY `idx_dimdepartamento_pk` (`departamento_id`),
  KEY `idx_dimdepartamento_lookup` (`id_dep`,`departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdepartamento`
--

LOCK TABLES `dimdepartamento` WRITE;
/*!40000 ALTER TABLE `dimdepartamento` DISABLE KEYS */;
INSERT INTO `dimdepartamento` VALUES (1,20,'CHIQUIMULA'),(2,13,'HUEHUETENANGO'),(3,12,'SAN MARCOS'),(4,3,'SACATEPEQUEZ'),(5,4,'CHIMALTENANGO'),(6,1,'GUATEMALA'),(7,7,'SOLOLA'),(8,9,'QUETZALTENANGO'),(9,6,'SANTA ROSA'),(10,15,'BAJA VERAPAZ'),(11,16,'ALTA VERAPAZ'),(12,22,'JUTIAPA'),(13,11,'RETALHULEU'),(14,8,'TOTONICAPAN');
/*!40000 ALTER TABLE `dimdepartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimgrado`
--

DROP TABLE IF EXISTS `dimgrado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimgrado` (
  `grado_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_grado` int(11) DEFAULT NULL,
  `grado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`grado_id`),
  UNIQUE KEY `idx_dimgrado_pk` (`grado_id`),
  KEY `idx_dimgrado_lookup` (`id_grado`,`grado`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimgrado`
--

LOCK TABLES `dimgrado` WRITE;
/*!40000 ALTER TABLE `dimgrado` DISABLE KEYS */;
INSERT INTO `dimgrado` VALUES (1,1,'Primero'),(2,2,'Segundo'),(3,3,'Tercero'),(4,4,'Cuarto'),(5,5,'Quinto'),(6,6,'Sexto');
/*!40000 ALTER TABLE `dimgrado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimseccion`
--

DROP TABLE IF EXISTS `dimseccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimseccion` (
  `seccion_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `seccion` char(1) DEFAULT NULL,
  PRIMARY KEY (`seccion_id`),
  UNIQUE KEY `idx_dimseccion_pk` (`seccion_id`),
  KEY `idx_dimseccion_lookup` (`seccion`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimseccion`
--

LOCK TABLES `dimseccion` WRITE;
/*!40000 ALTER TABLE `dimseccion` DISABLE KEYS */;
INSERT INTO `dimseccion` VALUES (1,'A');
/*!40000 ALTER TABLE `dimseccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablahechos3`
--

DROP TABLE IF EXISTS `tablahechos3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablahechos3` (
  `anyo_id` bigint(20) DEFAULT NULL,
  `departamento_id` bigint(20) DEFAULT NULL,
  `grado_id` bigint(20) DEFAULT NULL,
  `seccion_id` bigint(20) DEFAULT NULL,
  `nomyape` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablahechos3`
--

LOCK TABLES `tablahechos3` WRITE;
/*!40000 ALTER TABLE `tablahechos3` DISABLE KEYS */;
INSERT INTO `tablahechos3` VALUES (1,1,1,1,5),(1,1,2,1,5),(1,1,3,1,5),(1,1,4,1,7),(1,2,1,1,5),(1,2,2,1,2),(1,2,3,1,5),(1,2,4,1,3),(1,3,1,1,17),(1,3,2,1,17),(1,3,3,1,18),(1,3,4,1,18),(1,4,1,1,4),(1,4,2,1,3),(1,4,3,1,4),(1,4,4,1,2),(1,5,1,1,8),(1,5,2,1,6),(1,5,3,1,1),(1,5,4,1,4),(1,6,1,1,5),(1,6,2,1,6),(1,6,3,1,2),(1,6,4,1,7),(1,7,1,1,6),(1,7,2,1,2),(1,7,3,1,4),(1,7,4,1,3),(1,8,1,1,1),(1,8,2,1,4),(1,8,3,1,5),(1,8,4,1,6),(1,9,1,1,3),(1,9,2,1,7),(1,9,3,1,2),(1,9,4,1,3),(1,10,1,1,5),(1,10,2,1,1),(1,10,3,1,6),(1,11,1,1,2),(1,11,2,1,2),(1,11,3,1,4),(1,11,4,1,4),(1,12,1,1,2),(1,12,2,1,4),(1,12,3,1,1),(1,12,4,1,2),(1,13,2,1,3),(1,13,3,1,5),(2,1,1,1,8),(2,1,2,1,5),(2,1,3,1,5),(2,1,4,1,5),(2,1,5,1,7),(2,2,1,1,3),(2,2,2,1,5),(2,2,3,1,2),(2,2,4,1,5),(2,2,5,1,3),(2,3,1,1,14),(2,3,2,1,17),(2,3,3,1,17),(2,3,4,1,18),(2,3,5,1,18),(2,4,1,1,4),(2,4,2,1,4),(2,4,3,1,3),(2,4,4,1,4),(2,4,5,1,2),(2,5,1,1,4),(2,5,2,1,8),(2,5,3,1,6),(2,5,4,1,1),(2,5,5,1,4),(2,6,1,1,2),(2,6,2,1,5),(2,6,3,1,6),(2,6,4,1,2),(2,6,5,1,7),(2,7,1,1,5),(2,7,2,1,6),(2,7,3,1,2),(2,7,4,1,4),(2,7,5,1,3),(2,8,1,1,2),(2,8,2,1,1),(2,8,3,1,4),(2,8,4,1,5),(2,8,5,1,6),(2,9,1,1,7),(2,9,2,1,3),(2,9,3,1,7),(2,9,4,1,2),(2,9,5,1,3),(2,10,1,1,2),(2,10,2,1,5),(2,10,3,1,1),(2,10,4,1,6),(2,11,1,1,1),(2,11,2,1,2),(2,11,3,1,2),(2,11,4,1,4),(2,11,5,1,4),(2,12,1,1,2),(2,12,2,1,2),(2,12,3,1,4),(2,12,4,1,1),(2,12,5,1,2),(2,13,1,1,7),(2,13,3,1,3),(2,13,4,1,5),(3,1,1,1,4),(3,1,2,1,9),(3,1,3,1,6),(3,1,4,1,7),(3,1,5,1,5),(3,1,6,1,8),(3,2,1,1,1),(3,2,2,1,3),(3,2,3,1,5),(3,2,4,1,2),(3,2,5,1,6),(3,2,6,1,3),(3,3,1,1,10),(3,3,2,1,15),(3,3,3,1,17),(3,3,4,1,17),(3,3,5,1,19),(3,3,6,1,19),(3,4,1,1,2),(3,4,2,1,5),(3,4,3,1,4),(3,4,4,1,3),(3,4,5,1,4),(3,4,6,1,3),(3,5,1,1,4),(3,5,2,1,4),(3,5,3,1,9),(3,5,4,1,6),(3,5,5,1,1),(3,5,6,1,4),(3,6,1,1,4),(3,6,2,1,2),(3,6,3,1,6),(3,6,4,1,6),(3,6,5,1,2),(3,6,6,1,7),(3,7,1,1,6),(3,7,2,1,5),(3,7,3,1,6),(3,7,4,1,2),(3,7,5,1,4),(3,7,6,1,3),(3,8,1,1,5),(3,8,2,1,3),(3,8,3,1,1),(3,8,4,1,5),(3,8,5,1,5),(3,8,6,1,6),(3,9,1,1,1),(3,9,2,1,8),(3,9,3,1,3),(3,9,4,1,7),(3,9,5,1,2),(3,9,6,1,3),(3,10,1,1,3),(3,10,2,1,2),(3,10,3,1,5),(3,10,4,1,1),(3,10,5,1,6),(3,11,1,1,8),(3,11,2,1,1),(3,11,3,1,2),(3,11,4,1,2),(3,11,5,1,4),(3,11,6,1,4),(3,12,1,1,4),(3,12,2,1,2),(3,12,3,1,2),(3,12,4,1,4),(3,12,5,1,1),(3,12,6,1,2),(3,13,1,1,6),(3,13,2,1,7),(3,13,4,1,3),(3,13,5,1,5),(3,14,5,1,1);
/*!40000 ALTER TABLE `tablahechos3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-10 21:09:39
