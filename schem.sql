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
    `id` tinyint unsigned not null comment 'id号',
    `name` varchar(64) not null comment '星座名称',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '星座字典表';

drop table if exists province;
create table `province` (
    `id` smallint unsigned not null comment 'id号',
    `name` varchar(64) not null comment '省名称',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '省字典表';

drop table if exists city;
create table `city` (
    `id` smallint unsigned not null comment 'id号',
    `name` varchar(64) not null comment '市名称',
    `provinceId` bigint unsigned not null comment '所属省id号',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '市字典表';


