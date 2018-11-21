-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: 192.168.0.50    Database: shilla
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) DEFAULT NULL COMMENT 'room, qna 구분',
  `origin_name` varchar(255) NOT NULL,
  `file_dir` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `content_type` varchar(50) NOT NULL COMMENT 'jpg, png, jpeg, bmp, gif ...',
  `file_size` int(11) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `qna_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (1,'QnA','6.png','C:/java/JSP/upload','1540540237043.png','image/png',23925,'2018-10-26 16:50:37','2018-10-26 16:50:37',18,0,0),(2,'QnA','6.png','C:/java/JSP/upload','1540792831589.png','image/png',23925,'2018-10-29 15:00:31','2018-10-29 15:00:31',22,0,0),(3,'QnA','images (1).jpg','C:/java/JSP/upload','1540792999568.jpg','image/jpeg',6233,'2018-10-29 15:03:19','2018-10-29 15:03:19',24,0,0),(4,'Room','1.png','C:/java/JSP/upload','1540801329001.png','image/png',359309,'2018-10-29 17:22:09','2018-10-29 17:22:09',0,3,0),(5,'Room','1.png','C:/java/JSP/upload','1540866671836.png','image/png',359309,'2018-10-30 11:31:12','2018-10-30 11:31:12',0,4,0),(6,'QnA','mypg_reservation_detail.png','C:/java/JSP/upload','1540873282033.png','image/png',27900,'2018-10-30 13:21:22','2018-10-30 13:21:22',25,0,0),(7,'QnA','mypg_main.png','C:/java/JSP/upload','1540879774129.png','image/png',168045,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(8,'QnA','mypg_qna.png','C:/java/JSP/upload','1540879774134.png','image/png',137279,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(9,'QnA','mypg_reservation_2.png','C:/java/JSP/upload','1540879774135.png','image/png',56160,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(10,'QnA','mypg_reservation_cancel.png','C:/java/JSP/upload','1540879774136.png','image/png',10916,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(11,'QnA','mypg_reservation_detail.png','C:/java/JSP/upload','1540879774137.png','image/png',27900,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `category` varchar(45) NOT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `addr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES ('서울신라호텔','02-2233-3131',NULL,NULL),('제주신라호텔','064-735-5114',NULL,NULL);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name_kor` varchar(50) NOT NULL,
  `user_name_eng` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_pw` varchar(255) NOT NULL,
  `birthdate` datetime NOT NULL,
  `email` varchar(150) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `tel_home` varchar(13) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `addr1` varchar(150) DEFAULT NULL,
  `addr2` varchar(150) DEFAULT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `agree1` char(1) DEFAULT NULL,
  `agree2` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,'이민행','MinhaengLee','minny','*A4B6157319038724E3560894F7F932C8886EBFCF','1986-02-14 00:00:00','ezenmh@gmail.com','0100000000','020000000','06611','서울특별시 서초구 서초대로77길 54','서초 W타워 13,14층','2018-10-26 12:41:08','2018-10-26 12:41:08','N','N'),(3,'비회원','nonmember','nonmember','*A4B6157319038724E3560894F7F932C8886EBFCF','2018-10-26 00:00:00','lottowininoz@gmail.com','0100000000','020000000','06611','서울특별시 서초구 서초대로77길 54','서초 W타워 13,14층','2018-10-26 12:46:58','2018-10-26 12:46:58',NULL,NULL),(5,'이호현','leehohyeon','mypage','*050376F3855A67F5E2C6514FD3130B31006C1276','2018-10-26 00:00:00','leeh8687@gmail.com','01011112222','','','','','2018-10-26 15:21:53','2018-10-26 15:21:53','Y','Y'),(6,'박혜민','parkhyemin','parkhm','*050376F3855A67F5E2C6514FD3130B31006C1276','2018-10-25 00:00:00','gjrdjrdjr@naver.com','01053337777','','','','','2018-10-29 14:56:42','2018-10-29 14:56:42',NULL,NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(45) NOT NULL,
  `package_price` varchar(45) NOT NULL,
  `package_img` varchar(45) DEFAULT NULL,
  `package_content` varchar(255) NOT NULL,
  `hotel_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_package_hotel1_idx` (`hotel_category`),
  CONSTRAINT `fk_package_hotel1` FOREIGN KEY (`hotel_category`) REFERENCES `hotel` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'None','0',NULL,'Nothing','서울신라호텔');
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ecategory` varchar(50) DEFAULT NULL,
  `enq_type` varchar(50) DEFAULT NULL,
  `reserv_no` int(11) DEFAULT NULL,
  `wedding_date` datetime DEFAULT NULL,
  `qna_type` varchar(50) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `hotel_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_qna_member1_idx` (`member_id`),
  KEY `fk_qna_hotel1_idx` (`hotel_category`),
  CONSTRAINT `fk_qna_hotel1` FOREIGN KEY (`hotel_category`) REFERENCES `hotel` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_qna_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (3,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-10-26 12:33:07','2018-10-26 13:18:08','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(4,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Joandora_이호현','qwe','2018-10-26 12:33:15','2018-10-26 13:18:08','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(5,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','box_이호현','123','2018-10-26 12:33:22','2018-10-26 13:18:08','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(6,'askbouthotel','객실/패키지문의',NULL,NULL,'문의','테스트입니다.','asdfsdaf','2018-10-26 12:41:32','2018-10-26 12:41:32','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(7,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','야아아아아아','1234123','2018-10-26 12:45:11','2018-10-26 12:45:11','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(8,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','테스트입니다.','asdfas','2018-10-26 12:50:52','2018-10-26 12:50:52','0:0:0:0:0:0:0:1',3,'서울신라호텔'),(9,'askbouthotel','웨딩문의',NULL,'2018-10-16 00:00:00','문의,웨딩홀문의','야아아아아아','124','2018-10-26 14:56:38','2018-10-26 14:56:38','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(10,'hoteldevelop','객실/패키지문의',NULL,NULL,'의견','Polar_이호현','123','2018-10-26 15:41:36','2018-10-26 15:41:36','0:0:0:0:0:0:0:1',5,'서울신라호텔'),(11,'askbouthotel','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-10-26 15:42:32','2018-10-26 15:42:32','0:0:0:0:0:0:0:1',5,'제주신라호텔'),(12,'askbouthotel','객실/패키지문의',NULL,NULL,'의견','Joandora_이호현','123','2018-10-26 15:42:50','2018-10-26 15:42:50','0:0:0:0:0:0:0:1',5,'제주신라호텔'),(13,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','RPM_이호현','123','2018-10-26 15:44:06','2018-10-26 15:44:06','0:0:0:0:0:0:0:1',5,'서울신라호텔'),(14,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','A_LIST_APART_이호현','123','2018-10-26 15:44:30','2018-10-26 15:44:30','0:0:0:0:0:0:0:1',5,'서울신라호텔'),(15,'askbouthotel','웨딩문의',NULL,'2018-10-18 00:00:00','문의,예약문의','readDocument.subject','123','2018-10-26 15:45:21','2018-10-26 15:45:21','0:0:0:0:0:0:0:1',5,'서울신라호텔'),(16,'askbouthotel','연회/회의문의',NULL,NULL,'문의','파일 테스트','테스토','2018-10-26 16:47:14','2018-10-26 16:47:14','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(17,'askbouthotel','연회/회의문의',NULL,NULL,'문의','파일 테스트','테스토','2018-10-26 16:48:47','2018-10-26 16:48:47','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(18,'askbouthotel','연회/회의문의',NULL,NULL,'문의','파일 테스트','테스토','2018-10-26 16:50:37','2018-10-26 16:50:37','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(19,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-10-29 14:59:05','2018-10-29 14:59:05','0:0:0:0:0:0:0:1',5,'서울신라호텔'),(20,'askbouthotel','객실/다이닝문의',NULL,NULL,'문의','야아아아아아','asfasdf','2018-10-29 14:59:06','2018-10-29 14:59:06','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(21,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','야아아아아아','sadfasdf','2018-10-29 14:59:20','2018-10-29 14:59:20','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(22,'askbouthotel','연회/회의문의',NULL,NULL,'문의','야아아아아아','sadfasd','2018-10-29 15:00:31','2018-10-29 15:00:31','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(23,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','구조1_박혜민','123123','2018-10-29 15:02:07','2018-10-29 15:02:07','0:0:0:0:0:0:0:1',6,'서울신라호텔'),(24,'askbouthotel','연회/회의문의',NULL,NULL,'의견','텟그트','테스트','2018-10-29 15:03:19','2018-10-29 15:03:19','0:0:0:0:0:0:0:1',6,'서울신라호텔'),(25,'askbouthotel','연회/회의문의',NULL,NULL,'문의','box_이호현','123','2018-10-30 13:21:22','2018-10-30 13:21:22','0:0:0:0:0:0:0:1',5,'서울신라호텔'),(26,'askbouthotel','연회/회의문의',NULL,NULL,'문의','A_LIST_APART_이호현','123','2018-10-30 15:09:34','2018-10-30 15:09:34','0:0:0:0:0:0:0:1',5,'서울신라호텔');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resv_guest`
--

DROP TABLE IF EXISTS `resv_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resv_guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(15) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_yy` int(4) NOT NULL,
  `card_mm` int(2) NOT NULL,
  `ppl_ad` int(11) NOT NULL,
  `ppl_ch` int(11) DEFAULT NULL,
  `ppl_bb` int(11) DEFAULT NULL,
  `detail` text,
  `member_id` int(11) DEFAULT NULL,
  `resv_room_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resv_guest_member1_idx` (`member_id`),
  KEY `fk_resv_guest_resv_room1_idx` (`resv_room_id`),
  CONSTRAINT `fk_resv_guest_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resv_guest_resv_room1` FOREIGN KEY (`resv_room_id`) REFERENCES `resv_room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resv_guest`
--

LOCK TABLES `resv_guest` WRITE;
/*!40000 ALTER TABLE `resv_guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `resv_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resv_room`
--

DROP TABLE IF EXISTS `resv_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resv_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` int(11) DEFAULT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `room_type` varchar(50) DEFAULT NULL,
  `package_type` varchar(50) DEFAULT NULL,
  `bed_type` varchar(45) DEFAULT NULL,
  `exbed` int(11) DEFAULT NULL,
  `meal` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `resv_date` datetime NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `hotel_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resv_member1_idx` (`member_id`),
  KEY `fk_resv_room_hotel1_idx` (`hotel_category`),
  CONSTRAINT `fk_resv_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resv_room_hotel1` FOREIGN KEY (`hotel_category`) REFERENCES `hotel` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resv_room`
--

LOCK TABLES `resv_room` WRITE;
/*!40000 ALTER TABLE `resv_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `resv_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` int(11) DEFAULT NULL,
  `room_type` varchar(45) NOT NULL,
  `bed_type` varchar(45) NOT NULL,
  `room_price` int(11) NOT NULL,
  `room_img` varchar(255) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `hotel_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_room_package1_idx` (`package_id`),
  KEY `fk_room_hotel1_idx` (`hotel_category`),
  CONSTRAINT `fk_room_hotel1` FOREIGN KEY (`hotel_category`) REFERENCES `hotel` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_package1` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,101,'Business Deluxe','Twin',289000,NULL,1,'서울신라호텔'),(2,102,'Business Deluxe','Twin',2800000,NULL,1,'서울신라호텔'),(3,103,'Business Deluxe','Twin',2800000,NULL,1,'서울신라호텔'),(4,201,'Executive Business Deluxe','Twin',480000,NULL,1,'서울신라호텔');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31  9:37:55
