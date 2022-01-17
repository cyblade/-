----故障表
CREATE TABLE `ddhh_bxd` (
  `id` varchar(25) NOT NULL DEFAULT '' COMMENT 'id',
  `dph` varchar(50) DEFAULT NULL COMMENT '底盘号',
  `wtsh` varchar(50) DEFAULT NULL COMMENT '委托书号',
  `cph` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `shzt` varchar(2) DEFAULT NULL COMMENT '初审状态:1未审核2审核不通过3审核通过',
  `shsm` varchar(200) DEFAULT NULL COMMENT '初审说明',
  `sffs` varchar(20) DEFAULT NULL COMMENT '是否发送:1未发送2已发送',
  `fwzh` varchar(50) DEFAULT NULL COMMENT '服务站号',
  `user_id` varchar(200) DEFAULT NULL COMMENT '用户',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '建立时间',
  `field1` varchar(200) DEFAULT NULL COMMENT '扩展1',
  `field2` varchar(200) DEFAULT NULL COMMENT '扩展2',
  `field3` varchar(200) DEFAULT NULL COMMENT '扩展3',
  `field4` varchar(200) DEFAULT NULL COMMENT '扩展4',
  `field5` varchar(200) DEFAULT NULL COMMENT '扩展5',
  `field6` varchar(200) DEFAULT NULL COMMENT '审核变更',
  `shyh` varchar(100) DEFAULT NULL COMMENT '初审用户',
  `shsj` varchar(200) DEFAULT NULL COMMENT '初审时间',
  `fszt` varchar(2) DEFAULT NULL COMMENT '复审状态',
  `fssm` varchar(200) DEFAULT NULL COMMENT '复审说明',
  `fssj` varchar(200) DEFAULT NULL COMMENT '复审时间',
  `fsyh` varchar(100) DEFAULT NULL COMMENT '复审用户',
  `gzsm` varchar(200) DEFAULT NULL COMMENT '故障说明',
  `wj_dms_zt` varchar(3) DEFAULT NULL COMMENT 'dms文件状态',
  `wj_dms_url` varchar(500) DEFAULT NULL COMMENT 'dms文件地址',
  `wj_dms_sj` varchar(100) DEFAULT NULL COMMENT 'dms文件时间',
  `wj_dms_yh` varchar(100) DEFAULT NULL COMMENT 'dms文件用户',
  `sxr` varchar(30) DEFAULT NULL COMMENT '送修人',
  `sxrdh` varchar(100) DEFAULT NULL COMMENT '送修人电话',
  `csyhmc` varchar(50) DEFAULT NULL COMMENT '初审用户名称',
  `fsyhmc` varchar(50) DEFAULT NULL COMMENT '复审用户名称',
  `glwcfw` varchar(50) DEFAULT NULL COMMENT '关联外出服务id',
  `clxh` varchar(50) DEFAULT NULL COMMENT '车辆型号',
  `spsqbg` varchar(10) DEFAULT NULL COMMENT '是否有索赔申请报告',
  `bz` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `id` (`fwzh`) USING BTREE,
  KEY `clxh` (`clxh`) USING BTREE,
  KEY `create_time` (`create_time`)
) 


------故障表

CREATE TABLE `ddhh_bxd_gz` (
  `id` varchar(25) NOT NULL DEFAULT '' COMMENT 'id',
  `bxd_id` varchar(25) NOT NULL DEFAULT '' COMMENT '报修单id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '建立时间',
  `gzsm` varchar(200) DEFAULT NULL COMMENT '故障说明',
  `sxr` varchar(30) DEFAULT NULL COMMENT '送修人',
  `sxrdh` varchar(100) DEFAULT NULL COMMENT '送修人电话',
  `spbg` varchar(10) DEFAULT NULL COMMENT '是否有索赔申请报告',
  `khts` varchar(10) DEFAULT NULL COMMENT '是否客户投诉',
  `wcbg` varchar(10) DEFAULT NULL COMMENT '是否外出报告',
  `field1` varchar(200) DEFAULT NULL COMMENT '扩展1',
  `field2` varchar(200) DEFAULT NULL COMMENT '扩展2',
  `field3` varchar(200) DEFAULT NULL COMMENT '扩展3',
  `field4` varchar(200) DEFAULT NULL COMMENT '扩展4',
  `field5` varchar(200) DEFAULT NULL COMMENT '扩展5',
  `shyh` varchar(100) DEFAULT NULL COMMENT '初审用户',
  `shsj` varchar(200) DEFAULT NULL COMMENT '初审时间',
  `shzt` varchar(2) DEFAULT NULL COMMENT '初审状态:1未审核2审核不通过3审核通过',
  `shsm` varchar(200) DEFAULT NULL COMMENT '初审说明',
  `fszt` varchar(2) DEFAULT NULL COMMENT '复审状态',
  `fssm` varchar(200) DEFAULT NULL COMMENT '复审说明',
  `fssj` varchar(200) DEFAULT NULL COMMENT '复审时间',
  `fsyh` varchar(100) DEFAULT NULL COMMENT '复审用户',
  `wj_dms_zt` varchar(3) DEFAULT NULL COMMENT 'dms文件状态',
  `wj_dms_url` varchar(500) DEFAULT NULL COMMENT 'dms文件地址',
  `wj_dms_sj` varchar(100) DEFAULT NULL COMMENT 'dms文件时间',
  `wj_dms_yh` varchar(100) DEFAULT NULL COMMENT 'dms文件用户',
  `dph` varchar(50) DEFAULT NULL COMMENT '底盘号',
  `wtsh` varchar(50) DEFAULT NULL COMMENT '委托书号',
  `cph` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `fwzh` varchar(50) DEFAULT NULL COMMENT '服务站号',
  `fwz` varchar(200) DEFAULT NULL COMMENT '服务站'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-----报修单附件
CREATE TABLE `ddhh_bxd_files` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bxd_id` VARCHAR(25) DEFAULT NULL COMMENT '报修单id',
  `wjbm` VARCHAR(50) DEFAULT NULL COMMENT '文件unigo编码',
  `wjlx` VARCHAR(2) DEFAULT NULL COMMENT '文件类型:1图片2视频',
  `wjjym` VARCHAR(50) DEFAULT NULL COMMENT '文件校验码',
  `jyjg` VARCHAR(2) DEFAULT NULL COMMENT '校验结果:1一致2不一致',
  `jd` VARCHAR(50) DEFAULT NULL COMMENT '经度',
  `wd` VARCHAR(50) DEFAULT NULL COMMENT '纬度',
  `pssj` VARCHAR(20) DEFAULT NULL COMMENT '拍摄时间',
  `wjm` VARCHAR(200) DEFAULT NULL COMMENT '手机端:文件名',
  `sffs` VARCHAR(20) DEFAULT '' COMMENT '后台:服务站号 手机:是否发送:1未发送2已发送',
  `user_id` VARCHAR(200) DEFAULT NULL COMMENT '用户',
  `update_time` VARCHAR(20) DEFAULT NULL COMMENT '更新时间',
  `create_time` TIMESTAMP NULL DEFAULT NULL COMMENT '建立时间',
  `field1` VARCHAR(200) DEFAULT NULL COMMENT '扩展1',
  `field2` VARCHAR(200) DEFAULT NULL COMMENT '扩展2',
  `field3` VARCHAR(20) DEFAULT NULL COMMENT '附件类型：报修单or故障单',
  `field4` VARCHAR(200) DEFAULT NULL COMMENT '百度   用b/   GPS  用g',
  `field5` VARCHAR(200) DEFAULT NULL COMMENT '文件初审/复审',
  `field6` VARCHAR(200) DEFAULT NULL COMMENT 'wenj leix ',	
  `gz_id` VARCHAR(30) DEFAULT NULL COMMENT '故障ID ',
  PRIMARY KEY (`id`),
  KEY `bxd_id` (`bxd_id`) USING BTREE
) 

-----报修单故障附件
CREATE TABLE `ddhh_bxd_gz_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bxd_id` varchar(25) DEFAULT NULL COMMENT '报修单id',
  `bxd_gz_id` varchar(25) DEFAULT NULL COMMENT '报修单故障id',
  `wjbm` varchar(50) DEFAULT NULL COMMENT '文件unigo编码',
  `wjlx` varchar(2) DEFAULT NULL COMMENT '文件类型:1图片2视频',
  `wjjym` varchar(50) DEFAULT NULL COMMENT '文件校验码',
  `jyjg` varchar(2) DEFAULT NULL COMMENT '校验结果:1一致2不一致',
  `jd` varchar(50) DEFAULT NULL COMMENT '经度',
  `wd` varchar(50) DEFAULT NULL COMMENT '纬度',
  `pssj` varchar(20) DEFAULT NULL COMMENT '拍摄时间',
  `wjm` varchar(50) DEFAULT NULL COMMENT '手机端:文件名',
  `sffs` varchar(20) DEFAULT '' COMMENT '后台:服务站号 手机:是否发送:1未发送2已发送',
  `user_id` varchar(200) DEFAULT NULL COMMENT '用户',
  `update_time` varchar(20) DEFAULT NULL COMMENT '更新时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '建立时间',
  `field1` varchar(200) DEFAULT NULL COMMENT '扩展1',
  `field2` varchar(200) DEFAULT NULL COMMENT '扩展2',
  `field3` varchar(200) DEFAULT NULL COMMENT '扩展3',
  `field4` varchar(200) DEFAULT NULL COMMENT '百度   用b/   GPS  用g',
  `field5` varchar(200) DEFAULT NULL COMMENT '文件初审/复审',
  `field6` varchar(200) DEFAULT NULL COMMENT 'wenj leix '
) 



<%#Eval("spsqbg")==1?"yes":"no"%>
------------
20181227 建存储过程 
DELIMITER $$

USE `mysql`$$

DROP PROCEDURE IF EXISTS `pro_gzdetail`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_gzdetail`(strWhere VARCHAR(100),pageindex INT,pagesize INT)
BEGIN
SET @pro=CONCAT('select * from ddhh_bxd_gz ',strWhere,' limit ',(pageindex-1)*pagesize,',',pagesize);
PREPARE pro FROM @pro;
EXECUTE pro;
    END$$

DELIMITER ;

---------存储过程结束


























  
  
  
  