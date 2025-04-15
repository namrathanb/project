CREATE DATABASE  IF NOT EXISTS `proj` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proj`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proj
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `expensetracker`
--

DROP TABLE IF EXISTS `expensetracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expensetracker` (
  `ExpenseID` int NOT NULL AUTO_INCREMENT,
  `ExpenseDate` date DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentMethod` varchar(255) DEFAULT NULL,
  `VendorPayee` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ExpenseID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expensetracker`
--

LOCK TABLES `expensetracker` WRITE;
/*!40000 ALTER TABLE `expensetracker` DISABLE KEYS */;
INSERT INTO `expensetracker` VALUES (1,'2023-09-24','Groceries','Weekly grocery shopping',150.00,'Credit Card','Local Mart'),(2,'2023-09-22','Utilities','Electricity bill',75.00,'Bank Transfer','PowerCo'),(3,'2023-09-20','Dining Out','Lunch with colleagues',30.00,'Credit Card','Cafe Bistro'),(4,'2023-09-18','Transportation','Gasoline refill',40.00,'Debit Card','Gas Station'),(5,'2023-09-15','Entertainment','Movie tickets',25.00,'Credit Card','Cineplex'),(6,'2023-09-10','Healthcare','Doctor appointment',120.00,'Credit Card','Dr. Smith Clinic');
/*!40000 ALTER TABLE `expensetracker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13 10:51:01
