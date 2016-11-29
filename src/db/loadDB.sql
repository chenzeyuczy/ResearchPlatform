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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'文章1','作者1','2016-11-02','http://www.sysu.edu.cn'),(2,'文章2','作者2','2015-07-09','http://www.sysu.edu.cn'),(3,'文章3','作者3','2014-02-27','http://sdcs.sysu.edu.cn/'),(4,'文章4','作者4','2014-06-29','http://sdcs.sysu.edu.cn/'),(5,'文章5','作者5','2016-01-13','http://sdcs.sysu.edu.cn/'),(6,'Genome sequence of the metazoan plant-parasitic nematode Meloidogyne incognita.','P Abad，J Gouzy，JM Aury，P Castagnonesereno，EGJ Danchin，...','2008-08-26','http://www.ncbi.nlm.nih.gov/pubmed/18660804'),(7,'A lover and a fighter: the genome sequence of an entomopathogenic nematode  Heterorhabditis bacteriophora.','Bai X, Adams BJ, Ciche TA, Clifton S, ..., Grewal PS','2013-07-08','http://www.ncbi.nlm.nih.gov/pubmed/23874975'),(8,'The genome of the blood fluke Schistosoma mansoni.','M Berriman，BJ Haas，PT Loverde，RA Wilson，GP Dillon，...','2009-07-16','http://www.ncbi.nlm.nih.gov/pubmed/19606141'),(9,'Genome sequence of the nematode C. elegans: a platform for investigating biology.','TCES Consortium','1998-12-11','http://www.ncbi.nlm.nih.gov/pubmed/9851916'),(10,'Soil-transmitted helminth infections: ascariasis, trichuriasis, and hookworm.','J Bethony，S Brooker，M Albonico，S Geiger，A Loukas，...','2006-05-06','http://www.ncbi.nlm.nih.gov/pubmed/16679166'),(11,'The genome and life-stage specific transcriptomes of Globodera pallida elucidate key aspects of plant parasitism by a cyst nematode. ','JA Cotton, CJ Lilley, LM Jones, T Kikuchi, AJ Reid,...','2014-03-03','http://www.ncbi.nlm.nih.gov/pubmed/24580726'),(12,'How to become a parasite –lessons from the genomes of nematodes.','C Dieterich, RJ Sommer','2009-05-25','http://www.ncbi.nlm.nih.gov/pubmed/19361881'),(13,'Draft genome of the filarial nematode parasite Brugia malayi.','E Ghedin, S Wang, D Spiro, E Caler,Q Zhao,...','2007-09-21','http://www.ncbi.nlm.nih.gov/pubmed/17885136'),(14,'Impact of Leishmania metalloprotease GP63 on macrophage signaling.','Amandine Isnard, Marina T. Shio, Martin Olivier','2012-05-16','http://www.ncbi.nlm.nih.gov/pubmed/22919663'),(15,'Large, rapidly evolving gene families are at the forefront of host-parasite interactions in Apicomplexa.','AJ Reid','2014-09-26','http://www.ncbi.nlm.nih.gov/pubmed/25257746');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_tool`
--

LOCK TABLES `data_tool` WRITE;
/*!40000 ALTER TABLE `data_tool` DISABLE KEYS */;
INSERT INTO `data_tool` VALUES (1,'相关数据集1',1,'http://sdcs.sysu.edu.cn/','数据工具1'),(2,'相关数据集2',1,'http://www.sysu.edu.cn/','数据工具2'),(3,'公共数据集3',2,'http://yann.lecun.com/exdb/mnist/','数据工具3'),(4,'公共数据集4',2,'http://host.robots.ox.ac.uk/pascal/VOC/','数据工具4'),(5,'工具5',3,'http://caffe.berkeleyvision.org/','数据工具5'),(6,'工具6',3,'https://www.tensorflow.org/',NULL),(7,'工具7',3,'https://github.com/dmlc/mxnet',NULL),(8,'源数据1',0,'https://www.baidu.com',NULL),(9,'源数据2',0,'https://www.google.com',NULL),(10,'NCBI 生物医学论文数据库',2,'http://www.ncbi.nlm.nih.gov/pubmed',NULL),(11,'GISD 全球入侵物种数据库',2,'http://www.iucngisd.org/gisd/',NULL),(12,'中国外来入侵物种数据库',2,'http://www.chinaias.cn/wjPart/index.aspx',NULL),(13,'人类病原体无脊椎动物媒介生物信息资源数据库',2,'https://www.vectorbase.org/',NULL),(14,'欧洲生物信息学组织',2,'http://www.ebi.ac.uk/',NULL),(15,'Ensembl 基因组浏览数据库',2,'http://www.ensembl.org/index.html',NULL),(16,'WormBase 线虫生物数据库',2,'http://www.wormbase.org/',NULL),(17,'GeneDB 病原体基因组数据库',2,'https://en.wikipedia.org/wiki/GeneDB',NULL),(18,'曼氏血吸虫资料数据库',2,'http://www.cbil.upenn.edu/ParaDBs/Schistosoma_2/index.html',NULL),(19,'日本血吸虫资料数据库',2,'http://lifecenter.sgst.cn/schistosoma/cn/schistosomaCnIndexPage.do',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'成员1','专注1','信息1','工作1'),(2,'成员2','专注2','信息2','工作2'),(3,'成员3','专注3','信息3','工作3'),(4,'成员4','专注4','信息4','工作4'),(5,'成员5','专注5','信息5','工作5'),(6,'符林春','疟疾和中药抗病毒研究','符林春，男，研究员，博士生导师，广州中医药大学热带医学研所所长，广东省卫生系统“五个一工程”学术和技术带头人，国家中医药管理局中医药防治艾滋病咨询专家，中华中医药学会防治艾滋病分会副主任委员，广东省热带医学会副主任委员，中华医学会热带病和寄生虫分会委员，享受国务院政府特殊津贴专家。','       长期从事疟疾和中药抗病毒研究。主持或参与青蒿素类四个一类新药八种制剂的临床研究，参与青蒿素类复方研究，这些药物已成为最优秀的抗疟药，广泛使用于全球疟疾的防治。参与脑型疟的救治研究，使脑型疟病死亡率控制在 10%以下，达到国际先进水平。目前正参与中医药防治艾滋病的临床和实验研究。研究成果曾获得国家科技进步二等奖、三等奖各 1次，省部级一等奖 3 次，主持和参与各级政府科研项目 20 多项，发表学术论文 50 多篇。曾获“全国首届杰出青年中医奖”，国家教育部霍英东教育基金高校青年教师研究类二等奖。已培养博士、硕士研究生 10 多名，博士后研究人员 2 名。'),(7,'陈沛泉','病原生物学和中医药防治热带病','陈沛泉，男，广东省罗定市人，1949 年 9 月出生。现任广州中医药大学研究员，中医临床基础学科温病学（热带病）专业博士生导师，中华医学会热带病与寄生虫学学会会员， 广东省热带医学学会常委，国家自然科学基金评审专家库专家，广东省自然科学基金评审专家库专家。','       陈沛泉研究员从事病原生物学和中医药防治热带病的教学与研究 30 多年，参与青蒿素的基础和临床研究，团结协作，发现了青蒿素类药的杀虫速度要比国际上常用的甲氟喹、奎宁、氯喹等快得多; 适当延迟长疗程，治愈率可达 90%以上; 用于脑型疟救治，死亡率低于10%;海南南部恶性疟原虫对氯喹、哌喹的抗性曾经相当严重；甲氟喹、氯喹、哌喹、奎宁等对恶性疟原虫配子体无效，在首剂给药后 3-4 周还可感染蚊媒，而青素类药首次给药后 14天即可阻断恶性疟传播；目前海南恶性疟对青蒿琥酯和双氢青蒿素是敏感的；复方双氢青蒿素有望成为 WHO 一线抗疟药；上世纪九十年代初开始涉足生物技术，把体内、体外试验联系起来，对药物阻断疾病传播的实验研究和临床应用方面有较深入的见解。当前的研究方向是以分子生物学和细胞生物学手段对中医药防治热带病（传染病）的作用机理和实用方法进行深入探讨。先后参加或主持完成 WHO、国家、部（省）、厅（局）级和对外合作科研项目 20多项，多次以专家身份出国进行合作研究、在国际学术会议上宣读论文。在省级以上刊物发表论文 40 多篇。已经培养和协助培养硕士、博士研究生 10 多名。'),(8,'李常青','中医药治疗慢性乙型肝炎、肝纤维化、肝硬化和脂肪肝的临床医疗实验研究工作','李常青，男，1965 年 9 月生，湖南华容人，研究员，中医临床基础专业导师。','       教学科研成果：近年来先后主持 2 项省级课题和 1 项厅级课题、参加 1 项国家自然科学基金课题和 1 项省级课题的研究，主要开展了苦参碱靶向制剂抗乙型肝炎病毒和抗免疫性肝损伤的实验研究，证实苦参碱靶向制剂可以提高苦参碱的抗乙型肝炎病毒作用效果，并可减少用药剂量，降低其毒性作用。完成了包括叶下珠复方在内的多个中药复方抗乙型肝炎病毒、抗肝损伤和抗肝纤维化作用的临床和药效学研究工作。\r\n       论文论著发表情况：发表学术论文三十余篇，参加编写论著 1 部。\r\n       招收研究人员人数：已毕业两名，在读三名。\r\n       对外学术交流情况：06、07 年先后应邀出席台湾参加海峡两岸肝病治疗学术研讨会。'),(9,'曾庆平','中药生物工程和分子中药学','曾庆平，男，湖南常德人，1961 年 4 月出生。理学硕士、工学博士，研究员。中国生物化学与分子生物学学会、中华医学会传染病与寄生虫病学分会、中国性病艾滋病防治协会和广东省热带病学会会员，受聘为国家药品食品监督管理局、国家自然科学基金、广东省自然科学基金、广州市生物医药评审专家库专家，现任广州中医药大学热带医学研究所生物技术研究室主任。','       曾先后主持和参加国家自然科学基金项目（青蒿素生物合成途径的局部重建及青蒿素前体的生物转化、关木通中马兜铃酸合成代谢基因敲除的研究、DNA 疫苗联用转基因中草药防治艾滋病的研究、转人α-干扰素基因苦瓜的抗病毒实验研究）、国家中医药管理局项目（面向高产青蒿素的代谢途径工程育种研究）、省自然科学基金项目（鲨烯合酶基因敲除与转基因青蒿素高产植株的培育、中药复方配合 DNA 疫苗防治猴艾滋病的研究）、省科技计划项目（转基因青蒿氧化胁迫诱导及青蒿素前体大规模转化）、省教育厅项目（集成化艾滋病、乙型肝炎和 STD 基因诊断用反义探针微球的研制）及多项横向合作项目（高效低价疟疾检测试剂盒的研制等），在国内外发表论文数十篇，专著 4 本。曾作为国家公派访问学者赴芬兰赫尔辛基大学生物工程研究所工作，并参访了英国牛津大学和剑桥大学、德国 Max-Plank 研究所、荷兰雷登大学和瑞士联邦技术研究所等著名学府及科研院所。曾获邀参加美国著名的 Gordon 科学会议（GRC）的植物代谢工程专题研讨会，并进行论文展示及开展学术交流，还与欧美多所大学及研究所建立了合作关系。\r\n       自 1980 年以来，已在国内外发表学术论文 100 多篇（包括 SCI 论文），并在 GenBank发布基因序列 50 余条，主编专著《植物生物反应器》（2008，化学工业出版社）、《遗传修饰植物》（2006，科学出版社）、《生物医药前沿技术》（2004，人民卫生出版社）、《人类艾滋病》（2000，人民卫生出版社），参编专著《植物生物技术原理与方法》（1990，湖南科技出版社）。申请国家发明专利 2 项，获奖 8 项。现专业技术领域为生物工程，主要研究方向是中药生物工程（转基因中青蒿及青蒿素合成的微生物反应器研制）和分子中药学（青蒿基因组学、转录物组学、蛋白质组学、代谢物组学及其网络调控），并从事重大传染病（疟疾、AIDS、SARS、STD 等）病原体快速诊断试剂盒的开发。\r\n       目前已完成或正在开展的研究项目包括青蒿紫穗槐二烯合酶基因克隆及其在大肠杆菌中的表达、青蒿素前体的微生物合成及其在青蒿无细胞提取液中的生物转化、青蒿 CYP 基因在酵母内膜上的表达及膜结合型 CYP 催化青蒿素前体的转变、酵母 SS 基因克隆及农杆菌介导的反义 SS 基因转移；青蒿鲨烯合酶反义基因转化培育青蒿素高产植株的研究、基于锚定 RT-PCR 的青蒿 EST 克隆、测序及生物信息学分析、青蒿 cDNA 文库构建与 CYP 基因克隆及其表达的发育调节模式研究、青蒿 ADS 基因启动子低温诱导结合转录因子的分离与鉴定、青蒿素生物合成调控及其人工干预、环境胁迫诱导的青蒿素合成基因表达及其信号转导机制、单线态氧介导青蒿酸转变成青蒿素的体内外途径、基于 PfLDH 靶点的中药抗疟成分高通量筛选与生物鉴定等。'),(10,'袁冬生','中医药抗乙肝病毒、抗肝纤维化以及中医药治疗酒精性和非酒精性脂肪肝的基础和临床研究','袁冬生，男，江西乐安县人，1964 年 10 月出生，医学博士，研究员，中医临床基础专业硕士生导师，广东省肝脏病学会理事，广州市科技评审专家。','       长期坚持消化内科、肝炎专科临床，积累了丰富的中西医治疗慢性乙型肝炎、肝硬化、脂肪肝的临床经验。发表相关论文 20 多篇，主持国家级课题 1 项，主持省级课题 2 项，参与省级课题 3 项。参编《中医临床基础》教材（高等教育出版社），副主编《中医学基础》教材（科学出版社）。先后指导硕士研究生 4 名。'),(11,'杨瑞仪','中药生物工程及中药对肿瘤的免疫调控研究','杨瑞仪，女，广东大埔县人，1972 年 5 月出生，1998 年暨南大学免疫遗传专业硕士研究生毕业，广州中医药大学热带医学研究所副研究员，中医临床基础硕士生导师，中华医学会传染病与寄生虫病学会会员。','       曾先后主持或参加国家自然科学基金、国家中医药管理局、广东省自然科学基金、广东省教育厅、广东省卫生厅、广东省中医药管理局等科研项目 20余项。在国内有影响的核心期刊发表论文数十篇，参编著作 3 部。现专业技术领域为医药生物工程，主要研究方向为中药生物工程（包括转基因中药、中药活性成分的合成代谢研究、中药活性成分基因工程研究等）及中药对肿瘤的免疫调控研究。'),(12,'张奉学','病毒学研究和抗病毒药物的体内外活性研究开发与评价','张奉学研究员，安徽省人，1962 年出生。广州中医药大学中西医结合基础专业博士生导师。热带医学研究所病毒学研究室主任，世界中医药学会联合会肝病专业委员会常务理事，广东省热带医学学会常务理事、副秘书长，是广东省“千百十人才工程”培养对象，中国科学院“西部之光”人才培养计划“联合学者”。《生物技术通讯》理事，广州中医药大学学报编委。','       1985 年毕业于安徽中医学院，并获得学士学位，1991 年获得广州中医药大学中西医结合基础专业硕士学位，2002 年 8 月起广州中医药大学在职博士。2003 年 1 月至 2003 年 12月由国家科技部选派在日本长崎大学分子免疫遗传学系进修。2005 年 6 月获得医学博士学位并获得香港求是科技基金会“求是优秀研究生奖”。\r\n       长期从事病毒学研究和抗病毒药物的体内外活性研究开发与评价。作为主要成员完成国家自然科学基金三项，主持广东省自然科学基金项目 3 项，参与 2 项，主持广州市中药现代化重大专项 1 项；公开发表科研论文 30 余篇，SCI 收录 4 篇。参编学术专著两部。负责核苷类抗乙型肝炎一类新药阿德福韦酯的药效学评价并于 2003 年 7 月获临床批文。另外，负责三个中药新药的主要药效学评价并已经通过省级鉴定。申请专利 3 项。\r\n       近年主要在抗乙型肝炎病毒研究领域和美国 Thomas Jefferson 大学的 Dr. Mark Feitelson教授、中国科学院昆明植物研究所的陈纪军教授香港浸会大学徐敏博士等建立了稳定的研究伙伴关系，并同北京大学分子医学研究中心李刚教授在内啡肽类物质对 SIV 感染导致引起宿主细胞凋亡机制等领域进行了合作研究。\r\n       开设并主讲《病毒学理论与技术》研究生课程一门，每学年 30 学时，教学效果良好。并编写研究生用教材一部。已独立招收硕士研究生 8 名并具体负责指导 4 名博士生学位论文实验。指导七年制学生参加“挑战杯”竞赛获得 2003 年省级二等奖。'),(13,'胡英杰','植物化学、有机化学、药用植物资源开发利用学','胡英杰研究员，男，1962 年生，祖籍湖南。广州中医药大学热带医学研究所副所长兼药学研究室主任，博士研究生导师，广东省新药审评专家库专家，广东省、广州市科技项目评审专家。','       1983 年毕业于上海第一医学院药物化学专业（学士）；1988 年毕业于中国科学院昆明植物研究所植物化学专业（硕士）；2005 年毕业于广州中医药大学（博士）。1988 年起在西南林学院任教植物化学、有机化学、药用植物资源开发利用学等课程，并从事多项国家级、部省级项目植物化学方面的研究；1996 年起在广州中医药大学热带医学研究所从事药物活性中草药研究。研究领域涉及创新中药新药研发和中草药化学成分结构与药物活性研究，特别是治疗艾滋病中药与抗肿瘤活性天然产物研究。作为编委和副主编编写《植物化学》和《药用植物资源开发利用学》等 2 本高校教材。参加或主持国家级和省部级科研项目 10项；在 Phytochemistry、化学学报、中草药等药学类期刊发表论文 30 多篇，其中在 SCI 收录期刊 8 篇。获得发明专利授权 3 项。2002 年和 2005 年获广东省科学技术奖二等奖各 1项。'),(14,'黄玲','中药药理与毒理，中药对免疫性疾病的药效学和安全性评价及机制研究','黄玲，女，1963 年 11 月生，江西省赣州市人，副研究员。','       2003 年 9 月之前在广州中医药大学热带医学研究所工作，任药理毒理研究室副主任，主要从事抗疟疾、肝炎、艾滋病、自身免疫性疾病等的药效学和安全性评价。参与 2 个抗疟疾新药 Artecom 和 Artekin 的临床前研究，均已通过国家审批，其中 Artekin 的安全性评价为试验负责人，该药已获 WHO 推荐。现在《广州中医药大学学报》编辑部负责实验研究论文的编辑工作。\r\n       在国家及省级杂志发表论文共 26 篇。主持厅局级课题 3 项，参与国家及省部级课题 4项。');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'标题1','内容1','2016-04-26'),(2,'标题2','内容2','2016-03-09'),(3,'标题3','内容3','2015-07-15'),(4,'标题4','内容4','2015-05-25'),(5,'标题5','内容5','2014-07-17'),(6,'英国研发新药治疗 3 种“被忽视的热带病”','内容摘要<br />\r\n       英国科学家成功研发出一种单一疗法，或能够有效治疗 3 种被统称为“被忽视的热带病（NTD）”的致死性传染病。这三种传染病分别是：美洲锥虫病、睡眠病（又称非洲锥虫病)、利什曼病。世界卫生组织（WHO）表示“被忽视的热带病”严重影响着世界贫困人群的健康。<br />\r\n       英国知名科学杂志《Nature》于 2016 年 8 月 8 日刊文称，科学家成功研发出一种单一疗法，或能够有效治疗 3 种被统称为“被忽视的热带病（NTD）”的致死性传染病。“被忽视的热带病”主要是指在贫困地区尤其是热带地区炎热潮湿气候环境下流行的传染病，每年全球都会有数千万的人患病，导致超过 5 万人的死亡。<br />\r\n       美洲锥虫病、睡眠病（又称非洲锥虫病)、利什曼病--这三种热带病的最大共同点就是，它们都是通过拥有类似遗传基因特征的原生动物寄生虫感染引发的。<br />\r\n       研究人员成功找到了 3 种病原体内共通的酶，开发出能够阻碍其作用能力的化学物质。<br />\r\n       英国约克大学免疫学·感染症研究中心教授杰莱米·莫特拉姆（Jeremy Mottram）是该论文的作者。他强调，本次研究让人们对引发 3 种传染病的原生动物寄生虫有了突破性认知，让这些传染病的治愈成为可能。<br />\r\n       莫特拉姆教授在声明中表示，在进行人体临床试验之前需要检查化合物的毒性。不过在已经完成的动物实验中，已经确认了极佳的耐量性。<br />\r\n       小组成员为了研发出这种“特效药”，从瑞士诺华制药有限公司（Novartis）的化合物库中，先后挑选了 300 万种化合物进行活体原生动物寄生虫试验。<br />\r\n       之后，研究人员又利用针对有望分子的化学合成法，对其进行了微调整，让这种新药能够对 3 种传染病全部具有有效性。<br />\r\n■会发光的原生动物寄生虫<br />\r\n       这三种传染病中致死率最高的是睡眠病，引发该病的寄生虫在侵入人体中枢神经系统后，会导致神经机能的下降，让人陷入昏睡状态并导致死亡。<br />\r\n       想要研发能够以侵入脑内的病原体为目标的药剂是非常困难的，而在被本次研究中小组成员突破了这一难关。在实验初期，成功利用遗传基因编辑技术制作出会发光的原生动物寄生虫，并让小鼠感染该寄生虫。<br />\r\n       相关试验证实，这种化合物对美洲锥虫病和利什曼病也有相同效果。<br />\r\n       这三种传染病都有相应的疗法，不过现有的疗法全部都需要高额的治疗费用，而且均会带来副作用，治疗效果也并不理想。<br />\r\n       小鼠实验证实，本次新发现的化合物并没有损害小鼠细胞的正常机能，未观察到明显副作用。<br />\r\n       世界卫生组织（WHO）表示，被分类为“被忽视的热带病”的这三种传染病，均常见于公共卫生环境较差的地区，严重影响着世界贫困人群的健康。<br />\r\n       （转载自  科技世界网  http://www.twwtn.com/detail_217803.htm） ','2016-08-09'),(7,'专家研讨全球公共卫生视角下中国热带病防治策略','2016 年 04 月 25 日 10:12:41 来源：新华网<br />\r\n       新华网上海 4 月 25 日电（仇逸、严晓慧）由中华医学会主办 ，复旦大学附属上海市公共卫生临床中心承办的“2016 年中华医学会热带病与寄生虫学分会年会”23 日召开。我国传染病领域专家汇聚，共同探讨全球传染病预防机制与救治进展，合力应对中国热带病防治重任。<br />\r\n       知名传染病专家、上海市公共卫生临床中心党委书记卢洪洲教授介绍，热带病广义上是指主要发生在热带或亚热带地区的常见感染性疾病，以及少量热带地区所特有的非感染性疾病，狭义的热带病则是指在热带地区多发和常见的传染病、寄生虫病和虫媒病等。世界卫生组织（WHO）规定了 8 种最重要和最常见的热带病，即疟疾、血吸虫病、黑热病、锥虫病、丝虫病、麻风病、登革热和结核。<br />\r\n       近年来，随着经济快速发展、日益频繁的国内外交流等，热带病“去国籍化”现象日益凸显。全球面临的热带病输入、传播、复现和发生突发公共卫生事件的风险日益加大。热带病的流行、发病特点显著变化，扩大传播和疫情暴发风险增加，已引起国际社会广泛关注。 据中国 CDC 曹建平教授介绍，2010 年 10 月 14 日，WHO 首次发布了题为“努力消除被忽视热带疾病产生的全球影响”的报告。报告有 17 种 ，其中包括：狂犬病，登革热，致盲性沙眼等。2014 年 12 月 5 日，第四届金砖国家卫生部长会议，中国卫生计生委主任李斌介绍我国被忽略的热带病防控情况。WHO 发出抗击被忽视的热带病全球计划，要求各成员国加强防治。其中要求加强诊断、治疗、预防、媒介防制、保护（疫苗、预防药物、药浸蚊帐）等措施的实施与研究。<br />\r\n       我国是热带病危害最为严重的国家之一 。输入性热带病常见的有：疟疾、血吸虫病、登革热。上海市热带病的防治依然是不容忽视的公共卫生问题，热带病防治研究亟需加强。历史上，上海是疟疾、血吸虫病、丝虫病等的严重流行地区。近年，上海市对口援建新疆喀什地区及云南省部分地区是包虫病等流行区。上海每年还会收治大量的国内外就医者，其中不乏输入性热带病患者，甚至海外热带病求医者。<br />\r\n       大会由国家卫生计生委公共卫生应急相关部门召集业内专家共同分析我国热带病领域防控现况、援外经验与全球卫生事业发展需求，提出我国在热带病重点领域工作路线图。会议期间发起成立了热带病领域的五个学组（艾滋病、结核、肝病、寄生虫、虫媒传染病），学组将分别制定领域内相关诊疗指南与规范，定期组织学术研究，推动后续工作的落实。<br />\r\n    （转载自  新华网 http://www.sh.xinhuanet.com/201604/25/c_135309312.htm  ）','2016-04-25'),(8,'DNDi：打破受忽视疾病新药开发的窘境','       DNDi 开发新药的模式究竟是什么样的呢？ <br />\r\n       近日《自然》杂志报道了 DNDi（Drugs for neglected disease initiatives）的一个开发新药的新模式。DNDi 只用 10 年多一点的时间、2.9 亿美元就上市了 6 个新药，还有 26个在临床研究。<br />\r\n       这个组织声称他们的模式平均开发一个新药只要 1.1-1.7 亿美元，远低于制药工业 10亿美元一个新药的成本，这在传统的新药研发模式下，几乎是不可能。创造了这个不可能的DNDi 是一个非盈利新药研发组织，旨在以在通过研发新药，提高“受忽视疾病”（neglected diseases）患者的生活质量与健康状况。<br />\r\n        “受忽视疾病”这个说起来有些拗口的名词让很多人听起来有些陌生。“疾病有一条长尾——少数疾病影响着数亿人口，而其他多数疾病则困扰着较少的人。”受忽视疾病就是这条长尾，昏睡病、利什曼原虫病、南美锥虫病、儿童艾滋病、丝虫病、以及疟疾等都隶属在内，世界上有超过 10 亿人口正在受其困扰，这些很多患者每天的收入低于 1.25 美元。受忽视疾病包括一些在发展中国家最常见的感染，而且是造成低收入和中等收入国家人民慢性致残的主要原因。<br />\r\n       这些疾病不仅限于贫困的热带地区，其中一些疾病也是，或曾经是美国、欧洲南部和土耳其的流行病。但它们和这些贫穷地区的人们一样，几乎没有吸引到公众的注意，而它们造成的严重的健康问题和沉重的经济负担，却与那些严重疾病一样巨大。<br />\r\n       DNDi 是怎么成立起来的？<br />\r\n       1975 年到 1999 年，只有 1.1%的新药用于治疗被忽视疾病，而在 2000 年到 2011 年的十年间，这个数字也仅仅增长到 4%。在 1975 年到 1997 年期间研发的 1000 多种新药中，只有13 个新药与它们有关，这些疾病缺乏现代、安全、有效的治疗方案。<br />\r\n       药物研发是以市场为导向的，这类疾病多发生在贫穷地区，厂家即使投入小也无法获得足够利润。因此商业主体缺乏足够的动力进行针对于被忽视疾病的研发，但是把所有的过错推给制药公司是不太公平的。“我们需要记住，研发一种新药可能要花费 10 亿美元。研究资金很少，所以得按优先级别来投入资金。只要药物研发成本仍然这么贵，现实就不会改变。同时，药物研发总是遵循着同一种模式。”<br />\r\n       无国界医生组织是一个非牟利团体(NPO)。1999 年诺贝尔和平奖的得主，组织的成员深深意识到发展中国家的普通百姓极度缺乏救命良药，并捐出诺贝尔奖金，启动了 DNDi 为了改变这一情况，2003 年七个国际性的组织联合成立了 DNDi，他们分别是无国界医生组织，奥斯瓦尔多·克鲁兹基金会，印度医学研究委员会，肯尼亚医学研究所，马来西亚卫生部，法国巴斯德研究所，热带病研究和培训特别规划（作为这个组织的长期观察员），DNDi希望通过联合国际研究组织，政府部门、医药产业及相关的合作机构，为被忽视疾病患者提供有效的新药。<br />\r\n       在 DNDi 成立之初，诸多业内人士对于他们的理想赞誉有加，但是新药研发是一项复杂、昂贵、耗时良久的工程，这样一个松散的组织是否完成如此艰巨的任务大部分人持保留态度。然而在短短 13 年里，DNDi 所取得的成就让人惊喜。<br />\r\n       降低 90%的研发成本如何做到？<br />\r\n        DNDi 实际采用的是一个虚拟化的运作模式，为了控制研发成本，它的研发活动都是外包的，DNDi 和企业保持着密切的合作，同时充分调动公共资源。药企为其提供开放式技术，科学咨询师为其出谋划策；通过与大型药企富有效率的合作，能省去建立筛选文库等重复劳动，同时受忽视疾病的研发领域相对来说还是一片蓝海，这也让 DNDi 的临床试验与市场推广进行得非常顺利，这一切让 DNDi 在药品研发上与传统的企业研发相比具备很大成本优势。 前一阵默沙东在已经做了 8000 多人的临床试验后放弃一周一次 DPP4 抑制剂，并非因为这个药无效，而是无法在拥挤的市场上生存。很多药物如抗凝药 Zontivity、丙肝药物Incivek 在厂家投入大量资本上市后被更好的药物挤出市场。同样为了在激烈的竞争中领先，很多项目要在数据不完整的情况下冒险前进，增加失败几率。但是这些成本都是 DNDi不需要考虑的。DNDi 的疟疾新药就可以视作为“精简模式”的缩影。<br />\r\n       在 DNDi 创立的早期，世界卫生组织正呼吁利用复方药控制疟疾。看到这个机会之后，DNDi 的执行主任 Bernard Pécoul 博士联系了拥有两款疟疾药物的赛诺菲公司，建议由 DNDi进行复方药的临床试验，而赛诺菲则放弃该复方药的专利，并以不到 1 美元的价格为成人进行治疗。这次合作取得了空前的成功。自 2007 年上市后，数亿粒新药被运往非洲，极好地对疟疾进行了控制。而在于赛诺菲的合作下，这一新药的研发成本仅仅是 1400 万美元。<br />\r\n        或许在药品研发上，DNDi 外包的方式显得似乎有些取巧，但是能够协调众多的合作机构为一个目标服务是 DNDi 的过人之处，平衡不同类型合作机构的利益需求，特别是设计知识产权、保密协议、许可权利等一些关键资源的调配是其成功的关键，为了解决这一困境，DNDi 针对不同的合作方开发了多种合作模式。<br />\r\n       “长久以来，人们认为新药研发过于复杂，只有大型药企才能完成这一任务，”哈佛大学公共健康学院的全球健康管理论坛研究主任，同时也是 DNDi 董事会成员的 Suerie Moon博士说：“我认为如今我们能从 DNDi 的例子中学到很多经验，并把它们应用到其他更受关注的疾病中去。”虽然很多人认为 DNDi 所取得的成功是基于其非盈利的组织性质，是否能够适应商业运用仍然保持怀疑态度，但是作为众筹行业的一名从业者，投壶网认为 DNDi 所实践的这种众包的模式，或许真是一剂良方。<br />\r\n       http://www.cn-healthcare.com/articlewm/20160902/content-1005761.html','2016-09-02'),(9,'新突破！咔唑源先导药物治疗人类非洲锥虫病','非洲人类锥虫病，或 HAT，是一种在撒哈拉以南非洲的一些农村社区的热带病。一种媒介传播的寄生虫病，现有的诊断和治疗方案是复杂的，特别是在一些世界上最贫困的地区具有挑战性。<br/>\r\n    佐治亚大学的研究人员正在努力寻找最快的办法来治疗人类非洲锥虫病，其长期被称为昏睡病。通过努力改善已经在人类临床试验中测试的化学实体，他们希望有一个更快的路线研究可以口服给患者的药物以治疗疾病。<br/>\r\n    该研究“咔唑源先导药物治疗人类非洲锥虫病的发现，”发表在 8 月 26 日的《科学报告》中。“这是在试图寻找新的药物来控制疾病方面的一个重大的挑战，”Kojo Mensa Wilmot说，他是富兰克林文理学院细胞生物学系的主任、教授。“目前使用的治疗药物不能口服，并要求人们去一个设置在农村的诊所，无论是对卫生专业人士，还是那些感染了这种疾病的人，这都是一个问题。<br/>\r\n    新文章中乔治亚领导的团队提出的“药物改造”，是用一种疾病在其他疾病中进行进行测试的药物开发方法。其作为一个药物发现计划由美国国家卫生研究院资助一部分克利夫兰生物公司合成的一类化合物，试验研究小组从中选出对寄生虫有效的药物。使用疾病的动物模型，研究人员给小鼠口服药物并治愈疾病。他们最初的目标是创造化合物来治疗某些类型的癌症。超过 30 种化合物筛选，我们发现了一个治愈疾病和两个潜在消除感染的药物”，Mensa-Wilmot 说。“两个化合物在临床试验中，但发现这些反锥虫药的研发管线是可悲的，”Mensa Wilmot 说。“HAT 是一种贫穷的疾病，真的，所以很少有制药行业大量投资的动机。由于寄生虫可以产生抗药性，我们要提高警惕，寻找新的有效的，治疗疾病的口服药物。<br/>\r\n    HAT 是感染布氏锥虫属原生动物寄生虫传播给人类的疾病，通过采采蝇传播。农村人口生活在依赖于农业、渔业区、畜牧或狩猎最易暴露采采蝇环境，并因此感染疾病。该疾病的发展范围从单一的村庄到整个地区的地区。根据世界卫生组织的报告，持续的控制努力减少了新病例的数量，并在 2009 报告的数量下降了 50%。<br/>\r\n（转载自  中国制药网  http://www.zyzhan.com/news/detail/57295.html ） ','2016-09-01'),(10,'世卫组织总干事陈冯富珍出席世界卫生组织热带病合作中心揭牌仪式 ','2015 年 10 月 17 日上午，世界卫生组织热带病合作中心揭牌仪式在上海举行，世卫组织总干事陈冯富珍、国家卫生计生委副主任马晓伟、上海市副市长翁铁慧等出席，为合作中心揭牌并致辞。<br/>\r\n    陈冯富珍总干事高度评价了中国消除丝虫病、疟疾和血吸虫病等寄生虫病的进展，赞扬了中国疾病预防控制中心寄生虫病所取得的成绩，期待合作中心今后在中国和全球热带病防控工作中发挥更大作用，同时祝贺中国女药学家屠呦呦因成功制取青蒿素有效成分而获取医学领域诺贝尔奖，肯定了中国在医学研究和创新方面对世界的贡献。<br/>\r\n    马晓伟副主任祝贺中国疾控中心寄生虫病所成为世界卫生组织热带病合作中心，希望寄生虫病所继续总结成功经验，发挥专业技术优势，与世卫组织开展广泛深入合作，为中国“一带一路”、公共卫生援非等国际合作提供技术支撑，为加强全球热带病防控工作和实现联合国可持续发展目标而努力。<br/>\r\n    中国疾控中心寄生虫病所建所 65 年，1980 年成为第一批世卫组织在华合作中心。2015 年世卫组织“疟疾、血吸虫病和丝虫病合作中心”更名为“热带病合作中心”，与世卫组织进一步扩大了合作领域。<br/>\r\n    世卫组织相关官员，国家卫生计生委国际司、疾控局，上海市政府、卫生计生委，中国疾控中心相关人员陪同参加揭牌仪式。<br/>\r\n    （来源：中华人民共和国国家卫生和计划生育委员会）<br/>\r\n（http://news.163.com/15/1019/16/B6A6OCJV00014SEH.html?f=jsearch ）','2015-10-19'),(11,'构建公共卫生安全防控屏障','       “十三五”时期，应进一步突出预防为主、防治结合和全程管理的指导思想，积极预防可控的危险因素，降低感染性疾病危害，遏止并扭转慢性非传染性疾病的蔓延，切实维护好人民健康。 <br />\r\n       “十二五”以来，我国基本公共卫生服务均等化和传染病防控工作取得良好进展，但是，不容忽视的是由于预防保健战略的碎片化，危害公众健康的危险因素未能得到有效控制。感染性疾病依然严重威胁公共安全和公众健康，突发急性传染病不断出现，常见急性传染病联防联控机制尚未有效运作。慢性非传染性疾病呈井喷趋势，严重影响人群健康。<br />\r\n       为此建议：扩展基本公共卫生服务项目，完善公共卫生服务模式，不断提高人均公共卫生服务的筹资水平。要明确政府主体职责，加大对公共卫生服务项目、人力资源、设备的投入，建立稳定长效的投入机制，并适当向农村贫困地区倾斜，保证贫困人口获得公平的公共卫生服务。建立多方筹资渠道，鼓励社会组织、企业、慈善机构等兴办公共卫生服务事业。合理设置公共卫生服务项目，科学界定重大和基本公共卫生服务项目范畴。各级政府在加大公共卫生服务资金支持力度的同时，制定配套的资金使用规范。<br />\r\n       加强传染病监测和防控，强化源头治理和联防联控，防范突发急性传染病发生。健全监测网络和预警平台，实现突发急性传染病早期发现和预警。强化隶属不同管理条块的基层单位之间的联合防控机制，明确各方责任区域和防控目标，督促落实各部门承担的防控任务。强化重大新发传染病防控，尤其是艾滋病、结核病、血吸虫病、乙型肝炎、人畜共患病等疾病的有效防控。发挥我国防控传统传染病与热带病的优势，积极实施走出去战略，扩大我国公共卫生的国际影响力。<br />\r\n       优化国家突发公共卫生事件应急指挥决策系统，提高我国卫生应急体系的前瞻性、集成度和有效性，全面提升突发急性传染病防治效率。完善突发急性传染病临床救治定点医院网络，提升重症病例救治水平。加强专家应急队伍和应急处置队伍建设。提升不明原因疾病和新发传染病的实验室检测鉴定技术、能力储备，增强病因快速调查和有毒物质的检测能力。<br />\r\n       此外，还要加强健康干预，遏制慢性疾病的井喷，加强重大慢性病的管理，减少慢性病导致的失能、伤残、早逝和经济负担。如制定有利于慢性病防控的公共政策体系，包括控烟、限酒、减盐、减糖、促进运动等有利于健康的配套措施。还如转变慢病管理模式，将疾病管理转为健康管理，将预防为主、关口前移、分级诊疗、防治结合、中西医并重落到实处，提供慢性病的临床预防性服务等。<br />\r\n       （转载 http://news.163.com/16/0705/11/BR75MV7L00014AED.html ） ','2016-07-05');
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
INSERT INTO `project` VALUES (1,'类别一','课题1','介绍1','进展1'),(2,'类别一','课题2','介绍2','进展2'),(3,'类别二','课题3','介绍3','进展3'),(4,'类别三','课题4','介绍4','进展4'),(5,'类别三','课题5','介绍5','进展5'),(6,'类别三','课题6','介绍6','进展6'),(7,'热带病','热带病医学','       热带医学是由热带病和公共卫生 2 部分组成，是研究发生或发现于热带、亚热带地区各种疾病的诊断、治疗、预防以及如何控制和消灭这些疾病的科学，是集基础医学、临床医学和预防医学为一体的综合性学科，涉及生物学、遗传学、寄生虫学、公共卫生学等多门交叉学科，既包括自然科学又包括社会科学。世界卫生组织认定了 8 种最重要、最常见的热带病：疟疾、血吸虫病、丝虫病、黑热病、锥虫病、麻风病、肺结核病和登革热，这些疾病是热带医学现在和今后研究的重点。 ','       热带医学是由热带病和公共卫生 2 部分组成，是研究发生或发现于热带、亚热带地区各种疾病的诊断、治疗、预防以及如何控制和消灭这些疾病的科学，是集基础医学、临床医学和预防医学为一体的综合性学科，涉及生物学、遗传学、寄生虫学、公共卫生学等多门交叉学科，既包括自然科学又包括社会科学。热带病一直是热带医学的研究重点，过去将热带病理解为寄生虫病，事实上，寄生虫病仅是热带病的重要组成部分，热带病还涉及许多由其他病原生物引起的感染性疾病。世界卫生组织认定了 8 种最重要、最常见的热带病：疟疾、血吸虫病、丝虫病、黑热病、锥虫病、麻风病、肺结核病和登革热，这些疾病是热带医学现在和今后研究的重点。 <br />\r\n       世界经济和工业全球化进程的加快，全球气候的变暖，流动人口数量的急剧增加，皆使热带病发生的范围进一步扩大，同时，热带病防治中遇到的诸如贫穷、教育、初级卫生保健、传递系统、基础设施等制约热带病研究的问题仍然无法解决，因此，不仅要注重热带病的临床防治工作，还需要研究该病发生或流行与公共卫生意识与设施、环境条件及人们生活劳作习惯间的关系，是一项需要全民参与的社会工程。<br />\r\n       随着全球经济和科技的发展，社会的进步，很多热带病得到控制。但是，新发传染病不断涌现，一些原已控制的传染病仍有潜在流行趋势，不断关注新问题，努力探索热带病防治的新理念、诊断的新方法和提高治疗水平，是我们追求的目标。<br />\r\n       热带医学的研究现状世纪 70 年代以来，病原体生物学研究从细胞水平发展到基因水平，对细胞型病原体的抗生素类研发已经达到了成熟阶段，随着药理学先进技术和测试方法的应用，抗生素及化学药物治愈了许多传染性热带病疾病，化学性杀虫剂和消毒剂对节肢动物传播媒介和疫源地病原体进行有效杀灭和消毒，中断了传播环节，有效防治传染病。在免疫学领域内，用来预防不同传染病的新疫苗被发明，不但有控制白喉、脊髓灰质炎、麻疹等传染病的疫苗，而且也有效控制了须具传播媒介传播的黑热病、丝虫病、疟疾以及土源性和食源性寄生虫等疾病。<br />\r\n        分子生物学技术日新月异发展，使原始的病原检测发展为免疫学方法和核酸技术。基因探针和聚合酶链反应凭借快速、敏感性高、特异性强的特点，已经广泛用于病毒、细菌、寄生虫等的病原检测、药物敏感性实验、疗效监测和疾病流行病学研究中，先进的纳米技术和DNA 芯片逐渐应用于病毒和细菌的检测研究，DNA 疫苗的研制、转基因技术也在多项病毒抗原疫苗生产方面取得了进展。地理信息系统和遥感技术已经用于媒传疾病及媒介的监测，在疾病流行的早期监督和预警、危险地区的动态适时监测等方面发挥了极大作用。<br />\r\n       世纪初成立的英国皇家热带医学及卫生学会、澳大利亚寄生虫学会和美国热带医学学会均致力于促进和交流有关热带医学的研究、热带病的控制、治疗、预防等。我国近年来相继成立了多所热带医学研究所，如北京热带医学研究所、南方医科大学热带医学研究所、广州中医药大学热带医学研究所、海南热带病研究所等科研机构，在我国热带医学的临床与科研工作方面做出了突出的贡献。<br />\r\n       热带医学研究不可“高枕无忧预防传染病的疫苗不断研制应用，抗生素和杀虫剂的广泛开发使用，使传染病发病率和病死率已经维持相对稳定的低水平，于是很多人认为“传染病的问题已初步解决”或“人类与疾病斗争的重点应该转移至位居死因前列的非传染性慢性病方面”。事实上，由于近年来对自然疫源地的过度开发和对野生动物的滥杀，人类饮食习惯改变，气候、生态环境变化，抗生素和杀虫剂的滥用等多方面因素，促使病原物种变异，传染病疫情更加复杂，多种传染病仍未得到有效控制，且有进一步扩大流行趋势。例如血吸虫病、班氏丝虫病等寄生虫病流行于全世界 100 多个国家和地区，威胁 40％的地球人口，病毒病和细菌病等其他热带疾病发病迅猛，传染源、媒介昆虫活动途迁范围扩大，热带和非热带地区的传染病已很难严格区分，原已控制的传染病如疟疾、结核病等死灰复燃，重新肆虐人类。同时，也引发了一些新的人兽共患传染病，由于人群对新发现的传染病普遍易感，且无有效防治用药和措施，使病死率均高，人类面临着热带病新的严重挑战。2003 年在全球迅速扩散流行的急性传染性非典型肺炎(sARs)，虽然得到了及时控制并最后扑灭，但也说明需要时刻重视，不断加强公共卫生的防御系统及对突变疾病事件控制能力。热带病的侵袭对社会经济的发展和稳定产生极大破坏，对人类生存和发展构成严重威胁，是当今重大的公共卫生问题和社会问题。<br />\r\n       很多老的传染病被控制和消灭，新的传染病又被发现，人类消灭传染病的速度远远落后于新传染病出现的速度。热带病的防治任重而道远，我们应有保护全人类健康的长期性、艰巨性和复杂性的基本防制策略，对病原体病原学持续研究，研制有效的具有预防性和治疗性的免疫疫苗，不断及时发现新传染病，不断建立更敏感、特异的诊断技术。<br />\r\n       关注研究热点，展望未来发展趋势免疫预防工作将成为 21 世纪热带病防治工作的一个重要方面，HIV、囊虫病、疟疾、血吸虫病、弓形虫病、登革热、甲型和戊型肝炎作为现在主要影响我国人民健康的热带病，将成为攻关研究的重点，针对这些疾病研制重组疫苗、多肽疫苗、DNA 疫苗是今后的研究热点。<br />\r\n       随着分子生物学、细胞生物学、基因技术的飞速发展，后基因组学、比较基因组学和蛋白质组学的研究以及生物信息学、细胞微生物学将成为热带医学重要的研究手段；生物芯片技术研究重点将集中在感染性疾病诊断芯片、病原耐药谱监测芯片、遗传病检测和诊断芯片等，其应用前景十分广阔；利用最先进的纳米技术制造的生物传感器芯片，也将有利于今后的常规临床生化反应和代谢产物的检测；感染性疾病的基因工程疫苗的研究将全面走向开发应用，对肝炎、艾滋病、血吸虫病等的预防和治疗将起巨大的作用。<br />\r\n       在热带病的监测和防治方面，充分利用先进的监测技术，建立健全热带病监测评估体系和网络系统，对新发现和再出现传染病的全球监测系统是今后的发展趋势。进一步加强遥感技术和远程医疗技术的研究，将有利于提高疾病监测和防治水平刊，建立和分析各种生物体基因生命图谱，获取最根本原因证据，将有利于填补热带病防制措施和技术中的空白。<br />\r\n       中国传统医学在热带病防治中也将发挥重要的作用，将中西医结合、中药现代化等先进技术和理论运用于热带医学的研究中，使热带病的防治方法更新、更多、更有效，也将成为我国发展特色医疗优势的一个重要方面。国家应进一步加强疾病防治决策研究的力度，针对突发事件，不断总结经验，补充、完善具体方法，制定科学和明确的任务和措施。同时，加强健康教育与健康促进工作，普及卫生防病知识，动员社会全员参与，提高个人防护意识。将热带病的防治建成一个社会系统工程，也将成为今后我国热带医学发展的新策略。<br />\r\n       《东南哑热带病和卫生学杂志》社论指出：“社会进步、经济发展、文化提高、自我保健意识的建立，人类心理素质的增强，在控制传染病上发挥的作用比医学科学更加霞要。”改变热带病流行地区经济文化落后的现状，重视社会预防、康复医学、公共卫生教育，发展倡导全社会尊重、保护和爱护自然，达到人与自然的真正和谐，真正使热带病销声匿迹。');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_team`
--

LOCK TABLES `project_team` WRITE;
/*!40000 ALTER TABLE `project_team` DISABLE KEYS */;
INSERT INTO `project_team` VALUES (3,1,1),(1,1,3),(2,2,3),(6,3,2),(4,4,2),(5,5,1),(7,7,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'团队1','专注1','工作1'),(2,'团队2','专注2','工作2'),(3,'团队3','专注3','工作3'),(4,'团队4','专注4','工作4'),(5,'团队5','专注5','工作5'),(7,'热带病研究团队','以疟原虫为主的热带病原学基础研究、热带病诊断和病原鉴别技术的开发及应用研究、热带病病原和虫媒载体耐药机理研究、热带病疫苗的开发研制和应用研究、热带病相关多肽药物的开发和应用研究、热带病病理学及诊断技术及防治措施的研究、热带病预防与控制的研究、研究我省黎族高发疾病与热带病的关系','       研究方向一：以疟原虫为主的热带病原学基础研究，开展对疟原虫、恙虫立克次体等的病原分子医学研究。其主要任务是利用 Genbank 中已知的基因序列和生物信息学手段，筛选可能的靶基因并鉴定其功能，掌握病原体在环境和药物选择压力下的基因的变异规律，病原体与宿主（人和储蓄宿主）相互作用的分子机制（致病和免疫的分子机制），为研制新的治疗药物、诊断试剂和基因疫苗的开发与研制奠定坚实的基础。\r\n       研究方向二：热带病诊断和病原鉴别技术的开发及应用研究，热带病诊断和病原鉴别技术是热带病防治的基础技术，在临床诊断、疗效判定和流行病学调查中均具有重要的作用。热带病（原学）重点实验室除了要充分掌握和利用现有成熟的热带病基本诊断和病原鉴别技术外，还要不断地跟踪国内外的研究进展，不断地将新技术移植应用于基础研究的同时，积极探讨其临床实际应用的可行性。重点利用分子生物学、基因组学、蛋白质组学、免疫学、细胞生物学和现代组织（免疫）病理技术的方法和手段寻找热带病诊断和治疗的新的靶点，争取研究开发出具有自主知识产权的热带病诊断和病原鉴别技术，并将这些技术应用于临床和流行病学研究。努力争取将实验室建设成为具有发现、诊断和鉴定新的热带病病原能力的国内权威实验室。\r\n       研究方向三：热带病病原和虫媒载体耐药机理研究，热带病病原对治疗药物耐药和虫媒载体对各种杀虫剂耐药是导致疟疾等热带病难以控制的另一主要因素。在这一研究领域，实验室将主要应用分子生物学、基因组学、分子免疫学的方法和手段，从分子水平研究热带病病原和虫媒载体的耐药机理，进而寻找治疗和干预热带病病原和虫媒载体耐药的新方法。\r\n       研究方向四：热带病疫苗的开发研制和应用研究，当前研究者普遍认为，疫苗是防治热带病最安全、廉价和有效的手段。但时至今日，在热带病疫苗特别是疟疾疫苗研究方面，尽管国际社会投入了大量的人力、财力和物力，科学家进行了大量的研究工作，至今尚没有研制和生产出任何明确具有临床防治效果的疫苗。因此，在热带病疫苗开发方面也有许多研究空白。热带病原生物学重点实验室将充分利用分子生物学、免疫学、细胞生物学和当代先进的生物技术方法和手段，除了寻找有效诱导宿主免疫系统对热带病病原体的细胞和体液免疫反应的载体和佐剂，解决传统疫苗免疫效价过低，持续时间不长等传统疫苗策略的不足之处以外，还要采用新的构建和制备疫苗技术和策略重点开发疟疾、登革热、立克次体等热带病防治疫苗。\r\n       研究方向五：热带病相关多肽药物的开发和应用研究，多肽是涉及生物体内各种细胞功能的生物活性物质，几乎所有细胞都受多肽的调节，它涉及激素分泌、神经、细胞生长和生殖等各个领域。研究体内分泌的多肽对疾病发病和转归等方面的影响，不仅有助于增进对人体生理及病理生理过程的认识，也将为临床诊断和治疗疾病提供理论依据，而且还有助于发现一些与疾病相关的新的蛋白质。热带病（原学）重点实验室将从分子、细胞生物学的角度重点寻找海洋生物及热带病原宿主体内分泌的活性多肽，争取发现数个具有防治热带病活性的多肽物质，进而探讨这些多肽在热带病发病和转归中的作用机理，为热带病的防治寻找新的方法和策略。\r\n       研究方向六：热带病病理学及诊断技术及防治措施的研究，热带病是以生物性致病因子为主引起的疾病，是热带地区的多发病和特有疾病。2003年在广东地区出现并迅速漫延至全国、全球的传染性非典型肺炎（SARS），以及 2004 年初全球范围内禽流感的流行，给我国和世界人民造成巨大的灾难，这些疾病的爆发给广大科研工作者敲响了警钟：必须高度重视传染性疾病的防治研究工作。尽管海南在这两次流行中幸免波及，但决不能掉以轻心。探寻敏感、特异、迅速、准确、定量的传染性疾病的诊断技术对于有效控制传染性疾病的爆发流行至关重要。我们将在在病原分子医学研究的基础上，进行病毒感染的分子生物学诊断、细胞模型、抗病毒治疗及疗效评价的研究；对已知病原体如疟原虫、乙型肝炎病毒、恙虫病立克次体、粪类园线虫、猪囊尾蚴、曼氏裂头蚴、肝吸虫、弓形虫、肺孢子虫、隐孢子虫、艾滋病毒、冠状病毒等建立或引进简便、快速、敏感、特异的免疫检测和基因检测新技术，建立技术标准、研发商品化检测试剂盒，建立常见热带病诊断方法及防治措施，研究开发基因疫苗。\r\n       研究方向七：热带病预防与控制的研究，开展热带病原的对外检测服务，并提供专业性治疗建议。对省内各人群上述各种人体寄生虫和其他传染性疾病的流行病学调查，填补省内的有关方面资料空白，为有关机构提供准确的流行病学数据。同时开展预防与控制的相关研究。开展艾滋病和结核病的预防与控制措施和策略研究，重点研究艾滋病和结核病的诊断与筛查，预防与教育与干预方法等应用研究。\r\n       研究方向八：研究我省黎族高发疾病与热带病的关系，重点研究我省疟疾区人群一些基因变异与疟疾抵抗性的关系，阐明疟疾抵抗性的遗传基础及一些基因的进化在疟疾流行过程中的作用。');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member`
--

LOCK TABLES `team_member` WRITE;
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
INSERT INTO `team_member` VALUES (4,1,3),(1,1,5),(3,2,4),(5,2,5),(6,3,1),(2,3,2),(7,7,6),(8,7,7),(9,7,8),(10,7,9),(11,7,10),(12,7,11),(13,7,12),(14,7,13),(15,7,14);
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

-- Dump completed on 2016-11-29 19:41:33
