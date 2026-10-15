CREATE DATABASE  IF NOT EXISTS `db_test_7b` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_test_7b`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db_test_7b
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `tb_logs`
--

DROP TABLE IF EXISTS `tb_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(80) NOT NULL,
  `table_operation` enum('Create','Read','Update','Delete') DEFAULT NULL,
  `db_user` varchar(80) NOT NULL,
  `operation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `table_description` text NOT NULL,
  `operation_status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logs`
--

LOCK TABLES `tb_logs` WRITE;
/*!40000 ALTER TABLE `tb_logs` DISABLE KEYS */;
INSERT INTO `tb_logs` VALUES (1,'tb_users','Create','root@localhost','2026-09-10 10:15:54','Usuario creado. ID=3, email=240904@utxicotepec.edu.mx, nickname=AlfonsiniBananini, creation_date=2026-09-10 10:15:54, status=',_binary ''),(2,'tb_users','Create','root@localhost','2026-09-10 10:19:53','Usuario creado. ID=4, email=240701@utxicotepec.edu.mx, nickname=PabliniAURA, creation_date=2026-09-10 10:19:53, status=',_binary ''),(3,'tb_users','Create','root@localhost','2026-09-10 10:20:29','Usuario creado. ID=5, email=240045@utxicotepec.edu.mx, nickname=AaronFrijolito, creation_date=2026-09-10 10:20:29, status=',_binary ''),(4,'tb_users','Create','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:02:25','Usuario creado. ID=7, email=250701@utxicotepec.edu.mx, nickname=Pablini, creation_date=2026-09-10 11:02:25, status=',_binary ''),(5,'tb_users','Create','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:03:07','Usuario creado. ID=8, email=260701@utxicotepec.edu.mx, nickname=Alfonsini, creation_date=2026-09-10 11:03:07, status=',_binary ''),(6,'tb_users','Create','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:03:22','Usuario creado. ID=9, email=270701@utxicotepec.edu.mx, nickname=Pozole, creation_date=2026-09-10 11:03:22, status=',_binary ''),(7,'tb_users','Update','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:20:45','Usuario modificado. ID=9, nuevo_email=270701@utxicotepec.edu.mx, nuevo_nickname=pozoleazul, nuevo_status=',_binary ''),(8,'tb_users','Delete','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:44:27','Usuario eliminado. ID=9, email=270701@utxicotepec.edu.mx, nickname=pozoleazul',_binary ''),(9,'tb_users','Delete','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:47:10','Usuario eliminado. ID=4, email=240701@utxicotepec.edu.mx, nickname=PabliniAURA',_binary ''),(10,'tb_users','Delete','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:47:27','Usuario eliminado. ID=8, email=260701@utxicotepec.edu.mx, nickname=Alfonsini',_binary ''),(11,'tb_users','Update','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:50:35','Usuario modificado. ID=7, nuevo_email=250701@utxicotepec.edu.mx, nuevo_nickname=Pablini, nuevo_status=',_binary ''),(12,'tb_users','Update','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:51:34','Usuario modificado. ID=7, nuevo_email=250701@utxicotepec.edu.mx, nuevo_nickname=Pablinideftones, nuevo_status=',_binary ''),(13,'tb_users','Update','pablo.aura@DESKTOP-ILBGR1D','2026-09-10 11:52:30','Usuario modificado. ID=5, nuevo_email=240045@utxicotepec.edu.mx, nuevo_nickname=Aarondueñodelserver, nuevo_status=',_binary ''),(14,'tb_users','Create','root@localhost','2026-09-10 13:19:12','Usuario creado. ID=10, email=alfonsiniFresini@gmail.com, nickname=AlfonsiniFresini, creation_date=2026-09-10 13:19:12, status=',_binary ''),(15,'tb_users','Create','root@localhost','2026-09-10 13:19:37','Usuario creado. ID=11, email=alfonsiniPear@gmail.com, nickname=AlfonsiniPear, creation_date=2026-09-10 13:19:37, status=',_binary ''),(16,'tb_users','Update','root@localhost','2026-09-10 13:20:18','Usuario modificado. ID=10, nuevo_email=alfonsiniFresini@gmail.com, nuevo_nickname=AlfonsiniFresiniUpdate, nuevo_status=',_binary ''),(17,'tb_users','Update','root@localhost','2026-09-10 13:20:38','Usuario modificado. ID=11, nuevo_email=alfonsiniPear@gmail.com, nuevo_nickname=AlfonsiniPearUpdate, nuevo_status=',_binary ''),(18,'tb_products','Create','root@localhost','2026-09-17 11:35:02','Producto creado. ID=1, SKU=7501032335052, name=Danonino, price=60.00, stock=67, status=',_binary ''),(19,'tb_products','Create','root@localhost','2026-09-17 11:36:39','Producto creado. ID=2, SKU=SKU FRAN0007, name=My Melody - Peluche, price=160.00, stock=15, status=',_binary ''),(20,'tb_products','Create','pablo.martinez@DESKTOP-5U5Q7G0','2026-09-17 13:19:17','Producto creado. ID=3, SKU=PROD-012, name=Teclado Mecánico Redragon, price=899.50, stock=50, status=',_binary ''),(21,'tb_products','Create','pablo.martinez@DESKTOP-5U5Q7G0','2026-09-17 13:19:33','Producto creado. ID=4, SKU=PROD-013, name=Silla Gamer Ergonómica, price=3800.00, stock=8, status=',_binary ''),(22,'tb_products','Create','pablo.martinez@DESKTOP-5U5Q7G0','2026-09-17 13:20:32','Producto creado. ID=5, SKU=PROD-014, name=Tarjeta de Video RTX 4070, price=13200.00, stock=5, status=',_binary ''),(23,'tb_products','Create','pablo.martinez@DESKTOP-5U5Q7G0','2026-09-17 13:20:41','Producto creado. ID=6, SKU=PROD-015, name=SSD NVMe Samsung 1TB, price=1950.00, stock=40, status=',_binary ''),(24,'tb_products','Create','pablo.martinez@DESKTOP-5U5Q7G0','2026-09-17 13:20:54','Producto creado. ID=7, SKU=PROD-016, name=Memoria RAM Corsair 16GB, price=1450.00, stock=0, status=\0',_binary ''),(25,'tb_products','Update','root@localhost','2026-09-17 13:30:58','Producto modificado. ID=2, nuevo_SKU=SKU FRAN0007, nuevo_name=My Melody - Peluche, nuevo_price=160.00, nuevo_stock=15, nuevo_status=\0',_binary ''),(26,'tb_products','Update','root@localhost','2026-09-17 13:34:56','Producto modificado. ID=2, nuevo_SKU=SKU FRAN0007, nuevo_name=My Melody - Peluche, nuevo_price=160.00, nuevo_stock=15, nuevo_status=',_binary ''),(27,'tb_users','Create','mario.banda@DESKTOP-FFIHSV5','2026-09-24 11:41:00','Usuario creado. ID=12, email=alfonsinisup1@, nickname=AlfonsiniSUP1, creation_date=2026-09-24 11:41:00, status=',_binary ''),(28,'tb_users','Create','mario.banda@DESKTOP-FFIHSV5','2026-09-24 11:41:13','Usuario creado. ID=13, email=alfonsinisup2@, nickname=AlfonsiniSUP2, creation_date=2026-09-24 11:41:13, status=',_binary ''),(29,'tb_users','Create','mario.banda@DESKTOP-FFIHSV5','2026-09-24 11:41:15','Usuario creado. ID=14, email=alfonsinisup3@, nickname=AlfonsiniSUP3, creation_date=2026-09-24 11:41:15, status=',_binary ''),(30,'tb_users','Create','root@localhost','2026-09-24 11:50:47','Usuario creado. ID=15, email=alfonsinitrazabilidad@gmail.com, nickname=AlfonsiniSUP4, creation_date=2026-09-24 11:41:18, status=',_binary '');
/*!40000 ALTER TABLE `tb_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `SKU` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `current_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `current_stock` int unsigned NOT NULL DEFAULT '0',
  `status` bit(1) DEFAULT b'1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SKU` (`SKU`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'7501032335052','Danonino','Paquete de 4 piezas (336 g en total / 84 g c/u)',60.00,67,_binary '','2026-09-17 11:35:02','2026-09-17 11:35:02'),(2,'SKU FRAN0007','My Melody - Peluche','Peluche de My Melodie Sanrio',160.00,15,_binary '','2026-09-17 11:36:39','2026-09-17 13:34:56'),(3,'PROD-012','Teclado Mecánico Redragon','Switches Red, Retroiluminación RGB, Español',899.50,50,_binary '','2026-09-17 13:19:17','2026-09-17 13:19:17'),(4,'PROD-013','Silla Gamer Ergonómica','Reclinable 180°, Soporte lumbar, Cojín cervical',3800.00,8,_binary '','2026-09-17 13:19:33','2026-09-17 13:19:33'),(5,'PROD-014','Tarjeta de Video RTX 4070','12GB GDDR6X, Ray Tracing, DLSS 3',13200.00,5,_binary '','2026-09-17 13:20:32','2026-09-17 13:20:32'),(6,'PROD-015','SSD NVMe Samsung 1TB','PCIe 4.0, Lectura hasta 7000 MB/s',1950.00,40,_binary '','2026-09-17 13:20:41','2026-09-17 13:20:41'),(7,'PROD-016','Memoria RAM Corsair 16GB','DDR5 5600MHz, Kit 2x8GB RGB',1450.00,0,_binary '\0','2026-09-17 13:20:54','2026-09-17 13:20:54');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_insert` AFTER INSERT ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs(
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_products',
        'Create',
        USER(),
        CONCAT(
            'Producto creado. ID=', NEW.ID,
            ', SKU=', NEW.SKU,
            ', name=', NEW.name,
            ', price=', NEW.current_price,
            ', stock=', NEW.current_stock,
            ', status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_update` AFTER UPDATE ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs(
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_products',
        'Update',
        USER(),
        CONCAT(
            'Producto modificado. ID=', NEW.ID,
            ', nuevo_SKU=', NEW.SKU,
            ', nuevo_name=', NEW.name,
            ', nuevo_price=', NEW.current_price,
            ', nuevo_stock=', NEW.current_stock,
            ', nuevo_status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_delete` AFTER DELETE ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs(
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_products',
        'Delete',
        USER(),
        CONCAT(
            'Producto eliminado. ID=', OLD.ID,
            ', SKU=', OLD.SKU,
            ', name=', OLD.name
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (3,'240904@utxicotepec.edu.mx','AlfonsiniBananini','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:15:54',NULL,NULL,_binary ''),(5,'240045@utxicotepec.edu.mx','Aarondueñodelserver','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:20:29',NULL,NULL,_binary ''),(7,'250701@utxicotepec.edu.mx','Pablinideftones','871534c2971fceb021437786bc940bd2','2026-09-10 11:02:25',NULL,NULL,_binary ''),(10,'alfonsiniFresini@gmail.com','AlfonsiniFresiniUpdate','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 13:19:12',NULL,NULL,_binary ''),(11,'alfonsiniPear@gmail.com','AlfonsiniPearUpdate','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 13:19:37',NULL,NULL,_binary ''),(12,'alfonsinisup1@','AlfonsiniSUP1','81dc9bdb52d04dc20036dbd8313ed055','2026-09-24 11:41:00',NULL,NULL,_binary ''),(13,'alfonsinisup2@','AlfonsiniSUP2','81dc9bdb52d04dc20036dbd8313ed055','2026-09-24 11:41:13',NULL,NULL,_binary ''),(14,'alfonsinisup3@','AlfonsiniSUP3','81dc9bdb52d04dc20036dbd8313ed055','2026-09-24 11:41:15',NULL,NULL,_binary ''),(15,'alfonsinitrazabilidad@gmail.com','AlfonsiniSUP4','81dc9bdb52d04dc20036dbd8313ed055','2026-09-24 11:41:18',NULL,NULL,_binary '');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_users_after_insert` AFTER INSERT ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs(
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Create',
        USER(),
        CONCAT(
            'Usuario creado. ID=', NEW.id,
            ', email=', NEW.email,
            ', nickname=', NEW.nickname,
            ', creation_date=', NEW.creation_date,
            ', status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_users_after_update` AFTER UPDATE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs(
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Update',
        USER(),
        CONCAT(
            'Usuario modificado. ID=', NEW.id,
            ', nuevo_email=', NEW.email,
            ', nuevo_nickname=', NEW.nickname,
            ', nuevo_status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_users_after_delete` AFTER DELETE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs(
        table_name,
        table_operation,
        db_user,
        table_description,
        operation_date,
        operation_status
    )
    VALUES (
        'tb_users',
        'Delete',
        USER(),
        CONCAT(
            'Usuario eliminado. ID=', OLD.id,
            ', email=', OLD.email,
            ', nickname=', OLD.nickname
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_trazabilidad_productos`
--

DROP TABLE IF EXISTS `vw_trazabilidad_productos`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_productos` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `inserted_by`,
 1 AS `roles`,
 1 AS `table_operation`,
 1 AS `operation_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_trazabilidad_usuarios`
--

DROP TABLE IF EXISTS `vw_trazabilidad_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_usuarios` AS SELECT 
 1 AS `nickname`,
 1 AS `email`,
 1 AS `inserted_by`,
 1 AS `roles`,
 1 AS `table_operation`,
 1 AS `operation_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_test_7b'
--

--
-- Dumping routines for database 'db_test_7b'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_restore_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_restore_product`(
    IN p_product_id INT UNSIGNED
)
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM tb_products
        WHERE ID = p_product_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El producto especificado no existe';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM tb_products
        WHERE ID = p_product_id
        AND status = b'1'
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El producto ya se encuentra activo';
    END IF;

    UPDATE tb_products
    SET status = b'1'
    WHERE ID = p_product_id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_soft_delete_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_soft_delete_product`(
    IN p_product_id INT UNSIGNED
)
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM tb_products
        WHERE ID = p_product_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El producto especificado no existe';
    END IF;

    IF EXISTS (
        SELECT 1
        FROM tb_products
        WHERE ID = p_product_id
        AND status = b'0'
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El producto ya se encuentra eliminado';
    END IF;

    UPDATE tb_products
    SET status = b'0'
    WHERE ID = p_product_id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_trazabilidad_productos`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_productos` AS select `p`.`ID` AS `id`,`p`.`name` AS `name`,`p`.`description` AS `description`,`b`.`db_user` AS `inserted_by`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`b`.`table_operation` AS `table_operation`,`b`.`operation_date` AS `operation_date` from ((`tb_products` `p` join `tb_logs` `b` on((`b`.`table_description` like concat('%ID=',`p`.`ID`,',%')))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`b`.`db_user`,'@',1)))) where ((`b`.`table_operation` = 'Create') and (`b`.`table_name` = 'tb_products')) group by `p`.`ID`,`p`.`name`,`p`.`description`,`b`.`db_user`,`b`.`table_operation`,`b`.`operation_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_trazabilidad_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_usuarios` AS select `u`.`nickname` AS `nickname`,`u`.`email` AS `email`,`b`.`db_user` AS `inserted_by`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`b`.`table_operation` AS `table_operation`,`b`.`operation_date` AS `operation_date` from ((`tb_users` `u` join `tb_logs` `b` on((`b`.`table_description` like concat('%ID=',`u`.`id`,',%')))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`b`.`db_user`,'@',1)))) where ((`b`.`table_operation` = 'Create') and (`b`.`table_name` = 'tb_users')) group by `u`.`id`,`u`.`nickname`,`u`.`email`,`b`.`db_user`,`b`.`table_operation`,`b`.`operation_date` order by `b`.`operation_date` */;
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

-- Dump completed on 2026-09-24 13:01:15
