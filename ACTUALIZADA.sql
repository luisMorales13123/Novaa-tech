-- MySQL dump 10.13  Distrib 5.7.24, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: inmortals
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

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
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito` (
  `idcarrito` int(11) NOT NULL AUTO_INCREMENT,
  `id_productos` int(11) NOT NULL,
  `infoProducto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcarrito`),
  KEY `id_productos` (`id_productos`),
  CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`idproductos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dettalesenvio`
--

DROP TABLE IF EXISTS `dettalesenvio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dettalesenvio` (
  `iddetallesenvio` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) NOT NULL,
  `id_carrito` int(11) NOT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `percio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddetallesenvio`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_carrito` (`id_carrito`),
  CONSTRAINT `dettalesenvio_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidocabecera` (`idpedido`),
  CONSTRAINT `dettalesenvio_ibfk_2` FOREIGN KEY (`id_carrito`) REFERENCES `carrito` (`idcarrito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dettalesenvio`
--

LOCK TABLES `dettalesenvio` WRITE;
/*!40000 ALTER TABLE `dettalesenvio` DISABLE KEYS */;
/*!40000 ALTER TABLE `dettalesenvio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envio` (
  `idenvio` int(11) NOT NULL,
  `id_medioenvio` int(11) NOT NULL,
  `id_tipoenvio` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `precioenvio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idenvio`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_medioenvio` (`id_medioenvio`),
  KEY `id_tipoenvio` (`id_tipoenvio`),
  CONSTRAINT `envio_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidocabecera` (`idpedido`),
  CONSTRAINT `envio_ibfk_2` FOREIGN KEY (`id_medioenvio`) REFERENCES `medioenvio` (`idmedioenvio`),
  CONSTRAINT `envio_ibfk_3` FOREIGN KEY (`id_tipoenvio`) REFERENCES `tipoenvio` (`idtipoenvio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacionenvio`
--

DROP TABLE IF EXISTS `informacionenvio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informacionenvio` (
  `id_usuario` int(11) NOT NULL,
  `idinfoenvio` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinfoenvio`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `informacionenvio_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacionenvio`
--

LOCK TABLES `informacionenvio` WRITE;
/*!40000 ALTER TABLE `informacionenvio` DISABLE KEYS */;
/*!40000 ALTER TABLE `informacionenvio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `idinventario` int(11) NOT NULL AUTO_INCREMENT,
  `id_productos` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `entrada` varchar(45) DEFAULT NULL,
  `salida` varchar(45) DEFAULT NULL,
  `saldo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinventario`),
  KEY `id_productos` (`id_productos`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_productos`) REFERENCES `productos` (`idproductos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `idmarcas` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmarcas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mediodepago`
--

DROP TABLE IF EXISTS `mediodepago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mediodepago` (
  `idmediodepago` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmediodepago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediodepago`
--

LOCK TABLES `mediodepago` WRITE;
/*!40000 ALTER TABLE `mediodepago` DISABLE KEYS */;
/*!40000 ALTER TABLE `mediodepago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medioenvio`
--

DROP TABLE IF EXISTS `medioenvio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medioenvio` (
  `idmedioenvio` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(145) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `descripcionempresa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmedioenvio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medioenvio`
--

LOCK TABLES `medioenvio` WRITE;
/*!40000 ALTER TABLE `medioenvio` DISABLE KEYS */;
/*!40000 ALTER TABLE `medioenvio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidocabecera`
--

DROP TABLE IF EXISTS `pedidocabecera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidocabecera` (
  `id_mediodepago` int(11) NOT NULL,
  `id_documentocontable` int(11) NOT NULL,
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `estadopedido` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `id_mediodepago` (`id_mediodepago`),
  KEY `id_documentocontable` (`id_documentocontable`),
  CONSTRAINT `pedidocabecera_ibfk_1` FOREIGN KEY (`id_mediodepago`) REFERENCES `mediodepago` (`idmediodepago`),
  CONSTRAINT `pedidocabecera_ibfk_2` FOREIGN KEY (`id_documentocontable`) REFERENCES `tipodocumentocontable` (`iddocumentocontable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidocabecera`
--

LOCK TABLES `pedidocabecera` WRITE;
/*!40000 ALTER TABLE `pedidocabecera` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidocabecera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_categoria` int(11) NOT NULL,
  `id_marcas` int(11) NOT NULL,
  `idproductos` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `imagenreferencial` varchar(45) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  PRIMARY KEY (`idproductos`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_marcas` (`id_marcas`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`idcategoria`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_marcas`) REFERENCES `marcas` (`idmarcas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodedocumento`
--

DROP TABLE IF EXISTS `tipodedocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodedocumento` (
  `idtipodocumento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipodocumento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodedocumento`
--

LOCK TABLES `tipodedocumento` WRITE;
/*!40000 ALTER TABLE `tipodedocumento` DISABLE KEYS */;
INSERT INTO `tipodedocumento` VALUES (1,'cedula'),(2,'ceduladeextrajeria'),(3,'tarjetadeidentidad'),(4,'notiene'),(5,'pasaporte');
/*!40000 ALTER TABLE `tipodedocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodeusuario`
--

DROP TABLE IF EXISTS `tipodeusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodeusuario` (
  `idtipousuario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodeusuario`
--

LOCK TABLES `tipodeusuario` WRITE;
/*!40000 ALTER TABLE `tipodeusuario` DISABLE KEYS */;
INSERT INTO `tipodeusuario` VALUES (1,'Adminitrador'),(2,'mujer'),(3,'hombre'),(4,'niño'),(5,'niña');
/*!40000 ALTER TABLE `tipodeusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumentocontable`
--

DROP TABLE IF EXISTS `tipodocumentocontable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocumentocontable` (
  `iddocumentocontable` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddocumentocontable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumentocontable`
--

LOCK TABLES `tipodocumentocontable` WRITE;
/*!40000 ALTER TABLE `tipodocumentocontable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipodocumentocontable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoenvio`
--

DROP TABLE IF EXISTS `tipoenvio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoenvio` (
  `idtipoenvio` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipoenvio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoenvio`
--

LOCK TABLES `tipoenvio` WRITE;
/*!40000 ALTER TABLE `tipoenvio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoenvio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipodocumento` int(11) NOT NULL,
  `id_tipousuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `usernamer` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `id_tipodocumento` (`id_tipodocumento`),
  KEY `id_tipousuario` (`id_tipousuario`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tipodocumento`) REFERENCES `tipodedocumento` (`idtipodocumento`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_tipousuario`) REFERENCES `tipodeusuario` (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,3,4,'angel','ortiz','3103452232','carrera45','d3rf','asdasf'),(2,1,3,'harold','gaona','3103452232','calle132','kingv2','asdasf'),(3,2,4,'nicolas','fonseca','3103255732','calle85','irvinwalle','asdasf');
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

-- Dump completed on 2022-05-09 23:22:12
