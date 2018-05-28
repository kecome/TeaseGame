drop table if exists `gamers`;
create table `gamers` (
    `id` bigint unsigned not null comment 'id号',
    `wxId` varchar(64) not null comment '微信登录成功后返回id',
    `deviceId` varchar(64) not null comment '玩家设备唯一标识id',
    `phoneNumber` varchar(16) not null comment '手机号码',
    `nickName` varchar(64) not null comment '呢称',
    `head` varchar(255) not null comment '头像',
    `sex` tinyint unsigned comment '性别',
    `age` tinyint unsigned comment '年龄',
    `birthday` datetime not null comment '生日',
    `score` bigint unsigned  comment '总积分',
    `goldCoin` bigint unsigned  comment '金币',
    `diamonds` bigint unsigned  comment '钻石',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '最近修改时间',
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
    `gameId` bigint unsigned not null comment '游戏id',
    `score` bigint unsigned not null comment '积分',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家游戏积分流水';


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
    `status` tinyint unsigned not null comment '任务状态 0：未获得   1：已获得',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '玩家成就';










drop table if exists studentwork;
create table `studentwork` (
    `id` bigint unsigned not null comment 'id号',
    `homeworkId` bigint unsigned not null comment '作业id',
    `studentId` bigint unsigned not null comment '学生id号',
    `studentName` varchar(64) not null comment '学生名称',
    `classId` bigint unsigned not null comment '班级id号',
    `time` int unsigned comment '学生作业计时',
    `submit` tinyint not null default 0 comment '学生是否提交：【0：未提交；1：已提交】',
    `mark` tinyint not null default 0 comment '老师是否批阅：【0：未批阅；1：已批阅】',
    `submitTime` datetime comment '提交时间',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '学生作业表';

drop table if exists studentAnswer;
create table `studentAnswer` (
    `id` bigint unsigned not null comment 'id号',
    `questionId` bigint unsigned not null comment '所属题目id号',
    `studentId` bigint unsigned not null comment '学生id号',
    `answer` mediumblob comment '题目答案,主观题为照片url',
    `isRight` tinyint comment '正确与否：【0：正确；1：错误】',
    `comment` text comment '老师批阅',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '学生答题表';

drop table if exists questionIndex;
create table `questionIndex` (
    `id` bigint unsigned not null comment 'id号',
    `questionId` bigint unsigned not null comment '题目id号',
    `studentworkId` bigint unsigned not null comment '学生作业id号',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '学生退出答题记录';

drop table if exists answerLog;
create table `answerLog` (
    `id` bigint unsigned not null comment 'id号',
    `questionId` bigint unsigned not null comment '题目id号',
    `studentId` bigint unsigned not null comment '学生id号',
    `start` datetime not null comment '开始时间',
    `end` datetime not null comment '开始时间',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '学生答题时间日志记录';

drop table if exists message;
create table `message` (
    `id` bigint unsigned not null comment 'id号',
    `studentId` bigint unsigned not null comment '消息接收者id号，学生',
    `teacherId` bigint unsigned not null comment '消息发送者id号，老师',
    `resourceId` bigint unsigned comment '目前只用作存homeworkId',
    `type` tinyint not null comment '消息类型：【0：作业批阅消息】',
    `content` text comment '消息内容',
    `isRead` tinyint not null default 0 comment '是否查看：【0：未查看；1：已查看】',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '消息表';

drop table if exists attachment;
create table `attachment` (
    `id` bigint unsigned not null comment 'id号',
    `fileName` varchar(256) not null comment '文件名称',
    `extension` varchar(32) not null comment '文件后缀',
    `url` varchar(256) not null comment '相对路径',
    `size` bigint not null comment '文件大小',
    `md5` varchar(128) not null comment '文件md5值',
    `created` datetime not null comment '创建时间',
    `updated` datetime not null comment '修改时间',
     primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment = '附件表';