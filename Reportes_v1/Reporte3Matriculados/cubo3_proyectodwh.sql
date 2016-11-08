-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: cubo3_proyectodwh
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
-- Table structure for table `dimanyo`
--

DROP TABLE IF EXISTS `dimanyo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimanyo` (
  `anyo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year(m.fecha_matriculacion)` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`anyo_id`),
  UNIQUE KEY `idx_DimAnyo_pk` (`anyo_id`),
  KEY `idx_DimAnyo_lookup` (`year(m.fecha_matriculacion)`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimanyo`
--

LOCK TABLES `dimanyo` WRITE;
/*!40000 ALTER TABLE `dimanyo` DISABLE KEYS */;
INSERT INTO `dimanyo` VALUES (1,2016);
/*!40000 ALTER TABLE `dimanyo` ENABLE KEYS */;
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
  UNIQUE KEY `idx_DimDepartamento_pk` (`departamento_id`),
  KEY `idx_DimDepartamento_lookup` (`id_dep`,`departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimdepartamento`
--

LOCK TABLES `dimdepartamento` WRITE;
/*!40000 ALTER TABLE `dimdepartamento` DISABLE KEYS */;
INSERT INTO `dimdepartamento` VALUES (4,1,'GUATEMALA'),(8,8,'TOTONICAPAN'),(5,9,'QUETZALTENANGO'),(3,11,'RETALHULEU'),(2,12,'SAN MARCOS'),(1,13,'HUEHUETENANGO'),(7,15,'BAJA VERAPAZ'),(6,22,'JUTIAPA');
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
  UNIQUE KEY `idx_DimGrado_pk` (`grado_id`),
  KEY `idx_DimGrado_lookup` (`id_grado`,`grado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `idx_DimSeccion_pk` (`seccion_id`),
  KEY `idx_DimSeccion_lookup` (`seccion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablahechos3`
--

LOCK TABLES `tablahechos3` WRITE;
/*!40000 ALTER TABLE `tablahechos3` DISABLE KEYS */;
INSERT INTO `tablahechos3` VALUES (1,1,1,1,1),(1,1,2,1,2),(1,1,4,1,1),(1,2,1,1,44),(1,2,2,1,57),(1,2,3,1,66),(1,2,4,1,57),(1,2,5,1,52),(1,2,6,1,61),(1,3,1,1,8),(1,3,2,1,7),(1,3,4,1,3),(1,3,5,1,5),(1,4,1,1,1),(1,4,5,1,1),(1,5,1,1,3),(1,5,4,1,4),(1,5,5,1,5),(1,5,6,1,1),(1,6,1,1,1),(1,7,5,1,1),(1,8,5,1,1);
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

-- Dump completed on 2016-11-08 10:28:35
