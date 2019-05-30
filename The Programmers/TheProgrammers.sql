CREATE DATABASE  IF NOT EXISTS `golfcartreservation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `golfcartreservation`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: golfcartreservation
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `amountgeneratedbymake`
--

DROP TABLE IF EXISTS `amountgeneratedbymake`;
/*!50001 DROP VIEW IF EXISTS `amountgeneratedbymake`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `amountgeneratedbymake` AS SELECT 
 1 AS `Make`,
 1 AS `Total_AmountGenerated`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `DepartmentID` int(11) NOT NULL AUTO_INCREMENT,
  `Department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science'),(2,'Electrical'),(3,'Mechanical'),(4,'Civil'),(5,'Arts');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `golfcart`
--

DROP TABLE IF EXISTS `golfcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `golfcart` (
  `Golf_CartID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the golf cart\\n\\nPrimary Key\\nNot NULL\\nUnique',
  `Model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Model name or number of the golf cart\n\nNot NULL',
  `Make` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Manufacturing brand of the golf cart\n\nNot NULL',
  `NumberOfSeats` int(1) NOT NULL COMMENT 'Number of seats allowed other than driver\n\nNot NULL\n',
  `CanUsedDuringRain` char(1) NOT NULL COMMENT 'Can the cart be used during rainy day\n\nNot NULL',
  `Year` int(4) NOT NULL COMMENT 'The year it was manufactured in.\n\nNot NULL\n',
  `VIN` int(7) NOT NULL COMMENT 'Vehicle identification number\\\\\\\\n\\\\\\\\nNot NULL\\\\\\\\nUnique',
  `Color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Color of the cart\n\nNot NULL',
  `PowerSupply` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Type of the power the supply needed for the golf cart.\n\nNot NULL',
  `ElectroMagneticParkingBreak` char(1) NOT NULL COMMENT 'Does the cart have electromagnetic brakes.\n\nNot NULL',
  PRIMARY KEY (`Golf_CartID`),
  UNIQUE KEY `Golf_CartID_UNIQUE` (`Golf_CartID`),
  UNIQUE KEY `VIN_UNIQUE` (`VIN`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `golfcart`
--

LOCK TABLES `golfcart` WRITE;
/*!40000 ALTER TABLE `golfcart` DISABLE KEYS */;
INSERT INTO `golfcart` VALUES (1,'Sedan','General Motors',2,'N',2014,2038260,'Green','Hybrid','Y'),(2,'SUV','Ford',2,'N',2014,8916500,'','Hybrid','Y'),(3,'SUV','Smart',2,'Y',2013,5942506,'Blue','Battery','N'),(4,'SUV','Daihatsu',2,'N',2017,2097879,'','Hybrid','N'),(5,'Hatch','Subaru',2,'N',2019,4513233,'Blue','Battery','N'),(6,'Sedan','Buick',2,'N',2014,4594011,'Black','','Y'),(7,'Sedan','Cadillac',2,'Y',2017,3144320,'Red','','N'),(8,'SUV','Infiniti',4,'Y',2013,3426584,'Green','ICE','Y'),(9,'Hatch','Porsche',4,'Y',2017,6862685,'Red','','Y'),(10,'','Mahindra and Mahindra',2,'Y',2019,1853364,'Green','Battery','N'),(11,'Hatch','Chrysler',4,'N',2014,1644682,'Red','ICE','Y'),(12,'Sedan','Audi',2,'Y',2015,1088523,'Green','Battery','Y'),(13,'SUV','Subaru',4,'N',2015,6387756,'Black','Battery','Y'),(14,'SUV','Dacia',4,'Y',2015,4476589,'Red','Hybrid','N'),(15,'SUV','Jeep',2,'N',2017,3287999,'Green','Hybrid','N'),(16,'SUV','Lexus',2,'Y',2019,7495279,'Red','','N'),(17,'Sedan','Dodge',4,'Y',2019,3394738,'Black','','N'),(18,'Sedan','Jeep',2,'Y',2015,4195320,'Red','Hybrid','Y'),(19,'','Peugeot',4,'N',2017,4298036,'Red','','Y'),(20,'','Infiniti',4,'Y',2010,8404784,'','Hybrid','N'),(21,'','Mahindra and Mahindra',4,'Y',2018,6440356,'Green','ICE','Y'),(22,'','Infiniti',2,'Y',2013,4219286,'Green','ICE','Y'),(23,'Sedan','Nissan',2,'Y',2016,2736831,'Black','','Y'),(24,'','Skoda',2,'N',2012,3335897,'Black','','N'),(25,'SUV','Dacia',2,'N',2019,8946968,'Black','Battery','Y'),(26,'Sedan','Subaru',2,'Y',2014,7481229,'Red','ICE','N'),(27,'','Mahindra and Mahindra',4,'N',2017,2228032,'Green','','Y'),(28,'Sedan','Maruti Suzuki',4,'N',2014,4221366,'Black','Hybrid','N'),(29,'','GMC',4,'N',2012,1299552,'Blue','ICE','N'),(30,'Sedan','Mazda',4,'Y',2013,7856931,'Blue','Hybrid','N'),(31,'','Chevrolet',4,'N',2016,2105943,'Red','ICE','Y'),(32,'','Citroën',4,'N',2013,4742036,'','Hybrid','N'),(33,'SUV','Porsche',4,'Y',2013,7737312,'Green','Hybrid','N'),(34,'Hatch','Ford',2,'Y',2013,2111299,'Red','Hybrid','Y'),(35,'SUV','Dodge',2,'Y',2012,3318345,'Black','ICE','N'),(36,'','Citroën',4,'N',2015,4214972,'Blue','','Y'),(37,'','Peugeot',4,'Y',2014,4957107,'Black','','N'),(38,'Hatch','Mazda',2,'N',2013,6077648,'Blue','Battery','Y'),(39,'Sedan','Isuzu',4,'Y',2011,6317636,'Blue','Hybrid','N'),(40,'','Suzuki',2,'Y',2018,4862818,'','Hybrid','Y'),(41,'Sedan','Fiat',4,'Y',2011,4740365,'Blue','Hybrid','Y'),(42,'','Chevrolet',2,'N',2012,4449697,'Blue','ICE','N'),(43,'Sedan','Smart',4,'N',2018,7584966,'Black','ICE','N'),(44,'Sedan','Citroën',4,'Y',2014,7159022,'Blue','','Y'),(45,'SUV','Infiniti',4,'N',2014,1585769,'','ICE','N'),(46,'Sedan','Honda',4,'N',2015,5412947,'','','Y'),(47,'SUV','Ferrari',4,'N',2014,4326209,'Red','Battery','N'),(48,'','Ford',2,'N',2010,2184676,'Black','Hybrid','Y'),(49,'Hatch','Audi',2,'N',2013,4302864,'Blue','ICE','N'),(50,'SUV','Volvo',2,'N',2012,6037592,'Green','Battery','Y'),(51,'Sedan','RAM Trucks',2,'N',2019,1770716,'Green','Hybrid','N'),(52,'SUV','MINI',2,'Y',2012,3753012,'Red','ICE','N'),(53,'Sedan','Fiat',2,'Y',2013,5148653,'Blue','Battery','Y'),(54,'SUV','Volkswagen',2,'Y',2018,3309109,'Green','ICE','N'),(55,'Sedan','Skoda',2,'Y',2012,2795939,'Blue','','Y'),(56,'','Volkswagen',4,'Y',2016,8060015,'Black','ICE','Y'),(57,'Sedan','Skoda',4,'N',2010,5106948,'','ICE','Y'),(58,'Hatch','Vauxhall',2,'Y',2012,6728169,'Green','Hybrid','N'),(59,'SUV','Infiniti',2,'N',2017,8017074,'Green','Hybrid','Y'),(60,'','Infiniti',2,'Y',2017,8216243,'Green','','N'),(61,'SUV','Vauxhall',4,'N',2015,6966008,'Blue','Hybrid','N'),(62,'Hatch','Dodge',4,'Y',2013,6687589,'Blue','ICE','N'),(63,'','Seat',4,'Y',2010,1114223,'Black','Hybrid','N'),(64,'SUV','Fiat',4,'N',2013,2947748,'Blue','Hybrid','Y'),(65,'','Citroën',2,'Y',2015,6070457,'Black','Battery','Y'),(66,'SUV','Audi',2,'N',2015,2112768,'Red','ICE','N'),(67,'Sedan','Subaru',2,'Y',2019,1761651,'Black','','Y'),(68,'Hatch','RAM Trucks',4,'Y',2017,4844287,'Red','Hybrid','Y'),(69,'','Mercedes-Benz',2,'Y',2018,6494569,'Green','ICE','Y'),(70,'Hatch','Volvo',4,'N',2016,3873363,'Blue','Battery','N'),(71,'Hatch','Kenworth',2,'Y',2011,6109966,'','','N'),(72,'SUV','Renault',2,'N',2015,8928398,'Blue','Battery','N'),(73,'SUV','Kia Motors',2,'Y',2017,3190873,'Green','','N'),(74,'Sedan','GMC',4,'Y',2012,4509159,'','','N'),(75,'SUV','Mitsubishi Motors',2,'Y',2017,1533019,'Red','Hybrid','Y'),(76,'SUV','Dodge',4,'Y',2010,4303137,'Green','ICE','N'),(77,'Sedan','Mitsubishi Motors',2,'Y',2011,6240220,'Black','Battery','Y'),(78,'SUV','Cadillac',2,'Y',2012,8921958,'','Battery','N'),(79,'SUV','MINI',4,'Y',2018,6974621,'Red','Hybrid','N'),(80,'SUV','Fiat',4,'Y',2014,6750657,'Blue','ICE','Y'),(81,'Hatch','GMC',2,'Y',2018,3647550,'Black','','N'),(82,'Hatch','Lincoln',2,'N',2017,7878889,'Green','Battery','Y'),(83,'Hatch','Kia Motors',2,'Y',2011,1916440,'Black','ICE','N'),(84,'','FAW',4,'N',2017,3454518,'Red','ICE','N'),(85,'SUV','Infiniti',2,'Y',2014,8501091,'Black','Hybrid','Y'),(86,'Sedan','Tata Motors',2,'N',2018,4055697,'Green','Hybrid','Y'),(87,'Sedan','Mazda',2,'N',2010,5612933,'Black','','N'),(88,'','Chevrolet',2,'N',2017,8575824,'Green','Hybrid','N'),(89,'Sedan','Lexus',4,'Y',2011,5372291,'Blue','','N'),(90,'Hatch','Infiniti',2,'N',2013,3135009,'Blue','','N'),(91,'SUV','Tata Motors',2,'Y',2017,1398200,'','Hybrid','N'),(92,'SUV','Vauxhall',2,'N',2015,5313179,'','Battery','N'),(93,'Sedan','Cadillac',2,'Y',2016,8114994,'Black','','Y'),(94,'SUV','Kia Motors',2,'Y',2018,8360404,'Red','ICE','N'),(95,'Sedan','Jeep',4,'Y',2016,4200063,'Green','Hybrid','N'),(96,'SUV','Mercedes-Benz',4,'Y',2014,8023448,'Red','ICE','Y'),(97,'Hatch','Dongfeng Motor',4,'N',2013,7660374,'Blue','Hybrid','Y'),(98,'','Ford',2,'N',2014,3516769,'Red','Battery','Y'),(99,'Hatch','Hyundai Motors',2,'N',2017,6177216,'Black','ICE','Y'),(100,'Sedan','Renault',4,'Y',2016,1829317,'Green','ICE','N');
/*!40000 ALTER TABLE `golfcart` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `golfcart_BEFORE_INSERT` BEFORE INSERT ON `golfcart` FOR EACH ROW BEGIN
	CALL check_GolfCart(new.NumberOfSeats,new.VIN);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `golfcart_BEFORE_UPDATE` BEFORE UPDATE ON `golfcart` FOR EACH ROW BEGIN
	CALL check_GolfCart(new.NumberOfSeats,new.VIN);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Location unique identifier\\n\\nPrimary Key\\nNot NULL\\nUnique',
  `Location_Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Name of the location\n\nNot NULL',
  `Location_Address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Location detailed address\n\nNot NULL',
  `Latitude` decimal(10,8) NOT NULL COMMENT 'Latitude value of the location.\n\nNot NULL\nUnique',
  `Longitude` decimal(11,8) NOT NULL COMMENT 'Longitude of the location\n\nNot NULL\nUnique',
  PRIMARY KEY (`LocationID`),
  UNIQUE KEY `LocationID_UNIQUE` (`LocationID`),
  UNIQUE KEY `Latitude_UNIQUE` (`Latitude`),
  UNIQUE KEY `Longitude_UNIQUE` (`Longitude`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (100,'P.O. Box 405, 5985 Vulputate, Av.','Alabama',12.03176000,149.81601000),(101,'4079 Sem. Av.','AL',-26.18850000,-159.19991000),(102,'P.O. Box 887, 9654 Mauris, St.','KY',-88.01518000,-171.31816000),(103,'9646 Est. Rd.','WA',-84.21671000,-56.45862000),(104,'P.O. Box 170, 1618 At, St.','NE',43.83351000,-124.01470000),(105,'P.O. Box 816, 1264 Malesuada Av.','Virginia',35.74402000,-153.85703000),(106,'P.O. Box 819, 8428 Ac Street','CT',36.38769000,-111.72470000),(107,'P.O. Box 567, 7642 Ligula. Road','Arizona',-73.52017000,6.70125000),(108,'132-1500 Eu, Rd.','DE',-62.15293000,179.85554000),(109,'4446 Quisque Road','Alaska',-24.25980000,-138.16830000),(110,'5868 Ut Av.','Minnesota',79.71194000,61.77908000),(111,'P.O. Box 757, 1959 Pellentesque Ave','Wyoming',76.04649000,145.66027000),(112,'2854 Consequat St.','Arizona',87.58172000,144.69790000),(113,'Ap #243-5284 Curabitur St.','Oklahoma',-54.84540000,-146.86373000),(114,'P.O. Box 460, 784 Diam Ave','Florida',-54.29983000,-24.19706000),(115,'6535 Proin St.','IA',-75.43411000,-114.61094000),(116,'P.O. Box 381, 1814 Et Ave','Connecticut',64.06776000,-74.20150000),(117,'P.O. Box 660, 3096 Nulla Street','Florida',-1.57954000,161.41240000),(118,'P.O. Box 362, 6839 Massa. Avenue','Wyoming',-35.88605000,-27.96014000),(119,'298-6623 Tincidunt Road','OR',-85.15609000,51.00072000),(120,'Ap #167-2254 Lorem St.','Vermont',77.14213000,-14.69114000),(121,'P.O. Box 227, 7952 Per Street','MI',65.99760000,-100.78824000),(122,'1210 Lorem Av.','CT',25.03686000,-68.59496000),(123,'506-1609 Accumsan Avenue','VA',-43.16395000,47.75314000),(124,'942 Amet, Rd.','Kentucky',33.08643000,-60.56531000),(125,'Ap #581-3960 Proin St.','HI',-27.89067000,-22.81300000),(126,'492-6560 Iaculis, St.','VT',-31.71262000,-154.86310000),(127,'4697 Nec Street','Illinois',-47.41755000,23.03602000),(128,'1660 Phasellus Avenue','California',-75.54555000,-67.23178000),(129,'8868 Eleifend Rd.','MT',-35.82513000,159.88986000),(130,'9010 Montes, Rd.','Illinois',7.01381000,149.54442000),(131,'996-2179 Felis, Ave','CA',-86.39398000,167.26130000),(132,'9739 Et Rd.','Iowa',1.80418000,73.21890000),(133,'804-5477 Eget Road','California',-58.77724000,171.26626000),(134,'1367 Porttitor Road','NE',22.83813000,-157.40483000),(135,'204-5336 Lorem Street','IN',-82.46631000,56.64068000),(136,'742-5648 Lobortis, Rd.','AZ',-32.80407000,-132.02419000),(137,'P.O. Box 363, 2342 A, Avenue','AK',22.96778000,-22.95003000),(138,'P.O. Box 188, 6575 Lectus. Av.','Alaska',-26.98221000,-166.35997000),(139,'Ap #582-3639 Quisque Av.','FL',-70.83090000,-178.47183000),(140,'P.O. Box 576, 7724 Rutrum, St.','Indiana',1.80957000,0.61514000),(141,'P.O. Box 801, 903 Risus. Ave','California',-9.86954000,131.36049000),(142,'9680 Vitae Av.','Delaware',-21.74243000,85.73553000),(143,'Ap #613-6865 Egestas Rd.','TX',84.99472000,92.23229000),(144,'357 Lacus. Road','AK',77.29422000,-122.58850000),(145,'Ap #245-8886 Adipiscing, Avenue','Maine',-69.44424000,-84.61514000),(146,'1909 Vestibulum St.','Wyoming',-39.67611000,-9.82953000),(147,'Ap #318-1667 Diam. Ave','UT',-49.12931000,-9.90330000),(148,'P.O. Box 590, 6860 Eu, St.','MD',24.77044000,-28.96159000),(149,'7785 A St.','Montana',65.50963000,95.82233000),(150,'P.O. Box 629, 5791 Neque. Rd.','VT',42.21597000,-124.90476000),(151,'P.O. Box 763, 8813 Ultrices Street','Alaska',3.94952000,179.11520000),(152,'779-1819 Leo, Rd.','Alaska',72.80575000,-101.91742000),(153,'266-5558 Rhoncus. Rd.','AZ',-34.08490000,142.75583000),(154,'Ap #214-1294 Semper Rd.','MA',-24.99318000,-27.35018000),(155,'P.O. Box 523, 3647 Dui Av.','Pennsylvania',-73.52148000,-4.70810000),(156,'471-5161 Elit, Av.','VA',-36.20539000,92.01764000),(157,'P.O. Box 115, 6042 Nam Rd.','MI',-3.56660000,-176.55367000),(158,'Ap #260-9851 Metus Street','Maryland',57.10727000,-167.71325000),(159,'P.O. Box 495, 5111 Convallis, Avenue','Illinois',62.75088000,176.19866000),(160,'528-259 Pede Street','MD',25.64930000,58.55725000),(161,'837-9001 Vestibulum Avenue','Wisconsin',-41.41006000,76.45815000),(162,'P.O. Box 545, 8868 Integer St.','IA',86.36388000,34.53935000),(163,'Ap #294-3383 Ipsum Road','Kansas',-58.64886000,-161.40513000),(164,'Ap #400-1672 Duis Ave','Georgia',41.35710000,42.48610000),(165,'3250 Nullam Rd.','Maine',-17.92397000,-46.85360000),(166,'271-3777 Cursus Road','Massachusetts',58.25778000,3.64437000),(167,'Ap #114-3909 Tortor. Av.','PA',-11.14324000,-96.50662000),(168,'2216 Cursus. Av.','Maryland',-4.94739000,-155.44655000),(169,'6130 Magna. Av.','TN',39.47257000,91.73371000),(170,'5900 Suspendisse Road','LA',-26.24355000,65.06732000),(171,'Ap #299-5208 Orci. Avenue','WI',-2.48212000,-80.68902000),(172,'716-6064 Adipiscing, St.','TN',83.74224000,115.40559000),(173,'P.O. Box 919, 4779 Vivamus Rd.','Idaho',79.98784000,-143.06030000),(174,'Ap #400-6074 Vestibulum Rd.','MI',-78.80433000,163.31284000),(175,'P.O. Box 114, 1055 Sed Avenue','Oregon',77.83268000,-137.97935000),(176,'2354 Nulla St.','AZ',-71.07517000,-32.06792000),(177,'2898 Pharetra Rd.','WY',-74.47547000,107.17334000),(178,'132-724 Semper Road','LA',22.89047000,167.65489000),(179,'Ap #509-6471 Sociis Street','AZ',24.23535000,-130.95339000),(180,'909-7434 Erat St.','VT',70.97438000,26.60142000),(181,'844-2647 Proin Ave','Hawaii',-86.03877000,100.48496000),(182,'Ap #162-6623 Interdum Road','Maryland',75.48492000,-170.92760000),(183,'922-7094 Aliquam Rd.','NV',-70.33941000,70.00125000),(184,'Ap #351-4418 Enim Avenue','Oklahoma',45.71712000,147.85174000),(185,'P.O. Box 489, 6251 Nunc Road','MD',89.53684000,54.96879000),(186,'348-3714 Mauris. Av.','Texas',57.39327000,-63.32774000),(187,'2647 Est Street','MS',-48.05015000,119.20523000),(188,'Ap #195-8610 Sodales Avenue','OK',-1.66988000,108.48447000),(189,'Ap #792-4097 Est Ave','MA',-83.48387000,88.49210000),(190,'Ap #430-7968 Mus. Road','Arkansas',73.90199000,-149.59086000),(191,'P.O. Box 695, 8899 Vulputate, St.','Maryland',65.95337000,-27.06609000),(192,'Ap #208-8874 Amet St.','ID',52.45858000,49.64788000),(193,'1447 Malesuada Road','MO',-65.26389000,-149.90382000),(194,'303-4322 Facilisis Road','Colorado',-42.15991000,24.46809000),(195,'P.O. Box 144, 7359 Id, St.','AZ',-12.56526000,-65.36744000),(196,'Ap #226-1785 Id Avenue','IA',-55.66757000,116.31481000),(197,'P.O. Box 597, 3106 Elit, Avenue','Minnesota',2.23527000,-5.28758000),(198,'6161 Suscipit, Rd.','Pennsylvania',22.80332000,-94.15744000),(199,'1725 In, Rd.','CT',-43.83873000,107.93185000);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `location_BEFORE_INSERT` BEFORE INSERT ON `location` FOR EACH ROW BEGIN
	CALL check_Location(new.Latitude,new.Longitude);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `location_BEFORE_UPDATE` BEFORE UPDATE ON `location` FOR EACH ROW BEGIN
	CALL check_Location(new.Latitude,new.Longitude);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `method`
--

DROP TABLE IF EXISTS `method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `method` (
  `MethodID` int(11) NOT NULL AUTO_INCREMENT,
  `Method` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MethodID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `method`
--

LOCK TABLES `method` WRITE;
/*!40000 ALTER TABLE `method` DISABLE KEYS */;
INSERT INTO `method` VALUES (1,'Credit Card'),(2,'NetBanking'),(3,'Debit Card');
/*!40000 ALTER TABLE `method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payments` (
  `PaymentID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the payment transaction\\\\n\\\\nPrimary Key\\\\nNot NULL\\\\nUnique',
  `Transaction_Date` datetime NOT NULL COMMENT 'When the transaction occurred I.e date time\n\nNot NULL\n',
  `MethodID` int(11) NOT NULL COMMENT 'The method used for the payment\\n\\nNot NULL',
  `Amount` decimal(10,0) NOT NULL COMMENT 'The transaction amount',
  `Payment_Status` char(10) DEFAULT NULL,
  `Deposite_Amount` decimal(10,0) DEFAULT NULL COMMENT 'Deposit amount for the ride\\n\\nNot NULL',
  `Deposite_Paid` char(1) DEFAULT NULL COMMENT 'Deposit Amount Paid\\n\\nNot NULL',
  `Deposite_Refund` char(1) DEFAULT NULL COMMENT 'Is the Deposit refunded\\n\\nNot NULL',
  `RideID` int(11) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  UNIQUE KEY `PaymentID_UNIQUE` (`PaymentID`),
  KEY `fk_method_idx` (`MethodID`),
  KEY `fk_rideID` (`RideID`),
  CONSTRAINT `fk_method` FOREIGN KEY (`MethodID`) REFERENCES `method` (`MethodID`),
  CONSTRAINT `fk_rideID` FOREIGN KEY (`RideID`) REFERENCES `ride` (`RideID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'2019-04-19 09:30:32',3,40,'P',NULL,NULL,NULL,20),(3,'2019-04-19 09:44:55',2,40,'P',NULL,NULL,NULL,43),(4,'2019-04-19 23:46:54',3,40,'P',NULL,NULL,NULL,89),(6,'2019-04-19 18:14:06',1,40,'P',NULL,NULL,NULL,3),(7,'2019-04-19 08:02:42',3,40,'P',NULL,NULL,NULL,10),(8,'2019-04-19 09:46:12',1,40,'P',NULL,NULL,NULL,58),(10,'2019-04-19 00:41:46',1,40,'P',NULL,NULL,NULL,16),(11,'2019-04-19 18:23:29',3,40,'P',NULL,NULL,NULL,99),(12,'2019-04-19 20:21:44',3,40,'P',NULL,NULL,NULL,59),(13,'2019-04-19 05:19:46',1,40,'P',NULL,NULL,NULL,55),(15,'2019-04-19 05:12:22',1,40,'P',NULL,NULL,NULL,11),(17,'2019-04-19 14:34:19',3,40,'P',NULL,NULL,NULL,7),(19,'2019-04-19 21:24:11',1,40,'P',NULL,NULL,NULL,90),(20,'2019-04-19 15:35:31',2,40,'P',NULL,NULL,NULL,18),(22,'2019-04-19 17:35:11',2,40,'P',NULL,NULL,NULL,85),(23,'2019-04-19 18:49:43',1,40,'P',NULL,NULL,NULL,88),(24,'2019-04-19 09:26:59',3,40,'P',NULL,NULL,NULL,64),(25,'2019-04-19 18:23:29',1,40,'P',NULL,NULL,NULL,99),(26,'2019-04-19 03:45:25',1,40,'P',NULL,NULL,NULL,97),(28,'2019-04-19 03:09:16',3,40,'P',NULL,NULL,NULL,70),(29,'2019-04-19 10:20:31',1,40,'P',NULL,NULL,NULL,6),(30,'2019-04-19 20:21:44',1,40,'P',NULL,NULL,NULL,59),(31,'2019-04-19 08:00:23',1,40,'P',NULL,NULL,NULL,15),(33,'2019-04-19 19:43:54',1,40,'P',NULL,NULL,NULL,63),(34,'2019-04-19 03:09:16',3,40,'P',NULL,NULL,NULL,70),(35,'2019-04-19 19:23:46',3,40,'P',NULL,NULL,NULL,45),(36,'2019-04-19 09:26:59',3,40,'P',NULL,NULL,NULL,64),(37,'2019-04-19 05:12:22',2,40,'P',NULL,NULL,NULL,11),(39,'2019-04-19 09:30:32',3,40,'P',NULL,NULL,NULL,20),(40,'2019-04-19 22:50:01',1,40,'P',NULL,NULL,NULL,84);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payments_BEFORE_INSERT` BEFORE INSERT ON `payments` FOR EACH ROW BEGIN
	CALL check_payments(new.Payment_status,new.Deposite_paid, new.Deposite_Refund);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payments_BEFORE_UPDATE` BEFORE UPDATE ON `payments` FOR EACH ROW BEGIN
	CALL check_payments(new.Payment_status,new.Deposite_paid, new.Deposite_Refund);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `person_ride_details`
--

DROP TABLE IF EXISTS `person_ride_details`;
/*!50001 DROP VIEW IF EXISTS `person_ride_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `person_ride_details` AS SELECT 
 1 AS `First_name`,
 1 AS `Last_name`,
 1 AS `Start_Location`,
 1 AS `End_location`,
 1 AS `Start_time`,
 1 AS `End_time`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `person_status`
--

DROP TABLE IF EXISTS `person_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person_status` (
  `Person_statusID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Person_statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_status`
--

LOCK TABLES `person_status` WRITE;
/*!40000 ALTER TABLE `person_status` DISABLE KEYS */;
INSERT INTO `person_status` VALUES (1,'Student'),(2,'Staff'),(3,'Faculty'),(4,'Driver');
/*!40000 ALTER TABLE `person_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `persons` (
  `PersonID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Every persons unique identifier. \\n\\nPrimary Key\\nNot Null\\nUnique',
  `First_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'First name of the Person\n\nNot NULL\n',
  `Middle_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Middle name of the person\n\nOptional field',
  `Last_Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Last Name of the person\n\nNot NULL',
  `Person_StatusID` int(11) NOT NULL COMMENT 'Status of the person in the University. I.e. Student, Faculty, Staff.\\n\\nNot NULL\\n',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Email address of the registered person\n\nNot NULL\nUnique',
  `DepartmentID` int(11) NOT NULL COMMENT 'The department to which the person belong\\n\\nNot NULL',
  `Phone_Number` char(15) NOT NULL COMMENT 'Phone number of the registered person\\\\n\\\\nNot NULL\\\\nUnique',
  `UniversityID` char(9) NOT NULL COMMENT 'University identification number of the registered person\\n\\nNot NULL\\nUnique',
  `SSN` char(9) NOT NULL COMMENT 'Social Security number of the registered person\\n\\nNot NULL\\nUnique',
  `License_Number` char(12) DEFAULT NULL COMMENT 'License number of the registered person\\n\\nOptional',
  `Gender` char(1) NOT NULL COMMENT 'Gender of the registered person. e.g. M=male, F=female, O=Others/Unknowns\n \nNot NULL',
  PRIMARY KEY (`PersonID`),
  UNIQUE KEY `Phone_Number_UNIQUE` (`Phone_Number`),
  UNIQUE KEY `PersonID_UNIQUE` (`PersonID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `UniversityID_UNIQUE` (`UniversityID`),
  UNIQUE KEY `SSN_UNIQUE` (`SSN`),
  KEY `fk_DepartmentID_idx` (`DepartmentID`),
  KEY `fk_PersonStatusID_idx` (`Person_StatusID`),
  CONSTRAINT `fk_DepartmentID` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`),
  CONSTRAINT `fk_PersonStatusID` FOREIGN KEY (`Person_StatusID`) REFERENCES `person_status` (`Person_statusID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Roth','Josiah','Peters',3,'semper@orciUtsagittis.org',3,'9199510589','990871090','616947371','575549637619','O'),(2,'Vivian','Kenneth','Harding',3,'molestie.pharetra.nibh@elit.net',2,'9466185177','917519375','520733243','657724573276','F'),(3,'Hamish','Stephanie','Reynolds',2,'adipiscing.elit.Curabitur@tincidunt.co.uk',4,'9561346156','904564036','424747740','734926395444','O'),(4,'Xander','Gil','Flynn',2,'dignissim.pharetra.Nam@nequeMorbi.ca',5,'9314389619','842518068','905124818','778885719971','O'),(5,'Vielka','Ryan','Ballard',2,'elit.pretium@dolorDonecfringilla.com',2,'9991712633','852564592','850180007','785078458208','O'),(6,'Vance','Brooke','Alford',3,'ac@tempus.ca',2,'9712207517','883311903','602337445','227116607502','M'),(7,'Emily','Talon','Cobb',3,'metus@feugiattellus.co.uk',3,'9200831270','845027776','415155183','524548043822','M'),(8,'Leonard','Jasper','Acosta',4,'dictum@Aenean.edu',1,'9691504638','997577070','122075135','104923403356','M'),(9,'Farrah','Mannix','Rose',3,'aliquet.nec.imperdiet@fermentum.org',2,'9201870899','988923425','902414168','352675739210','O'),(10,'Timon','Chiquita','Shannon',4,'arcu.Sed@nequetellusimperdiet.com',4,'9632544632','838718591','733922173','915930659929','F'),(11,'Tana','Alisa','Faulkner',2,'dis.parturient.montes@ornaretortor.net',3,'9312453412','893230141','364531360','526860257191','O'),(12,'Solomon','Arsenio','Mcclure',1,'ipsum.leo@non.com',1,'9061494050','975622421','920968395','638700909866','M'),(13,'Octavius','Samantha','Owen',3,'feugiat.nec@ascelerisquesed.net',5,'9965497569','862823664','949919780','295916644204','F'),(14,'Margaret','Garrison','Collier',3,'non.arcu@Suspendisse.com',5,'9515729539','884336596','947921347','194264820544','M'),(15,'Fitzgerald','Dustin','Mcbride',2,'at@auctorvelit.co.uk',3,'9192133378','804039886','145431177','691892565879','M'),(16,'Porter','Lareina','Roberts',1,'ac@interdumlibero.com',2,'9973698184','985322245','405661271','933050697995','F'),(17,'Erica','Garth','Weaver',1,'lorem@quamelementum.ca',1,'9364035234','886687984','558732357','784231760678','O'),(18,'Rebekah','Merritt','Duke',1,'sed.libero.Proin@aliquetmagna.ca',1,'9651323762','924875557','252520311','876114439312','O'),(19,'Blaze','Adena','Vinson',4,'nulla.vulputate.dui@erosProinultrices.ca',2,'9373230408','895661391','644841923','929834164027','F'),(20,'Maisie','Jaquelyn','Walton',3,'lacus.Quisque.purus@elita.edu',5,'9500260300','836144351','781946171','682393035665','O'),(21,'Blossom','Nash','Zimmerman',3,'dui.Cras.pellentesque@luctusaliquet.net',1,'9307485868','927972531','827515834','798720070999','M'),(22,'Colin','Cullen','Benson',2,'eget@liberoProinmi.org',3,'9454822396','950560996','668779261','766609103046','M'),(23,'Blaze','Nigel','Hester',3,'eu@rutrumurnanec.org',2,'9960979153','989629101','818399473','431050068512','F'),(24,'Nehru','Harriet','Yates',2,'sociis@lobortisClassaptent.com',5,'9306800140','888564929','635471077','306783208344','O'),(25,'Ivor','Wyatt','Webb',3,'velit.justo@semPellentesque.ca',2,'9646887275','927817955','507210174','969644873961','M'),(26,'Meredith','Keith','Delgado',3,'litora@duinecurna.net',5,'9214689699','982842299','762581589','881976131349','M'),(27,'Britanney','Donovan','Gay',4,'placerat.Cras@sapiengravidanon.edu',4,'9334589687','887468549','827759437','231422876473','O'),(28,'Alexander','Noble','Anthony',4,'vitae.dolor.Donec@magna.co.uk',3,'9361229401','933948263','700054161','332877050666','M'),(29,'Amal','Barbara','Carrillo',1,'felis.Donec.tempor@Classaptenttaciti.edu',5,'9541222845','819857298','421884776','188475383026','F'),(30,'Lilah','Daniel','Snider',2,'rhoncus.Proin@nisi.edu',1,'9833768748','918136978','644313840','318947932310','F'),(31,'Ainsley','Anjolie','Todd',4,'velit.justo@tempus.com',2,'9684441612','984325927','790796035','789093365939','F'),(32,'Emery','Ima','Clemons',1,'magna.Praesent@famesac.ca',4,'9504403549','884631730','830379890','133893478568','F'),(33,'Shellie','Aidan','Blanchard',3,'velit.Sed@doloregestasrhoncus.net',1,'9627540986','800350724','818908009','511882769363','M'),(34,'Halee','Neil','Estes',2,'eu@Quisqueac.net',4,'9299191420','965433566','446680056','162161299074','F'),(35,'Stuart','Duncan','Talley',3,'erat.eget@lacusCras.org',1,'9819137494','898436630','518851892','115941516077','F'),(36,'Flavia','Jena','Morrison',4,'iaculis@infaucibusorci.co.uk',3,'9295337583','879950770','894264328','995391067210','M'),(37,'Charde','Quynn','Tate',4,'ipsum.ac.mi@elitsedconsequat.edu',5,'9881082213','946457890','253166675','477185746235','F'),(38,'Ferris','Aurelia','Wong',3,'volutpat.nunc@velpedeblandit.co.uk',1,'9097679787','924717268','450948689','356424168637','O'),(39,'Geraldine','Calvin','Solis',2,'Quisque@Donectempus.net',2,'9593935431','984362643','748284005','913524462375','F'),(40,'Rachel','Mallory','Campos',3,'pharetra@placerataugueSed.ca',5,'9021237333','964896953','444568070','185920323710','O'),(41,'Larissa','Jamal','Hendricks',2,'tristique@famesacturpis.org',3,'9346788045','970009716','269752793','822643587552','O'),(42,'Cally','Cairo','Whitney',4,'ut.lacus.Nulla@musProinvel.co.uk',4,'9344740527','806229622','555142416','473394873365','M'),(43,'Avram','Emi','Mccoy',3,'elit.Curabitur@lacusAliquam.com',2,'9576030641','926097118','907603446','472861296497','F'),(44,'Odessa','Marshall','Patterson',4,'pellentesque.Sed@nunc.co.uk',1,'9087084081','940930733','184536747','638264327542','O'),(45,'Zoe','Sloane','Villarreal',4,'nec@dictumeu.com',3,'9509312590','849696276','911974937','493614382902','M'),(46,'Cherokee','Eagan','Boyle',3,'tellus.non@tristiquepharetra.co.uk',5,'9474918904','928558262','188771630','899609919730','O'),(47,'Philip','Logan','Roberts',4,'turpis.vitae@ac.edu',4,'9480629371','805104967','767353388','700354822585','M'),(48,'Vaughan','Bradley','Wilder',2,'penatibus.et.magnis@nisidictum.com',5,'9163801188','917148419','451939534','115172681817','M'),(49,'Lane','Declan','Shepherd',3,'Nam@elit.org',2,'9814890045','991302157','887943884','599403098225','M'),(50,'Ashton','Xyla','Barber',4,'adipiscing@Nuncullamcorper.edu',3,'9489507068','934244847','723790388','134795302618','O'),(51,'Christen','Alfonso','Daniels',4,'a@Curabiturut.ca',2,'9004021289','997750780','126172313','894138580886','F'),(52,'Willa','Karen','Vega',3,'enim.nec@tristiquepharetra.net',3,'9106839359','835382849','938022270','797213294822','F'),(53,'Yoko','Hall','Colon',2,'pede.Suspendisse@nisl.co.uk',1,'9765573960','854425792','753910750','856759890215','M'),(54,'Demetrius','Imani','Cummings',3,'at@velit.edu',5,'9689900059','942671743','429385164','231793088372','M'),(55,'Kevyn','Erasmus','Vasquez',1,'non.sapien@dapibusquam.net',4,'9216735485','855426459','139784305','691590361390','F'),(56,'Vincent','Rebecca','Perez',2,'arcu@est.org',5,'9969973366','807459722','778376124','430558766191','F'),(57,'Ignatius','Melodie','Justice',4,'Quisque.ornare.tortor@nasceturridiculusmus.ca',1,'9632119400','808896371','180324317','805834341235','O'),(58,'Plato','Justina','Ayala',2,'ipsum.primis.in@Duiscursusdiam.com',2,'9259145261','912989574','518608579','121310427645','F'),(59,'Arthur','Berk','Mcleod',3,'sed.consequat@ametornarelectus.edu',5,'9554216315','977348091','438539755','680399517761','M'),(60,'Madonna','Buffy','Grimes',1,'sollicitudin.orci.sem@rutrum.edu',2,'9499232376','874556097','533155359','168550452543','M'),(61,'Joseph','Barclay','Welch',3,'nec@purusaccumsan.com',4,'9567540290','888456171','990179160','130550955794','O'),(62,'Nolan','Macon','Robbins',1,'nibh.Quisque.nonummy@Maecenasiaculisaliquet.com',1,'9138797930','855472767','400345037','842058154428','M'),(63,'Luke','Finn','Johnston',4,'vehicula.aliquet@lectus.com',5,'9578401025','877488392','322319699','903050633147','O'),(64,'Herman','Cameron','Peters',4,'diam.dictum.sapien@ullamcorperDuisat.ca',2,'9188069972','838770119','823859274','100468305312','M'),(65,'Samson','Charles','Price',2,'libero@ipsumDonec.org',3,'9472867860','863038952','285839167','200840128120','F'),(66,'Kareem','Solomon','Ryan',1,'primis@adipiscinglobortis.edu',4,'9059563604','885622112','750087328','129482026351','O'),(67,'Aphrodite','Brittany','Leonard',3,'pretium.neque@eget.net',5,'9048370401','891976213','775945342','432357189850','M'),(68,'Kai','Thaddeus','Lewis',1,'elit@Vivamusnibh.com',4,'9504755487','828744180','550083241','316669799759','O'),(69,'Stephen','Josiah','Contreras',4,'imperdiet.non.vestibulum@temporaugueac.edu',3,'9243400949','818143201','946867979','219215909391','O'),(70,'Gray','Callum','Acosta',3,'elit.elit.fermentum@aliquetvel.com',2,'9044163418','998044276','307780427','253126676054','O'),(71,'Elijah','Peter','Hull',4,'Vivamus.nisi@Morbiquis.com',3,'9654820453','968199100','663571149','920672520063','M'),(72,'Wang','Sonya','Flowers',3,'egestas.urna@eliteratvitae.com',3,'9035802323','875668069','755843648','880319895362','F'),(73,'Karleigh','Isabella','George',2,'Cras.convallis@etmagnisdis.net',1,'9861759510','877793974','387540276','164401446515','M'),(74,'Jenette','Basia','Gay',4,'nec.orci.Donec@nonbibendumsed.ca',5,'9996953746','878214281','568709630','102583738835','M'),(75,'Tanisha','Brennan','Shannon',2,'Nam.nulla@augueSedmolestie.co.uk',2,'9893597789','912227538','150646998','976275458931','M'),(76,'Belle','Macaulay','Joseph',3,'nisl.elementum.purus@Loremipsumdolor.com',3,'9354742876','916847498','316530590','596138295810','O'),(77,'Carter','Lawrence','Decker',3,'nisl.sem.consequat@sodales.org',4,'9701150460','873062304','791195483','355202127387','O'),(78,'Jade','Kato','Herrera',3,'ligula.Aliquam.erat@nibhDonec.org',4,'9515909460','897824242','730993312','995477493014','O'),(79,'Stephen','Martena','Reed',1,'sit.amet.consectetuer@Donecelementum.ca',4,'9685871984','820625516','255816059','227552758576','O'),(80,'Katell','Honorato','Barron',2,'lacinia@Sed.co.uk',2,'9643579282','991917678','145747036','707484720041','O'),(81,'Olivia','Nomlanga','Ryan',3,'ipsum.porta@Proinsedturpis.co.uk',3,'9025891635','939023713','850895254','321987158851','F'),(82,'Regan','Keely','Blake',1,'dolor.sit@seddictumeleifend.net',2,'9419968500','959154022','662770377','966833706432','O'),(83,'Rahim','Evangeline','Garrison',3,'elit.Etiam.laoreet@molestiearcuSed.org',4,'9728720510','823571567','882313349','307905394304','M'),(84,'Harper','Meghan','Mccarthy',4,'ultricies@vitaediam.ca',3,'9066408882','930110909','801153593','439698478486','F'),(85,'Neville','Hamish','Greer',4,'sit@CurabiturdictumPhasellus.edu',4,'9221257194','906785234','764809848','421846857015','F'),(86,'Mercedes','Stacy','Holloway',2,'elementum.sem.vitae@Donecconsectetuermauris.ca',5,'9149648438','958001426','595456411','396143345255','F'),(87,'Ayanna','Fleur','Cortez',1,'sit.amet@veliteusem.co.uk',1,'9497722504','993967133','121950869','351161287305','M'),(88,'Charlotte','Zephr','Dalton',2,'ac.risus@aarcuSed.org',1,'9454619155','865195295','438243611','233897860534','O'),(89,'Fay','Howard','Fulton',1,'enim.nec.tempus@turpisnecmauris.net',1,'9985445576','970116454','430897411','701828355295','F'),(90,'Alma','Latifah','Lowe',4,'odio.Phasellus.at@quam.org',1,'9013854575','950530694','124395149','869997617648','F'),(91,'Eugenia','Venus','Booker',2,'Donec.vitae@orciluctus.edu',4,'9655130577','951184036','630809659','218607381125','M'),(92,'Priscilla','Nicholas','Buckley',2,'orci.Ut@ligulaNullam.ca',5,'9916399530','808120012','636671323','568891284661','F'),(93,'Ira','Jin','Phelps',2,'pharetra.Nam.ac@nuncsitamet.com',1,'9659666561','858323219','390135811','419406687607','F'),(94,'Bo','Tamara','Hewitt',3,'eu@etultrices.net',3,'9113108049','859768963','969502810','375989857874','M'),(95,'Francis','Aquila','Barber',1,'sodales@consectetuereuismod.edu',5,'9264376966','895095119','437158527','724638152867','M'),(96,'Vance','Uriel','Hopkins',2,'libero.nec@lectusconvallisest.org',4,'9138856319','852817175','454392321','259110242221','M'),(97,'Alea','Maia','Griffith',2,'Etiam@Sedcongue.edu',3,'9684825434','846431131','732374123','145701167825','O'),(98,'Dillon','Leo','Silva',2,'Cum.sociis.natoque@neque.edu',5,'9278378953','851576730','988120317','171223820745','F'),(99,'Roary','Nita','Travis',4,'at.risus.Nunc@etlaciniavitae.org',1,'9145117237','975807404','158647131','661300566419','O'),(100,'Marah','Wylie','Chandler',4,'Sed@nuncacmattis.co.uk',5,'9565547206','970915292','591667076','284871507389','O');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `persons_BEFORE_INSERT` BEFORE INSERT ON `persons` FOR EACH ROW BEGIN
	CALL check_Person(new.Phone_Number, new.UniversityID, new.SSN, new.License_Number, new.Gender);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `persons_BEFORE_UPDATE` BEFORE UPDATE ON `persons` FOR EACH ROW BEGIN
	CALL check_Person(new.Phone_Number, new.UniversityID, new.SSN, new.License_Number, new.Gender);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ride`
--

DROP TABLE IF EXISTS `ride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ride` (
  `RideID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonID` int(11) NOT NULL,
  `Golf_CartID` int(11) NOT NULL,
  `Start_time` datetime NOT NULL,
  `End_time` datetime NOT NULL,
  `Start_LocationID` int(11) NOT NULL,
  `End_LocationID` int(11) NOT NULL,
  `Rating` int(1) DEFAULT NULL,
  `Feedback` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `duration` int(3) GENERATED ALWAYS AS (abs(ceiling(((time_to_sec(timediff(_utf8mb4'2019-04-19 05:22:00',_utf8mb4'2019-04-19 13:42:03')) / 60) / 60)))) VIRTUAL,
  PRIMARY KEY (`RideID`),
  UNIQUE KEY `RideID_UNIQUE` (`RideID`),
  KEY `fk_EndLocation_idx` (`End_LocationID`),
  KEY `fk_StartLocation_idx` (`Start_LocationID`),
  KEY `fk_GolfCartID_idx` (`Golf_CartID`),
  KEY `fk_PersonID_idx` (`PersonID`),
  CONSTRAINT `fk_EndLocation` FOREIGN KEY (`End_LocationID`) REFERENCES `location` (`LocationID`),
  CONSTRAINT `fk_Golf_CartID` FOREIGN KEY (`Golf_CartID`) REFERENCES `golfcart` (`Golf_CartID`),
  CONSTRAINT `fk_PersonID` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`PersonID`),
  CONSTRAINT `fk_StartLocation` FOREIGN KEY (`Start_LocationID`) REFERENCES `location` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride`
--

LOCK TABLES `ride` WRITE;
/*!40000 ALTER TABLE `ride` DISABLE KEYS */;
INSERT INTO `ride` (`RideID`, `PersonID`, `Golf_CartID`, `Start_time`, `End_time`, `Start_LocationID`, `End_LocationID`, `Rating`, `Feedback`) VALUES (1,80,4,'2019-04-19 05:22:00','2019-04-19 13:42:03',192,134,4,'Good ride'),(2,30,2,'2019-04-19 21:45:11','2019-04-19 19:57:47',149,190,4,'Good ride'),(3,24,44,'2019-04-19 18:14:06','2019-04-19 03:01:33',113,106,5,'Good ride'),(4,45,91,'2019-04-19 21:20:41','2019-04-19 22:13:46',112,174,5,'Good ride'),(5,94,56,'2019-04-19 02:43:45','2019-04-19 07:15:33',195,100,4,'Good ride'),(6,48,33,'2019-04-19 10:20:31','2019-04-19 08:52:18',142,111,4,'Good ride'),(7,4,100,'2019-04-19 14:34:19','2019-04-19 12:49:47',125,185,3,'Good ride'),(8,1,52,'2019-04-19 13:12:10','2019-04-19 18:31:52',192,144,1,'Good ride'),(9,1,34,'2019-04-19 00:57:46','2019-04-19 23:03:52',151,194,1,'Good ride'),(10,32,17,'2019-04-19 08:02:42','2019-04-19 06:51:46',147,112,5,'Good ride'),(11,42,24,'2019-04-19 05:12:22','2019-04-19 11:27:05',121,125,3,'Good ride'),(12,93,56,'2019-04-19 10:52:21','2019-04-19 19:18:32',184,148,3,'Good ride'),(13,81,17,'2019-04-19 02:54:50','2019-04-19 01:34:39',187,195,1,'Good ride'),(14,84,40,'2019-04-19 12:54:48','2019-04-19 22:20:13',188,110,1,'Good ride'),(15,51,31,'2019-04-19 08:00:23','2019-04-19 00:31:16',172,150,5,'Good ride'),(16,97,81,'2019-04-19 00:41:46','2019-04-19 13:21:09',126,174,4,'Good ride'),(17,79,30,'2019-04-19 13:16:53','2019-04-19 17:04:00',145,178,3,'Good ride'),(18,52,41,'2019-04-19 15:35:31','2019-04-19 00:51:38',177,193,1,'Good ride'),(19,95,45,'2019-04-19 16:57:03','2019-04-19 11:35:50',140,167,1,'Good ride'),(20,45,91,'2019-04-19 09:30:32','2019-04-19 11:42:17',174,197,3,'Good ride'),(41,96,59,'2019-04-19 04:41:41','2019-04-19 00:31:32',192,151,4,'Good ride'),(42,77,70,'2019-04-19 05:23:34','2019-04-19 23:39:39',101,183,1,'Good ride'),(43,11,26,'2019-04-19 09:44:55','2019-04-19 01:23:50',173,116,1,'Good ride'),(44,71,96,'2019-04-19 22:52:02','2019-04-19 12:02:42',132,110,4,'Good ride'),(45,73,19,'2019-04-19 19:23:46','2019-04-19 05:26:05',184,110,2,'Good ride'),(46,9,37,'2019-04-19 11:08:30','2019-04-19 21:13:28',170,144,2,'Good ride'),(47,86,65,'2019-04-19 20:18:09','2019-04-19 12:58:18',168,169,1,'Good ride'),(48,86,17,'2019-04-19 02:51:10','2019-04-19 16:27:30',172,133,4,'Good ride'),(49,98,65,'2019-04-19 15:58:04','2019-04-19 09:13:08',165,127,3,'Good ride'),(50,95,81,'2019-04-19 15:23:05','2019-04-19 04:14:02',153,155,5,'Good ride'),(51,62,100,'2019-04-19 05:16:17','2019-04-19 10:35:49',118,174,5,'Good ride'),(52,3,7,'2019-04-19 03:01:10','2019-04-19 10:07:40',177,162,3,'Good ride'),(53,16,84,'2019-04-19 19:53:16','2019-04-19 00:54:38',136,115,4,'Good ride'),(54,66,23,'2019-04-19 10:06:34','2019-04-19 03:18:00',141,137,4,'Good ride'),(55,37,1,'2019-04-19 05:19:46','2019-04-19 10:14:33',164,160,3,'Good ride'),(56,83,30,'2019-04-19 09:48:16','2019-04-19 22:20:33',174,167,4,'Good ride'),(57,23,77,'2019-04-19 23:50:20','2019-04-19 16:19:21',186,165,2,'Good ride'),(58,85,6,'2019-04-19 09:46:12','2019-04-19 07:56:06',179,127,1,'Good ride'),(59,26,25,'2019-04-19 20:21:44','2019-04-19 20:42:14',185,128,4,'Good ride'),(60,16,18,'2019-04-19 20:10:45','2019-04-19 10:04:46',152,119,2,'Good ride'),(61,100,70,'2019-04-19 01:14:48','2019-04-19 15:40:13',154,168,5,'Good ride'),(62,66,16,'2019-04-19 16:47:40','2019-04-19 20:48:48',102,115,3,'Good ride'),(63,40,19,'2019-04-19 19:43:54','2019-04-19 10:41:51',124,138,3,'Good ride'),(64,41,40,'2019-04-19 09:26:59','2019-04-19 05:27:38',124,183,2,'Good ride'),(65,18,63,'2019-04-19 02:49:46','2019-04-19 11:25:05',156,142,4,'Good ride'),(66,37,95,'2019-04-19 06:27:21','2019-04-19 02:09:26',189,169,2,'Good ride'),(67,41,64,'2019-04-19 15:45:18','2019-04-19 08:50:31',119,183,1,'Good ride'),(68,27,21,'2019-04-19 16:19:18','2019-04-19 18:12:25',142,164,4,'Good ride'),(69,38,72,'2019-04-19 16:42:05','2019-04-19 04:50:50',157,183,1,'Good ride'),(70,98,55,'2019-04-19 03:09:16','2019-04-19 15:38:23',106,149,1,'Good ride'),(71,81,77,'2019-04-19 07:34:35','2019-04-19 01:38:36',175,113,5,'Good ride'),(72,86,50,'2019-04-19 09:47:22','2019-04-19 15:05:36',120,193,3,'Good ride'),(73,53,87,'2019-04-19 14:47:35','2019-04-19 19:14:53',118,197,3,'Good ride'),(74,49,33,'2019-04-19 12:27:35','2019-04-19 20:31:54',158,141,2,'Good ride'),(75,42,60,'2019-04-19 06:18:54','2019-04-19 13:01:47',159,131,2,'Good ride'),(76,76,90,'2019-04-19 07:13:54','2019-04-19 11:37:57',129,105,5,'Good ride'),(77,40,96,'2019-04-19 23:21:03','2019-04-19 22:12:55',161,148,5,'Good ride'),(78,5,44,'2019-04-19 10:33:27','2019-04-19 11:13:11',112,194,5,'Good ride'),(79,74,14,'2019-04-19 06:04:13','2019-04-19 13:28:56',137,119,1,'Good ride'),(80,21,17,'2019-04-19 09:58:36','2019-04-19 19:37:22',193,154,3,'Good ride'),(81,45,1,'2019-04-19 04:06:40','2019-04-19 22:31:59',105,198,5,'Good ride'),(82,66,93,'2019-04-19 06:28:12','2019-04-19 16:38:36',158,148,4,'Good ride'),(83,34,26,'2019-04-19 06:35:22','2019-04-19 20:20:00',119,176,3,'Good ride'),(84,82,35,'2019-04-19 22:50:01','2019-04-19 14:31:19',176,136,1,'Good ride'),(85,28,25,'2019-04-19 17:35:11','2019-04-19 13:44:05',172,101,5,'Good ride'),(86,40,62,'2019-04-19 01:39:56','2019-04-19 14:18:01',197,170,4,'Good ride'),(87,13,51,'2019-04-19 10:12:30','2019-04-19 05:23:18',192,188,2,'Good ride'),(88,15,79,'2019-04-19 18:49:43','2019-04-19 18:14:37',186,164,2,'Good ride'),(89,85,30,'2019-04-19 23:46:54','2019-04-19 13:26:37',144,114,2,'Good ride'),(90,45,85,'2019-04-19 21:24:11','2019-04-19 17:04:26',167,136,3,'Good ride'),(91,67,34,'2019-04-19 14:49:14','2019-04-19 03:52:00',121,151,3,'Good ride'),(94,82,6,'2019-04-19 23:37:53','2019-04-19 08:39:24',133,135,4,'Good ride'),(95,48,17,'2019-04-19 18:42:42','2019-04-19 06:11:08',197,142,5,'Good ride'),(96,74,71,'2019-04-19 12:52:32','2019-04-19 21:00:59',162,132,1,'Good ride'),(97,50,45,'2019-04-19 03:45:25','2019-04-19 12:54:14',166,121,1,'Good ride'),(99,2,55,'2019-04-24 10:00:00','2019-04-24 16:30:00',130,191,2,'Good ride'),(101,1,4,'0001-01-01 06:00:00','0001-01-01 09:00:00',192,134,NULL,NULL),(102,1,4,'0001-01-01 06:00:00','0001-01-01 09:00:00',192,134,NULL,NULL),(103,1,4,'2019-04-15 06:00:00','2019-04-15 13:00:00',192,134,NULL,NULL),(104,1,4,'2019-04-27 09:00:00','2019-04-27 15:30:00',192,134,NULL,NULL),(105,1,4,'2019-04-27 09:30:00','2019-04-27 13:30:00',192,134,NULL,NULL),(106,1,4,'2019-04-27 09:30:00','2019-04-27 13:00:00',192,134,NULL,NULL),(107,1,4,'0001-01-01 09:30:00','0001-01-01 14:00:00',192,134,NULL,NULL),(108,1,4,'2019-04-25 08:30:00','2019-04-25 15:00:00',192,134,NULL,NULL),(109,1,4,'2019-05-10 09:00:00','2019-05-10 14:30:00',192,134,NULL,NULL),(110,1,4,'2019-05-03 09:00:00','2019-05-03 15:00:00',192,134,NULL,NULL),(111,1,4,'2019-05-07 08:00:00','2019-05-07 15:00:00',192,134,NULL,NULL),(112,1,4,'2019-05-06 06:00:00','2019-05-06 13:00:00',192,134,NULL,NULL),(113,1,4,'2019-05-11 06:00:00','2019-05-11 13:00:00',192,134,NULL,NULL),(114,1,4,'2019-05-05 06:00:00','2019-05-05 13:00:00',192,134,NULL,NULL),(115,1,4,'2019-05-01 09:00:00','2019-05-01 15:00:00',192,134,NULL,NULL),(116,1,4,'2019-04-30 07:00:00','2019-04-30 14:30:00',192,134,NULL,NULL),(117,1,4,'2019-05-08 09:30:00','2019-05-08 15:30:00',192,134,NULL,NULL),(118,1,4,'2019-04-18 09:00:00','2019-04-18 13:00:00',192,134,NULL,NULL),(119,1,4,'2019-04-23 08:00:00','2019-04-23 15:30:00',192,134,NULL,NULL),(120,1,4,'2019-04-29 08:30:00','2019-04-29 15:30:00',192,134,NULL,NULL),(121,1,4,'2019-04-16 08:00:00','2019-04-16 15:30:00',192,134,NULL,NULL),(122,1,4,'2019-05-24 10:00:00','2019-05-24 13:30:00',192,134,NULL,NULL);
/*!40000 ALTER TABLE `ride` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ride2_BEFORE_INSERT` BEFORE INSERT ON `ride` FOR EACH ROW BEGIN
	CALL check_ride(new.Start_time, new.End_time, new.Start_LocationID, new.End_LocationID, new.Rating, new.duration);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ride2_BEFORE_UPDATE` BEFORE UPDATE ON `ride` FOR EACH ROW BEGIN
	CALL check_ride(new.Start_time, new.End_time, new.Start_LocationID, new.End_LocationID, new.Rating, new.duration);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'golfcartreservation'
--

--
-- Dumping routines for database 'golfcartreservation'
--
/*!50003 DROP FUNCTION IF EXISTS `CalculateRideAmount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateRideAmount`(duration int) RETURNS decimal(10,0)
    DETERMINISTIC
BEGIN
    DECLARE amnt Decimal(10);
    SET amnt = duration * 5;
RETURN (amnt);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CalculateRideDuration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateRideDuration`(Start_time DATETIME, End_time DATETIME) RETURNS int(11)
    READS SQL DATA
BEGIN
	DECLARE temp INT;
    SET temp =TIME_TO_SEC(TIMEDIFF(End_time,Start_time))/60;
    
RETURN CEIL(temp/60);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_GolfCart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_GolfCart`(IN NumberOfSeats int(1), IN VIN int(11))
BEGIN
    IF NumberOfSeats > 4 THEN
        SIGNAL SQLSTATE '49000'
           SET MESSAGE_TEXT = 'check constraint on num of seats failed /should be between 2/4';
    END IF;
    IF NumberOfSeats < 2 THEN
        SIGNAL SQLSTATE '49001'
           SET MESSAGE_TEXT = 'check constraint on num of seats failed /should be between 2/4';
    END IF;
    IF LENGTH(VIN) != 7 THEN
        SIGNAL SQLSTATE '49002'
           SET MESSAGE_TEXT = 'check constraint on VIN failed /lenght should be 11';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_Location` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_Location`(IN Latitude DECIMAL(10,8), IN Longitude DECIMAL(11,8))
BEGIN
	IF Latitude < 0 OR Latitude > 90 THEN
        SIGNAL SQLSTATE '46000'
           SET MESSAGE_TEXT = 'check constraint on location.Latitude failed';
    END IF;
    
	IF Longitude < 0 OR Latitude > 180 THEN
        SIGNAL SQLSTATE '46001'
           SET MESSAGE_TEXT = 'check constraint on location.Longitude failed';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_payments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_payments`(IN Payment_status CHAR(1), IN Deposite_paid CHAR(1), IN Deposite_Refund CHAR(1))
BEGIN
	IF Payment_status NOT IN ('Y', 'N', 'P') THEN
        SIGNAL SQLSTATE '47000'
           SET MESSAGE_TEXT = 'check constraint on payments.Payment_status failed';
    END IF;
    
	IF Deposite_paid NOT IN ('Y', 'N', 'P') THEN
        SIGNAL SQLSTATE '47001'
           SET MESSAGE_TEXT = 'check constraint on payments.Deposite_paid failed';
    END IF;
    
	IF Deposite_Refund NOT IN ('Y', 'N', 'P') THEN
        SIGNAL SQLSTATE '47002'
           SET MESSAGE_TEXT = 'check constraint on payments.Deposite_Refund failed';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_Person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_Person`(IN Phone_Number CHAR(10), IN UniversityID CHAR(9), IN SSN CHAR(9), IN License_Number CHAR(12),
			IN Gender CHAR(1))
BEGIN
	IF Phone_Number NOT REGEXP '^[0-9]{10}' THEN
		SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'check constraint on persons.Phone_Number failed';
    END IF;
    
	IF UniversityID NOT REGEXP '^[0-9]{9}' THEN
		SIGNAL SQLSTATE '45001'
           SET MESSAGE_TEXT = 'check constraint on persons.UniversityID failed';
    END IF;
    
	IF SSN NOT REGEXP '^[0-9]{9}' THEN
		SIGNAL SQLSTATE '45002'
           SET MESSAGE_TEXT = 'check constraint on persons.SSN failed';
    END IF;
    
	IF License_Number NOT REGEXP '^[A-Z0-9]{12}' THEN
		SIGNAL SQLSTATE '45003'
           SET MESSAGE_TEXT = 'check constraint on persons.License_Number failed';
    END IF;
    
	IF Gender NOT IN ('M','F','O') THEN
		SIGNAL SQLSTATE '45004'
           SET MESSAGE_TEXT = 'check constraint on persons.Gender failed';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_ride` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_ride`(IN Start_time DATETIME, IN End_time DATETIME, IN Start_LocationID INT, IN End_LocationID INT,
IN Rating INT, IN duration INT(2))
BEGIN
	IF DATE(Start_time) != DATE(End_time) THEN
        SIGNAL SQLSTATE '48000'
           SET MESSAGE_TEXT = 'check constraint on ride.Start_time or ride.End_time failed';
    END IF;
    
	IF Start_LocationID = End_LocationID THEN
        SIGNAL SQLSTATE '48001'
           SET MESSAGE_TEXT = 'check constraint on ride.Start_Location or ride.End_Location failed';
    END IF;
    
	IF Rating < 0 OR Rating > 5 THEN
        SIGNAL SQLSTATE '48002'
           SET MESSAGE_TEXT = 'check constraint on ride.Rating failed';
    END IF;
    
	IF duration < 0 OR duration > 23 THEN
        SIGNAL SQLSTATE '48003'
           SET MESSAGE_TEXT = 'check constraint on ride.duration failed';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPaymentDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPaymentDetails`(IN duration int(2),IN start_date DATETIME)
BEGIN
DECLARE temp int(2);
	SET temp = CalculateRideAmount(duration);
    INSERT INTO `payments` (`Transaction_Date`,`MethodID`,`Amount`,`Payment_Status`,`Deposite_Amount`,`Deposite_Paid`,`Deposite_Refund`) VALUES (start_date,1,temp,"Y",0,"N","N");

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `amountgeneratedbymake`
--

/*!50001 DROP VIEW IF EXISTS `amountgeneratedbymake`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `amountgeneratedbymake` AS select `c`.`Make` AS `Make`,sum(`b`.`Amount`) AS `Total_AmountGenerated` from ((`ride` `a` join (select `payments`.`PaymentID` AS `PaymentID`,`payments`.`Transaction_Date` AS `Transaction_Date`,`payments`.`MethodID` AS `MethodID`,`payments`.`Amount` AS `Amount`,`payments`.`Payment_Status` AS `Payment_Status`,`payments`.`Deposite_Amount` AS `Deposite_Amount`,`payments`.`Deposite_Paid` AS `Deposite_Paid`,`payments`.`Deposite_Refund` AS `Deposite_Refund`,`payments`.`RideID` AS `RideID` from `payments` where (`payments`.`Payment_Status` = 'P')) `b` on((`a`.`RideID` = `b`.`RideID`))) join `golfcart` `c` on((`a`.`Golf_CartID` = `c`.`Golf_CartID`))) group by `c`.`Make` order by `c`.`Make` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_ride_details`
--

/*!50001 DROP VIEW IF EXISTS `person_ride_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_ride_details` AS select `a`.`First_name` AS `First_name`,`a`.`Last_Name` AS `Last_name`,(select `location`.`Location_Name` from `location` where (`location`.`LocationID` = `b`.`Start_LocationID`)) AS `Start_Location`,(select `location`.`Location_Name` from `location` where (`location`.`LocationID` = `b`.`End_LocationID`)) AS `End_location`,`b`.`Start_time` AS `Start_time`,`b`.`End_time` AS `End_time`,`e`.`Amount` AS `Amount` from ((`persons` `a` join `ride` `b` on((`a`.`PersonID` = `b`.`PersonID`))) join `payments` `e` on((`e`.`RideID` = `b`.`RideID`))) */;
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

-- Dump completed on 2019-05-03 22:16:36
