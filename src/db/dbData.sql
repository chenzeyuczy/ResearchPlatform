-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: research_platform
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `ar_id` int(11) NOT NULL AUTO_INCREMENT,
  `ar_title` varchar(255) NOT NULL,
  `ar_author` varchar(255) NOT NULL,
  `ar_date` date NOT NULL,
  `ar_link` varchar(255) NOT NULL,
  PRIMARY KEY (`ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'文章1','作者1','2016-11-02','http://www.sysu.edu.cn'),(2,'文章2','作者2','2015-07-09','http://www.sysu.edu.cn'),(3,'文章3','作者3','2014-02-27','http://sdcs.sysu.edu.cn/'),(4,'文章4','作者4','2014-06-29','http://sdcs.sysu.edu.cn/'),(5,'文章5','作者5','2016-01-13','http://sdcs.sysu.edu.cn/');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conference`
--

DROP TABLE IF EXISTS `conference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conference` (
  `cf_id` int(11) NOT NULL AUTO_INCREMENT,
  `cf_title` varchar(255) NOT NULL,
  `cf_content` text,
  `cf_date` date NOT NULL,
  PRIMARY KEY (`cf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference`
--

LOCK TABLES `conference` WRITE;
/*!40000 ALTER TABLE `conference` DISABLE KEYS */;
INSERT INTO `conference` VALUES (1,'会议1','生物','2016-06-29'),(2,'会议2','生物2','2015-10-01'),(3,'会议3','生物3','2014-02-13'),(4,'会议4','生物4','2015-03-07'),(5,'会议5','生物5','2014-07-11');
/*!40000 ALTER TABLE `conference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_tool`
--

DROP TABLE IF EXISTS `data_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_tool` (
  `dt_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_title` varchar(255) NOT NULL,
  `dt_type` int(11) NOT NULL,
  `dt_link` varchar(255) NOT NULL,
  `dt_content` text,
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_tool`
--

LOCK TABLES `data_tool` WRITE;
/*!40000 ALTER TABLE `data_tool` DISABLE KEYS */;
INSERT INTO `data_tool` VALUES (1,'工具1',1,'http://sdcs.sysu.edu.cn/','数据工具1'),(2,'工具2',2,'http://sdcs.sysu.edu.cn/','数据工具2'),(3,'工具3',3,'http://sdcs.sysu.edu.cn/','数据工具3'),(4,'工具4',2,'http://sdcs.sysu.edu.cn/','数据工具4'),(5,'工具5',1,'http://sdcs.sysu.edu.cn/','数据工具5');
/*!40000 ALTER TABLE `data_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `mb_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_name` varchar(255) NOT NULL,
  `mb_focus` text,
  `mb_intro` text,
  `mb_work` text,
  PRIMARY KEY (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'成员1','专注1','信息1','工作1'),(2,'成员2','专注2','信息2','工作2'),(3,'成员3','专注3','信息3','工作3'),(4,'成员4','专注4','信息4','工作4'),(5,'成员5','专注5','信息5','工作5');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `ne_id` int(11) NOT NULL AUTO_INCREMENT,
  `ne_title` varchar(255) NOT NULL,
  `ne_content` text,
  `ne_date` date NOT NULL,
  PRIMARY KEY (`ne_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'标题1','内容1','2016-04-26'),(2,'标题2','内容2','2016-03-09'),(3,'标题3','内容3','2015-07-15'),(4,'标题4','内容4','2015-05-25'),(5,'标题5','内容5','2014-07-17');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `nt_id` int(11) NOT NULL AUTO_INCREMENT,
  `nt_title` varchar(255) NOT NULL,
  `nt_content` text,
  `nt_date` date NOT NULL,
  PRIMARY KEY (`nt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'公告1','内容1','2016-06-22'),(2,'公告2','内容2','2016-04-29'),(3,'公告3','内容3','2015-07-16'),(4,'公告4','内容4','2015-06-08'),(5,'公告5','内容5','2014-06-19');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `pj_id` int(11) NOT NULL AUTO_INCREMENT,
  `pj_name` varchar(255) NOT NULL,
  `pj_intro` text,
  `pj_progress` text,
  PRIMARY KEY (`pj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'课题1','介绍1','进展1'),(2,'课题2','介绍2','进展2'),(3,'课题3','信息3','进展3'),(4,'课题4','信息4','进展4'),(5,'课题5','介绍5','进展5');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_article`
--

DROP TABLE IF EXISTS `project_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_article` (
  `pj_ar_id` int(11) NOT NULL AUTO_INCREMENT,
  `pj_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  PRIMARY KEY (`pj_ar_id`),
  KEY `pj_id` (`pj_id`),
  KEY `ar_id` (`ar_id`),
  CONSTRAINT `project_article_ibfk_1` FOREIGN KEY (`pj_id`) REFERENCES `project` (`pj_id`),
  CONSTRAINT `project_article_ibfk_2` FOREIGN KEY (`ar_id`) REFERENCES `article` (`ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_article`
--

LOCK TABLES `project_article` WRITE;
/*!40000 ALTER TABLE `project_article` DISABLE KEYS */;
INSERT INTO `project_article` VALUES (1,1,5),(2,2,4),(3,3,2),(4,4,3),(5,5,1);
/*!40000 ALTER TABLE `project_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_data_tool`
--

DROP TABLE IF EXISTS `project_data_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_data_tool` (
  `pj_dt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pj_id` int(11) NOT NULL,
  `dt_id` int(11) NOT NULL,
  PRIMARY KEY (`pj_dt_id`),
  KEY `pj_id` (`pj_id`),
  KEY `dt_id` (`dt_id`),
  CONSTRAINT `project_data_tool_ibfk_1` FOREIGN KEY (`pj_id`) REFERENCES `project` (`pj_id`),
  CONSTRAINT `project_data_tool_ibfk_2` FOREIGN KEY (`dt_id`) REFERENCES `data_tool` (`dt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_data_tool`
--

LOCK TABLES `project_data_tool` WRITE;
/*!40000 ALTER TABLE `project_data_tool` DISABLE KEYS */;
INSERT INTO `project_data_tool` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,5),(5,5,1);
/*!40000 ALTER TABLE `project_data_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_team`
--

DROP TABLE IF EXISTS `project_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_team` (
  `pj_tm_id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_id` int(11) NOT NULL,
  `tm_id` int(11) NOT NULL,
  PRIMARY KEY (`pj_tm_id`),
  KEY `pr_id` (`pr_id`),
  KEY `tm_id` (`tm_id`),
  CONSTRAINT `project_team_ibfk_1` FOREIGN KEY (`pr_id`) REFERENCES `project` (`pj_id`),
  CONSTRAINT `project_team_ibfk_2` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_team`
--

LOCK TABLES `project_team` WRITE;
/*!40000 ALTER TABLE `project_team` DISABLE KEYS */;
INSERT INTO `project_team` VALUES (1,1,1),(2,2,5),(3,3,4),(4,4,3),(5,5,2);
/*!40000 ALTER TABLE `project_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `tm_id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_name` varchar(255) NOT NULL,
  `tm_focus` text NOT NULL,
  `tm_work` text,
  PRIMARY KEY (`tm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'团队1','专注1','工作1'),(2,'团队2','专注2','工作2'),(3,'团队3','专注3','工作3'),(4,'团队4','专注4','工作4'),(5,'团队5','专注5','工作5');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_article`
--

DROP TABLE IF EXISTS `team_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_article` (
  `tm_ar_id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  PRIMARY KEY (`tm_ar_id`),
  KEY `tm_id` (`tm_id`),
  KEY `ar_id` (`ar_id`),
  CONSTRAINT `team_article_ibfk_1` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`),
  CONSTRAINT `team_article_ibfk_2` FOREIGN KEY (`ar_id`) REFERENCES `article` (`ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_article`
--

LOCK TABLES `team_article` WRITE;
/*!40000 ALTER TABLE `team_article` DISABLE KEYS */;
INSERT INTO `team_article` VALUES (1,1,1),(2,2,3),(3,3,2),(4,4,5),(6,5,4);
/*!40000 ALTER TABLE `team_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_member`
--

DROP TABLE IF EXISTS `team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_member` (
  `tm_mb_id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_id` int(11) NOT NULL,
  `mb_id` int(11) NOT NULL,
  PRIMARY KEY (`tm_mb_id`),
  KEY `tm_id` (`tm_id`),
  KEY `mb_id` (`mb_id`),
  CONSTRAINT `team_member_ibfk_1` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`),
  CONSTRAINT `team_member_ibfk_2` FOREIGN KEY (`mb_id`) REFERENCES `member` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member`
--

LOCK TABLES `team_member` WRITE;
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
INSERT INTO `team_member` VALUES (1,1,3),(2,2,4),(3,3,5),(4,4,2),(5,5,1);
/*!40000 ALTER TABLE `team_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('David','key1'),('John','key3'),('Lily','key2'),('Lucy','key5'),('Tom','key4');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-26  2:11:43
