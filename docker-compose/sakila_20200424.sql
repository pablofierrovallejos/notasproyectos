-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_springboot_cloud
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detalleventas`
--

DROP TABLE IF EXISTS `detalleventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleventas` (
  `iddetalleventa` int NOT NULL AUTO_INCREMENT,
  `idventa` bigint unsigned NOT NULL,
  `nombreproducto` varchar(45) DEFAULT NULL,
  `idproducto` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `preciosubtotal` int DEFAULT NULL,
  PRIMARY KEY (`iddetalleventa`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventas`
--

LOCK TABLES `detalleventas` WRITE;
/*!40000 ALTER TABLE `detalleventas` DISABLE KEYS */;
INSERT INTO `detalleventas` VALUES (1,13215700303,'Granizado Chico','ARX343',1,600),(2,13215700303,'Cafe Helado','ARX343',1,3000),(3,13215700303,'Jugo Natural','ARX343',1,1500),(4,13215700303,'Artesanal 2 Sabor','ARX343',1,2900),(5,13215710663,'Granizado Chico','ARX343',1,600),(6,13215710663,'Cafe Helado','ARX343',1,3000),(7,13215710663,'Jugo Natural','ARX343',1,1500),(8,13215710663,'Artesanal 2 Sabor','ARX343',1,2900),(9,13215710663,'Leche con Platano','ARX343',4,6000),(10,13215710663,'Chubi','ARX343',1,500),(11,13215924144,'Batido','ARX343',11,27500),(12,13215924144,'Doritos 42g','ARX343',1,1100),(13,13215924144,'Chubi','ARX343',4,2000),(14,13215924144,'Leche con Platano','ARX343',1,1500),(15,13215924144,'Cachantun500cc','ARX343',1,1000),(16,17145526003,'Artesanal 2 Sabor','ARX343',1,2900),(17,17145526003,'Jugo Natural','ARX343',1,1500),(18,17145526003,'Chocman','ARX343',1,400),(19,17145526003,'Batido','ARX343',1,2500),(20,17150120226,'Artesanal 2 Sabor','ARX343',1,2900),(21,17150120226,'Jugo Natural','ARX343',1,1500),(22,17150120226,'Batido','ARX343',1,2500),(23,17150120226,'Artesanal 1 Sabor','ARX343',1,1900),(24,17150520353,'Artesanal 1 Sabor','ARX343',5,9500),(25,17150520353,'Batido','ARX343',2,5000),(26,17170112946,'Soft XL','ARX343',10,17000),(27,17170112946,'VasitoConTodo','ARX343',1,1500),(28,17170112946,'Granizado Grande','ARX343',1,1000),(29,17170112946,'Granizado Chico','ARX343',1,600),(30,17170112946,'Cachantun500cc','ARX343',1,1000),(31,17170112946,'Leche con Platano','ARX343',1,1500),(32,17170112946,'Capuchino','ARX343',1,1100),(33,17170907496,'VasitoConTodo','ARX343',1,1500),(34,17170907496,'Soft XL','ARX343',1,1700),(35,17170907496,'Granizado Grande','ARX343',2,2000),(36,17170907496,'Leche con Platano','ARX343',1,1500),(37,17171928786,'VasitoConTodo','ARX343',1,1500),(38,17171928786,'SoftConTodo','ARX343',1,1700),(39,17171928786,'Coca 591cc','ARX343',1,1500),(40,17171928786,'Granizado Grande','ARX343',1,1000),(41,17172032116,'VasitoConTodo','ARX343',1,1500),(42,17172032116,'SoftConTodo','ARX343',1,1700),(43,17172032116,'Coca 591cc','ARX343',1,1500),(44,17172032116,'Granizado Grande','ARX343',1,1000),(45,17172032383,'VasitoConTodo','ARX343',1,1500),(46,17172032383,'SoftConTodo','ARX343',1,1700),(47,17172032383,'Coca 591cc','ARX343',1,1500),(48,17172032383,'Granizado Grande','ARX343',1,1000),(49,17172032619,'VasitoConTodo','ARX343',1,1500),(50,17172032619,'SoftConTodo','ARX343',1,1700),(51,17172032619,'Coca 591cc','ARX343',1,1500),(52,17172032619,'Granizado Grande','ARX343',1,1000),(53,17172032850,'VasitoConTodo','ARX343',1,1500),(54,17172032850,'SoftConTodo','ARX343',1,1700),(55,17172032850,'Coca 591cc','ARX343',1,1500),(56,17172032850,'Granizado Grande','ARX343',1,1000),(57,17172033086,'VasitoConTodo','ARX343',1,1500),(58,17172033086,'SoftConTodo','ARX343',1,1700),(59,17172033086,'Coca 591cc','ARX343',1,1500),(60,17172033086,'Granizado Grande','ARX343',1,1000),(61,17172033313,'VasitoConTodo','ARX343',1,1500),(62,17172033313,'SoftConTodo','ARX343',1,1700),(63,17172033313,'Coca 591cc','ARX343',1,1500),(64,17172033313,'Granizado Grande','ARX343',1,1000),(65,17172033556,'VasitoConTodo','ARX343',1,1500),(66,17172033556,'SoftConTodo','ARX343',1,1700),(67,17172033556,'Coca 591cc','ARX343',1,1500),(68,17172033556,'Granizado Grande','ARX343',1,1000),(69,17172033799,'VasitoConTodo','ARX343',1,1500),(70,17172033799,'SoftConTodo','ARX343',1,1700),(71,17172033799,'Coca 591cc','ARX343',1,1500),(72,17172033799,'Granizado Grande','ARX343',1,1000),(73,17172034017,'VasitoConTodo','ARX343',1,1500),(74,17172034017,'SoftConTodo','ARX343',1,1700),(75,17172034017,'Coca 591cc','ARX343',1,1500),(76,17172034017,'Granizado Grande','ARX343',1,1000),(77,17181008596,'Capuchino','ARX343',2,2200),(78,17181008596,'CafeExpress','ARX343',1,900),(79,17181008596,'Lays 38g','ARX343',1,1000),(80,18165157265,'SoftConTodo','ARX343',2,3400),(81,18165157265,'VasitoConTodo','ARX343',1,1500),(82,18165157265,'Granizado Grande','ARX343',1,1000),(83,18165157265,'Coca 591cc','ARX343',1,1500),(84,18184651716,'SoftConTodo','ARX343',1,1700),(85,18184651716,'Coca 591cc','ARX343',1,1500),(86,18184651716,'Granizado Grande','ARX343',1,1000),(87,18184651716,'Artesanal 1 Sabor','ARX343',1,1900),(88,18184659154,'Granizado Grande','ARX343',1,1000),(89,18184659154,'Granizado Chico','ARX343',1,600),(90,18184659154,'Cachantun500cc','ARX343',1,1000),(91,18184659154,'Leche con Platano','ARX343',1,1500),(92,18184706189,'Soft Simple','ARX343',2,2200),(93,18184706189,'Soft XL','ARX343',2,3400),(94,18184706189,'VasitoConTodo','ARX343',1,1500),(95,18184723249,'Soft Simple','ARX343',2,2200),(96,18184723249,'Soft XL','ARX343',2,3400),(97,18184723249,'VasitoConTodo','ARX343',1,1500),(98,18200306879,'SoftConTodo','ARX343',2,3400),(99,18200306879,'Coca 591cc','ARX343',1,1500),(100,18200306879,'Granizado Grande','ARX343',1,1000),(101,18200310863,'SoftConTodo','ARX343',2,3400),(102,18200310863,'Coca 591cc','ARX343',1,1500),(103,18200310863,'Granizado Grande','ARX343',2,2000),(104,18200310863,'Artesanal 1 Sabor','ARX343',1,1900),(105,18200310863,'VasitoConTodo','ARX343',1,1500),(106,18200312717,'SoftConTodo','ARX343',2,3400),(107,18200312717,'Coca 591cc','ARX343',1,1500),(108,18200312717,'Granizado Grande','ARX343',2,2000),(109,18200312717,'Artesanal 1 Sabor','ARX343',1,1900),(110,18200312717,'VasitoConTodo','ARX343',1,1500),(111,18200312717,'Soft XL','ARX343',1,1700),(112,18200312717,'Soft Simple','ARX343',1,1100),(113,18200316053,'SoftConTodo','ARX343',2,3400),(114,18200316053,'Coca 591cc','ARX343',1,1500),(115,18200316053,'Granizado Grande','ARX343',2,2000),(116,18200316053,'Artesanal 1 Sabor','ARX343',1,1900),(117,18200316053,'VasitoConTodo','ARX343',1,1500),(118,18200316053,'Soft XL','ARX343',2,3400),(119,18200316053,'Soft Simple','ARX343',1,1100),(120,18200316443,'SoftConTodo','ARX343',2,3400),(121,18200316443,'Coca 591cc','ARX343',1,1500),(122,18200316443,'Granizado Grande','ARX343',2,2000),(123,18200316443,'Artesanal 1 Sabor','ARX343',1,1900),(124,18200316443,'VasitoConTodo','ARX343',1,1500),(125,18200316443,'Soft XL','ARX343',2,3400),(126,18200316443,'Soft Simple','ARX343',1,1100),(127,18200357450,'Granizado Grande','ARX343',1,1000),(128,18200357450,'Leche con Platano','ARX343',1,1500),(129,18200417386,'Granizado Grande','ARX343',2,2000),(130,18200417386,'Leche con Platano','ARX343',1,1500),(131,18200417386,'Granizado Chico','ARX343',1,600);
/*!40000 ALTER TABLE `detalleventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idproductos` int NOT NULL AUTO_INCREMENT,
  `nombreproducto` varchar(45) DEFAULT NULL,
  `precio` varchar(20) DEFAULT NULL,
  `fechacreacion` datetime DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `nroposicion` varchar(45) DEFAULT NULL,
  `cantidaddisponible` int DEFAULT NULL,
  `imagenproducto` mediumblob,
  PRIMARY KEY (`idproductos`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(2,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(3,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(4,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(5,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(6,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(7,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(8,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(9,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(10,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(11,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(12,'1','2','2023-01-01 00:00:00','1','1',1,_binary '1'),(13,'Televisor','1000','2023-05-23 07:38:35',NULL,NULL,0,NULL),(14,'Super Ocho','1000','2023-05-23 07:38:35','ACTIVO','21',100,NULL),(15,'Laiz','1000','2023-05-23 07:38:35','ACTIVO','21',100,NULL),(16,'Lais','1000','2023-05-23 07:38:35','ACTIVO','21',100,NULL);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idcorrelativo` int NOT NULL AUTO_INCREMENT,
  `idventa` bigint unsigned DEFAULT NULL,
  `fechaventa` datetime DEFAULT NULL,
  `secuencia` varchar(45) DEFAULT NULL,
  `nroboleta` varchar(45) DEFAULT NULL,
  `totalarticulos` int DEFAULT NULL,
  `subtotalventa` int DEFAULT NULL,
  `iva` int DEFAULT NULL,
  `totalimporte` int DEFAULT NULL,
  `tipopago` varchar(10) DEFAULT NULL,
  `comisiontbk` int DEFAULT NULL,
  `comunicacionpos` varchar(45) DEFAULT NULL,
  `estadotransbank` varchar(45) DEFAULT NULL,
  `trazastattransbk` varchar(512) DEFAULT NULL,
  `longmsgtransbank` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`idcorrelativo`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,13215700303,'2022-06-01 21:57:00','secuencia','nroboleta',0,8000,0,8000,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(2,13215710663,'2022-06-02 21:57:10','secuencia','nroboleta',0,14500,0,14500,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(3,13215924144,'2023-06-03 21:59:24','secuencia','nroboleta',0,33100,0,33100,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(4,17145526003,'2023-06-04 14:55:26','secuencia','nroboleta',0,7300,0,7300,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(5,17150120226,'2023-06-05 15:01:20','secuencia','nroboleta',4,8800,0,8800,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(6,17150520353,'2023-06-06 15:05:20','secuencia','nroboleta',7,14500,0,14500,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(7,17170112946,'2023-06-07 17:01:12','secuencia','nroboleta',16,23700,0,23700,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(8,17170907496,'2023-06-08 17:09:07','secuencia','nroboleta',5,6700,0,6700,'CONTADO',0,'com transbk ok','APROBADO','traza','boucher'),(9,17171928786,'2023-06-09 17:19:28','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(10,17172032116,'2023-06-10 17:20:32','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(11,17172032383,'2023-06-11 17:20:32','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(12,17172032619,'2023-06-12 17:20:32','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(13,17172032850,'2023-06-13 17:20:32','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(14,17172033086,'2023-06-14 17:20:33','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(15,17172033313,'2023-06-15 17:20:33','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(16,17172033556,'2023-06-17 17:20:33','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(17,17172033799,'2023-06-18 17:20:33','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(18,17172034017,'2023-06-19 17:20:34','secuencia','nroboleta',4,5700,0,5700,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(19,17181008596,'2023-06-20 18:10:08','secuencia','nroboleta',4,4100,0,4100,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(20,18165157265,'2023-06-21 16:51:57','secuencia','nroboleta',5,7400,0,7400,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(21,18184651716,'2023-06-22 18:46:51','secuencia','nroboleta',4,6100,0,6100,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(22,18184659154,'2023-06-23 18:46:59','secuencia','nroboleta',4,4100,0,4100,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(23,18184706189,'2023-06-24 18:47:06','secuencia','nroboleta',5,7100,0,7100,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(24,18184723249,'2023-06-25 18:47:23','secuencia','nroboleta',5,7100,0,7100,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(25,18200306879,'2023-06-18 20:03:06','secuencia','nroboleta',4,5900,0,5900,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(26,18200310863,'2023-06-18 20:03:10','secuencia','nroboleta',7,10300,0,10300,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(27,18200312717,'2023-06-18 20:03:12','secuencia','nroboleta',9,13100,0,13100,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(28,18200316053,'2023-06-18 20:03:16','secuencia','nroboleta',10,14800,0,14800,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(29,18200316443,'2023-06-18 20:03:16','secuencia','nroboleta',10,14800,0,14800,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(30,18200357450,'2023-06-18 20:03:57','secuencia','nroboleta',2,2500,0,2500,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher'),(31,18200417386,'2023-06-18 20:04:17','secuencia','nroboleta',4,4100,0,4100,'EFECTIVO',0,'com transbk ok','APROBADO','traza','boucher');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-10 15:13:01
