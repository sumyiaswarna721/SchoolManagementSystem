-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: swarna
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(30) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'One','A'),(2,'One','B'),(3,'4','B'),(5,'Two','A'),(6,'two','A'),(7,'Two','A'),(8,'Two','A'),(9,'Three','C'),(10,'four','A'),(12,'Three','A'),(13,'Five','Four'),(14,'Five',''),(15,'Two','B'),(16,'Three','B'),(17,'Five','B'),(18,'Three','D'),(19,'Three','E'),(20,'One','E'),(21,'One','A');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admission` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES (1,'100','lovely','2','B','2017','March','1000'),(2,'100','lovely','2','B','2015','Jan','1000'),(3,'101','Md Abrar Bhuiyan','3','A','2015','Jan','1200'),(4,'101','Md Abrar Bhuiyan','3','A','2019','Jan','1200'),(5,'100','lovely','2','B','2020','Jan','1200'),(6,'100','lovely','2','B','2020','May','1200');
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'swarna','1234','Admin','Miss swarna'),(2,'swarna','1234','Admin','Faria'),(3,'swarna','1234','Swarna','Farjin sanam Liana'),(4,'swarna','1234','Swarna','Samia'),(5,'swarna','1234','Swarna','siam'),(6,'swarna','1234','Swarna','siam'),(7,'swarna','1234','Swarna','siam'),(8,'swarna','1234','Swarna','sumyia'),(9,'swarna','1234','Admin','Dia'),(10,'swarna','1234','Swarna','sumyia'),(11,'swarna','1234','Swarna','sumyia'),(12,'swarna','1234','Swarna','sumyia'),(13,'swarna','1234','Swarna','sumyia'),(14,'swarna','1234','Swarna','sumyia'),(15,'swarna','1234','Swarna','swarna'),(16,'swarna','1234','Swarna','sumyia'),(17,'ghh','1234','Swarna','swt'),(18,'swarna','1234','Swarna','liana'),(19,'mou','1234','Swarna','Moushumi'),(20,'tanju','567','Swarna','Tanjila'),(21,'swarna','1234','Admin','Munmun'),(22,'swarna','1234','Admin','nuri'),(23,'mm','123','Admin','Moyna');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `yr` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Md jamal','2017','Jan','10000'),(2,'Md jamal','---Selected---','---Selected---','20000'),(3,'Mrs Mohua','2015','Jan','20000'),(4,'Md jamal','2020','Jan','20000'),(5,'Lubna','2020','Jan','20000'),(6,'Md Biswajit','2020','Jan','20000'),(7,'Md Rajib Hossen','---Selected---','---Selected---','20000'),(8,'Md Rajib Hossen','2020','Jan','20000');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scldetail`
--

DROP TABLE IF EXISTS `scldetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scldetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `website` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scldetail`
--

LOCK TABLES `scldetail` WRITE;
/*!40000 ALTER TABLE `scldetail` DISABLE KEYS */;
INSERT INTO `scldetail` VALUES (1,'Swarna Int School','0166666666666','info@swarna.com','Madaripur',''),(2,'Aloron Int school','01789929091','aloron@gmail.com','Mirpur','aloron@yahoo.com'),(3,'Aloron Int School','0167899945','aloron@gmail.cxom','mirpur','aloron@yahoo.com'),(4,'Maple Leaf Int School','01754322892','maple@gmail.com','Dhanmondi','mapleleaf@yahoo.com'),(5,'Monipur High School','015678948923','monipur@gmail.com','Mirpur 2','monipur@yahoo.com'),(6,'Swarna Int School','0166666666666','info@swarna.com','Madaripur','hjkjk');
/*!40000 ALTER TABLE `scldetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admission` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `roll` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'100','lovely','2','B','10','Female','01-01-94','A','B','121212','ok'),(2,'101','Md Abrar Bhuiyan','3','A','05','Male','01-09-2013','Md Selim Bhuiyan','Selina Sultana','01386247353','Shamoly'),(3,'104','Tina','4','A','2','Female','01-05-2010','Md Alamin','Shanta','01329876559','Mirpur'),(4,'102','pria','1','B','03','Female','1-1-2017','Bablu','Amena','013678898443','Dhanmondi'),(5,'104','Liana','1','A','35','Female','18-10-2015','Kamal','Farzana','01765432278','Mirpur'),(6,'105','Papiya','10','A','1','Female','01-01-2004','Mohammad','Amina','01357889965','Mirpur'),(7,'110','Mohona','6','A','1','Female','01-01-2008','Md Arifin ','Labony','01832435451','Mirpur'),(8,'112','Naziba','3','D','1','Female','01-02-2012','Nur Mohammad','Rashida','0138664549','Shewrapara,Mirpur'),(9,'109','Moyna','10','A','08','Female','01/01/2012','Fojlul haque','Beauty','013456789990','Mirpur'),(10,'201','Papiya','10','A','03','Female','01/01/2002','Mr. Abul','Halima','01325478768','Mirpur 10'),(11,'203','samiya','3','C','02','Female','01/01/2002','Abdul','Rina','01689932132','Mirpur'),(12,'204','Nova','8','A','1','Female','01/01/2000','Mohammad','Minara','0186543232','Mirpur 11');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Md Tanvir','20000','01857655435','Mirpur 12'),(11,'Md Tanvir','20000','01857655435','Mirpur 12');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 10:52:59
