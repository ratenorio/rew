CREATE DATABASE  IF NOT EXISTS `rew` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `rew`;
-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rew
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `avalia`
--

DROP TABLE IF EXISTS `avalia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avalia` (
  `cod_avalia` int(11) NOT NULL AUTO_INCREMENT,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `estrelas` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_avalia`),
  KEY `FK_Avalia_Usuario` (`cod_usuario`),
  KEY `FK_Avalia_Livro` (`cod_livro`),
  CONSTRAINT `FK_Avalia_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE SET NULL,
  CONSTRAINT `FK_Avalia_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avalia`
--

LOCK TABLES `avalia` WRITE;
/*!40000 ALTER TABLE `avalia` DISABLE KEYS */;
/*!40000 ALTER TABLE `avalia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capitulos`
--

DROP TABLE IF EXISTS `capitulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capitulos` (
  `cod_capitulo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `texto` mediumtext DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_capitulo`),
  KEY `FK_Capitulos_Livro` (`cod_livro`),
  CONSTRAINT `FK_Capitulos_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitulos`
--

LOCK TABLES `capitulos` WRITE;
/*!40000 ALTER TABLE `capitulos` DISABLE KEYS */;
/*!40000 ALTER TABLE `capitulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comenta`
--

DROP TABLE IF EXISTS `comenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comenta` (
  `cod_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `fanart` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cod_comentario`),
  KEY `FK_comenta_Usuario` (`cod_usuario`),
  KEY `FK_Comenta_Livro` (`cod_livro`),
  CONSTRAINT `FK_Comenta_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`),
  CONSTRAINT `FK_comenta_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comenta`
--

LOCK TABLES `comenta` WRITE;
/*!40000 ALTER TABLE `comenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `comenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `denuncia`
--

DROP TABLE IF EXISTS `denuncia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `denuncia` (
  `cod_denuncia` int(11) NOT NULL AUTO_INCREMENT,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_comentario` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_denuncia`),
  KEY `FK_Denuncia_Usuario` (`cod_usuario`),
  KEY `FK_Denuncia_Comenta` (`cod_comentario`),
  CONSTRAINT `FK_Denuncia_Comenta` FOREIGN KEY (`cod_comentario`) REFERENCES `comenta` (`cod_comentario`),
  CONSTRAINT `FK_Denuncia_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `denuncia`
--

LOCK TABLES `denuncia` WRITE;
/*!40000 ALTER TABLE `denuncia` DISABLE KEYS */;
/*!40000 ALTER TABLE `denuncia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `cod_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'romance'),(2,'fantasia'),(3,'terror'),(4,'poema'),(5,'outros');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `le`
--

DROP TABLE IF EXISTS `le`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `le` (
  `cod_le` int(11) NOT NULL AUTO_INCREMENT,
  `cod_livro` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `continuar_lendo` int(11) DEFAULT NULL,
  `lista_de_interesses` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_le`),
  KEY `FK_Le_Livro` (`cod_livro`),
  KEY `FK_Le_Usuario` (`cod_usuario`),
  CONSTRAINT `FK_Le_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE SET NULL,
  CONSTRAINT `FK_Le_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `le`
--

LOCK TABLES `le` WRITE;
/*!40000 ALTER TABLE `le` DISABLE KEYS */;
/*!40000 ALTER TABLE `le` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livro` (
  `cod_livro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `data_publicacao` int(11) DEFAULT NULL,
  `qtd_capitulo` int(11) DEFAULT NULL,
  `sinopse` text DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_genero` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_livro`),
  KEY `FK_Livro_Usuario` (`cod_usuario`),
  KEY `FK_Livro_Genero` (`cod_genero`),
  CONSTRAINT `FK_Livro_Genero` FOREIGN KEY (`cod_genero`) REFERENCES `genero` (`cod_genero`) ON DELETE CASCADE,
  CONSTRAINT `FK_Livro_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Top 1','Ana Laura Ara&uacute;jo dos Santos',2022,NULL,'&quot;Nunca foi a inten&ccedil;&atilde;o me apaixonar, mas desde a primeira vez quando sentei atr&aacute;s dela na sala, ela me fez uma simples piada e logo me apaixono...&quot;                                                    ',1,1,'2022.11.04-12.29.12jpeg');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `biografia` varchar(255) DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'raissa.email','*0','raissa',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 10:19:18
