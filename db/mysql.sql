DROP DATABASE IF EXISTS ricky;

CREATE DATABASE ricky default character set utf8mb4 collate utf8mb4_general_ci;

USE ricky;

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200) NOT NULL UNIQUE   COMMENT '学号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xueshengxingming` varchar(200) NOT NULL   COMMENT '学生姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` int    COMMENT '年龄',
	`nianji` varchar(200)    COMMENT '年级',
	`xueyuan` varchar(200)    COMMENT '学院',
	`zhuanye` varchar(200)    COMMENT '专业',
	`xueshengshouji` varchar(200)    COMMENT '学生手机',
	`zhaopian` varchar(200)    COMMENT '照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianling,nianji,xueyuan,zhuanye,xueshengshouji,zhaopian) VALUES(11,'学生1','123456','学生姓名1','男',1,'大一','学院1','专业1','13823888881','http://localhost:8080/ricky/upload/xuesheng_zhaopian1.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianling,nianji,xueyuan,zhuanye,xueshengshouji,zhaopian) VALUES(12,'学生2','123456','学生姓名2','男',2,'大一','学院2','专业2','13823888882','http://localhost:8080/ricky/upload/xuesheng_zhaopian2.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianling,nianji,xueyuan,zhuanye,xueshengshouji,zhaopian) VALUES(13,'学生3','123456','学生姓名3','男',3,'大一','学院3','专业3','13823888883','http://localhost:8080/ricky/upload/xuesheng_zhaopian3.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianling,nianji,xueyuan,zhuanye,xueshengshouji,zhaopian) VALUES(14,'学生4','123456','学生姓名4','男',4,'大一','学院4','专业4','13823888884','http://localhost:8080/ricky/upload/xuesheng_zhaopian4.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianling,nianji,xueyuan,zhuanye,xueshengshouji,zhaopian) VALUES(15,'学生5','123456','学生姓名5','男',5,'大一','学院5','专业5','13823888885','http://localhost:8080/ricky/upload/xuesheng_zhaopian5.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianling,nianji,xueyuan,zhuanye,xueshengshouji,zhaopian) VALUES(16,'学生6','123456','学生姓名6','男',6,'大一','学院6','专业6','13823888886','http://localhost:8080/ricky/upload/xuesheng_zhaopian6.jpg');

DROP TABLE IF EXISTS `xueyuanxinxi`;

CREATE TABLE `xueyuanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xueyuanmingcheng` varchar(200)    COMMENT '学院名称',
	`xueyuanjianjie` longtext    COMMENT '学院简介',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学院信息';

INSERT INTO xueyuanxinxi(id,xueyuanmingcheng,xueyuanjianjie) VALUES(21,'学院名称1','学院简介1');
INSERT INTO xueyuanxinxi(id,xueyuanmingcheng,xueyuanjianjie) VALUES(22,'学院名称2','学院简介2');
INSERT INTO xueyuanxinxi(id,xueyuanmingcheng,xueyuanjianjie) VALUES(23,'学院名称3','学院简介3');
INSERT INTO xueyuanxinxi(id,xueyuanmingcheng,xueyuanjianjie) VALUES(24,'学院名称4','学院简介4');
INSERT INTO xueyuanxinxi(id,xueyuanmingcheng,xueyuanjianjie) VALUES(25,'学院名称5','学院简介5');
INSERT INTO xueyuanxinxi(id,xueyuanmingcheng,xueyuanjianjie) VALUES(26,'学院名称6','学院简介6');

DROP TABLE IF EXISTS `zhuanyexinxi`;

CREATE TABLE `zhuanyexinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`zhuanyemingcheng` varchar(200)    COMMENT '专业名称',
	`zhuanyejianjie` varchar(200)    COMMENT '专业简介',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业信息';

INSERT INTO zhuanyexinxi(id,zhuanyemingcheng,zhuanyejianjie) VALUES(31,'专业名称1','专业简介1');
INSERT INTO zhuanyexinxi(id,zhuanyemingcheng,zhuanyejianjie) VALUES(32,'专业名称2','专业简介2');
INSERT INTO zhuanyexinxi(id,zhuanyemingcheng,zhuanyejianjie) VALUES(33,'专业名称3','专业简介3');
INSERT INTO zhuanyexinxi(id,zhuanyemingcheng,zhuanyejianjie) VALUES(34,'专业名称4','专业简介4');
INSERT INTO zhuanyexinxi(id,zhuanyemingcheng,zhuanyejianjie) VALUES(35,'专业名称5','专业简介5');
INSERT INTO zhuanyexinxi(id,zhuanyemingcheng,zhuanyejianjie) VALUES(36,'专业名称6','专业简介6');

DROP TABLE IF EXISTS `sushexinxi`;

CREATE TABLE `sushexinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`louhao` varchar(200)    COMMENT '楼号',
	`loucenghao` varchar(200)    COMMENT '楼层号',
	`sushehao` varchar(200)    COMMENT '宿舍号',
	`susheleixing` varchar(200)    COMMENT '宿舍类型',
	`susheweizhi` varchar(200)    COMMENT '宿舍位置',
	`sushezhaopian` varchar(200)    COMMENT '宿舍照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

INSERT INTO sushexinxi(id,louhao,loucenghao,sushehao,susheleixing,susheweizhi,sushezhaopian) VALUES(41,'楼号1','楼层号1','宿舍号1','两人间','宿舍位置1','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian1.jpg');
INSERT INTO sushexinxi(id,louhao,loucenghao,sushehao,susheleixing,susheweizhi,sushezhaopian) VALUES(42,'楼号2','楼层号2','宿舍号2','两人间','宿舍位置2','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian2.jpg');
INSERT INTO sushexinxi(id,louhao,loucenghao,sushehao,susheleixing,susheweizhi,sushezhaopian) VALUES(43,'楼号3','楼层号3','宿舍号3','两人间','宿舍位置3','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian3.jpg');
INSERT INTO sushexinxi(id,louhao,loucenghao,sushehao,susheleixing,susheweizhi,sushezhaopian) VALUES(44,'楼号4','楼层号4','宿舍号4','两人间','宿舍位置4','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian4.jpg');
INSERT INTO sushexinxi(id,louhao,loucenghao,sushehao,susheleixing,susheweizhi,sushezhaopian) VALUES(45,'楼号5','楼层号5','宿舍号5','两人间','宿舍位置5','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian5.jpg');
INSERT INTO sushexinxi(id,louhao,loucenghao,sushehao,susheleixing,susheweizhi,sushezhaopian) VALUES(46,'楼号6','楼层号6','宿舍号6','两人间','宿舍位置6','http://localhost:8080/ricky/upload/sushexinxi_sushezhaopian6.jpg');

DROP TABLE IF EXISTS `xueshengruzhu`;

CREATE TABLE `xueshengruzhu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200)    COMMENT '学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianji` varchar(200)    COMMENT '年级',
	`nianling` varchar(200)    COMMENT '年龄',
	`xueyuan` varchar(200)    COMMENT '学院',
	`zhuanye` varchar(200)    COMMENT '专业',
	`louhao` varchar(200)    COMMENT '楼号',
	`loucenghao` varchar(200)    COMMENT '楼层号',
	`sushehao` varchar(200)    COMMENT '宿舍号',
	`chuangpuhao` varchar(200) NOT NULL   COMMENT '床铺号',
	`beizhu` varchar(200)    COMMENT '备注',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生入住';

INSERT INTO xueshengruzhu(id,xuehao,xueshengxingming,xingbie,nianji,nianling,xueyuan,zhuanye,louhao,loucenghao,sushehao,chuangpuhao,beizhu) VALUES(51,'学号1','学生姓名1','性别1','年级1','年龄1','学院1','专业1','楼号1','楼层号1','宿舍号1','床铺号1','备注1');
INSERT INTO xueshengruzhu(id,xuehao,xueshengxingming,xingbie,nianji,nianling,xueyuan,zhuanye,louhao,loucenghao,sushehao,chuangpuhao,beizhu) VALUES(52,'学号2','学生姓名2','性别2','年级2','年龄2','学院2','专业2','楼号2','楼层号2','宿舍号2','床铺号2','备注2');
INSERT INTO xueshengruzhu(id,xuehao,xueshengxingming,xingbie,nianji,nianling,xueyuan,zhuanye,louhao,loucenghao,sushehao,chuangpuhao,beizhu) VALUES(53,'学号3','学生姓名3','性别3','年级3','年龄3','学院3','专业3','楼号3','楼层号3','宿舍号3','床铺号3','备注3');
INSERT INTO xueshengruzhu(id,xuehao,xueshengxingming,xingbie,nianji,nianling,xueyuan,zhuanye,louhao,loucenghao,sushehao,chuangpuhao,beizhu) VALUES(54,'学号4','学生姓名4','性别4','年级4','年龄4','学院4','专业4','楼号4','楼层号4','宿舍号4','床铺号4','备注4');
INSERT INTO xueshengruzhu(id,xuehao,xueshengxingming,xingbie,nianji,nianling,xueyuan,zhuanye,louhao,loucenghao,sushehao,chuangpuhao,beizhu) VALUES(55,'学号5','学生姓名5','性别5','年级5','年龄5','学院5','专业5','楼号5','楼层号5','宿舍号5','床铺号5','备注5');
INSERT INTO xueshengruzhu(id,xuehao,xueshengxingming,xingbie,nianji,nianling,xueyuan,zhuanye,louhao,loucenghao,sushehao,chuangpuhao,beizhu) VALUES(56,'学号6','学生姓名6','性别6','年级6','年龄6','学院6','专业6','楼号6','楼层号6','宿舍号6','床铺号6','备注6');

DROP TABLE IF EXISTS `suguanyuan`;

CREATE TABLE `suguanyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`suguanyuanxingming` varchar(200)    COMMENT '宿管员姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianling` varchar(200)    COMMENT '年龄',
	`ruzhishijian` date    COMMENT '入职时间',
	`zhaopian` varchar(200)    COMMENT '照片',
	`fuzelouhao` varchar(200)    COMMENT '负责楼号',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宿管员';

INSERT INTO suguanyuan(id,suguanyuanxingming,xingbie,nianling,ruzhishijian,zhaopian,fuzelouhao) VALUES(61,'宿管员姓名1','男','年龄1',CURRENT_TIMESTAMP,'http://localhost:8080/ricky/upload/suguanyuan_zhaopian1.jpg','负责楼号1');
INSERT INTO suguanyuan(id,suguanyuanxingming,xingbie,nianling,ruzhishijian,zhaopian,fuzelouhao) VALUES(62,'宿管员姓名2','男','年龄2',CURRENT_TIMESTAMP,'http://localhost:8080/ricky/upload/suguanyuan_zhaopian2.jpg','负责楼号2');
INSERT INTO suguanyuan(id,suguanyuanxingming,xingbie,nianling,ruzhishijian,zhaopian,fuzelouhao) VALUES(63,'宿管员姓名3','男','年龄3',CURRENT_TIMESTAMP,'http://localhost:8080/ricky/upload/suguanyuan_zhaopian3.jpg','负责楼号3');
INSERT INTO suguanyuan(id,suguanyuanxingming,xingbie,nianling,ruzhishijian,zhaopian,fuzelouhao) VALUES(64,'宿管员姓名4','男','年龄4',CURRENT_TIMESTAMP,'http://localhost:8080/ricky/upload/suguanyuan_zhaopian4.jpg','负责楼号4');
INSERT INTO suguanyuan(id,suguanyuanxingming,xingbie,nianling,ruzhishijian,zhaopian,fuzelouhao) VALUES(65,'宿管员姓名5','男','年龄5',CURRENT_TIMESTAMP,'http://localhost:8080/ricky/upload/suguanyuan_zhaopian5.jpg','负责楼号5');
INSERT INTO suguanyuan(id,suguanyuanxingming,xingbie,nianling,ruzhishijian,zhaopian,fuzelouhao) VALUES(66,'宿管员姓名6','男','年龄6',CURRENT_TIMESTAMP,'http://localhost:8080/ricky/upload/suguanyuan_zhaopian6.jpg','负责楼号6');

DROP TABLE IF EXISTS `shebeibaoxiu`;

CREATE TABLE `shebeibaoxiu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200)    COMMENT '学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`louhao` varchar(200)    COMMENT '楼号',
	`loucenghao` varchar(200)    COMMENT '楼层号',
	`sushehao` varchar(200)    COMMENT '宿舍号',
	`baoxiuwupin` varchar(200)    COMMENT '报修物品',
	`miaoshu` varchar(200)    COMMENT '描述',
	`baoxiushijian` datetime    COMMENT '报修时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备报修';

INSERT INTO shebeibaoxiu(id,xuehao,xueshengxingming,louhao,loucenghao,sushehao,baoxiuwupin,miaoshu,baoxiushijian,sfsh,shhf) VALUES(71,'学号1','学生姓名1','楼号1','楼层号1','宿舍号1','报修物品1','描述1',CURRENT_TIMESTAMP,'是','');
INSERT INTO shebeibaoxiu(id,xuehao,xueshengxingming,louhao,loucenghao,sushehao,baoxiuwupin,miaoshu,baoxiushijian,sfsh,shhf) VALUES(72,'学号2','学生姓名2','楼号2','楼层号2','宿舍号2','报修物品2','描述2',CURRENT_TIMESTAMP,'是','');
INSERT INTO shebeibaoxiu(id,xuehao,xueshengxingming,louhao,loucenghao,sushehao,baoxiuwupin,miaoshu,baoxiushijian,sfsh,shhf) VALUES(73,'学号3','学生姓名3','楼号3','楼层号3','宿舍号3','报修物品3','描述3',CURRENT_TIMESTAMP,'是','');
INSERT INTO shebeibaoxiu(id,xuehao,xueshengxingming,louhao,loucenghao,sushehao,baoxiuwupin,miaoshu,baoxiushijian,sfsh,shhf) VALUES(74,'学号4','学生姓名4','楼号4','楼层号4','宿舍号4','报修物品4','描述4',CURRENT_TIMESTAMP,'是','');
INSERT INTO shebeibaoxiu(id,xuehao,xueshengxingming,louhao,loucenghao,sushehao,baoxiuwupin,miaoshu,baoxiushijian,sfsh,shhf) VALUES(75,'学号5','学生姓名5','楼号5','楼层号5','宿舍号5','报修物品5','描述5',CURRENT_TIMESTAMP,'是','');
INSERT INTO shebeibaoxiu(id,xuehao,xueshengxingming,louhao,loucenghao,sushehao,baoxiuwupin,miaoshu,baoxiushijian,sfsh,shhf) VALUES(76,'学号6','学生姓名6','楼号6','楼层号6','宿舍号6','报修物品6','描述6',CURRENT_TIMESTAMP,'是','');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ricky/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ricky/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ricky/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');


