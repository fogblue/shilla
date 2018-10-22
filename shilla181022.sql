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
  `qna_file_path` varchar(255) DEFAULT NULL,
  `room_img` varchar(255) DEFAULT NULL,
  `package_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (1,NULL,'loading.gif','c:/java/jsp/upload','1539228088415.gif','image/gif',878699,'2018-10-11 12:21:29','2018-10-11 12:21:29',NULL,NULL,NULL),(2,NULL,'loading.gif','c:/java/jsp/upload','1539228234255.gif','image/gif',878699,'2018-10-11 12:23:55','2018-10-11 12:23:55',NULL,NULL,NULL),(3,NULL,'loading.gif','c:/java/jsp/upload','1539228484385.gif','image/gif',878699,'2018-10-11 12:28:05','2018-10-11 12:28:05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
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
  `birthdate` datetime DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `tel_home` varchar(13) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `load_addr` varchar(150) DEFAULT NULL,
  `detail` varchar(150) DEFAULT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (6,'박혜민','parkhyemin','shilla','*a4b6157319038724e3560894f7f932c8886ebfcf',NULL,'gjrdjrdjr@naver.com','01053337777','','','','','2018-10-11 10:13:42','2018-10-11 10:13:42'),(7,'공유','gongyou','gonguuuu','*a4b6157319038724e3560894f7f932c8886ebfcf','2018-10-17 00:00:00','marine984@gmail.com','01053337777','','','','','2018-10-11 10:41:25','2018-10-11 10:41:25'),(8,'소지섭','sojisub','soganji','*050376f3855a67f5e2c6514fd3130b31006c1276','2018-10-19 00:00:00','gjrdjrdjr@hanmail.net','01053337777','0325762222','06707','서울특별시 서초구 명달로 45','1020호','2018-10-11 10:43:57','2018-10-11 10:43:57'),(9,'이민행','minhaenglee','min','*050376f3855a67f5e2c6514fd3130b31006c1276','2018-10-04 00:00:00','lmh8602@gmail.com','01065430984','','','','','2018-10-11 12:04:22','2018-10-11 12:04:22'),(10,'이호현','leehohyeon','mypage','*050376F3855A67F5E2C6514FD3130B31006C1276','2018-10-12 00:00:00','leeh8687@gmail.com','01011112222','','','','','2018-10-12 17:20:58','2018-10-12 17:20:58'),(11,'비회원','nonmember','nonmember','*A4B6157319038724E3560894F7F932C8886EBFCF','2018-10-12 00:00:00','ezenmh@gmail.com','0000000000','020000000','','','','2018-10-12 17:44:21','2018-10-12 17:44:21'),(12,'이호형','leehohyeong','mypage1','*050376F3855A67F5E2C6514FD3130B31006C1276','2018-10-12 00:00:00','peraal@naver.com','01011112222','','','','','2018-10-12 18:51:46','2018-10-12 18:51:46'),(13,'이민행','MinhaengLee','minny','*A4B6157319038724E3560894F7F932C8886EBFCF','1996-02-14 00:00:00','lottowininoz@gmail.com','0100000000','020000000','','','','2018-10-16 16:46:24','2018-10-16 16:46:24'),(15,'바나나','banana','banana','*050376F3855A67F5E2C6514FD3130B31006C1276','2018-10-03 00:00:00','gjrdjrdjr@gm1ail.com','01053337777','','','','','2018-10-16 17:09:36','2018-10-16 17:09:36');
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
  `package_type` varchar(45) NOT NULL,
  `package_price` varchar(45) NOT NULL,
  `package_img` varchar(45) NOT NULL,
  `package_content` varchar(255) NOT NULL,
  `resv_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_package_resv1_idx` (`resv_id`),
  CONSTRAINT `fk_package_resv1` FOREIGN KEY (`resv_id`) REFERENCES `resv` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
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
  `hotel_cate` varchar(10) DEFAULT NULL COMMENT '서울 or 제주',
  `ecategory` varchar(50) DEFAULT NULL,
  `enq_type` varchar(50) DEFAULT NULL,
  `reserv_no` int(11) DEFAULT NULL,
  `wedding_date` datetime DEFAULT NULL,
  `qna_type` varchar(50) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_name_kor` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `tel_home` varchar(13) DEFAULT NULL,
  `ip_address` varchar(20) NOT NULL,
  `reg_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_qna_member_idx` (`member_id`),
  CONSTRAINT `fk_qna_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (10,'서울신라호텔','askbouthotel','객실/다이닝문의',NULL,NULL,'문의','야아아아아아','sadfasdf','이민행','lmh8602@gmail.com','01065430984','','0:0:0:0:0:0:0:1','2018-10-12 17:10:47','2018-10-12 17:10:47',9),(11,'서울신라호텔','hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','이호현','leeh8687@gmail.com','01011112222','','0:0:0:0:0:0:0:1','2018-10-12 17:24:55','2018-10-12 17:24:55',10),(12,'서울신라호텔','askbouthotel',NULL,NULL,NULL,'문의','A List Apart - 이민행','asdfasdf','이민행','lmh8602@gmail.com','01065430984','','0:0:0:0:0:0:0:1','2018-10-12 17:33:17','2018-10-12 17:33:17',9),(13,'서울신라호텔','askbouthotel',NULL,NULL,NULL,'문의','asdf','asdfsaasdfasd','이민행','lmh8602@gmail.com','01065430984','','0:0:0:0:0:0:0:1','2018-10-12 17:37:03','2018-10-12 17:37:03',9),(16,'서울신라호텔','askbouthotel','웨딩문의',NULL,NULL,'문의,견적문의','asd','asdf','이민행','ezenmh@gmail.com','0100000000','asd','0:0:0:0:0:0:0:1','2018-10-12 17:45:15','2018-10-12 17:45:15',11),(17,'서울신라호텔','askbouthotel','웨딩문의',NULL,'2018-10-10 00:00:00','문의,견적문의','테스트입니다.','asdfas','이민행','lmh8602@gmail.com','01065430984','','0:0:0:0:0:0:0:1','2018-10-12 17:47:00','2018-10-12 17:47:00',9);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resv`
--

DROP TABLE IF EXISTS `resv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_cate` varchar(10) NOT NULL COMMENT '서울 or 제주',
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `ppl_ad` int(11) NOT NULL,
  `ppl_ch` int(11) DEFAULT NULL,
  `ppl_bb` int(11) DEFAULT NULL,
  `room_type` varchar(50) NOT NULL,
  `package_type` varchar(50) DEFAULT NULL,
  `resv_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `exbed` char(1) DEFAULT NULL,
  `meal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resv_member1_idx` (`member_id`),
  CONSTRAINT `fk_resv_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resv`
--

LOCK TABLES `resv` WRITE;
/*!40000 ALTER TABLE `resv` DISABLE KEYS */;
/*!40000 ALTER TABLE `resv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(45) NOT NULL,
  `bed_type` varchar(45) NOT NULL,
  `room_price` int(11) NOT NULL,
  `exbed` int(11) NOT NULL,
  `meal` int(11) NOT NULL,
  `room_img` varchar(255) NOT NULL,
  `resv_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `hotel_cate` varchar(10) NOT NULL COMMENT '서울or제주',
  PRIMARY KEY (`id`),
  KEY `fk_room_resv1_idx` (`resv_id`),
  KEY `fk_room_package1_idx` (`package_id`),
  CONSTRAINT `fk_room_package1` FOREIGN KEY (`package_id`) REFERENCES `package` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_room_resv1` FOREIGN KEY (`resv_id`) REFERENCES `resv` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
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

-- Dump completed on 2018-10-22 14:52:55
