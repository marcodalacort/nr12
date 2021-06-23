CREATE DATABASE  IF NOT EXISTS `nr12` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nr12`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: nr12
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `respostadispositivo`
--

DROP TABLE IF EXISTS `respostadispositivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respostadispositivo` (
  `dispositivoId` int NOT NULL,
  `perguntaId` int NOT NULL,
  `respostaId` int NOT NULL,
  PRIMARY KEY (`dispositivoId`,`perguntaId`),
  KEY `fk_dispositivosemergencia_has_perguntas_perguntas1_idx` (`perguntaId`),
  KEY `fk_dispositivosemergencia_has_perguntas_dispositivosemergen_idx` (`dispositivoId`),
  KEY `fk_resposta_dispositivo_resposta1_idx` (`respostaId`),
  CONSTRAINT `fk_dispositivosemergencia_has_perguntas_dispositivosemergencia1` FOREIGN KEY (`dispositivoId`) REFERENCES `dispositivo` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_dispositivosemergencia_has_perguntas_perguntas1` FOREIGN KEY (`perguntaId`) REFERENCES `pergunta` (`id`),
  CONSTRAINT `fk_resposta_dispositivo_resposta1` FOREIGN KEY (`respostaId`) REFERENCES `resposta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostadispositivo`
--

LOCK TABLES `respostadispositivo` WRITE;
/*!40000 ALTER TABLE `respostadispositivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `respostadispositivo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 21:58:51
