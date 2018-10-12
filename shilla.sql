-- mysql dump 10.13  distrib 5.7.21, for win64 (x86_64)
--
-- host: localhost    database: shilla
-- ------------------------------------------------------
-- server version	5.7.21-log

/*!40101 set @old_character_set_client=@@character_set_client */;
/*!40101 set @old_character_set_results=@@character_set_results */;
/*!40101 set @old_collation_connection=@@collation_connection */;
/*!40101 set names utf8 */;
/*!40103 set @old_time_zone=@@time_zone */;
/*!40103 set time_zone='+00:00' */;
/*!40014 set @old_unique_checks=@@unique_checks, unique_checks=0 */;
/*!40014 set @old_foreign_key_checks=@@foreign_key_checks, foreign_key_checks=0 */;
/*!40101 set @old_sql_mode=@@sql_mode, sql_mode='no_auto_value_on_zero' */;
/*!40111 set @old_sql_notes=@@sql_notes, sql_notes=0 */;

--
-- table structure for table `file`
--

drop table if exists `file`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `file` (
  `id` int(11) not null auto_increment,
  `category` varchar(45) default null comment 'room, qna 구분',
  `origin_name` varchar(255) not null,
  `file_dir` varchar(255) not null,
  `file_name` varchar(255) not null,
  `content_type` varchar(50) not null comment 'jpg, png, jpeg, bmp, gif ...',
  `file_size` int(11) not null,
  `reg_date` datetime not null,
  `edit_date` datetime not null,
  `qna_file_path` varchar(255) default null,
  `room_img` varchar(255) default null,
  `package_img` varchar(255) default null,
  primary key (`id`)
) engine=innodb auto_increment=4 default charset=utf8;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `file`
--

lock tables `file` write;
/*!40000 alter table `file` disable keys */;
insert into `file` values (1,null,'loading.gif','c:/java/jsp/upload','1539228088415.gif','image/gif',878699,'2018-10-11 12:21:29','2018-10-11 12:21:29',null,null,null),(2,null,'loading.gif','c:/java/jsp/upload','1539228234255.gif','image/gif',878699,'2018-10-11 12:23:55','2018-10-11 12:23:55',null,null,null),(3,null,'loading.gif','c:/java/jsp/upload','1539228484385.gif','image/gif',878699,'2018-10-11 12:28:05','2018-10-11 12:28:05',null,null,null);
/*!40000 alter table `file` enable keys */;
unlock tables;

--
-- table structure for table `member`
--

drop table if exists `member`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `member` (
  `id` int(11) not null auto_increment,
  `user_name_kor` varchar(50) not null,
  `user_name_eng` varchar(50) not null,
  `user_id` varchar(50) not null,
  `user_pw` varchar(255) not null,
  `birthdate` datetime default null,
  `email` varchar(150) not null,
  `tel` varchar(13) not null,
  `tel_home` varchar(13) default null,
  `zipcode` char(5) default null,
  `load_addr` varchar(150) default null,
  `detail` varchar(150) default null,
  `reg_date` datetime not null,
  `edit_date` datetime not null,
  primary key (`id`)
) engine=innodb auto_increment=10 default charset=utf8;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `member`
--

lock tables `member` write;
/*!40000 alter table `member` disable keys */;
insert into `member` values (2,'박혜민','parkhyemin','parkhm','123qwe','1991-10-11 00:00:00','gjrdjrdjr@gmail.com','01053337777',null,null,null,null,'2018-10-10 00:00:00','2018-10-10 00:00:00'),(3,'이민행','leeminheng','mhlee','123qwe','1986-02-14 00:00:00','fogblue.git@gmail.com','01065430984',null,null,null,null,'2018-10-10 00:00:00','2018-10-10 00:00:00'),(4,'이동건','leedonggeon','dong','123qwe','1997-09-15 00:00:00','tmxpftm2012@gmail.com','01015771577',null,null,null,null,'2018-10-10 00:00:00','2018-10-10 00:00:00'),(5,'이민행','minhaeng lee','minny','123qwe','1986-02-14 00:00:00','fogblue.git@gmail.com','010-6543-0984',null,null,null,null,'2018-10-10 13:13:26','2018-10-10 13:13:26'),(6,'박혜민','parkhyemin','shilla','*a4b6157319038724e3560894f7f932c8886ebfcf',null,'gjrdjrdjr@naver.com','01053337777','','','','','2018-10-11 10:13:42','2018-10-11 10:13:42'),(7,'공유','gongyou','gonguuuu','*a4b6157319038724e3560894f7f932c8886ebfcf','2018-10-17 00:00:00','marine984@gmail.com','01053337777','','','','','2018-10-11 10:41:25','2018-10-11 10:41:25'),(8,'소지섭','sojisub','soganji','*050376f3855a67f5e2c6514fd3130b31006c1276','2018-10-19 00:00:00','gjrdjrdjr@hanmail.net','01053337777','0325762222','06707','서울특별시 서초구 명달로 45','1020호','2018-10-11 10:43:57','2018-10-11 10:43:57'),(9,'이민행','minhaenglee','min','*050376f3855a67f5e2c6514fd3130b31006c1276','2018-10-04 00:00:00','lmh8602@gmail.com','01065430984','','','','','2018-10-11 12:04:22','2018-10-11 12:04:22');
/*!40000 alter table `member` enable keys */;
unlock tables;

--
-- table structure for table `package`
--

drop table if exists `package`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `package` (
  `id` int(11) not null auto_increment,
  `package_type` varchar(45) not null,
  `package_price` varchar(45) not null,
  `package_img` varchar(45) not null,
  `package_content` varchar(255) not null,
  `resv_id` int(11) not null,
  primary key (`id`),
  key `fk_package_resv1_idx` (`resv_id`),
  constraint `fk_package_resv1` foreign key (`resv_id`) references `resv` (`id`) on delete no action on update no action
) engine=innodb default charset=utf8;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `package`
--

lock tables `package` write;
/*!40000 alter table `package` disable keys */;
/*!40000 alter table `package` enable keys */;
unlock tables;

--
-- table structure for table `qna`
--

drop table if exists `qna`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `qna` (
  `id` int(11) not null auto_increment,
  `hotel_cate` varchar(10) default null comment '서울 or 제주',
  `ecategory` varchar(50) default null,
  `enq_type` VARCHAR(50) NULL,
  `reserv_no` INT(11) NULL,
  `wedding_date` DATETIME NULL,
  `qna_type` varchar(50) default null,
  `subject` varchar(255) not null,
  `content` text not null,
  `user_name_kor` varchar(50) not null,
  `email` varchar(150) not null,
  `tel` varchar(13) default null,
  `tel_home` `tel_home` VARCHAR(13),
  `ip_address` varchar(20) not null,
  `reg_date` datetime not null,
  `edit_date` datetime not null,
  `member_id` int(11) default null,
  primary key (`id`),
  key `fk_qna_member_idx` (`member_id`),
  constraint `fk_qna_member` foreign key (`member_id`) references `member` (`id`) on delete no action on update no action
) engine=innodb auto_increment=10 default charset=utf8;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `qna`
--

lock tables `qna` write;
/*!40000 alter table `qna` disable keys */;
insert into `qna` values (6,'hoteldevelop','sshihot','enq_ques','테스트입니다.','야아아아','이민행','lmh8602@gmail.com','01065430984','0:0:0:0:0:0:0:1','2018-10-11 12:21:29','2018-10-11 12:21:29',0),(7,'askbouthotel','jshihot','enq_ques','a list apart - 이민행','야아아아','이민행','lmh8602@gmail.com','01065430984','0:0:0:0:0:0:0:1','2018-10-11 12:23:55','2018-10-11 12:23:55',0),(8,'hoteldevelop','sshihot','enq_ques','테스트입니다.','야아아아','소지섭','gjrdjrdjr@hanmail.net','01053337777','0:0:0:0:0:0:0:1','2018-10-11 12:28:05','2018-10-11 12:28:05',0),(9,'hoteldevelop','sshihot','enq_ques','테스트입니다.','야아아아','소지섭','gjrdjrdjr@hanmail.net','01053337777','0:0:0:0:0:0:0:1','2018-10-11 12:35:35','2018-10-11 12:35:35',0);
/*!40000 alter table `qna` enable keys */;
unlock tables;

--
-- table structure for table `resv`
--

drop table if exists `resv`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `resv` (
  `id` int(11) not null auto_increment,
  `hotel_cate` varchar(10) not null comment '서울 or 제주',
  `check_in` datetime not null,
  `check_out` datetime not null,
  `ppl_ad` int(11) not null,
  `ppl_ch` int(11) default null,
  `ppl_bb` int(11) default null,
  `room_type` varchar(50) not null,
  `package_type` varchar(50) default null,
  `resv_date` datetime not null,
  `edit_date` datetime not null,
  `member_id` int(11) default null,
  `exbed` char(1) default null,
  `meal` int(11) default null,
  primary key (`id`),
  key `fk_resv_member1_idx` (`member_id`),
  constraint `fk_resv_member1` foreign key (`member_id`) references `member` (`id`) on delete no action on update no action
) engine=innodb default charset=utf8;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `resv`
--

lock tables `resv` write;
/*!40000 alter table `resv` disable keys */;
/*!40000 alter table `resv` enable keys */;
unlock tables;

--
-- table structure for table `room`
--

drop table if exists `room`;
/*!40101 set @saved_cs_client     = @@character_set_client */;
/*!40101 set character_set_client = utf8 */;
create table `room` (
  `id` int(11) not null auto_increment,
  `room_type` varchar(45) not null,
  `bed_type` varchar(45) not null,
  `room_price` int(11) not null,
  `exbed` int(11) not null,
  `meal` int(11) not null,
  `room_img` varchar(255) not null,
  `resv_id` int(11) default null,
  `package_id` int(11) default null,
  `hotel_cate` varchar(10) not null comment '서울or제주',
  primary key (`id`),
  key `fk_room_resv1_idx` (`resv_id`),
  key `fk_room_package1_idx` (`package_id`),
  constraint `fk_room_package1` foreign key (`package_id`) references `package` (`id`) on delete no action on update no action,
  constraint `fk_room_resv1` foreign key (`resv_id`) references `resv` (`id`) on delete no action on update no action
) engine=innodb default charset=utf8;
/*!40101 set character_set_client = @saved_cs_client */;

--
-- dumping data for table `room`
--

lock tables `room` write;
/*!40000 alter table `room` disable keys */;
/*!40000 alter table `room` enable keys */;
unlock tables;
/*!40103 set time_zone=@old_time_zone */;

/*!40101 set sql_mode=@old_sql_mode */;
/*!40014 set foreign_key_checks=@old_foreign_key_checks */;
/*!40014 set unique_checks=@old_unique_checks */;
/*!40101 set character_set_client=@old_character_set_client */;
/*!40101 set character_set_results=@old_character_set_results */;
/*!40101 set collation_connection=@old_collation_connection */;
/*!40111 set sql_notes=@old_sql_notes */;

-- dump completed on 2018-10-11 12:41:45
