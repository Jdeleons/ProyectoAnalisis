-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectobda_dwh
-- ------------------------------------------------------
-- Server version	5.6.28-log

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
  UNIQUE KEY `idx_DimDepartamento_pk` (`departamento_id`),
  KEY `idx_DimDepartamento_lookup` (`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdepartamento`
--

LOCK TABLES `dimdepartamento` WRITE;
/*!40000 ALTER TABLE `dimdepartamento` DISABLE KEYS */;
INSERT INTO `dimdepartamento` VALUES (7,'BAJA VERAPAZ'),(4,'GUATEMALA'),(1,'HUEHUETENANGO'),(6,'JUTIAPA'),(5,'QUETZALTENANGO'),(3,'RETALHULEU'),(2,'SAN MARCOS'),(8,'TOTONICAPAN');
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
  UNIQUE KEY `idx_DimDocente_pk` (`docente_id`),
  KEY `idx_DimDocente_lookup` (`nombres`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdocente`
--

LOCK TABLES `dimdocente` WRITE;
/*!40000 ALTER TABLE `dimdocente` DISABLE KEYS */;
INSERT INTO `dimdocente` VALUES (4,'Arely Magalí De León Escobar'),(6,'Benedicto Francisco,  Navarro López'),(5,'Briseida Aracely Bamaca Lopez'),(3,'Cristian Paolo De Leon Orozco'),(1,'Juan Jose Gonzalez'),(2,'Marcos Victor Fuentes Pojoj');
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
  UNIQUE KEY `idx_DimGrado_pk` (`grado_id`),
  KEY `idx_DimGrado_lookup` (`grado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimgrado`
--

LOCK TABLES `dimgrado` WRITE;
/*!40000 ALTER TABLE `dimgrado` DISABLE KEYS */;
INSERT INTO `dimgrado` VALUES (4,'Cuarto'),(1,'Primero'),(5,'Quinto'),(2,'Segundo'),(6,'Sexto'),(3,'Tercero');
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
  UNIQUE KEY `idx_DimSexo_pk` (`sexo_id`),
  KEY `idx_DimSexo_lookup` (`sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimsexo`
--

LOCK TABLES `dimsexo` WRITE;
/*!40000 ALTER TABLE `dimsexo` DISABLE KEYS */;
INSERT INTO `dimsexo` VALUES (2,'F'),(1,'M');
/*!40000 ALTER TABLE `dimsexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablahechos`
--

DROP TABLE IF EXISTS `tablahechos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tablahechos` (
  `departamento_id` bigint(20) DEFAULT NULL,
  `sexo_id` bigint(20) DEFAULT NULL,
  `grado_id` bigint(20) DEFAULT NULL,
  `docente_id` bigint(20) DEFAULT NULL,
  `dpi_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablahechos`
--

LOCK TABLES `tablahechos` WRITE;
/*!40000 ALTER TABLE `tablahechos` DISABLE KEYS */;
INSERT INTO `tablahechos` VALUES (1,1,1,1,1),(1,1,2,2,1),(1,1,4,4,1),(1,2,2,2,1),(2,1,1,1,36),(2,1,2,2,49),(2,1,3,3,52),(2,1,4,4,45),(2,1,5,5,35),(2,1,6,6,50),(2,2,1,1,8),(2,2,2,2,8),(2,2,3,3,14),(2,2,4,4,12),(2,2,5,5,17),(2,2,6,6,11),(3,1,1,1,6),(3,1,2,2,5),(3,1,4,4,3),(3,1,5,5,2),(3,2,1,1,2),(3,2,2,2,2),(3,2,5,5,3),(4,1,1,1,1),(4,1,5,5,1),(5,1,1,1,3),(5,1,4,4,4),(5,1,5,5,5),(5,1,6,6,1),(6,1,1,1,1),(7,1,5,5,1),(8,1,5,5,1);
/*!40000 ALTER TABLE `tablahechos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-08 10:27:39
