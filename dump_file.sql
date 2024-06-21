-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (arm64)
--
-- Host: localhost    Database: hyphensDB
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `address_tb`
--

DROP TABLE IF EXISTS `address_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_tb`
--

LOCK TABLES `address_tb` WRITE;
/*!40000 ALTER TABLE `address_tb` DISABLE KEYS */;
INSERT INTO `address_tb` VALUES (3,'syahril@thefepi.com','jl h aman kp kebo cinangka sawangan depok',2,'12123132','syahril','depok','Indonesia','16516'),(4,'syahril@thefepi.com','jl h aman kp kebo cinangka sawangan depok',2,'123123123','syahril','depok','Indonesia','16516'),(5,'syahril@thefepi.com','jl h aman kp kebo cinangka sawangan depok',2,'1212313','syahril','asdasd','adas','16516'),(6,'syahril@thefepi.com','jl h aman kp kebo cinangka sawangan depok',2,'121212','syahril','depok','Indonesia','16516'),(7,'syahril@thefepi.com','jl h aman kp kebo cinangka sawangan depok',18,'56565755','syahril','depok','Indonesia','16516');
/*!40000 ALTER TABLE `address_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_tb`
--

DROP TABLE IF EXISTS `admin_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tb`
--

LOCK TABLES `admin_tb` WRITE;
/*!40000 ALTER TABLE `admin_tb` DISABLE KEYS */;
INSERT INTO `admin_tb` VALUES (1,'admin','admin','admin@gmail.com','$2b$10$CkTQFb6bpyG.GY3VPGs2eusOSPEAsBBg1wCwsCFeDmjcOW6kWbeBq');
/*!40000 ALTER TABLE `admin_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks_table`
--

DROP TABLE IF EXISTS `banks_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks_table`
--

LOCK TABLES `banks_table` WRITE;
/*!40000 ALTER TABLE `banks_table` DISABLE KEYS */;
INSERT INTO `banks_table` VALUES (1,'BCA','223344'),(2,'Mandiri','443322'),(3,'Permata ','4445566'),(4,'BSI','778899');
/*!40000 ALTER TABLE `banks_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks_tb`
--

DROP TABLE IF EXISTS `banks_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banks_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `payment_fee` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bankId` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks_tb`
--

LOCK TABLES `banks_tb` WRITE;
/*!40000 ALTER TABLE `banks_tb` DISABLE KEYS */;
INSERT INTO `banks_tb` VALUES (1,'BCA','11223344',2000),(2,'Mandiri','4433222',6000);
/*!40000 ALTER TABLE `banks_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_tb`
--

DROP TABLE IF EXISTS `cart_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_tb`
--

LOCK TABLES `cart_tb` WRITE;
/*!40000 ALTER TABLE `cart_tb` DISABLE KEYS */;
INSERT INTO `cart_tb` VALUES (77,2,1,1,'finished','2024-05-23 12:43:58','2024-05-23 12:43:58'),(78,2,2,1,'finished','2024-05-23 12:46:10','2024-05-23 12:46:10'),(79,2,1,1,'finished','2024-05-23 12:46:12','2024-05-23 12:46:12'),(80,2,1,1,'finished','2024-05-23 12:46:52','2024-05-23 12:46:52'),(81,2,3,1,'finished','2024-05-23 12:47:36','2024-05-23 12:47:36'),(82,2,2,1,'finished','2024-05-23 12:48:04','2024-05-23 12:48:04'),(83,2,4,1,'finished','2024-05-23 12:49:51','2024-05-23 12:49:51'),(84,2,1,1,'finished','2024-05-23 12:51:05','2024-05-23 12:51:05'),(85,2,1,1,'finished','2024-05-23 13:25:03','2024-05-23 13:25:03'),(86,2,2,1,'finished','2024-05-23 13:30:05','2024-05-23 13:30:05'),(87,2,5,1,'finished','2024-05-23 13:31:49','2024-05-23 13:31:49'),(88,2,2,1,'finished','2024-05-23 13:41:54','2024-05-23 13:41:54'),(89,2,2,1,'finished','2024-05-25 11:21:20','2024-05-25 11:21:20'),(90,2,4,1,'finished','2024-05-25 11:21:23','2024-05-25 11:21:23'),(91,2,5,1,'finished','2024-05-25 11:21:25','2024-05-25 11:21:25'),(92,2,1,1,'finished','2024-06-09 10:22:21','2024-06-09 10:22:21'),(93,2,1,1,'finished','2024-06-21 16:20:15','2024-06-21 16:20:15'),(94,18,1,1,'finished','2024-06-21 16:46:47','2024-06-21 16:46:47');
/*!40000 ALTER TABLE `cart_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_tb`
--

DROP TABLE IF EXISTS `checkout_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `receiver_id` int DEFAULT NULL,
  `courier_id` int DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `cart_ids` varchar(255) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_tb`
--

LOCK TABLES `checkout_tb` WRITE;
/*!40000 ALTER TABLE `checkout_tb` DISABLE KEYS */;
INSERT INTO `checkout_tb` VALUES (55,NULL,1,'250000','78, 79',2,4,'finished'),(56,NULL,1,'300000','80',2,3,'finished'),(57,NULL,1,'300000','81',2,3,'finished'),(58,NULL,2,'275000','82',2,5,'finished'),(59,NULL,1,'150000','83',2,4,'finished'),(60,NULL,2,'125000','84',2,3,'finished'),(61,NULL,1,'150000','85',2,3,'finished'),(62,NULL,1,'150000','86',2,3,'finished'),(63,NULL,1,'150000','87',2,0,'finished'),(64,NULL,1,'150000','88',2,4,'finished'),(65,NULL,2,'325000','89, 90, 91',2,5,'finished'),(66,NULL,1,'150000','92',2,0,'finished'),(67,NULL,1,'150000','93',2,5,'finished'),(68,NULL,1,'350000','94',18,7,'finished');
/*!40000 ALTER TABLE `checkout_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier_tb`
--

DROP TABLE IF EXISTS `courier_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier_tb`
--

LOCK TABLES `courier_tb` WRITE;
/*!40000 ALTER TABLE `courier_tb` DISABLE KEYS */;
INSERT INTO `courier_tb` VALUES (1,'Instant','2 hour',50000),(2,'Same Day','24 hour',25000);
/*!40000 ALTER TABLE `courier_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_tb`
--

DROP TABLE IF EXISTS `customers_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_tb`
--

LOCK TABLES `customers_tb` WRITE;
/*!40000 ALTER TABLE `customers_tb` DISABLE KEYS */;
INSERT INTO `customers_tb` VALUES (1,'syahril','$2b$10$Cmh5ucwWLokdExiy15vA1./oAuNDXu0gL8Gz3qEPmU9RVB4bG/tAG','syahril@gmail.com','syahil',NULL,'123'),(2,'syahril2','$2b$10$5qjj73ThglUvdayWAkmifOYj41xKhos06pC3qcM7GzznqpX.jSB56','syahril2@gmail.com','syahril2','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWjVKYrPYrLjUvTqsU11IIJCEaDMB2_azrR4UVe4hi8w&s','31221'),(3,'syahril3','$2b$10$x/4sMfGvCuyvOxlt/zPdOORGYFPNkKpP/rrH2KXyrAgfPN4HiEfeG','syahril2@gmail.com','syahril3',NULL,'31122'),(4,'syahril@thefepi.com','$2b$10$JZB/EGznBBiR4M1Wag.Ch.o0.EJ8QuWqgbsIkmWlZc0Bw/fFRGSmO','syahril@thefepi.com','syahril4',NULL,'3311'),(5,'admin','$2b$10$0z4rjhE8HHh3bgEpNRJHpuz/BfxUiZAM4IcCS1GyEPrM.97q8nnL6','syahril@thefepi.com',NULL,NULL,'3131'),(6,'admin1','$2b$10$.YGjllRy5y9qKW5K5MPjB.gRXRMjEYpbttbfQHboZIzULPZQF000G','syahril@thefepi.com',NULL,NULL,'3131'),(7,'admin11','$2b$10$8ioqtfOz3qnooBMCKIT2veHUbPcmDfsyN8IsNFeWqPqLwZfBR0bHW','syahril1@thefepi.com',NULL,NULL,'313'),(8,'admin112','$2b$10$OTqRak3.sGOwxmjX3Uuloe37UpPkxPfRFdk1gBemnjGLp/5HAhTCy','syahril13@thefepi.com',NULL,NULL,'13144'),(9,'admin1122','$2b$10$QlccP7FRIgRL7h7450oMOeXcOpUQ5UPTmQjT0LQgGAm6pIhuRi8ie','syahril133@thefepi.com',NULL,NULL,'4312'),(10,'syahril01','$2b$10$6fvEoJfPPZld5A1P0g75juQVUl8RknWAyf4T3NDuOPprNTgX0/HLS','syahril01@thefepi.com',NULL,NULL,'12341'),(11,'jamal','$2b$10$qa9.hKD0i3qEu7tu54zbluyv.o1fVWkonGvC56I0an4gbxbwGZmJ6','dokter2gmail.com',NULL,NULL,'31211'),(12,'sukron','$2b$10$EqXzPAqrr7IrHqlBtUHErurW0mopHjS/09vyMgvcOf5USChHXP8eO','sukrongmail.com',NULL,NULL,'31421'),(13,'customer3','$2b$10$AsStGLMArmJL6JwCfM.afe7Nsz2Al1llZOQaX4UYh/I.XPF1.j3lu','customer@gmail.com',NULL,NULL,'31231'),(14,'customer4','$2b$10$ENsicW9.mINh2OUEPFzyT.cnuR8iFi8hnutHc5ejOxLOV79AzlegO','customer4@gmail.com',NULL,NULL,'31412'),(15,'customer5','$2b$10$kjv5pNINPmdynS8uqXHsG.F8XSfg6iChKyA04w9Jnj71dTw5x9pea','customer5@gmail.com','customer5',NULL,'31241'),(16,NULL,NULL,NULL,NULL,NULL,'41312'),(17,'customer4','$2b$10$hRkU7x.3CzFy.ExWQX5iVO3ZAXjHjBTIqiY2A5vVdJyIRc3EyUMaO','customer@gmail.com','customer4',NULL,NULL),(18,'customer4','$2b$10$kpDEK5yI7WLxxj.U7X2qNOimUkCcxfcyUGV9VWKDYKDB8Buo5laFO','customer10@gmail.com','customer4',NULL,NULL);
/*!40000 ALTER TABLE `customers_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokter_tb`
--

DROP TABLE IF EXISTS `dokter_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dokter_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokter_tb`
--

LOCK TABLES `dokter_tb` WRITE;
/*!40000 ALTER TABLE `dokter_tb` DISABLE KEYS */;
INSERT INTO `dokter_tb` VALUES (3,'dr. Ridwan, MARS, Ph.D.','jamal','dokter2@gmail.com','$2b$10$CkTQFb6bpyG.GY3VPGs2eusOSPEAsBBg1wCwsCFeDmjcOW6kWbeBq'),(4,'dr. Riska, MARS, Ph.D.','dokter3','dokter3@gmail.com','$2b$10$CkTQFb6bpyG.GY3VPGs2eusOSPEAsBBg1wCwsCFeDmjcOW6kWbeBq');
/*!40000 ALTER TABLE `dokter_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_tb`
--

DROP TABLE IF EXISTS `messages_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_chat_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `dokter_id` int DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_seen` tinyint(1) DEFAULT NULL,
  `senderId` int DEFAULT NULL,
  `recipientId` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_tb`
--

LOCK TABLES `messages_tb` WRITE;
/*!40000 ALTER TABLE `messages_tb` DISABLE KEYS */;
INSERT INTO `messages_tb` VALUES (218,113,2,NULL,'halo dok','2024-06-21 16:38:34','2024-06-21 16:38:34',0,NULL,NULL,NULL),(219,113,NULL,3,'halo','2024-06-21 16:39:08','2024-06-21 16:39:08',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `messages_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_tb`
--

DROP TABLE IF EXISTS `orders_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `checkout_id` int DEFAULT NULL,
  `payment_methode_id` int DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `total_payment` int DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int DEFAULT NULL,
  `exp_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_tb`
--

LOCK TABLES `orders_tb` WRITE;
/*!40000 ALTER TABLE `orders_tb` DISABLE KEYS */;
INSERT INTO `orders_tb` VALUES (29,62,1,'wating_for_payment',202000,'2024-05-23 13:30:20','2024-05-23 13:30:20',2,'2024-05-24 13:30:20'),(30,63,2,'wating_for_payment',206000,'2024-05-23 13:32:00','2024-05-23 13:32:00',2,'2024-05-24 13:32:00'),(31,64,1,'wating_for_payment',202000,'2024-05-23 13:42:11','2024-05-23 13:42:11',2,'2024-05-24 13:42:11'),(32,65,1,'shipped',352000,'2024-05-25 11:21:48','2024-05-25 11:21:48',2,'2024-05-26 11:21:48'),(33,62,1,'wating_for_payment',202000,'2024-05-23 13:30:20','2024-05-23 13:30:20',2,'2024-05-24 13:30:20'),(34,63,2,'wating_for_payment',206000,'2024-05-23 13:32:00','2024-05-23 13:32:00',2,'2024-05-24 13:32:00'),(35,64,1,'wating_for_payment',202000,'2024-05-23 13:42:11','2024-05-23 13:42:11',2,'2024-05-24 13:42:11'),(36,65,1,'wating_for_payment',352000,'2024-05-25 11:21:48','2024-05-25 11:21:48',2,'2024-05-26 11:21:48'),(37,66,1,'wating_for_payment',202000,'2024-06-09 10:32:34','2024-06-09 10:32:34',2,'2024-06-10 10:32:34'),(38,67,1,'wating_for_payment',202000,'2024-06-21 16:44:09','2024-06-21 16:44:09',2,'2024-06-22 16:44:09'),(39,68,2,'wating_for_payment',406000,'2024-06-21 16:47:57','2024-06-21 16:47:57',18,'2024-06-22 16:47:57');
/*!40000 ALTER TABLE `orders_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_image_tb`
--

DROP TABLE IF EXISTS `products_image_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_image_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_image_tb`
--

LOCK TABLES `products_image_tb` WRITE;
/*!40000 ALTER TABLE `products_image_tb` DISABLE KEYS */;
INSERT INTO `products_image_tb` VALUES (1,1,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/101/MTA-146468170/no-brand_no-brand_full01.jpg?w=958'),(2,1,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/101/MTA-146468170/no-brand_no-brand_full01.jpg?w=958'),(3,1,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(4,2,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(5,2,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(6,2,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(7,2,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(8,3,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(9,3,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(10,4,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(11,4,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(12,4,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(13,5,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(14,5,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(15,5,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(16,6,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(17,6,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(18,6,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(19,7,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(20,7,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(21,7,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(22,8,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(23,8,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958'),(24,8,'DefaultImage','https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/97/MTA-146465242/no-brand_no-brand_full01.jpg?w=958');
/*!40000 ALTER TABLE `products_image_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_tb`
--

DROP TABLE IF EXISTS `products_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `regular_price` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `final_price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `desc` text,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_tb`
--

LOCK TABLES `products_tb` WRITE;
/*!40000 ALTER TABLE `products_tb` DISABLE KEYS */;
INSERT INTO `products_tb` VALUES (1,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec\n                  et nunc eget velit pellentesque elementum. Duis et sem\n                  blandit, dignissim magna vel, pharetra est. Cras vitae massa\n                  sodales, tempus diam quis, placerat nulla. Nulla ac metus\n                  consequat, ornare elit sed, ultrices erat. Phasellus vehicula\n                  erat id porta mollis. Cras pulvinar ornare ante, eu lobortis\n                  mauris varius sit amet. Sed convallis ut mauris at\n                  scelerisque. Suspendisse vestibulum commodo elit, nec dictum\n                  lacus vulputate at. Aliquam in eros at neque gravida\n                  condimentum. Mauris placerat nisi id leo tristique, sit amet\n                  luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus\n                  fermentum, urna urna rhoncus risus, vel finibus orci urna eget\n                  neque. Sed finibus lacus sit amet ante molestie congue.\n                  Interdum et malesuada fames ac ante ipsum primis in faucibus.\n                  Vestibulum sapien nibh, dapibus vitae porta et, laoreet a\n                  eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08'),(2,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec                   et nunc eget velit pellentesque elementum. Duis et sem                   blandit, dignissim magna vel, pharetra est. Cras vitae massa                   sodales, tempus diam quis, placerat nulla. Nulla ac metus                   consequat, ornare elit sed, ultrices erat. Phasellus vehicula                   erat id porta mollis. Cras pulvinar ornare ante, eu lobortis                   mauris varius sit amet. Sed convallis ut mauris at                   scelerisque. Suspendisse vestibulum commodo elit, nec dictum                   lacus vulputate at. Aliquam in eros at neque gravida                   condimentum. Mauris placerat nisi id leo tristique, sit amet                   luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus                   fermentum, urna urna rhoncus risus, vel finibus orci urna eget                   neque. Sed finibus lacus sit amet ante molestie congue.                   Interdum et malesuada fames ac ante ipsum primis in faucibus.                   Vestibulum sapien nibh, dapibus vitae porta et, laoreet a                   eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08'),(3,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec                   et nunc eget velit pellentesque elementum. Duis et sem                   blandit, dignissim magna vel, pharetra est. Cras vitae massa                   sodales, tempus diam quis, placerat nulla. Nulla ac metus                   consequat, ornare elit sed, ultrices erat. Phasellus vehicula                   erat id porta mollis. Cras pulvinar ornare ante, eu lobortis                   mauris varius sit amet. Sed convallis ut mauris at                   scelerisque. Suspendisse vestibulum commodo elit, nec dictum                   lacus vulputate at. Aliquam in eros at neque gravida                   condimentum. Mauris placerat nisi id leo tristique, sit amet                   luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus                   fermentum, urna urna rhoncus risus, vel finibus orci urna eget                   neque. Sed finibus lacus sit amet ante molestie congue.                   Interdum et malesuada fames ac ante ipsum primis in faucibus.                   Vestibulum sapien nibh, dapibus vitae porta et, laoreet a                   eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08'),(4,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec                   et nunc eget velit pellentesque elementum. Duis et sem                   blandit, dignissim magna vel, pharetra est. Cras vitae massa                   sodales, tempus diam quis, placerat nulla. Nulla ac metus                   consequat, ornare elit sed, ultrices erat. Phasellus vehicula                   erat id porta mollis. Cras pulvinar ornare ante, eu lobortis                   mauris varius sit amet. Sed convallis ut mauris at                   scelerisque. Suspendisse vestibulum commodo elit, nec dictum                   lacus vulputate at. Aliquam in eros at neque gravida                   condimentum. Mauris placerat nisi id leo tristique, sit amet                   luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus                   fermentum, urna urna rhoncus risus, vel finibus orci urna eget                   neque. Sed finibus lacus sit amet ante molestie congue.                   Interdum et malesuada fames ac ante ipsum primis in faucibus.                   Vestibulum sapien nibh, dapibus vitae porta et, laoreet a                   eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08'),(5,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec                   et nunc eget velit pellentesque elementum. Duis et sem                   blandit, dignissim magna vel, pharetra est. Cras vitae massa                   sodales, tempus diam quis, placerat nulla. Nulla ac metus                   consequat, ornare elit sed, ultrices erat. Phasellus vehicula                   erat id porta mollis. Cras pulvinar ornare ante, eu lobortis                   mauris varius sit amet. Sed convallis ut mauris at                   scelerisque. Suspendisse vestibulum commodo elit, nec dictum                   lacus vulputate at. Aliquam in eros at neque gravida                   condimentum. Mauris placerat nisi id leo tristique, sit amet                   luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus                   fermentum, urna urna rhoncus risus, vel finibus orci urna eget                   neque. Sed finibus lacus sit amet ante molestie congue.                   Interdum et malesuada fames ac ante ipsum primis in faucibus.                   Vestibulum sapien nibh, dapibus vitae porta et, laoreet a                   eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08'),(6,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec                   et nunc eget velit pellentesque elementum. Duis et sem                   blandit, dignissim magna vel, pharetra est. Cras vitae massa                   sodales, tempus diam quis, placerat nulla. Nulla ac metus                   consequat, ornare elit sed, ultrices erat. Phasellus vehicula                   erat id porta mollis. Cras pulvinar ornare ante, eu lobortis                   mauris varius sit amet. Sed convallis ut mauris at                   scelerisque. Suspendisse vestibulum commodo elit, nec dictum                   lacus vulputate at. Aliquam in eros at neque gravida                   condimentum. Mauris placerat nisi id leo tristique, sit amet                   luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus                   fermentum, urna urna rhoncus risus, vel finibus orci urna eget                   neque. Sed finibus lacus sit amet ante molestie congue.                   Interdum et malesuada fames ac ante ipsum primis in faucibus.                   Vestibulum sapien nibh, dapibus vitae porta et, laoreet a                   eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08'),(7,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec                   et nunc eget velit pellentesque elementum. Duis et sem                   blandit, dignissim magna vel, pharetra est. Cras vitae massa                   sodales, tempus diam quis, placerat nulla. Nulla ac metus                   consequat, ornare elit sed, ultrices erat. Phasellus vehicula                   erat id porta mollis. Cras pulvinar ornare ante, eu lobortis                   mauris varius sit amet. Sed convallis ut mauris at                   scelerisque. Suspendisse vestibulum commodo elit, nec dictum                   lacus vulputate at. Aliquam in eros at neque gravida                   condimentum. Mauris placerat nisi id leo tristique, sit amet                   luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus                   fermentum, urna urna rhoncus risus, vel finibus orci urna eget                   neque. Sed finibus lacus sit amet ante molestie congue.                   Interdum et malesuada fames ac ante ipsum primis in faucibus.                   Vestibulum sapien nibh, dapibus vitae porta et, laoreet a                   eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08'),(8,'Blackmores Multivitamins + Minerals','100000',NULL,'100000','image.jpg',10,'  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec                   et nunc eget velit pellentesque elementum. Duis et sem                   blandit, dignissim magna vel, pharetra est. Cras vitae massa                   sodales, tempus diam quis, placerat nulla. Nulla ac metus                   consequat, ornare elit sed, ultrices erat. Phasellus vehicula                   erat id porta mollis. Cras pulvinar ornare ante, eu lobortis                   mauris varius sit amet. Sed convallis ut mauris at                   scelerisque. Suspendisse vestibulum commodo elit, nec dictum                   lacus vulputate at. Aliquam in eros at neque gravida                   condimentum. Mauris placerat nisi id leo tristique, sit amet                   luctus lectus vehicula. Fusce lobortis, diam sit amet rhoncus                   fermentum, urna urna rhoncus risus, vel finibus orci urna eget                   neque. Sed finibus lacus sit amet ante molestie congue.                   Interdum et malesuada fames ac ante ipsum primis in faucibus.                   Vestibulum sapien nibh, dapibus vitae porta et, laoreet a                   eros.','active','2024-05-24 18:40:08','2024-05-24 18:40:08');
/*!40000 ALTER TABLE `products_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_chat_tb`
--

DROP TABLE IF EXISTS `room_chat_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_chat_tb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dokter_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_chat_tb`
--

LOCK TABLES `room_chat_tb` WRITE;
/*!40000 ALTER TABLE `room_chat_tb` DISABLE KEYS */;
INSERT INTO `room_chat_tb` VALUES (113,3,2,'2024-06-21 16:38:26','2024-06-21 16:38:26',1);
/*!40000 ALTER TABLE `room_chat_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22  2:46:33
