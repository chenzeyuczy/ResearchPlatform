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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_tool`
--

LOCK TABLES `data_tool` WRITE;
/*!40000 ALTER TABLE `data_tool` DISABLE KEYS */;
INSERT INTO `data_tool` VALUES (1,'相关数据集1',1,'http://sdcs.sysu.edu.cn/','数据工具1'),(2,'相关数据集2',1,'http://www.sysu.edu.cn/','数据工具2'),(3,'公共数据集3',2,'http://yann.lecun.com/exdb/mnist/','数据工具3'),(4,'公共数据集4',2,'http://host.robots.ox.ac.uk/pascal/VOC/','数据工具4'),(5,'工具5',3,'http://caffe.berkeleyvision.org/','数据工具5'),(6,'工具6',3,'https://www.tensorflow.org/',NULL),(7,'工具7',3,'https://github.com/dmlc/mxnet',NULL),(8,'源数据1',0,'https://www.baidu.com',NULL),(9,'源数据2',0,'https://www.google.com',NULL);
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
  `pj_type` varchar(255) NOT NULL,
  `pj_name` varchar(255) NOT NULL,
  `pj_intro` text,
  `pj_progress` text,
  PRIMARY KEY (`pj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'类别一','课题1','介绍1','进展1'),(2,'类别一','课题2','介绍2','进展2'),(3,'类别二','课题3','介绍3','进展3'),(4,'类别三','课题4','介绍4','进展4'),(5,'类别三','课题5','介绍5','进展5'),(6,'类别三','课题6','介绍6','进展6'),(7,'热带病','热带病医学','       热带医学是由热带病和公共卫生 2 部分组成，是研究发生或发现于热带、亚热带地区各种疾病的诊断、治疗、预防以及如何控制和消灭这些疾病的科学，是集基础医学、临床医学和预防医学为一体的综合性学科，涉及生物学、遗传学、寄生虫学、公共卫生学等多门交叉学科，既包括自然科学又包括社会科学。世界卫生组织认定了 8 种最重要、最常见的热带病：疟疾、血吸虫病、丝虫病、黑热病、锥虫病、麻风病、肺结核病和登革热，这些疾病是热带医学现在和今后研究的重点。 ','       热带医学是由热带病和公共卫生 2 部分组成，是研究发生或发现于热带、亚热带地区各种疾病的诊断、治疗、预防以及如何控制和消灭这些疾病的科学，是集基础医学、临床医学和预防医学为一体的综合性学科，涉及生物学、遗传学、寄生虫学、公共卫生学等多门交叉学科，既包括自然科学又包括社会科学。热带病一直是热带医学的研究重点，过去将热带病理解为寄生虫病，事实上，寄生虫病仅是热带病的重要组成部分，热带病还涉及许多由其他病原生物引起的感染性疾病。世界卫生组织认定了 8 种最重要、最常见的热带病：疟疾、血吸虫病、丝虫病、黑热病、锥虫病、麻风病、肺结核病和登革热，这些疾病是热带医学现在和今后研究的重点。\r\n       世界经济和工业全球化进程的加快，全球气候的变暖，流动人口数量的急剧增加，皆使热带病发生的范围进一步扩大，同时，热带病防治中遇到的诸如贫穷、教育、初级卫生保健、传递系统、基础设施等制约热带病研究的问题仍然无法解决，因此，不仅要注重热带病的临床防治工作，还需要研究该病发生或流行与公共卫生意识与设施、环境条件及人们生活劳作习惯间的关系，是一项需要全民参与的社会工程。\r\n       随着全球经济和科技的发展，社会的进步，很多热带病得到控制。但是，新发传染病不断涌现，一些原已控制的传染病仍有潜在流行趋势，不断关注新问题，努力探索热带病防治的新理念、诊断的新方法和提高治疗水平，是我们追求的目标。\r\n       热带医学的研究现状世纪 70 年代以来，病原体生物学研究从细胞水平发展到基因水平，对细胞型病原体的抗生素类研发已经达到了成熟阶段，随着药理学先进技术和测试方法的应用，抗生素及化学药物治愈了许多传染性热带病疾病，化学性杀虫剂和消毒剂对节肢动物传播媒介和疫源地病原体进行有效杀灭和消毒，中断了传播环节，有效防治传染病。在免疫学领域内，用来预防不同传染病的新疫苗被发明，不但有控制白喉、脊髓灰质炎、麻疹等传染病的疫苗，而且也有效控制了须具传播媒介传播的黑热病、丝虫病、疟疾以及土源性和食源性寄生虫等疾病。\r\n        分子生物学技术日新月异发展，使原始的病原检测发展为免疫学方法和核酸技术。基因探针和聚合酶链反应凭借快速、敏感性高、特异性强的特点，已经广泛用于病毒、细菌、寄生虫等的病原检测、药物敏感性实验、疗效监测和疾病流行病学研究中，先进的纳米技术和DNA 芯片逐渐应用于病毒和细菌的检测研究，DNA 疫苗的研制、转基因技术也在多项病毒抗原疫苗生产方面取得了进展。地理信息系统和遥感技术已经用于媒传疾病及媒介的监测，在疾病流行的早期监督和预警、危险地区的动态适时监测等方面发挥了极大作用。\r\n       世纪初成立的英国皇家热带医学及卫生学会、澳大利亚寄生虫学会和美国热带医学学会均致力于促进和交流有关热带医学的研究、热带病的控制、治疗、预防等。我国近年来相继成立了多所热带医学研究所，如北京热带医学研究所、南方医科大学热带医学研究所、广州中医药大学热带医学研究所、海南热带病研究所等科研机构，在我国热带医学的临床与科研工作方面做出了突出的贡献。\r\n       热带医学研究不可“高枕无忧预防传染病的疫苗不断研制应用，抗生素和杀虫剂的广泛开发使用，使传染病发病率和病死率已经维持相对稳定的低水平，于是很多人认为“传染病的问题已初步解决”或“人类与疾病斗争的重点应该转移至位居死因前列的非传染性慢性病方面”。事实上，由于近年来对自然疫源地的过度开发和对野生动物的滥杀，人类饮食习惯改变，气候、生态环境变化，抗生素和杀虫剂的滥用等多方面因素，促使病原物种变异，传染病疫情更加复杂，多种传染病仍未得到有效控制，且有进一步扩大流行趋势。例如血吸虫病、班氏丝虫病等寄生虫病流行于全世界 100 多个国家和地区，威胁 40％的地球人口，病毒病和细菌病等其他热带疾病发病迅猛，传染源、媒介昆虫活动途迁范围扩大，热带和非热带地区的传染病已很难严格区分，原已控制的传染病如疟疾、结核病等死灰复燃，重新肆虐人类。同时，也引发了一些新的人兽共患传染病，由于人群对新发现的传染病普遍易感，且无有效防治用药和措施，使病死率均高，人类面临着热带病新的严重挑战。2003 年在全球迅速扩散流行的急性传染性非典型肺炎(sARs)，虽然得到了及时控制并最后扑灭，但也说明需要时刻重视，不断加强公共卫生的防御系统及对突变疾病事件控制能力。热带病的侵袭对社会经济的发展和稳定产生极大破坏，对人类生存和发展构成严重威胁，是当今重大的公共卫生问题和社会问题。\r\n       很多老的传染病被控制和消灭，新的传染病又被发现，人类消灭传染病的速度远远落后于新传染病出现的速度。热带病的防治任重而道远，我们应有保护全人类健康的长期性、艰巨性和复杂性的基本防制策略，对病原体病原学持续研究，研制有效的具有预防性和治疗性的免疫疫苗，不断及时发现新传染病，不断建立更敏感、特异的诊断技术。\r\n       关注研究热点，展望未来发展趋势免疫预防工作将成为 21 世纪热带病防治工作的一个重要方面，HIV、囊虫病、疟疾、血吸虫病、弓形虫病、登革热、甲型和戊型肝炎作为现在主要影响我国人民健康的热带病，将成为攻关研究的重点，针对这些疾病研制重组疫苗、多肽疫苗、DNA 疫苗是今后的研究热点。\r\n       随着分子生物学、细胞生物学、基因技术的飞速发展，后基因组学、比较基因组学和蛋白质组学的研究以及生物信息学、细胞微生物学将成为热带医学重要的研究手段；生物芯片技术研究重点将集中在感染性疾病诊断芯片、病原耐药谱监测芯片、遗传病检测和诊断芯片等，其应用前景十分广阔；利用最先进的纳米技术制造的生物传感器芯片，也将有利于今后的常规临床生化反应和代谢产物的检测；感染性疾病的基因工程疫苗的研究将全面走向开发应用，对肝炎、艾滋病、血吸虫病等的预防和治疗将起巨大的作用。\r\n       在热带病的监测和防治方面，充分利用先进的监测技术，建立健全热带病监测评估体系和网络系统，对新发现和再出现传染病的全球监测系统是今后的发展趋势。进一步加强遥感技术和远程医疗技术的研究，将有利于提高疾病监测和防治水平刊，建立和分析各种生物体基因生命图谱，获取最根本原因证据，将有利于填补热带病防制措施和技术中的空白。\r\n       中国传统医学在热带病防治中也将发挥重要的作用，将中西医结合、中药现代化等先进技术和理论运用于热带医学的研究中，使热带病的防治方法更新、更多、更有效，也将成为我国发展特色医疗优势的一个重要方面。国家应进一步加强疾病防治决策研究的力度，针对突发事件，不断总结经验，补充、完善具体方法，制定科学和明确的任务和措施。同时，加强健康教育与健康促进工作，普及卫生防病知识，动员社会全员参与，提高个人防护意识。将热带病的防治建成一个社会系统工程，也将成为今后我国热带医学发展的新策略。\r\n       《东南哑热带病和卫生学杂志》社论指出：“社会进步、经济发展、文化提高、自我保健意识的建立，人类心理素质的增强，在控制传染病上发挥的作用比医学科学更加霞要。”改变热带病流行地区经济文化落后的现状，重视社会预防、康复医学、公共卫生教育，发展倡导全社会尊重、保护和爱护自然，达到人与自然的真正和谐，真正使热带病销声匿迹。');
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
  `pj_ar_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pj_ar_id`),
  UNIQUE KEY `pj_ar` (`pj_id`,`ar_id`),
  KEY `ar_id` (`ar_id`),
  CONSTRAINT `project_article_ibfk_1` FOREIGN KEY (`pj_id`) REFERENCES `project` (`pj_id`),
  CONSTRAINT `project_article_ibfk_2` FOREIGN KEY (`ar_id`) REFERENCES `article` (`ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_article`
--

LOCK TABLES `project_article` WRITE;
/*!40000 ALTER TABLE `project_article` DISABLE KEYS */;
INSERT INTO `project_article` VALUES (1,1,3,0),(3,1,2,1),(4,2,1,0),(5,2,4,1),(6,2,5,0),(7,3,2,1);
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
  UNIQUE KEY `pj_dt` (`pj_id`,`dt_id`),
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
INSERT INTO `project_data_tool` VALUES (5,1,5),(4,2,4),(3,3,3),(2,4,2),(1,5,1);
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
  `pj_id` int(11) NOT NULL,
  `tm_id` int(11) NOT NULL,
  PRIMARY KEY (`pj_tm_id`),
  UNIQUE KEY `pj_tm` (`pj_id`,`tm_id`),
  KEY `tm_id` (`tm_id`),
  CONSTRAINT `project_team_ibfk_1` FOREIGN KEY (`pj_id`) REFERENCES `project` (`pj_id`),
  CONSTRAINT `project_team_ibfk_2` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_team`
--

LOCK TABLES `project_team` WRITE;
/*!40000 ALTER TABLE `project_team` DISABLE KEYS */;
INSERT INTO `project_team` VALUES (3,1,1),(1,1,3),(2,2,3),(6,3,2),(4,4,2),(5,5,1);
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
  UNIQUE KEY `tm_ar` (`tm_id`,`ar_id`),
  KEY `ar_id` (`ar_id`),
  CONSTRAINT `team_article_ibfk_1` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`),
  CONSTRAINT `team_article_ibfk_2` FOREIGN KEY (`ar_id`) REFERENCES `article` (`ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_article`
--

LOCK TABLES `team_article` WRITE;
/*!40000 ALTER TABLE `team_article` DISABLE KEYS */;
INSERT INTO `team_article` VALUES (1,1,1),(4,1,3),(2,2,2),(6,2,4),(7,3,5);
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
  UNIQUE KEY `tm_mb` (`tm_id`,`mb_id`),
  KEY `mb_id` (`mb_id`),
  CONSTRAINT `team_member_ibfk_1` FOREIGN KEY (`tm_id`) REFERENCES `team` (`tm_id`),
  CONSTRAINT `team_member_ibfk_2` FOREIGN KEY (`mb_id`) REFERENCES `member` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member`
--

LOCK TABLES `team_member` WRITE;
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
INSERT INTO `team_member` VALUES (4,1,3),(1,1,5),(3,2,4),(5,2,5),(6,3,1),(2,3,2);
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
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('user1','key1',0),('user2','key2',0),('user3','key3',1),('user4','key4',1),('user5','key5',2);
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

-- Dump completed on 2016-11-29 10:13:45
