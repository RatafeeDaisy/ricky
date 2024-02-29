-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ricky
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ricky/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ricky/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ricky/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shebeibaoxiu`
--

DROP TABLE IF EXISTS `shebeibaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shebeibaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `loucenghao` varchar(200) DEFAULT NULL COMMENT '楼层号',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `baoxiuwupin` varchar(200) DEFAULT NULL COMMENT '报修物品',
  `miaoshu` varchar(200) DEFAULT NULL COMMENT '描述',
  `baoxiushijian` datetime DEFAULT NULL COMMENT '报修时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='设备报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shebeibaoxiu`
--

LOCK TABLES `shebeibaoxiu` WRITE;
/*!40000 ALTER TABLE `shebeibaoxiu` DISABLE KEYS */;
INSERT INTO `shebeibaoxiu` VALUES (71,'2021-02-25 06:47:45','学号1','学生姓名1','楼号1','楼层号1','宿舍号1','报修物品1','描述1','2021-02-25 14:47:45','是',''),(72,'2021-02-25 06:47:45','学号2','学生姓名2','楼号2','楼层号2','宿舍号2','报修物品2','描述2','2021-02-25 14:47:45','是',''),(73,'2021-02-25 06:47:45','学号3','学生姓名3','楼号3','楼层号3','宿舍号3','报修物品3','描述3','2021-02-25 14:47:45','是',''),(74,'2021-02-25 06:47:45','学号4','学生姓名4','楼号4','楼层号4','宿舍号4','报修物品4','描述4','2021-02-25 14:47:45','是',''),(75,'2021-02-25 06:47:45','学号5','学生姓名5','楼号5','楼层号5','宿舍号5','报修物品5','描述5','2021-02-25 14:47:45','是',''),(76,'2021-02-25 06:47:45','学号6','学生姓名6','楼号6','楼层号6','宿舍号6','报修物品6','描述6','2021-02-25 14:47:45','是','');
/*!40000 ALTER TABLE `shebeibaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suguanyuan`
--

DROP TABLE IF EXISTS `suguanyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suguanyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suguanyuanxingming` varchar(200) DEFAULT NULL COMMENT '宿管员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `ruzhishijian` date DEFAULT NULL COMMENT '入职时间',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `fuzelouhao` varchar(200) DEFAULT NULL COMMENT '负责楼号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='宿管员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suguanyuan`
--

LOCK TABLES `suguanyuan` WRITE;
/*!40000 ALTER TABLE `suguanyuan` DISABLE KEYS */;
INSERT INTO `suguanyuan` VALUES (61,'2021-02-25 06:47:45','宿管员姓名1','男','年龄1','2021-02-25','http://localhost:8080/ricky/upload/suguanyuan_zhaopian1.jpg','负责楼号1'),(62,'2021-02-25 06:47:45','宿管员姓名2','男','年龄2','2021-02-25','http://localhost:8080/ricky/upload/suguanyuan_zhaopian2.jpg','负责楼号2'),(63,'2021-02-25 06:47:45','宿管员姓名3','男','年龄3','2021-02-25','http://localhost:8080/ricky/upload/suguanyuan_zhaopian3.jpg','负责楼号3'),(64,'2021-02-25 06:47:45','宿管员姓名4','男','年龄4','2021-02-25','http://localhost:8080/ricky/upload/suguanyuan_zhaopian4.jpg','负责楼号4'),(65,'2021-02-25 06:47:45','宿管员姓名5','男','年龄5','2021-02-25','http://localhost:8080/ricky/upload/suguanyuan_zhaopian5.jpg','负责楼号5'),(66,'2021-02-25 06:47:45','宿管员姓名6','男','年龄6','2021-02-25','http://localhost:8080/ricky/upload/suguanyuan_zhaopian6.jpg','负责楼号6');
/*!40000 ALTER TABLE `suguanyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushexinxi`
--

DROP TABLE IF EXISTS `sushexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `loucenghao` varchar(200) DEFAULT NULL COMMENT '楼层号',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `susheweizhi` varchar(200) DEFAULT NULL COMMENT '宿舍位置',
  `sushezhaopian` varchar(200) DEFAULT NULL COMMENT '宿舍照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushexinxi`
--

LOCK TABLES `sushexinxi` WRITE;
/*!40000 ALTER TABLE `sushexinxi` DISABLE KEYS */;
INSERT INTO `sushexinxi` VALUES (41,'2021-02-25 06:47:45','楼号1','楼层号1','宿舍号1','两人间','宿舍位置1','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian1.jpg'),(42,'2021-02-25 06:47:45','楼号2','楼层号2','宿舍号2','两人间','宿舍位置2','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian2.jpg'),(43,'2021-02-25 06:47:45','楼号3','楼层号3','宿舍号3','两人间','宿舍位置3','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian3.jpg'),(44,'2021-02-25 06:47:45','楼号4','楼层号4','宿舍号4','两人间','宿舍位置4','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian4.jpg'),(45,'2021-02-25 06:47:45','楼号5','楼层号5','宿舍号5','两人间','宿舍位置5','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian5.jpg'),(46,'2021-02-25 06:47:45','楼号6','楼层号6','宿舍号6','两人间','宿舍位置6','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian6.jpg');
/*!40000 ALTER TABLE `sushexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-25 06:47:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xueshengshouji` varchar(200) DEFAULT NULL COMMENT '学生手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-02-25 06:47:45','学生1','123456','学生姓名1','男',1,'大一','学院1','专业1','13823888881','http://localhost:8080/ricky/upload/xuesheng_zhaopian1.jpg'),(12,'2021-02-25 06:47:45','学生2','123456','学生姓名2','男',2,'大一','学院2','专业2','13823888882','http://localhost:8080/ricky/upload/xuesheng_zhaopian2.jpg'),(13,'2021-02-25 06:47:45','学生3','123456','学生姓名3','男',3,'大一','学院3','专业3','13823888883','http://localhost:8080/ricky/upload/xuesheng_zhaopian3.jpg'),(14,'2021-02-25 06:47:45','学生4','123456','学生姓名4','男',4,'大一','学院4','专业4','13823888884','http://localhost:8080/ricky/upload/xuesheng_zhaopian4.jpg'),(15,'2021-02-25 06:47:45','学生5','123456','学生姓名5','男',5,'大一','学院5','专业5','13823888885','http://localhost:8080/ricky/upload/xuesheng_zhaopian5.jpg'),(16,'2021-02-25 06:47:45','学生6','123456','学生姓名6','男',6,'大一','学院6','专业6','13823888886','http://localhost:8080/ricky/upload/xuesheng_zhaopian6.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengruzhu`
--

DROP TABLE IF EXISTS `xueshengruzhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengruzhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `louhao` varchar(200) DEFAULT NULL COMMENT '楼号',
  `loucenghao` varchar(200) DEFAULT NULL COMMENT '楼层号',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `chuangpuhao` varchar(200) NOT NULL COMMENT '床铺号',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='学生入住';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengruzhu`
--

LOCK TABLES `xueshengruzhu` WRITE;
/*!40000 ALTER TABLE `xueshengruzhu` DISABLE KEYS */;
INSERT INTO `xueshengruzhu` VALUES (51,'2021-02-25 06:47:45','学号1','学生姓名1','性别1','年级1','年龄1','学院1','专业1','楼号1','楼层号1','宿舍号1','床铺号1','备注1'),(52,'2021-02-25 06:47:45','学号2','学生姓名2','性别2','年级2','年龄2','学院2','专业2','楼号2','楼层号2','宿舍号2','床铺号2','备注2'),(53,'2021-02-25 06:47:45','学号3','学生姓名3','性别3','年级3','年龄3','学院3','专业3','楼号3','楼层号3','宿舍号3','床铺号3','备注3'),(54,'2021-02-25 06:47:45','学号4','学生姓名4','性别4','年级4','年龄4','学院4','专业4','楼号4','楼层号4','宿舍号4','床铺号4','备注4'),(55,'2021-02-25 06:47:45','学号5','学生姓名5','性别5','年级5','年龄5','学院5','专业5','楼号5','楼层号5','宿舍号5','床铺号5','备注5'),(56,'2021-02-25 06:47:45','学号6','学生姓名6','性别6','年级6','年龄6','学院6','专业6','楼号6','楼层号6','宿舍号6','床铺号6','备注6');
/*!40000 ALTER TABLE `xueshengruzhu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuanxinxi`
--

DROP TABLE IF EXISTS `xueyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `xueyuanjianjie` longtext COMMENT '学院简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuanxinxi`
--

LOCK TABLES `xueyuanxinxi` WRITE;
/*!40000 ALTER TABLE `xueyuanxinxi` DISABLE KEYS */;
INSERT INTO `xueyuanxinxi` VALUES (21,'2021-02-25 06:47:45','学院名称1','学院简介1'),(22,'2021-02-25 06:47:45','学院名称2','学院简介2'),(23,'2021-02-25 06:47:45','学院名称3','学院简介3'),(24,'2021-02-25 06:47:45','学院名称4','学院简介4'),(25,'2021-02-25 06:47:45','学院名称5','学院简介5'),(26,'2021-02-25 06:47:45','学院名称6','学院简介6');
/*!40000 ALTER TABLE `xueyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanyexinxi`
--

DROP TABLE IF EXISTS `zhuanyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  `zhuanyejianjie` varchar(200) DEFAULT NULL COMMENT '专业简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='专业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanyexinxi`
--

LOCK TABLES `zhuanyexinxi` WRITE;
/*!40000 ALTER TABLE `zhuanyexinxi` DISABLE KEYS */;
INSERT INTO `zhuanyexinxi` VALUES (31,'2021-02-25 06:47:45','专业名称1','专业简介1'),(32,'2021-02-25 06:47:45','专业名称2','专业简介2'),(33,'2021-02-25 06:47:45','专业名称3','专业简介3'),(34,'2021-02-25 06:47:45','专业名称4','专业简介4'),(35,'2021-02-25 06:47:45','专业名称5','专业简介5'),(36,'2021-02-25 06:47:45','专业名称6','专业简介6');
/*!40000 ALTER TABLE `zhuanyexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-07 17:36:31
