CREATE DATABASE  IF NOT EXISTS `rombo_pisos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rombo_pisos`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rombo_pisos
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `celular` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `id_encuesta` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_encuesta_cliente` (`id_encuesta`),
  CONSTRAINT `fk_encuesta_cliente` FOREIGN KEY (`id_encuesta`) REFERENCES `encuesta_satisfaccion` (`id_encuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Cherida','Barrowcliff','7715071434','30 Sommers Parkway',1),(2,'Rhody','Cure','8245250485','8398 Butternut Circle',2),(3,'Budd','Boldison','5004737429','53765 Veith Center',3),(4,'Raymund','Clayborn','5254454446','7312 Arapahoe Way',4),(5,'Adolphe','Lamburne','5264197122','02373 Morning Terrace',5),(6,'Wallace','Metts','3263327872','8 Fairview Park',6),(7,'Nelia','Delgua','1008038194','10 Welch Parkway',7),(8,'Agustin','Brunt','3118873223','89 Clarendon Lane',8),(9,'Hamil','Vasnetsov','7459922215','5 School Park',9),(10,'Poppy','Clilverd','5399878681','28600 Schurz Drive',10),(11,'Roselia','Shearme','7254065693','41802 Fisk Alley',11),(12,'Martica','Heggison','6768876032','255 Doe Crossing Drive',12),(13,'Jodi','Thomsen','6949022707','036 Melby Plaza',13),(14,'Ashbey','Eyckel','1271602911','72 Florence Crossing',14),(15,'Nyssa','Spear','6464777416','6 School Street',15),(16,'Mose','Matanin','2894930031','186 Farwell Crossing',16),(17,'Tedi','Stuckley','2199682690','5 Duke Avenue',17),(18,'Adriano','Foddy','4442224743','56755 Sutteridge Lane',18),(19,'Mordy','Ewer','5618487556','846 Coolidge Way',19),(20,'Alair','Brocklehurst','8151400002','3 Grover Junction',20),(21,'Rosetta','Thyng','6709828389','25 Lawn Center',21),(22,'Eloisa','O\'Moylan','1614493464','127 La Follette Circle',22),(23,'Sheena','Claydon','2065399375','29 Glacier Hill Circle',23),(24,'Randy','Vine','1543404711','433 Ramsey Hill',24),(25,'Lalo','Gillis','4369219858','3 Monterey Point',25),(26,'Zenia','Harding','5716064686','29591 Barnett Parkway',26),(27,'Caddric','Deare','8753799356','60165 Kings Plaza',27),(28,'Darline','Daniello','6693916906','12795 Burrows Court',28),(29,'Alli','Trownson','5293255931','0 Derek Street',29),(30,'Andra','Christley','2182147302','09 Northport Road',30),(31,'Corey','Ansty','2356490872','301 Ronald Regan Pass',31),(32,'Clemmie','Jarrell','2964005941','75 Kropf Circle',32),(33,'Tabbie','Smalcombe','3468320450','7 Londonderry Alley',33),(34,'Lee','Dekeyser','2838038523','5 Beilfuss Terrace',34),(35,'Noah','Robertz','6463420955','7963 Melvin Parkway',35),(36,'Caleb','Jellard','1592478894','1322 Goodland Junction',36),(37,'Mischa','Dearlove','1889961107','1949 Hansons Center',37),(38,'Neda','Cassella','2926551755','4380 Dovetail Plaza',38),(39,'Taryn','Kinleyside','2963031258','3 Linden Lane',39),(40,'Tedd','Noades','2556026711','0035 Havey Way',40),(41,'Carmen','Gregoletti','6314352066','5 Jay Plaza',41),(42,'Kirsti','Dearden','6976756652','0708 Mallard Crossing',42),(43,'Cammy','Posten','3405394228','7 Dayton Lane',43),(44,'Nikolas','Sawkins','3217089693','44 Comanche Parkway',44),(45,'Cointon','Havik','4202782191','76 8th Court',45),(46,'Lusa','Duddan','1664459874','22 Waxwing Hill',46),(47,'Jaymie','Casetti','9848477090','2 Loeprich Place',47),(48,'Iago','Peevor','5041558285','7 Ohio Center',48),(49,'Mallory','Bollin','4603667458','92 Northland Center',49),(50,'Kayley','Le Guin','7791884754','15 Vermont Junction',50);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cliente_producto_comprado`
--

DROP TABLE IF EXISTS `cliente_producto_comprado`;
/*!50001 DROP VIEW IF EXISTS `cliente_producto_comprado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cliente_producto_comprado` AS SELECT 
 1 AS `id_cliente`,
 1 AS `id_baldosa`,
 1 AS `cantidad_baldosa`,
 1 AS `monto_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `encuesta_satisfaccion`
--

DROP TABLE IF EXISTS `encuesta_satisfaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuesta_satisfaccion` (
  `id_encuesta` int NOT NULL AUTO_INCREMENT,
  `numero_estrellas` enum('0','1','2','3','4','5') DEFAULT NULL,
  `comentario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta_satisfaccion`
--

LOCK TABLES `encuesta_satisfaccion` WRITE;
/*!40000 ALTER TABLE `encuesta_satisfaccion` DISABLE KEYS */;
INSERT INTO `encuesta_satisfaccion` VALUES (1,'1','buena atencion'),(2,'0',NULL),(3,'3','podria mejorar el servicio'),(4,'5',NULL),(5,'2','bueno'),(6,'1','recomendable'),(7,'4','recomendable'),(8,'0',NULL),(9,'5','producto de calidad'),(10,'2','ok'),(11,'1','ok'),(12,'3',NULL),(13,'2',NULL),(14,'1',NULL),(15,'0','podria mejorar el servicio'),(16,'4','todo llego a tiempo'),(17,'2',NULL),(18,'5','producto de calidad'),(19,'5',NULL),(20,'5',NULL),(21,'1',NULL),(22,'5',NULL),(23,'3','podria mejorar el servicio'),(24,'0','me gusto el producto'),(25,'4','facil compra'),(26,'1','entrega en tiempo y forma'),(27,'5',NULL),(28,'5','ok'),(29,'4',NULL),(30,'3','bueno'),(31,'2',NULL),(32,'5',NULL),(33,'2','buena atencion'),(34,'5','me gusto el producto'),(35,'2','podria mejorar el servicio'),(36,'0',NULL),(37,'1','producto de calidad'),(38,'2','todo llego a tiempo'),(39,'4',NULL),(40,'3',NULL),(41,'5','bueno'),(42,'4',NULL),(43,'0','producto de calidad'),(44,'0',NULL),(45,'4','excelente'),(46,'3','bueno'),(47,'0','bueno'),(48,'5',NULL),(49,'0','bueno'),(50,'2','buen servicio'),(51,'3','me gusto el producto'),(52,'1','me gusto el producto'),(53,'0',NULL),(54,'3','recomendable'),(55,'1','recomendable'),(56,'0','podria mejorar el servicio'),(57,'4','me gusto el producto'),(58,'0',NULL),(59,'4','bueno'),(60,'2',NULL),(61,'3','facil compra'),(62,'5','me gusto el producto'),(63,'2','entrega en tiempo y forma'),(64,'4','podria mejorar el servicio'),(65,'1',NULL),(66,'2','entrega en tiempo y forma'),(67,'3','me gusto el producto'),(68,'0','entrega en tiempo y forma'),(69,'0','entrega en tiempo y forma'),(70,'0','buena atencion'),(71,'4','recomendable'),(72,'3','bueno'),(73,'5','excelente'),(74,'0','buen servicio'),(75,'1','entrega en tiempo y forma'),(76,'1','excelente'),(77,'5',NULL),(78,'5','todo llego a tiempo'),(79,'0','podria mejorar el servicio'),(80,'4','buen servicio'),(81,'1','ok'),(82,'2','facil compra'),(83,'5',NULL),(84,'0','buen servicio'),(85,'5','bueno'),(86,'2','ok'),(87,'5',NULL),(88,'3',NULL),(89,'2','recomendable'),(90,'0','me gusto el producto'),(91,'3','producto de calidad'),(92,'3','sin comentarios'),(93,'0','podria mejorar el servicio'),(94,'3','sin comentarios'),(95,'3','me gusto el producto'),(96,'3','entrega en tiempo y forma'),(97,'4',NULL),(98,'0','podria mejorar el servicio'),(99,'5','producto de calidad'),(100,'3','buen servicio');
/*!40000 ALTER TABLE `encuesta_satisfaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `fecha_entrega_estimada` date NOT NULL,
  `status_pedido` enum('pendiente','en proceso','entregado','cancelado') DEFAULT 'pendiente',
  PRIMARY KEY (`id_pedido`),
  KEY `fk_cliente_pedido` (`id_cliente`),
  CONSTRAINT `fk_cliente_pedido` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,34,'2024-11-07','entregado'),(2,26,'2024-11-05','cancelado'),(3,21,'2024-11-07','entregado'),(4,13,'2024-11-06','entregado'),(5,27,'2024-11-06','entregado'),(6,15,'2024-11-04','entregado'),(7,30,'2024-11-07',NULL),(8,35,'2024-11-08','en proceso'),(9,18,'2024-11-06','cancelado'),(10,2,'2024-11-05',NULL),(11,39,'2024-11-12','en proceso'),(12,33,'2024-11-06','pendiente'),(13,38,'2024-11-12','en proceso'),(14,23,'2024-11-07',NULL),(15,33,'2024-11-06','pendiente'),(16,33,'2024-11-06','pendiente'),(17,6,'2024-11-07','pendiente'),(18,4,'2024-11-04','en proceso'),(19,7,'2024-11-05','en proceso'),(20,3,'2024-11-05',NULL),(21,1,'2024-11-04',NULL),(22,16,'2024-11-04','pendiente'),(23,1,'2024-11-06','en proceso'),(24,14,'2024-11-05','en proceso'),(25,17,'2024-11-12','cancelado'),(26,18,'2024-11-06','entregado'),(27,26,'2024-11-07','en proceso'),(28,34,'2024-11-06',NULL),(29,6,'2024-11-04','pendiente'),(30,21,'2024-11-06','pendiente'),(31,17,'2024-11-06','cancelado'),(32,16,'2024-11-06',NULL),(33,32,'2024-11-06',NULL),(34,20,'2024-11-06',NULL),(35,50,'2024-11-07','cancelado'),(36,3,'2024-11-04','en proceso'),(37,47,'2024-11-07','en proceso'),(38,33,'2024-11-11','entregado'),(39,27,'2024-11-07','cancelado'),(40,16,'2024-11-07','cancelado'),(41,22,'2024-11-05','en proceso'),(42,34,'2024-11-13',NULL),(43,15,'2024-11-07','en proceso'),(44,33,'2024-11-07',NULL),(45,44,'2024-11-07','pendiente'),(46,5,'2024-11-13',NULL),(47,42,'2024-11-06',NULL),(48,24,'2024-11-06','pendiente'),(49,37,'2024-11-04',NULL),(50,29,'2024-11-13','en proceso'),(51,20,'2024-11-12','en proceso'),(52,9,'2024-11-12',NULL),(53,29,'2024-11-11',NULL),(54,38,'2024-11-13','cancelado'),(55,4,'2024-11-14','en proceso'),(56,18,'2024-11-13',NULL),(57,9,'2024-11-12',NULL),(58,36,'2024-11-11','cancelado'),(59,9,'2024-11-14',NULL),(60,10,'2024-11-12',NULL),(61,39,'2024-11-12','entregado'),(62,8,'2024-11-13','en proceso'),(63,41,'2024-11-13',NULL),(64,29,'2024-11-12','en proceso'),(65,30,'2024-11-14',NULL),(66,30,'2024-11-11',NULL),(67,44,'2024-11-14','pendiente'),(68,44,'2024-11-13','entregado'),(69,49,'2024-11-11','entregado'),(70,26,'2024-11-12','pendiente'),(71,38,'2024-11-13',NULL),(72,29,'2024-11-13','pendiente'),(73,4,'2024-11-13',NULL),(74,26,'2024-11-14','entregado'),(75,46,'2024-11-12','en proceso'),(76,8,'2024-11-12',NULL),(77,16,'2024-11-11','pendiente'),(78,32,'2024-11-11','pendiente'),(79,5,'2024-11-11','cancelado'),(80,15,'2024-11-12','entregado'),(81,14,'2024-11-13','cancelado'),(82,35,'2024-11-12','en proceso'),(83,33,'2024-11-11','cancelado'),(84,43,'2024-11-13','cancelado'),(85,21,'2024-11-12','entregado'),(86,39,'2024-11-12',NULL),(87,40,'2024-11-13','en proceso'),(88,11,'2024-11-11','cancelado'),(89,40,'2024-11-13','entregado'),(90,5,'2024-11-12','en proceso'),(91,23,'2024-11-12','cancelado'),(92,32,'2024-11-14','entregado'),(93,28,'2024-11-11','en proceso'),(94,25,'2024-11-13',NULL),(95,24,'2024-11-11','en proceso'),(96,27,'2024-11-14',NULL),(97,23,'2024-11-13','en proceso'),(98,34,'2024-11-13','cancelado'),(99,20,'2024-11-13','pendiente'),(100,36,'2024-11-13',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `eliminar_pedidos_cancelados` AFTER UPDATE ON `pedido` FOR EACH ROW BEGIN
    IF  NEW.status_pedido = 'cancelado' AND OLD.status_pedido != 'cancelado' THEN
        DELETE FROM venta_control_movimiento a WHERE a.id_pedido = OLD.id_pedido
        LIMIT 1;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `pedido_pago_status`
--

DROP TABLE IF EXISTS `pedido_pago_status`;
/*!50001 DROP VIEW IF EXISTS `pedido_pago_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pedido_pago_status` AS SELECT 
 1 AS `fecha_recepcion`,
 1 AS `id_pedido`,
 1 AS `estado`,
 1 AS `forma_de_pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producto_baldosa`
--

DROP TABLE IF EXISTS `producto_baldosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_baldosa` (
  `id_producto_baldosa` int NOT NULL AUTO_INCREMENT,
  `referencia` varchar(50) NOT NULL,
  `id_color` int NOT NULL,
  `id_size` int NOT NULL,
  `id_material` int NOT NULL,
  `id_proveedor` int NOT NULL,
  PRIMARY KEY (`id_producto_baldosa`),
  KEY `fk_proveedor_producto_baldosa` (`id_proveedor`),
  KEY `fk_color_producto_baldosa` (`id_color`),
  KEY `fk_size_producto_baldosa` (`id_size`),
  KEY `fk_material_producto_baldosa` (`id_material`),
  CONSTRAINT `fk_color_producto_baldosa` FOREIGN KEY (`id_color`) REFERENCES `tipo_color_baldosa` (`id_color`),
  CONSTRAINT `fk_material_producto_baldosa` FOREIGN KEY (`id_material`) REFERENCES `tipo_material_baldosa` (`id_material`),
  CONSTRAINT `fk_proveedor_producto_baldosa` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  CONSTRAINT `fk_size_producto_baldosa` FOREIGN KEY (`id_size`) REFERENCES `tipo_size_baldosa` (`id_size`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_baldosa`
--

LOCK TABLES `producto_baldosa` WRITE;
/*!40000 ALTER TABLE `producto_baldosa` DISABLE KEYS */;
INSERT INTO `producto_baldosa` VALUES (1,'baldosa duna',1,1,1,1),(2,'baldosa luz',1,1,2,1),(3,'baldosa vento',1,2,1,1),(4,'baldosa roca',1,2,2,1),(5,'baldosa sol',2,1,1,1),(6,'baldosa luna',2,1,2,1),(7,'baldosa zen',2,2,1,1),(8,'baldosa brisa',2,2,2,1);
/*!40000 ALTER TABLE `producto_baldosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_pedido`
--

DROP TABLE IF EXISTS `producto_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_pedido` (
  `id_producto_pedido` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_producto_baldosa` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_producto_pedido`),
  KEY `fk_producto_pedido` (`id_pedido`),
  KEY `fk_producto_baldosa_pedido` (`id_producto_baldosa`),
  CONSTRAINT `fk_producto_baldosa_pedido` FOREIGN KEY (`id_producto_baldosa`) REFERENCES `producto_baldosa` (`id_producto_baldosa`),
  CONSTRAINT `fk_producto_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_pedido`
--

LOCK TABLES `producto_pedido` WRITE;
/*!40000 ALTER TABLE `producto_pedido` DISABLE KEYS */;
INSERT INTO `producto_pedido` VALUES (1,2,1,268.00,1790),(2,55,3,269.00,1922),(3,6,7,223.00,933),(4,20,3,217.00,474),(5,32,1,218.00,319),(6,51,5,109.00,1568),(7,93,5,228.00,1633),(8,72,3,148.00,1390),(9,98,7,279.00,559),(10,16,8,111.00,363),(11,71,3,278.00,99),(12,1,5,280.00,570),(13,27,2,221.00,1309),(14,74,7,295.00,1190),(15,43,7,229.00,655),(16,59,4,198.00,1760),(17,99,6,256.00,702),(18,10,8,237.00,1940),(19,84,1,240.00,111),(20,38,7,244.00,734),(21,81,1,256.00,164),(22,20,1,170.00,1375),(23,31,2,277.00,1714),(24,68,8,144.00,1496),(25,35,7,144.00,1835),(26,86,3,252.00,981),(27,8,7,157.00,1203),(28,81,1,102.00,499),(29,6,1,175.00,1979),(30,33,8,209.00,1804),(31,10,4,219.00,1544),(32,10,8,234.00,302),(33,40,7,169.00,721),(34,38,2,218.00,1820),(35,26,1,194.00,1218),(36,25,4,177.00,462),(37,7,5,222.00,282),(38,34,8,120.00,614),(39,1,2,208.00,1372),(40,50,2,263.00,574),(41,45,5,252.00,1555),(42,89,4,141.00,1530),(43,62,5,105.00,1854),(44,64,7,191.00,328),(45,91,3,207.00,1530),(46,72,5,229.00,1584),(47,18,3,285.00,1970),(48,92,2,208.00,1091),(49,22,2,167.00,1762),(50,93,5,145.00,972),(51,15,8,147.00,762),(52,82,8,270.00,859),(53,64,5,125.00,338),(54,16,3,237.00,765),(55,71,2,203.00,1718),(56,18,1,160.00,1494),(57,2,5,272.00,1799),(58,97,2,184.00,1520),(59,55,8,278.00,1152),(60,30,7,179.00,323),(61,63,8,275.00,133),(62,38,4,249.00,1571),(63,88,4,169.00,476),(64,3,5,100.00,1003),(65,71,8,130.00,88),(66,12,3,183.00,1323),(67,95,7,288.00,137),(68,94,4,170.00,1564),(69,8,3,119.00,843),(70,6,4,106.00,30),(71,92,7,243.00,1356),(72,49,4,187.00,287),(73,69,8,104.00,396),(74,12,6,238.00,374),(75,37,2,248.00,1102),(76,97,3,300.00,391),(77,43,7,253.00,1039),(78,47,4,233.00,1440),(79,76,2,286.00,1002),(80,70,5,173.00,275),(81,77,5,159.00,448),(82,19,3,194.00,1746),(83,32,8,207.00,821),(84,18,5,154.00,143),(85,71,3,140.00,1368),(86,39,2,202.00,742),(87,88,3,298.00,342),(88,62,4,262.00,1035),(89,87,6,136.00,58),(90,79,4,230.00,735),(91,47,5,170.00,1241),(92,78,3,146.00,91),(93,30,4,288.00,1574),(94,81,2,296.00,1421),(95,30,3,198.00,1295),(96,100,2,295.00,849),(97,30,6,277.00,1667),(98,65,2,202.00,1961),(99,7,5,269.00,1348),(100,66,4,192.00,904);
/*!40000 ALTER TABLE `producto_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productos_vendidos`
--

DROP TABLE IF EXISTS `productos_vendidos`;
/*!50001 DROP VIEW IF EXISTS `productos_vendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_vendidos` AS SELECT 
 1 AS `empresa_proveedor`,
 1 AS `nombre_modelo_baldosa`,
 1 AS `color_baldosa`,
 1 AS `material_baldosa`,
 1 AS `medida_baldosa`,
 1 AS `cantidad_vendida`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) NOT NULL,
  `contacto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'ALLOYS S.R.L.','1136748520');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repartidor`
--

DROP TABLE IF EXISTS `repartidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartidor` (
  `id_repartidor` int NOT NULL AUTO_INCREMENT,
  `id_transporte` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `celular` varchar(50) NOT NULL,
  PRIMARY KEY (`id_repartidor`),
  KEY `fk_transporte_repartidor` (`id_transporte`),
  CONSTRAINT `fk_transporte_repartidor` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repartidor`
--

LOCK TABLES `repartidor` WRITE;
/*!40000 ALTER TABLE `repartidor` DISABLE KEYS */;
INSERT INTO `repartidor` VALUES (1,1,'Jose','1147963051'),(2,1,'Manuel','1169740012');
/*!40000 ALTER TABLE `repartidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tareas_pendientes_repartidor`
--

DROP TABLE IF EXISTS `tareas_pendientes_repartidor`;
/*!50001 DROP VIEW IF EXISTS `tareas_pendientes_repartidor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tareas_pendientes_repartidor` AS SELECT 
 1 AS `id_pedido`,
 1 AS `fecha_recepcion`,
 1 AS `id_vendedor`,
 1 AS `nombre_vendedor`,
 1 AS `id_repartidor`,
 1 AS `nombre_repartidor`,
 1 AS `fecha_entrega`,
 1 AS `status_pedido`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tipo_color_baldosa`
--

DROP TABLE IF EXISTS `tipo_color_baldosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_color_baldosa` (
  `id_color` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_color_baldosa`
--

LOCK TABLES `tipo_color_baldosa` WRITE;
/*!40000 ALTER TABLE `tipo_color_baldosa` DISABLE KEYS */;
INSERT INTO `tipo_color_baldosa` VALUES (1,'negro'),(2,'rojo');
/*!40000 ALTER TABLE `tipo_color_baldosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_material_baldosa`
--

DROP TABLE IF EXISTS `tipo_material_baldosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_material_baldosa` (
  `id_material` int NOT NULL AUTO_INCREMENT,
  `tipo_polipropileno` enum('virgen','reciclado') DEFAULT 'virgen',
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_material_baldosa`
--

LOCK TABLES `tipo_material_baldosa` WRITE;
/*!40000 ALTER TABLE `tipo_material_baldosa` DISABLE KEYS */;
INSERT INTO `tipo_material_baldosa` VALUES (1,'virgen'),(2,'reciclado');
/*!40000 ALTER TABLE `tipo_material_baldosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_size_baldosa`
--

DROP TABLE IF EXISTS `tipo_size_baldosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_size_baldosa` (
  `id_size` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `medida` varchar(50) NOT NULL,
  PRIMARY KEY (`id_size`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_size_baldosa`
--

LOCK TABLES `tipo_size_baldosa` WRITE;
/*!40000 ALTER TABLE `tipo_size_baldosa` DISABLE KEYS */;
INSERT INTO `tipo_size_baldosa` VALUES (1,'grande','50x50'),(2,'mediano','25x25');
/*!40000 ALTER TABLE `tipo_size_baldosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top10_clientes`
--

DROP TABLE IF EXISTS `top10_clientes`;
/*!50001 DROP VIEW IF EXISTS `top10_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top10_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre_cliente`,
 1 AS `cantidad_pedidos`,
 1 AS `total_venta`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `id_transporte` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) NOT NULL,
  `capacidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,'Master RENAULT','170 bolsas');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `id_vendedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  PRIMARY KEY (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Celeste','Turno A 9.00hs a 13.30hs'),(2,'Marian','Turno B 13.30hs a 18.00hs');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_control_movimiento`
--

DROP TABLE IF EXISTS `venta_control_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_control_movimiento` (
  `id_venta_control_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_vendedor` int NOT NULL,
  `fecha_recepcion` date DEFAULT (now()),
  `id_repartidor` int NOT NULL,
  `metodo_pago` enum('efectivo','transferencia','debito') DEFAULT 'efectivo',
  `id_pedido` int NOT NULL,
  PRIMARY KEY (`id_venta_control_movimiento`),
  KEY `fk_vendedor_control_movimiento` (`id_vendedor`),
  KEY `fk_repartidor_control_movimiento` (`id_repartidor`),
  KEY `fk_pedido_control_movimiento` (`id_pedido`),
  CONSTRAINT `fk_pedido_control_movimiento` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `fk_repartidor_control_movimiento` FOREIGN KEY (`id_repartidor`) REFERENCES `repartidor` (`id_repartidor`),
  CONSTRAINT `fk_vendedor_control_movimiento` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_control_movimiento`
--

LOCK TABLES `venta_control_movimiento` WRITE;
/*!40000 ALTER TABLE `venta_control_movimiento` DISABLE KEYS */;
INSERT INTO `venta_control_movimiento` VALUES (1,2,'2024-11-07',2,'transferencia',42),(2,1,'2024-11-05',1,'efectivo',22),(3,1,'2024-11-07',2,'debito',43),(4,1,'2024-10-28',1,'debito',1),(5,1,'2024-10-28',2,'efectivo',2),(6,1,'2024-11-04',1,'debito',11),(7,2,'2024-11-05',2,'efectivo',23),(8,2,'2024-11-05',1,'transferencia',24),(9,2,'2024-11-05',1,'transferencia',25),(10,2,'2024-10-28',1,'debito',3),(11,2,'2024-11-07',2,'efectivo',44),(12,2,'2024-10-28',1,'transferencia',4),(13,1,'2024-11-06',2,'debito',31),(14,1,'2024-11-06',1,'debito',32),(15,1,'2024-11-04',1,'transferencia',12),(16,1,'2024-10-28',1,'efectivo',5),(17,2,'2024-11-04',2,'efectivo',13),(18,1,'2024-11-04',2,'transferencia',14),(19,1,'2024-11-04',2,'efectivo',15),(20,2,'2024-10-28',1,'debito',6),(21,2,'2024-11-05',1,'transferencia',26),(22,2,'2024-10-28',1,'transferencia',7),(23,2,'2024-11-06',1,'debito',33),(24,1,'2024-11-05',2,'transferencia',27),(25,2,'2024-11-04',1,'efectivo',16),(26,2,'2024-11-05',1,'efectivo',28),(27,1,'2024-10-28',1,'transferencia',8),(28,2,'2024-11-06',2,'efectivo',34),(29,2,'2024-11-04',1,'efectivo',17),(30,1,'2024-10-28',1,'transferencia',9),(31,1,'2024-11-07',2,'transferencia',45),(32,1,'2024-11-04',2,'debito',18),(33,1,'2024-11-05',2,'efectivo',29),(34,2,'2024-11-07',1,'transferencia',46),(35,2,'2024-11-07',2,'efectivo',47),(36,1,'2024-11-04',1,'efectivo',19),(37,1,'2024-11-06',1,'transferencia',35),(38,1,'2024-11-05',2,'debito',30),(39,2,'2024-11-06',2,'efectivo',36),(40,1,'2024-10-28',1,'transferencia',10),(41,1,'2024-11-04',2,'efectivo',20),(42,2,'2024-11-04',2,'efectivo',21),(43,1,'2024-11-12',1,'debito',81),(44,2,'2024-11-08',2,'debito',55),(45,1,'2024-11-07',1,'debito',48),(46,1,'2024-11-11',1,'efectivo',66),(47,2,'2024-11-14',1,'efectivo',99),(48,1,'2024-11-11',2,'efectivo',67),(49,1,'2024-11-08',2,'transferencia',56),(50,2,'2024-11-07',1,'transferencia',49),(51,1,'2024-11-12',1,'efectivo',82),(52,1,'2024-11-08',2,'transferencia',57),(53,2,'2024-11-08',2,'debito',58),(54,1,'2024-11-11',1,'debito',68),(55,1,'2024-11-12',1,'efectivo',83),(56,2,'2024-11-12',1,'efectivo',84),(57,1,'2024-11-14',2,'transferencia',100),(58,2,'2024-11-07',1,'debito',50),(59,1,'2024-11-13',2,'transferencia',93),(60,1,'2024-11-13',2,'debito',94),(61,1,'2024-11-07',2,'efectivo',51),(62,1,'2024-11-11',1,'transferencia',69),(63,1,'2024-11-11',1,'debito',70),(64,1,'2024-11-11',2,'efectivo',71),(65,2,'2024-11-13',1,'efectivo',95),(66,1,'2024-11-12',2,'debito',86),(67,1,'2024-11-12',1,'debito',87),(68,2,'2024-11-08',1,'transferencia',59),(69,2,'2024-11-11',2,'debito',72),(70,2,'2024-11-11',2,'debito',73),(71,1,'2024-11-11',1,'efectivo',74),(72,2,'2024-11-08',1,'debito',60),(73,2,'2024-11-12',2,'efectivo',88),(74,2,'2024-11-08',2,'efectivo',61),(75,1,'2024-11-08',2,'transferencia',62),(76,1,'2024-11-12',2,'transferencia',89),(77,2,'2024-11-12',2,'debito',90),(78,2,'2024-11-11',2,'debito',75),(79,1,'2024-11-12',2,'transferencia',91),(80,1,'2024-11-08',1,'transferencia',63),(81,2,'2024-11-12',2,'transferencia',92),(82,2,'2024-11-08',1,'transferencia',64),(83,2,'2024-11-11',1,'transferencia',76),(84,1,'2024-11-12',2,'debito',85),(85,1,'2024-11-11',1,'transferencia',77),(86,2,'2024-11-11',2,'transferencia',78),(87,1,'2024-11-08',1,'efectivo',65),(88,1,'2024-11-13',2,'efectivo',96),(89,1,'2024-11-13',2,'efectivo',97),(90,2,'2024-11-13',2,'debito',98),(91,2,'2024-11-11',1,'transferencia',79),(92,1,'2024-11-11',1,'debito',80),(93,2,'2024-11-06',1,'debito',37),(94,1,'2024-11-07',2,'efectivo',52),(95,1,'2024-11-07',2,'efectivo',53),(96,2,'2024-11-07',2,'transferencia',54),(97,2,'2024-11-06',1,'debito',38),(98,2,'2024-11-06',2,'debito',39),(99,1,'2024-11-06',2,'debito',40),(100,2,'2024-11-06',2,'efectivo',41);
/*!40000 ALTER TABLE `venta_control_movimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validar_pedido` BEFORE INSERT ON `venta_control_movimiento` FOR EACH ROW BEGIN
    IF NOT EXISTS (SELECT id_pedido FROM pedido WHERE id_pedido= NEW.id_pedido) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Id_pedido no existe';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'rombo_pisos'
--

--
-- Dumping routines for database 'rombo_pisos'
--
/*!50003 DROP FUNCTION IF EXISTS `calculo_baldosas_vendidas_por_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculo_baldosas_vendidas_por_producto`(id_producto_baldosa INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE baldosas_vendidas_por_producto INT;
SELECT
SUM(a.cantidad)
INTO baldosas_vendidas_por_producto
FROM producto_pedido a
WHERE a.id_producto_baldosa=id_producto_baldosa
ORDER BY SUM(a.cantidad) DESC;
RETURN baldosas_vendidas_por_producto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calculo_monto_total_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculo_monto_total_pedido`(id_pedido INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
DECLARE monto_total_pedido DECIMAL(10,2);
SELECT
SUM(a.precio*a.cantidad)
INTO monto_total_pedido
FROM producto_pedido a
WHERE a.id_pedido=id_pedido;
RETURN monto_total_pedido;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calculo_pedido_pendiente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculo_pedido_pendiente`() RETURNS int
    DETERMINISTIC
BEGIN
DECLARE pedido_pendiente int;
SELECT
COUNT(id_pedido)
INTO pedido_pendiente
FROM pedido
WHERE status_pedido='pendiente';
RETURN pedido_pendiente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `calculo_promedio_satisfaccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculo_promedio_satisfaccion`() RETURNS decimal(10,1)
    DETERMINISTIC
BEGIN
DECLARE promedio_satisfaccion INT;
SELECT
AVG(CAST(numero_estrellas AS DECIMAL (10,1)))
INTO promedio_satisfaccion
FROM encuesta_satisfaccion;
RETURN promedio_satisfaccion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ordenamiento_tabla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenamiento_tabla`( IN parametro_tabla VARCHAR(50),
IN parametro_campo VARCHAR(50),
IN parametro_orden ENUM('ASC','DESC') )
BEGIN
 SET @sql = CONCAT('SELECT * FROM ', parametro_tabla , ' ORDER BY ', parametro_campo, ' ', parametro_orden);
  PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_status_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_status_pedido`(
parametro_id_pedido INT,
parametro_status enum ('pendiente','en proceso','entregado','cancelado')
)
BEGIN
UPDATE pedido
SET status_pedido=parametro_status
WHERE id_pedido=parametro_id_pedido;

SELECT IF(ROW_COUNT()= 0, 'El id_pedido no existe','Actualizacion exitosa') AS RESULTADO;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cliente_producto_comprado`
--

/*!50001 DROP VIEW IF EXISTS `cliente_producto_comprado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cliente_producto_comprado` AS select `a`.`id_cliente` AS `id_cliente`,`b`.`id_producto_baldosa` AS `id_baldosa`,sum(`b`.`cantidad`) AS `cantidad_baldosa`,sum((`b`.`cantidad` * `b`.`precio`)) AS `monto_total` from (`pedido` `a` join `producto_pedido` `b` on((`a`.`id_pedido` = `b`.`id_pedido`))) group by `a`.`id_cliente`,`b`.`id_producto_baldosa` having (`monto_total` > 0) order by `a`.`id_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pedido_pago_status`
--

/*!50001 DROP VIEW IF EXISTS `pedido_pago_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pedido_pago_status` AS select `b`.`fecha_recepcion` AS `fecha_recepcion`,`a`.`id_pedido` AS `id_pedido`,`a`.`status_pedido` AS `estado`,`b`.`metodo_pago` AS `forma_de_pago` from (`pedido` `a` join `venta_control_movimiento` `b` on((`a`.`id_pedido` = `b`.`id_pedido`))) order by `b`.`fecha_recepcion` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_vendidos`
--

/*!50001 DROP VIEW IF EXISTS `productos_vendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_vendidos` AS select `a`.`empresa` AS `empresa_proveedor`,`b`.`referencia` AS `nombre_modelo_baldosa`,`c`.`descripcion` AS `color_baldosa`,`d`.`tipo_polipropileno` AS `material_baldosa`,`e`.`medida` AS `medida_baldosa`,sum(`f`.`cantidad`) AS `cantidad_vendida` from (((((`proveedor` `a` join `producto_baldosa` `b` on((`a`.`id_proveedor` = `b`.`id_proveedor`))) join `tipo_color_baldosa` `c` on((`b`.`id_color` = `c`.`id_color`))) join `tipo_material_baldosa` `d` on((`b`.`id_material` = `d`.`id_material`))) join `tipo_size_baldosa` `e` on((`b`.`id_size` = `e`.`id_size`))) join `producto_pedido` `f` on((`b`.`id_producto_baldosa` = `f`.`id_producto_baldosa`))) group by `a`.`empresa`,`b`.`referencia`,`c`.`descripcion`,`d`.`tipo_polipropileno`,`e`.`medida` order by sum(`f`.`cantidad`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tareas_pendientes_repartidor`
--

/*!50001 DROP VIEW IF EXISTS `tareas_pendientes_repartidor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tareas_pendientes_repartidor` AS select `a`.`id_pedido` AS `id_pedido`,`a`.`fecha_recepcion` AS `fecha_recepcion`,`a`.`id_vendedor` AS `id_vendedor`,`b`.`nombre` AS `nombre_vendedor`,`a`.`id_repartidor` AS `id_repartidor`,`d`.`nombre` AS `nombre_repartidor`,`c`.`fecha_entrega_estimada` AS `fecha_entrega`,`c`.`status_pedido` AS `status_pedido` from (((`venta_control_movimiento` `a` join `vendedor` `b` on((`a`.`id_vendedor` = `b`.`id_vendedor`))) join `pedido` `c` on((`a`.`id_pedido` = `c`.`id_pedido`))) join `repartidor` `d` on((`a`.`id_repartidor` = `d`.`id_repartidor`))) where (`c`.`status_pedido` = 'pendiente') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top10_clientes`
--

/*!50001 DROP VIEW IF EXISTS `top10_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top10_clientes` AS select `a`.`id_cliente` AS `id_cliente`,`a`.`nombre` AS `nombre_cliente`,count(`b`.`id_pedido`) AS `cantidad_pedidos`,sum((`c`.`precio` * `c`.`cantidad`)) AS `total_venta` from ((`cliente` `a` join `pedido` `b` on((`a`.`id_cliente` = `b`.`id_cliente`))) join `producto_pedido` `c` on((`b`.`id_pedido` = `c`.`id_pedido`))) group by `a`.`id_cliente`,`a`.`nombre` order by count(`b`.`id_pedido`) desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-23 18:04:34
