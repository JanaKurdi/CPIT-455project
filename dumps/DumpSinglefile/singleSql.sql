-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tagrest
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `Password` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Duaa','D@12345'),('JanaK','J@12345'),('RazanAL','R@12345'),('RenadG','R@123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Fname` varchar(55) DEFAULT NULL,
  `lname` varchar(55) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `Password` varchar(64) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `phone` varchar(22) DEFAULT NULL,
  `OrderNum` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `idx_customer_OrderNum` (`OrderNum`),
  KEY `OrderN_idx` (`OrderNum`),
  CONSTRAINT `OrderN` FOREIGN KEY (`OrderNum`) REFERENCES `orders` (`Order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Deema','Alshaikh','deemalsh','a@12345','deema@gmail.com','Jeddah','0549934245',NULL),('Lina','Alshaikh','Linaalsh','abcdefg','linaalshaikh2002@gmail.com','Jeddah','0503589589','12'),('Razan','Alshaikh','razanalsh','a@1906813','RazanAlshaikh2000@gmail.com','Jeddah','0549226961','11'),('Renad','Ghaleb','RenadSG','abcdefg','renad@gmail.com','Jeddah','0540303033','13');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!50001 DROP VIEW IF EXISTS `customer_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_order` AS SELECT 
 1 AS `Order_number`,
 1 AS `Fname`,
 1 AS `lname`,
 1 AS `email`,
 1 AS `Address`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customers_orders`
--

DROP TABLE IF EXISTS `customers_orders`;
/*!50001 DROP VIEW IF EXISTS `customers_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customers_orders` AS SELECT 
 1 AS `Order_number`,
 1 AS `FName`,
 1 AS `lname`,
 1 AS `email`,
 1 AS `Address`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Order_Amount` varchar(22) DEFAULT NULL,
  `Order_number` varchar(22) NOT NULL,
  `Order_Customer` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`Order_number`),
  UNIQUE KEY `idx_orders_Order_number` (`Order_number`),
  KEY `Order_Customer` (`Order_Customer`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Order_Customer`) REFERENCES `customer` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('3','11','razanalsh'),('4','12','linaalsh'),('2','13','RenadSG');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `color` varchar(55) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `ID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_order`
--

/*!50001 DROP VIEW IF EXISTS `customer_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`C3A_3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_order` AS select `orders`.`Order_number` AS `Order_number`,`customer`.`Fname` AS `Fname`,`customer`.`lname` AS `lname`,`customer`.`email` AS `email`,`customer`.`Address` AS `Address`,`customer`.`phone` AS `phone` from (`customer` join `orders`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customers_orders`
--

/*!50001 DROP VIEW IF EXISTS `customers_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`C3A_3`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `customers_orders` AS select `orders`.`Order_number` AS `Order_number`,`customer`.`Fname` AS `FName`,`customer`.`lname` AS `lname`,`customer`.`email` AS `email`,`customer`.`Address` AS `Address`,`customer`.`phone` AS `phone` from (`orders` join `customer`) where (`orders`.`Order_number` = `customer`.`OrderNum`) */;
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

-- Dump completed on 2022-11-06 20:50:40
