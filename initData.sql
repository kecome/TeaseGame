drop table if exists `gamers`;
create table `gamers` (
    `id` bigint unsigned not null comment 'id号',
    `wxId` varchar(64) not null comment '微信登录成功后返回id',
    `deviceId` varchar(64) not null comment '玩家设备唯一标识id',
    `phoneNumber` varchar(16) not null comment '手机号码',
    `nickName` varchar(64) not null comment '呢称',
    `head` varchar(255) not null comment '头像',
    `sex` tinyint unsigned comment '性别',
    `age` datetime not null comment '出生年月',
    `starSignId` tinyint unsigned comment '星座',
    `signature` varchar(255) comment '个性签名',
    `score` bigint unsigned  comment '积分',
    `expPoints` bigint unsigned  comment 'experience points 经验值',
    `goldCoin` bigint unsigned  comment '金币',
    `diamonds` bigint unsigned  comment '钻石',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家表，存放所有玩家个人信息';

drop table if exists games;
create table `games` (
    `id` bigint unsigned not null comment 'id号',
    `name` varchar(64) not null comment '游戏名称',
    `icon` varchar(255) not null comment '游戏icon',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '平台游戏';

drop table if exists game_score;
create table `game_score` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '游戏玩家id',
    `gameId` bigint unsigned not null comment '游戏id',
    `score` bigint unsigned not null comment '积分',
    `comment` varchar(255) not null comment '流水说明',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家游戏积分流水';

drop table if exists goldCoin;
create table `goldCoin` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '游戏玩家id',
    `gold` bigint unsigned not null comment '金币',
    `comment` varchar(255) not null comment '流水说明',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '金币流水表';

drop table if exists diamonds;
create table `diamonds` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '游戏玩家id',
    `diamonds` bigint unsigned not null comment '钻石',
    `comment` varchar(255) not null comment '流水说明',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '钻石流水表';

drop table if exists experience_points;
create table `experience_points` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '游戏玩家id',
    `expPoints` bigint unsigned not null comment '经验值',
    `comment` varchar(255) not null comment '流水说明',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '经验值流水表';

drop table if exists gamer_result;
create table `gamer_result` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId_1` bigint unsigned not null comment '游戏玩家id 1',
    `gamerId_2` bigint unsigned not null comment '游戏玩家id 2',
    `gameId` bigint unsigned not null comment '游戏id',
    `result` tinyint unsigned not null comment '胜负结果 0：负, 1: 胜',
    `type` tinyint unsigned not null comment '单机模式：0  pk模式：1',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家胜负结果流水表';

drop table if exists task;
create table `task` (
    `id` bigint unsigned not null comment 'id号',
    `name` varchar(64) not null comment '任务名称',
    `desc` text not null comment '任务描述',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '任务列表';

drop table if exists gamer_task;
create table `gamer_task` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '玩家id',
    `taskId` bigint unsigned not null comment '任务id',
    `status` tinyint unsigned not null comment '任务状态 0：未完成   1：已完成',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家任务';

drop table if exists sign_in;
create table `sign_in` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '玩家id',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '签到表';

drop table if exists achievement;
create table `achievement` (
    `id` bigint unsigned not null comment 'id号',
    `name` varchar(64) not null comment '成就名称',
    `logo` varchar(255) not null comment '成就logo',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '游戏成就';

drop table if exists gamer_achievement;
create table `gamer_achievement` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '玩家id',
    `achievementId` bigint unsigned not null comment '成就id',
    `status` tinyint unsigned not null comment '状态 0：未获得   1：已获得',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家成就';


drop table if exists goods;
create table `goods` (
    `id` bigint unsigned not null comment 'id号',
    `name` varchar(64) not null comment '商品名称',
    `logo` varchar(255) not null comment '商品logo',
    `type` tinyint unsigned not null comment '商品类型 0：金币   1：道具',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '游戏商品';


drop table if exists gamer_goods;
create table `gamer_goods` (
    `id` bigint unsigned not null comment 'id号',
    `gamerId` bigint unsigned not null comment '玩家id',
    `goodsId` bigint unsigned not null comment '商品id号',
    `count` int not null comment '商品数量',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家购买的商品';


drop table if exists starSign;
create table `starSign` (
    `id` tinyint unsigned not null auto_increment comment 'id号',
    `name` varchar(64) not null comment '星座名称',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '星座字典表';

INSERT INTO `starsign` VALUES (1, '白羊座', '2018-5-28 18:41:06', '2018-5-28 18:41:09');
INSERT INTO `starsign` VALUES (2, '金牛座', '2018-5-28 18:41:41', '2018-5-28 18:42:23');
INSERT INTO `starsign` VALUES (3, '双子座', '2018-5-28 18:41:45', '2018-5-28 18:42:26');
INSERT INTO `starsign` VALUES (4, '巨蟹座', '2018-5-28 18:41:47', '2018-5-28 18:42:29');
INSERT INTO `starsign` VALUES (5, '狮子座', '2018-5-28 18:41:50', '2018-5-28 18:42:31');
INSERT INTO `starsign` VALUES (6, '处女座', '2018-5-28 18:41:53', '2018-5-28 18:42:34');
INSERT INTO `starsign` VALUES (7, '天秤座', '2018-5-28 18:42:06', '2018-5-28 18:42:36');
INSERT INTO `starsign` VALUES (8, '天蝎座', '2018-5-28 18:42:09', '2018-5-28 18:42:39');
INSERT INTO `starsign` VALUES (9, '射手座', '2018-5-28 18:42:12', '2018-5-28 18:42:42');
INSERT INTO `starsign` VALUES (10, '摩羯座', '2018-5-28 18:42:15', '2018-5-28 18:42:45');
INSERT INTO `starsign` VALUES (11, '水瓶座', '2018-5-28 18:42:17', '2018-5-28 18:42:47');
INSERT INTO `starsign` VALUES (12, '双鱼座', '2018-5-28 18:42:20', '2018-5-28 18:42:50');

drop table if exists province;
create table `province` (
    `id` smallint unsigned not null auto_increment comment 'id号',
    `name` varchar(64) not null comment '省名称',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '省字典表';

INSERT INTO `province` VALUES ('1', '北京市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('2', '天津市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('3', '上海市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('4', '重庆市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('5', '河北省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('6', '山西省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('7', '台湾省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('8', '辽宁省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('9', '吉林省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('10', '黑龙江省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('11', '江苏省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('12', '浙江省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('13', '安徽省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('14', '福建省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('15', '江西省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('16', '山东省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('17', '河南省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('18', '湖北省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('19', '湖南省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('20', '广东省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('21', '甘肃省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('22', '四川省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('23', '贵州省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('24', '海南省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('25', '云南省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('26', '青海省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('27', '陕西省' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('28', '广西壮族自治区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('29', '西藏自治区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('30', '宁夏回族自治区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('31', '新疆维吾尔自治区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('32', '内蒙古自治区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('33', '澳门特别行政区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `province` VALUES ('34', '香港特别行政区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');

drop table if exists city;
create table `city` (
    `id` smallint unsigned not null auto_increment comment 'id号',
    `provinceId` bigint unsigned not null comment '所属省id号',
    `name` varchar(64) not null comment '市名称',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '市字典表';

INSERT INTO `city` VALUES ('1', '1', '北京市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('2', '2', '天津市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('3', '3', '上海市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('4', '4', '重庆市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('5', '5', '石家庄市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('6', '5', '唐山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('7', '5', '秦皇岛市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('8', '5', '邯郸市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('9', '5', '邢台市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('10', '5', '保定市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('11', '5', '张家口市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('12', '5', '承德市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('13', '5', '沧州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('14', '5', '廊坊市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('15', '5', '衡水市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('16', '6', '太原市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('17', '6', '大同市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('18', '6', '阳泉市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('19', '6', '长治市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('20', '6', '晋城市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('21', '6', '朔州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('22', '6', '晋中市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('23', '6', '运城市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('24', '6', '忻州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('25', '6', '临汾市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('26', '6', '吕梁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('27', '7', '台北市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('28', '7', '高雄市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('29', '7', '基隆市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('30', '7', '台中市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('31', '7', '台南市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('32', '7', '新竹市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('33', '7', '嘉义市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('34', '7', '台北县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('35', '7', '宜兰县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('36', '7', '桃园县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('37', '7', '新竹县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('38', '7', '苗栗县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('39', '7', '台中县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('40', '7', '彰化县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('41', '7', '南投县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('42', '7', '云林县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('43', '7', '嘉义县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('44', '7', '台南县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('45', '7', '高雄县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('46', '7', '屏东县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('47', '7', '澎湖县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('48', '7', '台东县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('49', '7', '花莲县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('50', '8', '沈阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('51', '8', '大连市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('52', '8', '鞍山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('53', '8', '抚顺市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('54', '8', '本溪市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('55', '8', '丹东市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('56', '8', '锦州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('57', '8', '营口市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('58', '8', '阜新市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('59', '8', '辽阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('60', '8', '盘锦市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('61', '8', '铁岭市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('62', '8', '朝阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('63', '8', '葫芦岛市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('64', '9', '长春市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('65', '9', '吉林市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('66', '9', '四平市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('67', '9', '辽源市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('68', '9', '通化市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('69', '9', '白山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('70', '9', '松原市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('71', '9', '白城市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('72', '9', '延边朝鲜族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('73', '10', '哈尔滨市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('74', '10', '齐齐哈尔市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('75', '10', '鹤岗市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('76', '10', '双鸭山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('77', '10', '鸡西市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('78', '10', '大庆市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('79', '10', '伊春市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('80', '10', '牡丹江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('81', '10', '佳木斯市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('82', '10', '七台河市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('83', '10', '黑河市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('84', '10', '绥化市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('85', '10', '大兴安岭地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('86', '11', '南京市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('87', '11', '无锡市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('88', '11', '徐州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('89', '11', '常州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('90', '11', '苏州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('91', '11', '南通市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('92', '11', '连云港市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('93', '11', '淮安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('94', '11', '盐城市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('95', '11', '扬州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('96', '11', '镇江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('97', '11', '泰州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('98', '11', '宿迁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('99', '12', '杭州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('100', '12', '宁波市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('101', '12', '温州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('102', '12', '嘉兴市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('103', '12', '湖州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('104', '12', '绍兴市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('105', '12', '金华市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('106', '12', '衢州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('107', '12', '舟山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('108', '12', '台州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('109', '12', '丽水市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('110', '13', '合肥市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('111', '13', '芜湖市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('112', '13', '蚌埠市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('113', '13', '淮南市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('114', '13', '马鞍山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('115', '13', '淮北市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('116', '13', '铜陵市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('117', '13', '安庆市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('118', '13', '黄山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('119', '13', '滁州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('120', '13', '阜阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('121', '13', '宿州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('122', '13', '巢湖市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('123', '13', '六安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('124', '13', '亳州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('125', '13', '池州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('126', '13', '宣城市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('127', '14', '福州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('128', '14', '厦门市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('129', '14', '莆田市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('130', '14', '三明市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('131', '14', '泉州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('132', '14', '漳州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('133', '14', '南平市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('134', '14', '龙岩市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('135', '14', '宁德市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('136', '15', '南昌市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('137', '15', '景德镇市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('138', '15', '萍乡市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('139', '15', '九江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('140', '15', '新余市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('141', '15', '鹰潭市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('142', '15', '赣州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('143', '15', '吉安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('144', '15', '宜春市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('145', '15', '抚州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('146', '15', '上饶市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('147', '16', '济南市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('148', '16', '青岛市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('149', '16', '淄博市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('150', '16', '枣庄市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('151', '16', '东营市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('152', '16', '烟台市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('153', '16', '潍坊市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('154', '16', '济宁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('155', '16', '泰安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('156', '16', '威海市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('157', '16', '日照市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('158', '16', '莱芜市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('159', '16', '临沂市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('160', '16', '德州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('161', '16', '聊城市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('162', '16', '滨州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('163', '16', '菏泽市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('164', '17', '郑州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('165', '17', '开封市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('166', '17', '洛阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('167', '17', '平顶山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('168', '17', '安阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('169', '17', '鹤壁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('170', '17', '新乡市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('171', '17', '焦作市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('172', '17', '濮阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('173', '17', '许昌市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('174', '17', '漯河市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('175', '17', '三门峡市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('176', '17', '南阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('177', '17', '商丘市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('178', '17', '信阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('179', '17', '周口市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('180', '17', '驻马店市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('181', '17', '济源市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('182', '18', '武汉市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('183', '18', '黄石市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('184', '18', '十堰市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('185', '18', '荆州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('186', '18', '宜昌市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('187', '18', '襄樊市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('188', '18', '鄂州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('189', '18', '荆门市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('190', '18', '孝感市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('191', '18', '黄冈市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('192', '18', '咸宁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('193', '18', '随州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('194', '18', '仙桃市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('195', '18', '天门市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('196', '18', '潜江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('197', '18', '神农架林区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('198', '18', '恩施土家族苗族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('199', '19', '长沙市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('200', '19', '株洲市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('201', '19', '湘潭市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('202', '19', '衡阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('203', '19', '邵阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('204', '19', '岳阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('205', '19', '常德市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('206', '19', '张家界市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('207', '19', '益阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('208', '19', '郴州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('209', '19', '永州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('210', '19', '怀化市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('211', '19', '娄底市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('212', '19', '湘西土家族苗族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('213', '20', '广州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('214', '20', '深圳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('215', '20', '珠海市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('216', '20', '汕头市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('217', '20', '韶关市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('218', '20', '佛山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('219', '20', '江门市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('220', '20', '湛江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('221', '20', '茂名市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('222', '20', '肇庆市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('223', '20', '惠州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('224', '20', '梅州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('225', '20', '汕尾市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('226', '20', '河源市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('227', '20', '阳江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('228', '20', '清远市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('229', '20', '东莞市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('230', '20', '中山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('231', '20', '潮州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('232', '20', '揭阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('233', '20', '云浮市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('234', '21', '兰州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('235', '21', '金昌市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('236', '21', '白银市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('237', '21', '天水市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('238', '21', '嘉峪关市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('239', '21', '武威市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('240', '21', '张掖市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('241', '21', '平凉市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('242', '21', '酒泉市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('243', '21', '庆阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('244', '21', '定西市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('245', '21', '陇南市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('246', '21', '临夏回族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('247', '21', '甘南藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('248', '22', '成都市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('249', '22', '自贡市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('250', '22', '攀枝花市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('251', '22', '泸州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('252', '22', '德阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('253', '22', '绵阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('254', '22', '广元市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('255', '22', '遂宁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('256', '22', '内江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('257', '22', '乐山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('258', '22', '南充市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('259', '22', '眉山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('260', '22', '宜宾市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('261', '22', '广安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('262', '22', '达州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('263', '22', '雅安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('264', '22', '巴中市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('265', '22', '资阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('266', '22', '阿坝藏族羌族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('267', '22', '甘孜藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('268', '22', '凉山彝族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('269', '23', '贵阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('270', '23', '六盘水市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('271', '23', '遵义市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('272', '23', '安顺市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('273', '23', '铜仁地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('274', '23', '毕节地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('275', '23', '黔西南布依族苗族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('276', '23', '黔东南苗族侗族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('277', '23', '黔南布依族苗族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('278', '24', '海口市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('279', '24', '三亚市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('280', '24', '五指山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('281', '24', '琼海市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('282', '24', '儋州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('283', '24', '文昌市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('284', '24', '万宁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('285', '24', '东方市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('286', '24', '澄迈县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('287', '24', '定安县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('288', '24', '屯昌县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('289', '24', '临高县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('290', '24', '白沙黎族自治县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('291', '24', '昌江黎族自治县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('292', '24', '乐东黎族自治县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('293', '24', '陵水黎族自治县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('294', '24', '保亭黎族苗族自治县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('295', '24', '琼中黎族苗族自治县' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('296', '25', '昆明市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('297', '25', '曲靖市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('298', '25', '玉溪市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('299', '25', '保山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('300', '25', '昭通市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('301', '25', '丽江市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('302', '25', '思茅市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('303', '25', '临沧市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('304', '25', '文山壮族苗族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('305', '25', '红河哈尼族彝族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('306', '25', '西双版纳傣族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('307', '25', '楚雄彝族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('308', '25', '大理白族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('309', '25', '德宏傣族景颇族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('310', '25', '怒江傈傈族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('311', '25', '迪庆藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('312', '26', '西宁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('313', '26', '海东地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('314', '26', '海北藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('315', '26', '黄南藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('316', '26', '海南藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('317', '26', '果洛藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('318', '26', '玉树藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('319', '26', '海西蒙古族藏族自治州' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('320', '27', '西安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('321', '27', '铜川市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('322', '27', '宝鸡市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('323', '27', '咸阳市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('324', '27', '渭南市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('325', '27', '延安市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('326', '27', '汉中市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('327', '27', '榆林市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('328', '27', '安康市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('329', '27', '商洛市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('330', '28', '南宁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('331', '28', '柳州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('332', '28', '桂林市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('333', '28', '梧州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('334', '28', '北海市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('335', '28', '防城港市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('336', '28', '钦州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('337', '28', '贵港市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('338', '28', '玉林市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('339', '28', '百色市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('340', '28', '贺州市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('341', '28', '河池市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('342', '28', '来宾市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('343', '28', '崇左市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('344', '29', '拉萨市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('345', '29', '那曲地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('346', '29', '昌都地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('347', '29', '山南地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('348', '29', '日喀则地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('349', '29', '阿里地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('350', '29', '林芝地区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('351', '30', '银川市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('352', '30', '石嘴山市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('353', '30', '吴忠市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('354', '30', '固原市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('355', '30', '中卫市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('356', '31', '乌鲁木齐市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('357', '31', '克拉玛依市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('358', '31', '石河子市　' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('359', '31', '阿拉尔市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('360', '31', '图木舒克市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('361', '31', '五家渠市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('362', '31', '吐鲁番市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('363', '31', '阿克苏市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('364', '31', '喀什市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('365', '31', '哈密市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('366', '31', '和田市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('367', '31', '阿图什市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('368', '31', '库尔勒市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('369', '31', '昌吉市　' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('370', '31', '阜康市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('371', '31', '米泉市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('372', '31', '博乐市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('373', '31', '伊宁市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('374', '31', '奎屯市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('375', '31', '塔城市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('376', '31', '乌苏市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('377', '31', '阿勒泰市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('378', '32', '呼和浩特市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('379', '32', '包头市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('380', '32', '乌海市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('381', '32', '赤峰市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('382', '32', '通辽市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('383', '32', '鄂尔多斯市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('384', '32', '呼伦贝尔市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('385', '32', '巴彦淖尔市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('386', '32', '乌兰察布市' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('387', '32', '锡林郭勒盟' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('388', '32', '兴安盟' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('389', '32', '阿拉善盟' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('390', '33', '澳门特别行政区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');
INSERT INTO `city` VALUES ('391', '34', '香港特别行政区' ,'2018-5-28 18:41:06' ,  '2018-5-28 18:41:09');

