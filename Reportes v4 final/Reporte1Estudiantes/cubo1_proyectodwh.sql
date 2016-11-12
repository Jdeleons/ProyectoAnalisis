-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cubo1_proyectodwh
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
-- Table structure for table `dimdepartamento`
--

DROP TABLE IF EXISTS `dimdepartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimdepartamento` (
  `departamento_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`departamento_id`),
  UNIQUE KEY `idx_dimdepartamento_pk` (`departamento_id`),
  KEY `idx_dimdepartamento_lookup` (`departamento`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdepartamento`
--

LOCK TABLES `dimdepartamento` WRITE;
/*!40000 ALTER TABLE `dimdepartamento` DISABLE KEYS */;
INSERT INTO `dimdepartamento` VALUES (1,'CHIQUIMULA'),(2,'HUEHUETENANGO'),(3,'SAN MARCOS'),(4,'SACATEPEQUEZ'),(5,'CHIMALTENANGO'),(6,'GUATEMALA'),(7,'SOLOLA'),(8,'QUETZALTENANGO'),(9,'SANTA ROSA'),(10,'BAJA VERAPAZ'),(11,'ALTA VERAPAZ'),(12,'JUTIAPA'),(13,'RETALHULEU'),(14,'TOTONICAPAN');
/*!40000 ALTER TABLE `dimdepartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimdocente`
--

DROP TABLE IF EXISTS `dimdocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimdocente` (
  `docente_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`docente_id`),
  UNIQUE KEY `idx_dimdocente_pk` (`docente_id`),
  KEY `idx_dimdocente_lookup` (`nombres`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdocente`
--

LOCK TABLES `dimdocente` WRITE;
/*!40000 ALTER TABLE `dimdocente` DISABLE KEYS */;
INSERT INTO `dimdocente` VALUES (1,'Juan Jose Gonzalez'),(2,'Marcos Victor Fuentes Pojoj'),(3,'Cristian Paolo De Leon Orozco'),(4,'Arely Magalí De León Escobar'),(5,'Briseida Aracely Bamaca Lopez'),(6,'Benedicto Francisco,  Navarro López');
/*!40000 ALTER TABLE `dimdocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimgrado`
--

DROP TABLE IF EXISTS `dimgrado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimgrado` (
  `grado_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`grado_id`),
  UNIQUE KEY `idx_dimgrado_pk` (`grado_id`),
  KEY `idx_dimgrado_lookup` (`grado`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimgrado`
--

LOCK TABLES `dimgrado` WRITE;
/*!40000 ALTER TABLE `dimgrado` DISABLE KEYS */;
INSERT INTO `dimgrado` VALUES (1,'Primero'),(2,'Segundo'),(3,'Tercero'),(4,'Cuarto'),(5,'Quinto'),(6,'Sexto');
/*!40000 ALTER TABLE `dimgrado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimsexo`
--

DROP TABLE IF EXISTS `dimsexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimsexo` (
  `sexo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sexo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`sexo_id`),
  UNIQUE KEY `idx_dimsexo_pk` (`sexo_id`),
  KEY `idx_dimsexo_lookup` (`sexo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimsexo`
--

LOCK TABLES `dimsexo` WRITE;
/*!40000 ALTER TABLE `dimsexo` DISABLE KEYS */;
INSERT INTO `dimsexo` VALUES (1,'M'),(2,'F');
/*!40000 ALTER TABLE `dimsexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablahechos1`
--

DROP TABLE IF EXISTS `tablahechos1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablahechos1` (
  `departamento_id` bigint(20) DEFAULT NULL,
  `sexo_id` bigint(20) DEFAULT NULL,
  `grado_id` bigint(20) DEFAULT NULL,
  `docente_id` bigint(20) DEFAULT NULL,
  `dpi_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablahechos1`
--

LOCK TABLES `tablahechos1` WRITE;
/*!40000 ALTER TABLE `tablahechos1` DISABLE KEYS */;
INSERT INTO `tablahechos1` VALUES (1,1,1,1,12),(1,1,2,2,13),(1,1,3,3,8),(1,1,4,4,10),(1,1,5,5,6),(1,1,6,6,5),(1,2,1,1,5),(1,2,2,2,6),(1,2,3,3,8),(1,2,4,4,9),(1,2,5,5,6),(1,2,6,6,3),(2,1,1,1,8),(2,1,2,2,9),(2,1,3,3,11),(2,1,4,4,9),(2,1,5,5,8),(2,1,6,6,3),(2,2,1,1,1),(2,2,2,2,1),(2,2,3,3,1),(2,2,4,4,1),(2,2,5,5,1),(3,1,1,1,34),(3,1,2,2,41),(3,1,3,3,38),(3,1,4,4,39),(3,1,5,5,26),(3,1,6,6,15),(3,2,1,1,7),(3,2,2,2,8),(3,2,3,3,14),(3,2,4,4,14),(3,2,5,5,11),(3,2,6,6,4),(4,1,1,1,10),(4,1,2,2,11),(4,1,3,3,10),(4,1,4,4,8),(4,1,5,5,6),(4,1,6,6,3),(4,2,2,2,1),(4,2,3,3,1),(4,2,4,4,1),(5,1,1,1,13),(5,1,2,2,13),(5,1,3,3,11),(5,1,4,4,8),(5,1,5,5,4),(5,1,6,6,3),(5,2,1,1,3),(5,2,2,2,5),(5,2,3,3,5),(5,2,4,4,3),(5,2,5,5,1),(5,2,6,6,1),(6,1,1,1,8),(6,1,2,2,10),(6,1,3,3,11),(6,1,4,4,12),(6,1,5,5,7),(6,1,6,6,6),(6,2,1,1,3),(6,2,2,2,3),(6,2,3,3,3),(6,2,4,4,3),(6,2,5,5,2),(6,2,6,6,1),(7,1,1,1,14),(7,1,2,2,11),(7,1,3,3,11),(7,1,4,4,8),(7,1,5,5,6),(7,1,6,6,2),(7,2,1,1,3),(7,2,2,2,2),(7,2,3,3,1),(7,2,4,4,1),(7,2,5,5,1),(7,2,6,6,1),(8,1,1,1,8),(8,1,2,2,8),(8,1,3,3,10),(8,1,4,4,16),(8,1,5,5,11),(8,1,6,6,6),(9,1,1,1,9),(9,1,2,2,14),(9,1,3,3,10),(9,1,4,4,10),(9,1,5,5,5),(9,1,6,6,3),(9,2,1,1,2),(9,2,2,2,4),(9,2,3,3,2),(9,2,4,4,2),(10,1,1,1,7),(10,1,2,2,7),(10,1,3,3,10),(10,1,4,4,5),(10,1,5,5,4),(10,2,1,1,3),(10,2,2,2,1),(10,2,3,3,2),(10,2,4,4,2),(10,2,5,5,2),(11,1,1,1,10),(11,1,2,2,4),(11,1,3,3,5),(11,1,4,4,7),(11,1,5,5,5),(11,1,6,6,3),(11,2,1,1,1),(11,2,2,2,1),(11,2,3,3,3),(11,2,4,4,3),(11,2,5,5,3),(11,2,6,6,1),(12,1,1,1,5),(12,1,2,2,7),(12,1,3,3,6),(12,1,4,4,7),(12,1,5,5,3),(12,1,6,6,2),(12,2,1,1,3),(12,2,2,2,1),(12,2,3,3,1),(13,1,1,1,9),(13,1,2,2,8),(13,1,3,3,5),(13,1,4,4,5),(13,1,5,5,2),(13,2,1,1,4),(13,2,2,2,2),(13,2,3,3,3),(13,2,4,4,3),(13,2,5,5,3),(14,1,5,5,1);
/*!40000 ALTER TABLE `tablahechos1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-10 21:08:22
