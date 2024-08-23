/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t395`;
CREATE DATABASE IF NOT EXISTS `t395` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t395`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图11111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-01 03:19:31'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-01 03:19:31'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-04-01 03:19:31'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-04-01 03:19:31'),
	(5, 'jingsai_types', '竞赛类型', 1, '竞赛类型1', NULL, NULL, '2023-04-01 03:19:31'),
	(6, 'jingsai_types', '竞赛类型', 2, '竞赛类型2', NULL, NULL, '2023-04-01 03:19:31'),
	(7, 'jingsai_types', '竞赛类型', 3, '竞赛类型3', NULL, NULL, '2023-04-01 03:19:31'),
	(8, 'jingsai_types', '竞赛类型', 4, '竞赛类型4', NULL, NULL, '2023-04-01 03:19:31'),
	(9, 'jingsai_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-01 03:19:31'),
	(10, 'jingsai_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-01 03:19:31'),
	(11, 'jingsai_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-01 03:19:31'),
	(12, 'jingsai_yuyue_yesno_types', '报名状态', 1, '待审核', NULL, NULL, '2023-04-01 03:19:31'),
	(13, 'jingsai_yuyue_yesno_types', '报名状态', 2, '同意', NULL, NULL, '2023-04-01 03:19:31'),
	(14, 'jingsai_yuyue_yesno_types', '报名状态', 3, '拒绝', NULL, NULL, '2023-04-01 03:19:31'),
	(15, 'jingsai_jingfeishenqing_types', '经费类型', 1, '经费类型1', NULL, NULL, '2023-04-01 03:19:31'),
	(16, 'jingsai_jingfeishenqing_types', '经费类型', 2, '经费类型2', NULL, NULL, '2023-04-01 03:19:31'),
	(17, 'jingsai_jingfeishenqing_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-04-01 03:19:31'),
	(18, 'jingsai_jingfeishenqing_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-04-01 03:19:31'),
	(19, 'jingsai_jingfeishenqing_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-04-01 03:19:31'),
	(20, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-01 03:19:31'),
	(21, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-01 03:19:31'),
	(22, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2023-04-01 03:19:31'),
	(23, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2023-04-01 03:19:31'),
	(24, 'xuexizhidao_types', '学习指导类型', 1, '学习指导类型1', NULL, NULL, '2023-04-01 03:19:31'),
	(25, 'xuexizhidao_types', '学习指导类型', 2, '学习指导类型2', NULL, NULL, '2023-04-01 03:19:31'),
	(26, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2023-04-01 03:19:32'),
	(27, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2023-04-01 03:19:32'),
	(28, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2023-04-01 03:19:32'),
	(29, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-01 03:19:32'),
	(30, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-01 03:19:32'),
	(31, 'xuexizhidao_types', '学习指导类型', 3, '学习指导类型3', NULL, '', '2023-04-01 03:59:03');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `laoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', 326, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(2, '帖子标题2', 3, NULL, NULL, '发布内容2', 18, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(3, '帖子标题3', 2, NULL, NULL, '发布内容3', 482, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(4, '帖子标题4', 2, NULL, NULL, '发布内容4', 121, 2, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(5, '帖子标题5', 3, NULL, NULL, '发布内容5', 246, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(6, '帖子标题6', 2, NULL, NULL, '发布内容6', 317, 2, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(7, '帖子标题7', 3, NULL, NULL, '发布内容7', 246, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(8, '帖子标题8', 2, NULL, NULL, '发布内容8', 485, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(9, '帖子标题9', 3, NULL, NULL, '发布内容9', 306, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(10, '帖子标题10', 1, NULL, NULL, '发布内容10', 328, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(11, '帖子标题11', 3, NULL, NULL, '发布内容11', 306, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(12, '帖子标题12', 2, NULL, NULL, '发布内容12', 323, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(13, '帖子标题13', 2, NULL, NULL, '发布内容13', 472, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(14, '帖子标题14', 1, NULL, NULL, '发布内容14', 235, 2, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(15, NULL, 4, NULL, NULL, 'ghhhh', 14, NULL, 2, '2023-04-01 03:51:25', NULL, '2023-04-01 03:51:25'),
	(16, '帖子2121', 4, NULL, NULL, '<p>广东省十多个时代光华</p>', NULL, 2, 1, '2023-04-01 03:51:34', NULL, '2023-04-01 03:51:34'),
	(17, NULL, 4, NULL, NULL, '哈哈哈哈', 16, NULL, 2, '2023-04-01 03:51:39', NULL, '2023-04-01 03:51:39'),
	(18, NULL, NULL, 3, NULL, '哈哈哈哈军', 16, NULL, 2, '2023-04-01 03:53:23', NULL, '2023-04-01 03:53:23'),
	(19, NULL, NULL, NULL, 1, '和京津冀', 16, NULL, 2, '2023-04-01 03:59:09', NULL, '2023-04-01 03:59:09'),
	(20, NULL, 1, NULL, NULL, '666', 16, NULL, 2, '2024-08-13 07:19:48', NULL, '2024-08-13 07:19:48');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-01 03:19:39', '公告详情1', '2023-04-01 03:19:39'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-01 03:19:39', '公告详情2', '2023-04-01 03:19:39'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-01 03:19:39', '公告详情3', '2023-04-01 03:19:39'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-01 03:19:39', '公告详情4', '2023-04-01 03:19:39'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-04-01 03:19:39', '公告详情5', '2023-04-01 03:19:39'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-01 03:19:39', '公告详情6', '2023-04-01 03:19:39'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-01 03:19:39', '公告详情7', '2023-04-01 03:19:39'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-04-01 03:19:39', '公告详情8', '2023-04-01 03:19:39'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-01 03:19:39', '公告详情9', '2023-04-01 03:19:39'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-04-01 03:19:39', '公告详情10', '2023-04-01 03:19:39'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-04-01 03:19:39', '公告详情11', '2023-04-01 03:19:39'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-01 03:19:39', '公告详情12', '2023-04-01 03:19:39'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-01 03:19:39', '公告详情13', '2023-04-01 03:19:39'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-04-01 03:19:39', '公告详情14', '2023-04-01 03:19:39');

DROP TABLE IF EXISTS `jingsai`;
CREATE TABLE IF NOT EXISTS `jingsai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `laoshi_id` int DEFAULT NULL COMMENT '老师',
  `jingsai_name` varchar(200) DEFAULT NULL COMMENT '竞赛名称  Search111 ',
  `jingsai_uuid_number` varchar(200) DEFAULT NULL COMMENT '竞赛编号',
  `jingsai_photo` varchar(200) DEFAULT NULL COMMENT '竞赛照片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `jingsai_types` int DEFAULT NULL COMMENT '竞赛类型 Search111',
  `jingsai_clicknum` int DEFAULT NULL COMMENT '竞赛热度',
  `jingsai_jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '报名截止时间',
  `jingsai_content` longtext COMMENT '竞赛介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `jingsai_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='竞赛';

DELETE FROM `jingsai`;
INSERT INTO `jingsai` (`id`, `laoshi_id`, `jingsai_name`, `jingsai_uuid_number`, `jingsai_photo`, `zan_number`, `cai_number`, `jingsai_types`, `jingsai_clicknum`, `jingsai_jiezhi_time`, `jingsai_content`, `shangxia_types`, `jingsai_delete`, `insert_time`, `create_time`) VALUES
	(1, 2, '竞赛名称1', '1680319179063', 'upload/jingsai1.jpg', 163, 456, 3, 468, '2023-08-01 03:19:39', '竞赛介绍1', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(2, 3, '竞赛名称2', '1680319179088', 'upload/jingsai2.jpg', 241, 110, 2, 102, '2023-08-01 03:19:39', '竞赛介绍2', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(3, 3, '竞赛名称3', '1680319179155', 'upload/jingsai3.jpg', 454, 439, 2, 205, '2023-08-01 03:19:39', '竞赛介绍3', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(4, 1, '竞赛名称4', '1680319179062', 'upload/jingsai4.jpg', 401, 262, 2, 205, '2023-08-01 03:19:39', '竞赛介绍4', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(5, 2, '竞赛名称5', '1680319179111', 'upload/jingsai5.jpg', 212, 251, 1, 68, '2023-08-01 03:19:39', '竞赛介绍5', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(6, 3, '竞赛名称6', '1680319179125', 'upload/jingsai6.jpg', 319, 261, 1, 342, '2023-08-01 03:19:39', '竞赛介绍6', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(7, 2, '竞赛名称7', '1680319179064', 'upload/jingsai7.jpg', 424, 134, 1, 205, '2023-08-01 03:19:39', '竞赛介绍7', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(8, 3, '竞赛名称8', '1680319179076', 'upload/jingsai8.jpg', 217, 390, 2, 255, '2023-08-01 03:19:39', '竞赛介绍8', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(9, 2, '竞赛名称9', '1680319179134', 'upload/jingsai9.jpg', 187, 191, 2, 317, '2023-08-01 03:19:39', '竞赛介绍9', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(10, 2, '竞赛名称10', '1680319179072', 'upload/jingsai10.jpg', 68, 287, 1, 480, '2023-08-01 03:19:39', '竞赛介绍10', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(11, 1, '竞赛名称11', '1680319179100', 'upload/jingsai11.jpg', 378, 481, 3, 201, '2023-08-01 03:19:39', '竞赛介绍11', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(12, 3, '竞赛名称12', '1680319179148', 'upload/jingsai12.jpg', 306, 433, 3, 398, '2023-08-01 03:19:39', '竞赛介绍12', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(13, 3, '竞赛名称13', '1680319179110', 'upload/jingsai13.jpg', 379, 305, 3, 123, '2023-08-01 03:19:39', '竞赛介绍13', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(14, 1, '竞赛名称14', '1680319179058', 'upload/jingsai14.jpg', 217, 476, 4, 67, '2023-08-01 03:19:39', '竞赛介绍14', 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39');

DROP TABLE IF EXISTS `jingsai_collection`;
CREATE TABLE IF NOT EXISTS `jingsai_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingsai_id` int DEFAULT NULL COMMENT '竞赛',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingsai_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='竞赛收藏';

DELETE FROM `jingsai_collection`;
INSERT INTO `jingsai_collection` (`id`, `jingsai_id`, `yonghu_id`, `jingsai_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(2, 2, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(3, 3, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(4, 4, 2, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(5, 5, 2, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(6, 6, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(7, 7, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(8, 8, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(9, 9, 3, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(10, 10, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(11, 11, 2, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(12, 12, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(13, 13, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(14, 14, 1, 1, '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(15, 1, 4, 2, '2023-04-01 03:51:16', '2023-04-01 03:51:16'),
	(16, 6, 4, 2, '2023-04-01 03:51:47', '2023-04-01 03:51:47'),
	(17, 6, 4, 1, '2023-04-01 03:51:54', '2023-04-01 03:51:54'),
	(18, 12, 4, 2, '2023-04-01 03:52:05', '2023-04-01 03:52:05'),
	(19, 12, 4, 1, '2023-04-01 03:52:19', '2023-04-01 03:52:19');

DROP TABLE IF EXISTS `jingsai_huojiangmingdan`;
CREATE TABLE IF NOT EXISTS `jingsai_huojiangmingdan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingsai_id` int DEFAULT NULL COMMENT '竞赛',
  `jingsai_huojiangmingdan_uuid_number` varchar(200) DEFAULT NULL COMMENT '获奖名单编号',
  `jingsai_huojiangmingdan_content` longtext COMMENT '名单详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '法布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='获奖名单';

DELETE FROM `jingsai_huojiangmingdan`;
INSERT INTO `jingsai_huojiangmingdan` (`id`, `jingsai_id`, `jingsai_huojiangmingdan_uuid_number`, `jingsai_huojiangmingdan_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1680319179118', '名单详情1', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(2, 2, '1680319179157', '名单详情2', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(3, 3, '1680319179097', '名单详情3', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(4, 4, '1680319179113', '名单详情4', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(5, 5, '1680319179141', '名单详情5', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(6, 6, '1680319179076', '名单详情6', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(7, 7, '1680319179113', '名单详情7', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(8, 8, '1680319179084', '名单详情8', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(9, 9, '1680319179142', '名单详情9', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(10, 10, '1680319179135', '名单详情10', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(11, 11, '1680319179155', '名单详情11', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(12, 12, '1680319179088', '名单详情12', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(13, 13, '1680319179136', '<p>名单详情13哈哈哈哈</p>', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(14, 14, '1680319179130', '名单详情14', '2023-04-01 03:19:39', '2023-04-01 03:19:39');

DROP TABLE IF EXISTS `jingsai_jingfeishenqing`;
CREATE TABLE IF NOT EXISTS `jingsai_jingfeishenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingsai_id` int DEFAULT NULL COMMENT '竞赛',
  `jingsai_jingfeishenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '竞赛经费申请编号',
  `jingsai_jingfeishenqing_name` varchar(200) DEFAULT NULL COMMENT '竞赛经费申请名称  Search111 ',
  `jingsai_jingfeishenqing_types` int DEFAULT NULL COMMENT '经费类型 Search111',
  `shangpin_shouyin_true_price` decimal(10,2) DEFAULT NULL COMMENT '申请金额(万)',
  `jingsai_jingfeishenqing_content` longtext COMMENT '申请缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `jingsai_jingfeishenqing_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111 ',
  `jingsai_jingfeishenqing_yesno_text` longtext COMMENT '审核回复',
  `jingsai_jingfeishenqing_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='竞赛经费申请';

DELETE FROM `jingsai_jingfeishenqing`;
INSERT INTO `jingsai_jingfeishenqing` (`id`, `jingsai_id`, `jingsai_jingfeishenqing_uuid_number`, `jingsai_jingfeishenqing_name`, `jingsai_jingfeishenqing_types`, `shangpin_shouyin_true_price`, `jingsai_jingfeishenqing_content`, `insert_time`, `jingsai_jingfeishenqing_yesno_types`, `jingsai_jingfeishenqing_yesno_text`, `jingsai_jingfeishenqing_shenhe_time`, `create_time`) VALUES
	(1, 1, '1680319179089', '竞赛经费申请名称1', 2, 859.10, '申请缘由1', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(2, 2, '1680319179122', '竞赛经费申请名称2', 1, 794.54, '申请缘由2', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(3, 3, '1680319179106', '竞赛经费申请名称3', 2, 738.13, '申请缘由3', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(4, 4, '1680319179074', '竞赛经费申请名称4', 2, 148.01, '申请缘由4', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(5, 5, '1680319179098', '竞赛经费申请名称5', 2, 986.69, '申请缘由5', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(6, 6, '1680319179089', '竞赛经费申请名称6', 2, 829.58, '申请缘由6', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(7, 7, '1680319179116', '竞赛经费申请名称7', 1, 644.58, '申请缘由7', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(8, 8, '1680319179072', '竞赛经费申请名称8', 1, 296.45, '申请缘由8', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(9, 9, '1680319179089', '竞赛经费申请名称9', 1, 531.49, '申请缘由9', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(10, 10, '1680319179147', '竞赛经费申请名称10', 1, 79.79, '申请缘由10', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(11, 11, '1680319179074', '竞赛经费申请名称11', 1, 933.55, '申请缘由11', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(12, 12, '1680319179067', '竞赛经费申请名称12', 1, 697.78, '申请缘由12', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(13, 13, '1680319179128', '竞赛经费申请名称13', 2, 805.03, '申请缘由13', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(14, 14, '1680319179063', '竞赛经费申请名称14', 1, 996.06, '申请缘由14', '2023-04-01 03:19:39', 1, NULL, NULL, '2023-04-01 03:19:39'),
	(15, 12, '1680321273568', '申请11', 1, 9.50, '<p>归档第三个</p>', '2023-04-01 03:54:45', 2, '规划局将', '2023-04-01 03:59:21', '2023-04-01 03:54:45');

DROP TABLE IF EXISTS `jingsai_liuyan`;
CREATE TABLE IF NOT EXISTS `jingsai_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingsai_id` int DEFAULT NULL COMMENT '竞赛',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingsai_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='竞赛留言';

DELETE FROM `jingsai_liuyan`;
INSERT INTO `jingsai_liuyan` (`id`, `jingsai_id`, `yonghu_id`, `jingsai_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-04-01 03:19:39', '回复信息1', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(2, 2, 3, '留言内容2', '2023-04-01 03:19:39', '回复信息2', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(3, 3, 3, '留言内容3', '2023-04-01 03:19:39', '回复信息3', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(4, 4, 3, '留言内容4', '2023-04-01 03:19:39', '回复信息4', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(5, 5, 3, '留言内容5', '2023-04-01 03:19:39', '回复信息5', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(6, 6, 1, '留言内容6', '2023-04-01 03:19:39', '回复信息6', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(7, 7, 2, '留言内容7', '2023-04-01 03:19:39', '回复信息7', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(8, 8, 2, '留言内容8', '2023-04-01 03:19:39', '回复信息8', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(9, 9, 1, '留言内容9', '2023-04-01 03:19:39', '回复信息9', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(10, 10, 1, '留言内容10', '2023-04-01 03:19:39', '回复信息10', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(11, 11, 1, '留言内容11', '2023-04-01 03:19:39', '回复信息11', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(12, 12, 3, '留言内容12', '2023-04-01 03:19:39', '回复信息12', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(13, 13, 1, '留言内容13', '2023-04-01 03:19:39', '回复信息13', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(14, 14, 3, '留言内容14', '2023-04-01 03:19:39', '回复信息14', '2023-04-01 03:19:39', '2023-04-01 03:19:39'),
	(15, 6, 4, '换个哈哈哈', '2023-04-01 03:51:51', NULL, NULL, '2023-04-01 03:51:51'),
	(16, 12, 4, '哈哈哈', '2023-04-01 03:52:08', '和规划和环境', '2023-04-01 03:54:22', '2023-04-01 03:52:08'),
	(17, 10, 1, '666', '2024-08-13 07:20:05', NULL, NULL, '2024-08-13 07:20:05');

DROP TABLE IF EXISTS `jingsai_yuyue`;
CREATE TABLE IF NOT EXISTS `jingsai_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingsai_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `jingsai_id` int DEFAULT NULL COMMENT '竞赛',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingsai_yuyue_text` longtext COMMENT '报名理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `jingsai_yuyue_yesno_types` int DEFAULT NULL COMMENT '报名状态 Search111 ',
  `jingsai_yuyue_yesno_text` longtext COMMENT '审核回复',
  `jingsai_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `jingsai_yuyue_file` varchar(200) DEFAULT NULL COMMENT '竞赛作品',
  `jingsai_yuyue_dafen` decimal(10,2) DEFAULT NULL COMMENT '打分',
  `jingsai_yuyue_content` longtext COMMENT '评语',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='竞赛报名';

DELETE FROM `jingsai_yuyue`;
INSERT INTO `jingsai_yuyue` (`id`, `jingsai_yuyue_uuid_number`, `jingsai_id`, `yonghu_id`, `jingsai_yuyue_text`, `insert_time`, `jingsai_yuyue_yesno_types`, `jingsai_yuyue_yesno_text`, `jingsai_yuyue_shenhe_time`, `jingsai_yuyue_file`, `jingsai_yuyue_dafen`, `jingsai_yuyue_content`, `create_time`) VALUES
	(1, '1680319179129', 1, 2, '报名理由1', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 566.94, '评语1', '2023-04-01 03:19:39'),
	(2, '1680319179086', 2, 3, '报名理由2', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 904.42, '评语2', '2023-04-01 03:19:39'),
	(3, '1680319179162', 3, 3, '报名理由3', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 53.88, '评语3', '2023-04-01 03:19:39'),
	(4, '1680319179082', 4, 1, '报名理由4', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 232.73, '评语4', '2023-04-01 03:19:39'),
	(5, '1680319179110', 5, 3, '报名理由5', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 933.97, '评语5', '2023-04-01 03:19:39'),
	(6, '1680319179156', 6, 2, '报名理由6', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 186.65, '评语6', '2023-04-01 03:19:39'),
	(7, '1680319179142', 7, 3, '报名理由7', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 290.85, '评语7', '2023-04-01 03:19:39'),
	(8, '1680319179093', 8, 3, '报名理由8', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 950.68, '评语8', '2023-04-01 03:19:39'),
	(9, '1680319179122', 9, 3, '报名理由9', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 924.70, '评语9', '2023-04-01 03:19:39'),
	(10, '1680319179078', 10, 2, '报名理由10', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 562.62, '评语10', '2023-04-01 03:19:39'),
	(11, '1680319179087', 11, 1, '报名理由11', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 0.49, '评语11', '2023-04-01 03:19:39'),
	(12, '1680319179066', 12, 2, '报名理由12', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 635.99, '评语12', '2023-04-01 03:19:39'),
	(13, '1680319179115', 13, 2, '报名理由13', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 170.94, '评语13', '2023-04-01 03:19:39'),
	(14, '1680319179158', 14, 2, '报名理由14', '2023-04-01 03:19:39', 2, '同意', '2023-04-01 03:19:39', 'upload/file.rar', 930.85, '评语14', '2023-04-01 03:19:39'),
	(15, '1680319728114', 12, 3, '广东省格式归属地感受到个', '2023-04-01 03:28:49', 2, '同意', '2023-04-01 03:28:49', 'upload/1680320095332.doc', 99.00, '<p>地方打神兽孤独颂歌和第三个</p>', '2023-04-01 03:28:49'),
	(16, '1680321117952', 6, 4, '会感受到粉红色的发挥', '2023-04-01 03:51:58', 1, NULL, NULL, NULL, NULL, NULL, '2023-04-01 03:51:58'),
	(17, '1680321133001', 12, 4, '呵呵哈哈哈军', '2023-04-01 03:52:13', 2, '哼哼唧唧军军军', '2023-04-01 03:52:51', 'upload/1680321179529.doc', 88.00, '<p>哼哼唧唧</p>', '2023-04-01 03:52:13');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_name`, `laoshi_phone`, `laoshi_id_number`, `laoshi_photo`, `sex_types`, `laoshi_email`, `create_time`) VALUES
	(1, '老师1', '123456', '老师姓名1', '17703786901', '410224199010102001', 'upload/laoshi1.jpg', 1, '1@qq.com', '2023-04-01 03:19:39'),
	(2, '老师2', '123456', '老师姓名2', '17703786902', '410224199010102002', 'upload/laoshi2.jpg', 2, '2@qq.com', '2023-04-01 03:19:39'),
	(3, '老师3', '123456', '老师姓名3', '17703786903', '410224199010102003', 'upload/laoshi3.jpg', 2, '3@qq.com', '2023-04-01 03:19:39');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻名称1', 'upload/news1.jpg', 2, '2023-04-01 03:19:39', '新闻详情1', '2023-04-01 03:19:39'),
	(2, '新闻名称2', 'upload/news2.jpg', 2, '2023-04-01 03:19:39', '新闻详情2', '2023-04-01 03:19:39'),
	(3, '新闻名称3', 'upload/news3.jpg', 1, '2023-04-01 03:19:39', '新闻详情3', '2023-04-01 03:19:39'),
	(4, '新闻名称4', 'upload/news4.jpg', 2, '2023-04-01 03:19:39', '新闻详情4', '2023-04-01 03:19:39'),
	(5, '新闻名称5', 'upload/news5.jpg', 2, '2023-04-01 03:19:39', '新闻详情5', '2023-04-01 03:19:39'),
	(6, '新闻名称6', 'upload/news6.jpg', 2, '2023-04-01 03:19:39', '新闻详情6', '2023-04-01 03:19:39'),
	(7, '新闻名称7', 'upload/news7.jpg', 1, '2023-04-01 03:19:39', '新闻详情7', '2023-04-01 03:19:39'),
	(8, '新闻名称8', 'upload/news8.jpg', 1, '2023-04-01 03:19:39', '新闻详情8', '2023-04-01 03:19:39'),
	(9, '新闻名称9', 'upload/news9.jpg', 1, '2023-04-01 03:19:39', '新闻详情9', '2023-04-01 03:19:39'),
	(10, '新闻名称10', 'upload/news10.jpg', 2, '2023-04-01 03:19:39', '新闻详情10', '2023-04-01 03:19:39'),
	(11, '新闻名称11', 'upload/news11.jpg', 1, '2023-04-01 03:19:39', '新闻详情11', '2023-04-01 03:19:39'),
	(12, '新闻名称12', 'upload/news12.jpg', 2, '2023-04-01 03:19:39', '新闻详情12', '2023-04-01 03:19:39'),
	(13, '新闻名称13', 'upload/news13.jpg', 1, '2023-04-01 03:19:39', '新闻详情13', '2023-04-01 03:19:39'),
	(14, '新闻名称14', 'upload/news14.jpg', 1, '2023-04-01 03:19:39', '新闻详情14', '2023-04-01 03:19:39');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'g3onjfdoq9gf0hcut5ajj4kinxcc9j2d', '2023-04-01 03:26:18', '2024-08-13 08:17:56'),
	(2, 1, 'a1', 'yonghu', '用户', 'm7jaruanwlb9zc22vd5f14ehwx8mqamh', '2023-04-01 03:27:12', '2024-08-13 08:19:36'),
	(3, 1, 'a1', 'laoshi', '老师', 'zqxeljs617pos7s8x0yn3lfz9er3jsni', '2023-04-01 03:37:48', '2024-08-13 08:19:18'),
	(4, 2, 'a2', 'laoshi', '老师', '2ufr5fja2zcshc0cxhe056topxksvmcf', '2023-04-01 03:39:42', '2023-04-01 04:39:42'),
	(5, 3, 'a3', 'laoshi', '老师', 'qp0gmzf59ve9qqxnoqj1hirej6e7iimz', '2023-04-01 03:39:53', '2023-04-01 04:53:15'),
	(6, 4, 'a5', 'yonghu', '用户', '84n8gzs32iu2ws8rdccwv5cmgo0tac9y', '2023-04-01 03:50:53', '2023-04-01 04:50:54');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-01 03:19:31');

DROP TABLE IF EXISTS `xuexizhidao`;
CREATE TABLE IF NOT EXISTS `xuexizhidao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuexizhidao_name` varchar(200) DEFAULT NULL COMMENT '学习指导名称 Search111  ',
  `xuexizhidao_photo` varchar(200) DEFAULT NULL COMMENT '学习指导图片 ',
  `xuexizhidao_types` int NOT NULL COMMENT '学习指导类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '学习指导发布时间 ',
  `xuexizhidao_content` longtext COMMENT '学习指导详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='学习指导';

DELETE FROM `xuexizhidao`;
INSERT INTO `xuexizhidao` (`id`, `xuexizhidao_name`, `xuexizhidao_photo`, `xuexizhidao_types`, `insert_time`, `xuexizhidao_content`, `create_time`) VALUES
	(1, '学习指导名称1', 'upload/xuexizhidao1.jpg', 2, '2023-04-01 03:19:39', '学习指导详情1', '2023-04-01 03:19:39'),
	(2, '学习指导名称2', 'upload/xuexizhidao2.jpg', 1, '2023-04-01 03:19:39', '学习指导详情2', '2023-04-01 03:19:39'),
	(3, '学习指导名称3', 'upload/xuexizhidao3.jpg', 2, '2023-04-01 03:19:39', '学习指导详情3', '2023-04-01 03:19:39'),
	(4, '学习指导名称4', 'upload/xuexizhidao4.jpg', 2, '2023-04-01 03:19:39', '学习指导详情4', '2023-04-01 03:19:39'),
	(5, '学习指导名称5', 'upload/xuexizhidao5.jpg', 1, '2023-04-01 03:19:39', '学习指导详情5', '2023-04-01 03:19:39'),
	(6, '学习指导名称6', 'upload/xuexizhidao6.jpg', 1, '2023-04-01 03:19:39', '学习指导详情6', '2023-04-01 03:19:39'),
	(7, '学习指导名称7', 'upload/xuexizhidao7.jpg', 1, '2023-04-01 03:19:39', '学习指导详情7', '2023-04-01 03:19:39'),
	(8, '学习指导名称8', 'upload/xuexizhidao8.jpg', 2, '2023-04-01 03:19:39', '学习指导详情8', '2023-04-01 03:19:39'),
	(9, '学习指导名称9', 'upload/xuexizhidao9.jpg', 2, '2023-04-01 03:19:39', '学习指导详情9', '2023-04-01 03:19:39'),
	(10, '学习指导名称10', 'upload/xuexizhidao10.jpg', 1, '2023-04-01 03:19:39', '学习指导详情10', '2023-04-01 03:19:39'),
	(11, '学习指导名称11', 'upload/xuexizhidao11.jpg', 1, '2023-04-01 03:19:39', '学习指导详情11', '2023-04-01 03:19:39'),
	(12, '学习指导名称12', 'upload/xuexizhidao12.jpg', 2, '2023-04-01 03:19:39', '学习指导详情12', '2023-04-01 03:19:39'),
	(13, '学习指导名称13', 'upload/xuexizhidao13.jpg', 1, '2023-04-01 03:19:39', '学习指导详情13', '2023-04-01 03:19:39'),
	(14, '学习指导名称14', 'upload/xuexizhidao14.jpg', 2, '2023-04-01 03:19:39', '<p>学习指导详情14骨灰盒</p>', '2023-04-01 03:19:39');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '1680319179159', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', '2023-04-01 03:19:39'),
	(2, '用户2', '123456', '1680319179097', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-04-01 03:19:39'),
	(3, '用户3', '123456', '1680319179128', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', '2023-04-01 03:19:39'),
	(4, '用户4', '123456', '1680321048789', '张5', '17788889999', '444555888999999999', 'upload/1680321059758.jpg', 2, '5@qq.com', '2023-04-01 03:50:49');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
