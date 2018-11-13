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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (1,'QnA','6.png','C:/java/JSP/upload','1540540237043.png','image/png',23925,'2018-10-26 16:50:37','2018-10-26 16:50:37',18,0,0),(2,'QnA','6.png','C:/java/JSP/upload','1540792831589.png','image/png',23925,'2018-10-29 15:00:31','2018-10-29 15:00:31',22,0,0),(3,'QnA','images (1).jpg','C:/java/JSP/upload','1540792999568.jpg','image/jpeg',6233,'2018-10-29 15:03:19','2018-10-29 15:03:19',24,0,0),(4,'Room','1.png','C:/java/JSP/upload','1540801329001.png','image/png',359309,'2018-10-29 17:22:09','2018-10-29 17:22:09',0,3,0),(5,'Room','1.png','C:/java/JSP/upload','1540866671836.png','image/png',359309,'2018-10-30 11:31:12','2018-10-30 11:31:12',0,4,0),(6,'QnA','mypg_reservation_detail.png','C:/java/JSP/upload','1540873282033.png','image/png',27900,'2018-10-30 13:21:22','2018-10-30 13:21:22',25,0,0),(7,'QnA','mypg_main.png','C:/java/JSP/upload','1540879774129.png','image/png',168045,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(8,'QnA','mypg_qna.png','C:/java/JSP/upload','1540879774134.png','image/png',137279,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(9,'QnA','mypg_reservation_2.png','C:/java/JSP/upload','1540879774135.png','image/png',56160,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(10,'QnA','mypg_reservation_cancel.png','C:/java/JSP/upload','1540879774136.png','image/png',10916,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(11,'QnA','mypg_reservation_detail.png','C:/java/JSP/upload','1540879774137.png','image/png',27900,'2018-10-30 15:09:34','2018-10-30 15:09:34',26,0,0),(12,'QnA','1.png','C:/java/JSP/upload','1541576954424.png','image/png',1012463,'2018-11-07 16:49:14','2018-11-07 16:49:14',28,0,0),(13,'QnA','2.png','C:/java/JSP/upload','1541576954427.png','image/png',105463,'2018-11-07 16:49:14','2018-11-07 16:49:14',28,0,0),(14,'QnA','3.jpg','C:/java/JSP/upload','1541576954429.jpg','image/jpeg',2062323,'2018-11-07 16:49:14','2018-11-07 16:49:14',28,0,0),(15,'QnA','4.jpg','C:/java/JSP/upload','1541576954430.jpg','image/jpeg',1490494,'2018-11-07 16:49:14','2018-11-07 16:49:14',28,0,0),(16,'Room','3.png','C:/java/JSP/upload','1541649423036.png','image/png',424786,'2018-11-08 12:57:05','2018-11-08 12:57:05',0,18,0);
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
INSERT INTO `hotel` VALUES ('서울신라호텔','02-2233-3131','04605','서울특별시 중구 동호로 249'),('제주신라호텔','064-735-5114','697-808','제주특별자치도 서귀포시 중문관광로 72번길 75');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,'이민행','MinhaengLee','minny','*A4B6157319038724E3560894F7F932C8886EBFCF','1986-02-14 00:00:00','ezenmh@gmail.com','0100000000','020000000','06611','서울특별시 서초구 서초대로77길 54','서초 W타워 13,14층','2018-10-26 12:41:08','2018-10-26 12:41:08','Y','Y'),(3,'비회원','nonmember','nonmember','*A4B6157319038724E3560894F7F932C8886EBFCF','2018-10-26 00:00:00','lottowininoz@gmail.com','0100000000','020000000','06611','서울특별시 서초구 서초대로77길 54','서초 W타워 13,14층','2018-10-26 12:46:58','2018-10-26 12:46:58',NULL,NULL),(6,'박혜민','parkhyemin','parkhm','*050376F3855A67F5E2C6514FD3130B31006C1276','2018-10-25 00:00:00','gjrdjrdjr@naver.com','01053337777','','','','','2018-10-29 14:56:42','2018-10-29 14:56:42',NULL,NULL),(9,'바나나','banana','banana','*050376F3855A67F5E2C6514FD3130B31006C1276','2018-10-31 00:00:00','gjrdjrdjr@naver.comn','01053337777','','','','','2018-11-01 15:08:55','2018-11-01 15:08:55',NULL,NULL),(10,'관리자','admin','admin','*A4B6157319038724E3560894F7F932C8886EBFCF','2018-11-01 00:00:00','admin@gmail.com','0000000000','','','','','2018-11-01 15:26:24','2018-11-01 15:26:24',NULL,NULL),(11,'이동건','lee','dkrls915','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','2018-10-30 00:00:00','tmxpftm2012@gmail.com','01094148450','','','','','2018-11-01 15:29:23','2018-11-07 16:02:20',NULL,NULL),(12,'이호형','leehohyeong','mypage1','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','2018-11-02 00:00:00','leeh8687@gmail.com','01011112222','0211112223','06120','서울특별시 강남구 봉은사로 지하 102','123','2018-11-02 15:10:38','2018-11-13 10:45:46',NULL,NULL),(13,'이호현','leehohyeon','mypage','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257','2018-11-12 00:00:00','peraal@naver.com','01011112223','0211112222','06120','서울특별시 강남구 봉은사로 지하 102','123','2018-11-12 10:52:44','2018-11-12 10:52:44',NULL,NULL),(14,'김만두','kimmandoo','mando123','*8DCDD69CE7D121DE8013062AEAEB2A148910D50E','2018-06-26 00:00:00','mandoo@email.com','01012345678','','','','','2018-11-13 13:33:01','2018-11-13 13:33:01',NULL,NULL);
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
INSERT INTO `package` VALUES (1,'Autumn Rooftop','0',NULL,'Nothing','서울신라호텔');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (3,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-10-26 12:33:07','2018-10-26 13:18:08','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(4,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Joandora_이호현','qwe','2018-10-26 12:33:15','2018-10-26 13:18:08','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(5,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','box_이호현','123','2018-10-26 12:33:22','2018-10-26 13:18:08','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(6,'askbouthotel','객실/패키지문의',NULL,NULL,'문의','테스트입니다.','asdfsdaf','2018-10-26 12:41:32','2018-10-26 12:41:32','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(7,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','야아아아아아','1234123','2018-10-26 12:45:11','2018-10-26 12:45:11','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(8,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','테스트입니다.','asdfas','2018-10-26 12:50:52','2018-10-26 12:50:52','0:0:0:0:0:0:0:1',3,'서울신라호텔'),(9,'askbouthotel','웨딩문의',NULL,'2018-10-16 00:00:00','문의,웨딩홀문의','야아아아아아','124','2018-10-26 14:56:38','2018-10-26 14:56:38','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(10,'hoteldevelop','객실/패키지문의',NULL,NULL,'의견','Polar_이호현','123','2018-10-26 15:41:36','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(11,'askbouthotel','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-10-26 15:42:32','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'제주신라호텔'),(12,'askbouthotel','객실/패키지문의',NULL,NULL,'의견','Joandora_이호현','123','2018-10-26 15:42:50','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'제주신라호텔'),(13,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','RPM_이호현','123','2018-10-26 15:44:06','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(14,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','A_LIST_APART_이호현','123','2018-10-26 15:44:30','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(15,'askbouthotel','웨딩문의',NULL,'2018-10-18 00:00:00','문의,예약문의','readDocument.subject','123','2018-10-26 15:45:21','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(16,'askbouthotel','연회/회의문의',NULL,NULL,'문의','파일 테스트','테스토','2018-10-26 16:47:14','2018-10-26 16:47:14','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(17,'askbouthotel','연회/회의문의',NULL,NULL,'문의','파일 테스트','테스토','2018-10-26 16:48:47','2018-10-26 16:48:47','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(18,'askbouthotel','연회/회의문의',NULL,NULL,'문의','파일 테스트','테스토','2018-10-26 16:50:37','2018-10-26 16:50:37','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(19,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-10-29 14:59:05','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(20,'askbouthotel','객실/다이닝문의',NULL,NULL,'문의','야아아아아아','asfasdf','2018-10-29 14:59:06','2018-10-29 14:59:06','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(21,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','야아아아아아','sadfasdf','2018-10-29 14:59:20','2018-10-29 14:59:20','0:0:0:0:0:0:0:1',2,'서울신라호텔'),(22,'askbouthotel','연회/회의문의',NULL,NULL,'문의','야아아아아아','sadfasd','2018-10-29 15:00:31','2018-10-29 15:00:31','0:0:0:0:0:0:0:1',2,'제주신라호텔'),(23,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','구조1_박혜민','123123','2018-10-29 15:02:07','2018-10-29 15:02:07','0:0:0:0:0:0:0:1',6,'서울신라호텔'),(24,'askbouthotel','연회/회의문의',NULL,NULL,'의견','텟그트','테스트','2018-10-29 15:03:19','2018-10-29 15:03:19','0:0:0:0:0:0:0:1',6,'서울신라호텔'),(25,'askbouthotel','연회/회의문의',NULL,NULL,'문의','box_이호현','123','2018-10-30 13:21:22','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(26,'askbouthotel','연회/회의문의',NULL,NULL,'문의','A_LIST_APART_이호현','123','2018-10-30 15:09:34','2018-11-02 15:08:48','0:0:0:0:0:0:0:1',NULL,'서울신라호텔'),(27,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-11-07 16:48:38','2018-11-07 16:48:38','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(28,'askbouthotel','연회/회의문의',NULL,NULL,'문의','Joandora_이호현','123','2018-11-07 16:49:14','2018-11-07 16:49:14','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(29,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-11-02 19:47:23','2018-11-02 19:47:23','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(30,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Joandora_이호현','123','2018-11-03 19:47:37','2018-11-03 19:47:37','0:0:0:0:0:0:0:1',12,'제주신라호텔'),(31,'askbouthotel','객실/패키지문의',NULL,NULL,'의견','box_이호현','123','2018-11-04 19:47:57','2018-11-04 19:47:57','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(32,'askbouthotel','객실/패키지문의',NULL,NULL,'문의','RPM_이호현','123','2018-11-05 19:48:09','2018-11-05 19:48:09','0:0:0:0:0:0:0:1',12,'제주신라호텔'),(33,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Polar_이호현','123','2018-11-12 14:32:27','2018-11-12 14:32:27','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(34,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','Joandora_이호현','123','2018-11-12 14:32:36','2018-11-12 14:32:36','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(35,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','box_이호현','123','2018-11-12 14:32:44','2018-11-12 14:32:44','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(36,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','RPM_이호현','123','2018-11-12 14:32:50','2018-11-12 14:32:50','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(37,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','A_LIST_APART_이호현','123','2018-11-12 14:32:59','2018-11-12 14:32:59','0:0:0:0:0:0:0:1',12,'서울신라호텔'),(38,'hoteldevelop','객실/패키지문의',NULL,NULL,'문의','테스트 질문 1','테스트입니다.','2018-11-13 10:38:43','2018-11-13 10:38:43','0:0:0:0:0:0:0:1',2,'서울신라호텔');
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
  `card_no` varchar(15) DEFAULT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_yy` int(4) NOT NULL,
  `card_mm` int(2) NOT NULL,
  `ppl_ad` int(11) NOT NULL,
  `ppl_ch` int(11) DEFAULT NULL,
  `ppl_bb` int(11) DEFAULT NULL,
  `detail` text,
  `member_id` int(11) DEFAULT NULL,
  `resv_room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resv_guest_member1_idx` (`member_id`),
  KEY `fk_resv_guest_resv_room1_idx` (`resv_room_id`),
  CONSTRAINT `fk_resv_guest_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resv_guest_resv_room1` FOREIGN KEY (`resv_room_id`) REFERENCES `resv_room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resv_guest`
--

LOCK TABLES `resv_guest` WRITE;
/*!40000 ALTER TABLE `resv_guest` DISABLE KEYS */;
INSERT INTO `resv_guest` VALUES (6,'123456781234567','VISA',2021,11,1,0,0,'NONE',12,25),(7,'000000000000','Master',2021,12,1,0,0,'없엉',2,27),(8,'000000000000','Master',2022,12,1,0,0,'',2,28),(9,'000000000000','Master',2022,12,1,0,0,'asdgf',2,29),(10,'000000000000000','Master',2022,12,2,1,1,'12314',12,30),(11,'12434123512','Master',2222,12,1,0,0,'',2,31),(14,'00000000000','Master',2022,12,1,0,0,'',2,34),(15,'1234567890','Visa',1234,12,2,1,1,'1223',12,35),(16,'0000000000','Visa',1234,12,1,2,1,NULL,12,32),(17,'111122223333','Master',1212,9,1,1,1,NULL,12,33),(20,'1234','CB',2025,3,1,0,0,'공항 교통편 문의 또는 호텔 이용 시 문의하실 사항이 있으시면 입력해 주십시오.',2,43),(21,'123123123123','HD',2023,3,2,1,1,'123123',12,44),(22,'43141231251331','BC',2026,3,2,0,0,'3123123',11,45),(23,'2352424','BC',2024,5,2,1,0,'312313',11,46),(24,'43243243','AX',2027,1,2,0,0,'53656536',11,47),(25,'123141413','AX',2028,2,2,0,0,'1231313',11,48),(26,'123123123123','LO',2021,5,2,1,1,'1234',2,49),(27,'1234','BC',2026,3,1,0,0,'',2,50),(28,'12312312313','BC',2024,2,2,0,0,'',11,51),(29,'432424242','CB',2028,2,2,0,0,'',11,52),(30,'1234','CB',2027,1,1,0,0,'',2,54),(31,'123123123123','MA',2024,6,2,1,1,'',12,55),(32,'1231','BC',2025,3,1,0,0,'',2,56),(33,'1231231231','VS',2020,5,1,1,2,'1231231231',12,58),(34,'123123123123','DI',2020,9,1,0,0,'',12,59);
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
  `room_id` int(11) DEFAULT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `exbed` int(11) DEFAULT NULL,
  `meal` int(11) DEFAULT NULL,
  `resv_date` datetime NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `hotel_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resv_member1_idx` (`member_id`),
  KEY `fk_resv_room_hotel1_idx` (`hotel_category`),
  CONSTRAINT `fk_resv_member1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resv_room_hotel1` FOREIGN KEY (`hotel_category`) REFERENCES `hotel` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resv_room`
--

LOCK TABLES `resv_room` WRITE;
/*!40000 ALTER TABLE `resv_room` DISABLE KEYS */;
INSERT INTO `resv_room` VALUES (25,1,'2018-11-01 00:00:00','2018-11-13 00:00:00',0,0,'2018-11-05 17:52:35',12,'서울신라호텔'),(27,0,'2018-11-14 00:00:00','2018-11-15 00:00:00',0,0,'2018-11-07 12:54:24',2,NULL),(28,3,'2018-11-14 00:00:00','2018-11-16 00:00:00',0,0,'2018-11-07 14:21:11',2,'서울신라호텔'),(29,9,'2018-11-21 00:00:00','2018-11-22 00:00:00',0,0,'2018-11-07 14:42:44',2,'서울신라호텔'),(30,3,'2018-11-07 00:00:00','2018-11-10 00:00:00',0,0,'2018-11-07 14:57:50',12,'서울신라호텔'),(31,12,'2018-11-14 00:00:00','2018-11-16 00:00:00',0,0,'2018-11-07 15:12:15',2,'제주신라호텔'),(32,16,'2018-11-15 00:00:00','2018-11-18 00:00:00',1,2,'2018-11-07 16:54:34',12,'제주신라호텔'),(33,15,'2018-11-14 00:00:00','2018-11-16 00:00:00',1,2,'2018-11-07 17:03:00',12,'제주신라호텔'),(34,5,'2018-11-22 00:00:00','2018-11-23 00:00:00',0,0,'2018-11-07 17:11:48',2,'서울신라호텔'),(35,17,'2018-11-14 00:00:00','2018-11-18 00:00:00',1,2,'2018-11-07 17:14:40',12,'제주신라호텔'),(36,17,'2018-11-29 00:00:00','2018-12-04 00:00:00',0,0,'2018-11-12 20:07:14',11,'제주신라호텔'),(37,14,'2018-11-13 00:00:00','2018-11-15 00:00:00',0,0,'2018-11-12 20:14:57',11,'제주신라호텔'),(38,2,'2018-11-14 00:00:00','2018-11-17 00:00:00',0,0,'2018-11-12 20:19:53',11,'서울신라호텔'),(39,4,'2018-11-16 00:00:00','2018-11-18 00:00:00',0,0,'2018-11-12 20:26:20',11,'서울신라호텔'),(40,1,'2018-11-14 00:00:00','2018-11-17 00:00:00',0,0,'2018-11-12 20:28:10',11,'서울신라호텔'),(42,9,'2018-11-13 00:00:00','2018-11-15 00:00:00',0,0,'2018-11-13 10:04:45',2,'서울신라호텔'),(43,7,'2018-11-14 00:00:00','2018-11-17 00:00:00',0,0,'2018-11-13 10:08:22',2,'서울신라호텔'),(44,13,'2018-11-26 00:00:00','2018-11-30 00:00:00',0,0,'2018-11-13 10:53:14',12,'제주신라호텔'),(45,6,'2018-11-14 00:00:00','2018-11-16 00:00:00',0,0,'2018-11-13 11:00:31',11,'서울신라호텔'),(46,18,'2018-11-30 00:00:00','2018-12-03 00:00:00',0,0,'2018-11-13 11:12:55',11,'서울신라호텔'),(47,2,'2018-11-24 00:00:00','2018-11-29 00:00:00',0,0,'2018-11-13 11:17:56',11,'서울신라호텔'),(48,5,'2018-11-14 00:00:00','2018-11-16 00:00:00',0,0,'2018-11-13 11:26:45',11,'서울신라호텔'),(49,13,'2018-11-13 00:00:00','2018-11-17 00:00:00',0,0,'2018-11-13 11:53:03',2,'제주신라호텔'),(50,4,'2018-11-13 00:00:00','2018-11-15 00:00:00',0,0,'2018-11-13 11:54:54',2,'서울신라호텔'),(51,1,'2018-11-22 00:00:00','2018-11-25 00:00:00',0,0,'2018-11-13 11:55:25',11,'서울신라호텔'),(52,8,'2018-11-14 00:00:00','2018-11-16 00:00:00',0,0,'2018-11-13 11:58:42',11,'서울신라호텔'),(53,4,'2018-11-13 00:00:00','2018-11-15 00:00:00',0,0,'2018-11-13 12:01:34',2,'서울신라호텔'),(54,10,'2018-11-16 00:00:00','2018-11-17 00:00:00',1,0,'2018-11-13 12:45:39',2,'서울신라호텔'),(55,16,'2018-11-30 00:00:00','2018-12-04 00:00:00',1,0,'2018-11-13 13:04:59',12,'제주신라호텔'),(56,11,'2018-11-13 00:00:00','2018-11-15 00:00:00',1,2,'2018-11-13 13:14:31',2,'제주신라호텔'),(57,18,'2018-11-14 00:00:00','2018-11-17 00:00:00',1,1,'2018-11-13 13:23:55',2,'서울신라호텔'),(58,4,'2018-12-18 00:00:00','2018-12-22 00:00:00',1,3,'2018-11-13 14:11:38',12,'서울신라호텔'),(59,7,'2018-12-28 00:00:00','2018-12-30 00:00:00',1,3,'2018-11-13 14:29:45',12,'서울신라호텔');
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
  `bed_type` varchar(45) DEFAULT NULL,
  `room_price` int(11) NOT NULL,
  `hotel_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_room_hotel1_idx` (`hotel_category`),
  CONSTRAINT `fk_room_hotel1` FOREIGN KEY (`hotel_category`) REFERENCES `hotel` (`category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,101,'Business Deluxe','Twin',289000,'서울신라호텔'),(2,102,'Executive Business Deluxe','Double',389000,'서울신라호텔'),(3,103,'Business Deluxe','Double',289000,'서울신라호텔'),(4,201,'Executive Business Deluxe','Double',389000,'서울신라호텔'),(5,202,'Business Deluxe','Twin',289000,'서울신라호텔'),(6,203,'Business Deluxe','Twin',289000,'서울신라호텔'),(7,301,'Business Deluxe','Twin',289000,'서울신라호텔'),(8,302,'Business Deluxe','Double',289000,'서울신라호텔'),(9,303,'Executive Business Deluxe','Double',389000,'서울신라호텔'),(10,401,'Executive Business Deluxe','Twin',489000,'서울신라호텔'),(11,101,'Business Deluxe','Twin',389000,'제주신라호텔'),(12,102,'Executive Business Deluxe','Double',489000,'제주신라호텔'),(13,201,'Executive Business Deluxe','Twin',489000,'제주신라호텔'),(14,202,'Business Deluxe','Double',389000,'제주신라호텔'),(15,301,'Executive Business Deluxe','Twin',489000,'제주신라호텔'),(16,302,'Executive Business Deluxe','Double',489000,'제주신라호텔'),(17,401,'Executive Business Deluxe','Double',589000,'제주신라호텔'),(18,402,'Business Deluxe','Twin',480000,'서울신라호텔');
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

-- Dump completed on 2018-11-13 14:36:53
