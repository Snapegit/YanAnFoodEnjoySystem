-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl1421469
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl1421469`
--

/*!40000 DROP DATABASE IF EXISTS `cl1421469`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl1421469` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl1421469`;

--
-- Table structure for table `benditese`
--

DROP TABLE IF EXISTS `benditese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benditese` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishitupian` longtext COMMENT '美食图片',
  `meishijieshao` longtext NOT NULL COMMENT '美食介绍',
  `meishixiangqing` longtext COMMENT '美食详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='本地特色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benditese`
--

LOCK TABLES `benditese` WRITE;
/*!40000 ALTER TABLE `benditese` DISABLE KEYS */;
INSERT INTO `benditese` VALUES (61,'2024-01-08 02:49:01','烤鸭','file/benditeseMeishitupian1.jpg,file/benditeseMeishitupian2.jpg,file/benditeseMeishitupian3.jpg','烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。北京烤鸭分为两大流派，而北京最著名的烤鸭店也即是两派的代表。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”。','<p><span style=\"color: rgb(25, 27, 31); background-color: rgb(255, 255, 255);\">烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。北京烤鸭分为两大流派，而北京最著名的烤鸭店也即是两派的代表。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”。烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。北京烤鸭分为两大流派，而北京最著名的烤鸭店也即是两派的代表。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”。烤鸭是具有世界声誉的北京著名菜式，起源于中国南北朝时期，《食珍录》中已记有炙鸭，在当时是宫廷食品。用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。北京烤鸭分为两大流派，而北京最著名的烤鸭店也即是两派的代表。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”。</span><img src=\"http://localhost:8080/cl1421469/file/1704682895163.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>'),(62,'2024-01-08 02:49:01','牛油果沙拉','file/benditeseMeishitupian2.jpg,file/benditeseMeishitupian3.jpg,file/benditeseMeishitupian4.jpg','美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2美食介绍2','<p>美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2美食详情2</p>'),(63,'2024-01-08 02:49:01','美食名称3','file/benditeseMeishitupian3.jpg,file/benditeseMeishitupian4.jpg,file/benditeseMeishitupian5.jpg','美食介绍3','美食详情3'),(64,'2024-01-08 02:49:01','美食名称4','file/benditeseMeishitupian4.jpg,file/benditeseMeishitupian5.jpg,file/benditeseMeishitupian6.jpg','美食介绍4','美食详情4'),(65,'2024-01-08 02:49:01','美食名称5','file/benditeseMeishitupian5.jpg,file/benditeseMeishitupian6.jpg,file/benditeseMeishitupian7.jpg','美食介绍5','美食详情5'),(66,'2024-01-08 02:49:01','美食名称6','file/benditeseMeishitupian6.jpg,file/benditeseMeishitupian7.jpg,file/benditeseMeishitupian8.jpg','美食介绍6','美食详情6');
/*!40000 ALTER TABLE `benditese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问内容',
  `reply` longtext COMMENT '回复内容',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704683606150 DEFAULT CHARSET=utf8 COMMENT='客服聊天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2024-01-08 02:49:01',1,'提问内容1','回复内容1',1,1),(102,'2024-01-08 02:49:01',2,'提问内容2','回复内容2',2,2),(103,'2024-01-08 02:49:01',3,'提问内容3','回复内容3',3,3),(104,'2024-01-08 02:49:01',4,'提问内容4','回复内容4',4,4),(105,'2024-01-08 02:49:01',5,'提问内容5','回复内容5',5,5),(106,'2024-01-08 02:49:01',6,'提问内容6','回复内容6',6,6),(1704683437277,'2024-01-08 03:10:36',NULL,'1111111',NULL,0,1704683313174),(1704683606149,'2024-01-08 03:13:25',1,NULL,'222222',NULL,1704683313174);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg,file/1704683588399.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussmeishixinxi`
--

DROP TABLE IF EXISTS `discussmeishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussmeishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704683398636 DEFAULT CHARSET=utf8 COMMENT='美食信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussmeishixinxi`
--

LOCK TABLES `discussmeishixinxi` WRITE;
/*!40000 ALTER TABLE `discussmeishixinxi` DISABLE KEYS */;
INSERT INTO `discussmeishixinxi` VALUES (1704683398635,'2024-01-08 03:09:58',51,1704683313174,'file/1704683310076.jpg','123','11111111111',NULL);
/*!40000 ALTER TABLE `discussmeishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishileixing`
--

DROP TABLE IF EXISTS `meishileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='美食类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishileixing`
--

LOCK TABLES `meishileixing` WRITE;
/*!40000 ALTER TABLE `meishileixing` DISABLE KEYS */;
INSERT INTO `meishileixing` VALUES (41,'2024-01-08 02:49:01','轻食'),(42,'2024-01-08 02:49:01','麻辣美食'),(43,'2024-01-08 02:49:01','美食类型3'),(44,'2024-01-08 02:49:01','美食类型4'),(45,'2024-01-08 02:49:01','美食类型5'),(46,'2024-01-08 02:49:01','美食类型6');
/*!40000 ALTER TABLE `meishileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishipengren`
--

DROP TABLE IF EXISTS `meishipengren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishipengren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  `meishitupian` longtext COMMENT '美食图片',
  `shicai` varchar(200) NOT NULL COMMENT '食材',
  `pengrenbuzhou` longtext NOT NULL COMMENT '烹饪步骤',
  `shipin` longtext COMMENT '视频',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='美食烹饪';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishipengren`
--

LOCK TABLES `meishipengren` WRITE;
/*!40000 ALTER TABLE `meishipengren` DISABLE KEYS */;
INSERT INTO `meishipengren` VALUES (91,'2024-01-08 02:49:01','牛油果沙拉','轻食','file/1704683101163.jpg','牛油果','1 主料：牛油果2个配料：彩椒、芒果、圣女果、苦菊调料：橄榄油、盐、黑胡椒\n2 将牛油果、芒果、圣女果、彩椒、苦菊改刀后置入碗中;\n3 淋入橄榄油；\n4 撒入黑胡椒和海盐调味；\n5 搅拌均匀后装盘即可食用。','file/1704683142296.mp4'),(92,'2024-01-08 02:49:01','美食名称2','美食类型2','file/meishipengrenMeishitupian2.jpg,file/meishipengrenMeishitupian3.jpg,file/meishipengrenMeishitupian4.jpg','食材2','烹饪步骤2','file/1704683676957.mp4'),(93,'2024-01-08 02:49:01','美食名称3','美食类型3','file/meishipengrenMeishitupian3.jpg,file/meishipengrenMeishitupian4.jpg,file/meishipengrenMeishitupian5.jpg','食材3','烹饪步骤3',''),(94,'2024-01-08 02:49:01','美食名称4','美食类型4','file/meishipengrenMeishitupian4.jpg,file/meishipengrenMeishitupian5.jpg,file/meishipengrenMeishitupian6.jpg','食材4','烹饪步骤4',''),(95,'2024-01-08 02:49:01','美食名称5','美食类型5','file/meishipengrenMeishitupian5.jpg,file/meishipengrenMeishitupian6.jpg,file/meishipengrenMeishitupian7.jpg','食材5','烹饪步骤5',''),(96,'2024-01-08 02:49:01','美食名称6','美食类型6','file/meishipengrenMeishitupian6.jpg,file/meishipengrenMeishitupian7.jpg,file/meishipengrenMeishitupian8.jpg','食材6','烹饪步骤6','');
/*!40000 ALTER TABLE `meishipengren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishixinxi`
--

DROP TABLE IF EXISTS `meishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  `meishitupian` longtext COMMENT '美食图片',
  `meishijieshao` longtext NOT NULL COMMENT '美食介绍',
  `meishixiangqing` longtext NOT NULL COMMENT '美食详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704683538485 DEFAULT CHARSET=utf8 COMMENT='美食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishixinxi`
--

LOCK TABLES `meishixinxi` WRITE;
/*!40000 ALTER TABLE `meishixinxi` DISABLE KEYS */;
INSERT INTO `meishixinxi` VALUES (51,'2024-01-08 02:49:01','美食名称1','美食类型1','file/meishixinxiMeishitupian1.jpg,file/meishixinxiMeishitupian2.jpg,file/meishixinxiMeishitupian3.jpg','美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1','<p>美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1美食详情1<img src=\"http://localhost:8080/cl1421469/file/1704683181647.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','2024-01-08 11:10:12',4,'用户账号1','用户姓名1','是','',2),(52,'2024-01-08 02:49:01','美食名称2','美食类型2','file/meishixinxiMeishitupian2.jpg,file/meishixinxiMeishitupian3.jpg,file/meishixinxiMeishitupian4.jpg','美食介绍2','美食详情2','2024-01-08 10:49:01',2,'用户账号2','用户姓名2','是','',2),(53,'2024-01-08 02:49:01','美食名称3','美食类型3','file/meishixinxiMeishitupian3.jpg,file/meishixinxiMeishitupian4.jpg,file/meishixinxiMeishitupian5.jpg','美食介绍3','美食详情3','2024-01-08 10:49:01',3,'用户账号3','用户姓名3','是','',3),(54,'2024-01-08 02:49:01','美食名称4','美食类型4','file/meishixinxiMeishitupian4.jpg,file/meishixinxiMeishitupian5.jpg,file/meishixinxiMeishitupian6.jpg','美食介绍4','美食详情4','2024-01-08 10:49:01',4,'用户账号4','用户姓名4','是','',4),(55,'2024-01-08 02:49:01','美食名称5','美食类型5','file/meishixinxiMeishitupian5.jpg,file/meishixinxiMeishitupian6.jpg,file/meishixinxiMeishitupian7.jpg','美食介绍5','美食详情5','2024-01-08 10:49:01',5,'用户账号5','用户姓名5','是','',5),(56,'2024-01-08 02:49:01','美食名称6','美食类型6','file/meishixinxiMeishitupian6.jpg,file/meishixinxiMeishitupian7.jpg,file/meishixinxiMeishitupian8.jpg','美食介绍6','美食详情6','2024-01-08 10:49:01',6,'用户账号6','用户姓名6','是','',6),(1704683538484,'2024-01-08 03:12:17','烤鸭','轻食','file/1704683513243.jpg','美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍美食介绍','<p>美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情美食详情<img src=\"http://localhost:8080/cl1421469/file/1704683532033.jpg\" alt=\"\" data-href=\"\" style=\"\"/></p>','2024-01-08 11:15:22',4,'123','李飞飞','是','通过',0);
/*!40000 ALTER TABLE `meishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meishizhuanfa`
--

DROP TABLE IF EXISTS `meishizhuanfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meishizhuanfa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `meishimingcheng` varchar(200) NOT NULL COMMENT '美食名称',
  `meishileixing` varchar(200) DEFAULT NULL COMMENT '美食类型',
  `meishitupian` longtext COMMENT '美食图片',
  `meishijieshao` longtext COMMENT '美食介绍',
  `meishixiangqing` longtext COMMENT '美食详情',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `zhuanfazhanghao` varchar(200) DEFAULT NULL COMMENT '转发账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704683410627 DEFAULT CHARSET=utf8 COMMENT='美食转发';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meishizhuanfa`
--

LOCK TABLES `meishizhuanfa` WRITE;
/*!40000 ALTER TABLE `meishizhuanfa` DISABLE KEYS */;
INSERT INTO `meishizhuanfa` VALUES (81,'2024-01-08 02:49:01','美食名称1','美食类型1','file/meishizhuanfaMeishitupian1.jpg,file/meishizhuanfaMeishitupian2.jpg,file/meishizhuanfaMeishitupian3.jpg','美食介绍1','美食详情1','用户账号1','用户姓名1','转发账号1'),(82,'2024-01-08 02:49:01','美食名称2','美食类型2','file/meishizhuanfaMeishitupian2.jpg,file/meishizhuanfaMeishitupian3.jpg,file/meishizhuanfaMeishitupian4.jpg','美食介绍2','美食详情2','用户账号2','用户姓名2','转发账号2'),(83,'2024-01-08 02:49:01','美食名称3','美食类型3','file/meishizhuanfaMeishitupian3.jpg,file/meishizhuanfaMeishitupian4.jpg,file/meishizhuanfaMeishitupian5.jpg','美食介绍3','美食详情3','用户账号3','用户姓名3','转发账号3'),(84,'2024-01-08 02:49:01','美食名称4','美食类型4','file/meishizhuanfaMeishitupian4.jpg,file/meishizhuanfaMeishitupian5.jpg,file/meishizhuanfaMeishitupian6.jpg','美食介绍4','美食详情4','用户账号4','用户姓名4','转发账号4'),(85,'2024-01-08 02:49:01','美食名称5','美食类型5','file/meishizhuanfaMeishitupian5.jpg,file/meishizhuanfaMeishitupian6.jpg,file/meishizhuanfaMeishitupian7.jpg','美食介绍5','美食详情5','用户账号5','用户姓名5','转发账号5'),(86,'2024-01-08 02:49:01','美食名称6','美食类型6','file/meishizhuanfaMeishitupian6.jpg,file/meishizhuanfaMeishitupian7.jpg,file/meishizhuanfaMeishitupian8.jpg','美食介绍6','美食详情6','用户账号6','用户姓名6','转发账号6'),(1704683410626,'2024-01-08 03:10:09','美食名称1','美食类型1','file/meishixinxiMeishitupian1.jpg,file/meishixinxiMeishitupian2.jpg,file/meishixinxiMeishitupian3.jpg','美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1美食介绍1','<p><br></p>','123','李飞飞','用户账号1');
/*!40000 ALTER TABLE `meishizhuanfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-01-08 02:49:01','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common16\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-common21\",\"menu\":\"系统用户\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"客服聊天\",\"menuJump\":\"列表\",\"tableName\":\"chat\"}],\"fontClass\":\"icon-common15\",\"menu\":\"客服聊天管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"美食类型\",\"menuJump\":\"列表\",\"tableName\":\"meishileixing\"}],\"fontClass\":\"icon-common17\",\"menu\":\"美食类型管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"本地特色\",\"menuJump\":\"列表\",\"tableName\":\"benditese\"}],\"fontClass\":\"icon-common9\",\"menu\":\"本地特色管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"美食烹饪\",\"menuJump\":\"列表\",\"tableName\":\"meishipengren\"}],\"fontClass\":\"icon-common27\",\"menu\":\"美食烹饪管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"查看评论\"],\"menu\":\"美食信息\",\"menuJump\":\"列表\",\"tableName\":\"meishixinxi\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"美食转发\",\"menuJump\":\"列表\",\"tableName\":\"meishizhuanfa\"}],\"fontClass\":\"icon-common10\",\"menu\":\"美食信息管理\",\"unicode\":\"&#xedd1;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"本地特色\",\"menuJump\":\"列表\",\"tableName\":\"benditese\"}],\"menu\":\"本地特色管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"转发\"],\"menu\":\"美食信息\",\"menuJump\":\"列表\",\"tableName\":\"meishixinxi\"}],\"menu\":\"美食信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\"],\"menu\":\"美食烹饪\",\"menuJump\":\"列表\",\"tableName\":\"meishipengren\"}],\"menu\":\"美食烹饪管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"客服聊天\",\"menuJump\":\"列表\",\"tableName\":\"chat\"}],\"menu\":\"客服聊天管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"转发\"],\"menu\":\"美食信息\",\"menuJump\":\"列表\",\"tableName\":\"meishixinxi\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\"],\"menu\":\"美食转发\",\"menuJump\":\"列表\",\"tableName\":\"meishizhuanfa\"}],\"fontClass\":\"icon-common10\",\"menu\":\"美食信息管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common41\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xeede;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"本地特色\",\"menuJump\":\"列表\",\"tableName\":\"benditese\"}],\"menu\":\"本地特色管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"查看\",\"转发\"],\"menu\":\"美食信息\",\"menuJump\":\"列表\",\"tableName\":\"meishixinxi\"}],\"menu\":\"美食信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\"],\"menu\":\"美食烹饪\",\"menuJump\":\"列表\",\"tableName\":\"meishipengren\"}],\"menu\":\"美食烹饪管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\"],\"menu\":\"客服聊天\",\"menuJump\":\"列表\",\"tableName\":\"chat\"}],\"menu\":\"客服聊天管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704683394653 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1704683394652,'2024-01-08 03:09:54',51,'meishixinxi','美食名称1','file/meishixinxiMeishitupian1.jpg','1',NULL,NULL,1704683313174);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','0zxeqdb79t4enqjvk4wzqnikx4qm0zg5','2024-01-08 02:58:45','2024-01-08 04:13:00'),(2,1704683313174,'123','yonghu','用户','zfvf43peh1q29ks5kpdlb6an02qe90wg','2024-01-08 03:08:41','2024-01-08 04:08:41');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-01-08 02:49:01','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1704683313175 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-01-08 02:49:01','用户账号1','e10adc3949ba59abbe56e057f20f883e','用户姓名1','file/yonghuTouxiang1.jpg','男','102020001@qq.com'),(32,'2024-01-08 02:49:01','用户账号2','e10adc3949ba59abbe56e057f20f883e','用户姓名2','file/yonghuTouxiang2.jpg','男','102020002@qq.com'),(33,'2024-01-08 02:49:01','用户账号3','e10adc3949ba59abbe56e057f20f883e','用户姓名3','file/yonghuTouxiang3.jpg','男','102020003@qq.com'),(34,'2024-01-08 02:49:01','用户账号4','e10adc3949ba59abbe56e057f20f883e','用户姓名4','file/yonghuTouxiang4.jpg','男','102020004@qq.com'),(35,'2024-01-08 02:49:01','用户账号5','e10adc3949ba59abbe56e057f20f883e','用户姓名5','file/yonghuTouxiang5.jpg','男','102020005@qq.com'),(36,'2024-01-08 02:49:01','用户账号6','e10adc3949ba59abbe56e057f20f883e','用户姓名6','file/yonghuTouxiang6.jpg','男','102020006@qq.com'),(1704683313174,'2024-01-08 03:08:33','123','202cb962ac59075b964b07152d234b70','李飞飞','file/1704683310076.jpg','男','215089541@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 11:04:54
