--附 MySql导入方法:

--创建 新版表 增加 大洲 国家英文名称 国家简码 经度 纬度

CREATE TABLE `ip`.`ip` (
`ip_start` VARCHAR(45) NULL,
`ip_end` VARCHAR(45) NULL,
`ip_start_num` BIGINT NULL,
`ip_end_num` BIGINT NULL,
`continent` VARCHAR(45) NULL,
`country` VARCHAR(45) NULL,
`province` VARCHAR(45) NULL,
`city` VARCHAR(45) NULL,
`district` VARCHAR(45) NULL,
`isp` VARCHAR(45) NULL,
`area_code` VARCHAR(45) NULL,
`country_english` VARCHAR(45) NULL,
`country_code` VARCHAR(45) NULL,
`longitude` VARCHAR(45) NULL,
`latitude` VARCHAR(45) NULL
);


--导入数据库
LOAD DATA LOCAL INFILE 'G:\IP数据库\ip.txt'
INTO TABLE ip
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
(ip_start, ip_end, ip_start_num,ip_end_num,continent,country,province,city,district,isp,area_code,country_english,country_code,longitude,latitude);









--创建表
CREATE TABLE `ip`.`ip` (
`StartIp` VARCHAR(45) NULL,
`EndIp` VARCHAR(45) NULL,
`StartIpNum` BIGINT NULL,
`EndIpNum` BIGINT NULL,
`Country` VARCHAR(45) NULL,
`Province` VARCHAR(45) NULL,
`City` VARCHAR(45) NULL,
`District` VARCHAR(45) NULL,
`ISP` VARCHAR(45) NULL,
`AreaCode` VARCHAR(45) NULL
);


--导入数据库
LOAD DATA LOCAL INFILE 'G:\IP数据库\ip.txt'
INTO TABLE ip
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
(StartIp, EndIp, StartIpNum,EndIpNum,Country,Province,City,District,ISP,AreaCode);


--查询
SELECT * FROM ip WHERE INET_ATON('219.232.57.199') BETWEEN StartIpNum AND EndIpNum LIMIT 1




--mysql乱码如何解决？

 

--解决：

  --确保两者编码统一 才不会乱码

--（1）先将txt文件转换为UTF-8格式 

--（2）导入命令中加入character set utf8

--如：

…… into table test character set utf8 fields……