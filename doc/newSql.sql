ALTER TABLE bao_appusers ADD age tinyint(4);
ALTER TABLE bao_appusers ADD job varchar(255);
ALTER TABLE bao_appusers ADD hobby varchar(255);
ALTER TABLE bao_appusers ADD spreadQrCode varchar(4) comment '推广二维码';
ALTER TABLE bao_users ADD customerServiceStatus tinyint(4) comment '是否客服0否 1是';
ALTER TABLE bao_users ADD spreadMan varchar(4) comment '推广人';
ALTER TABLE bao_mobile_user ADD sex tinyint(4) comment '性别';
ALTER TABLE bao_users ADD addPay VARCHAR(50) comment '添加好友费用';

ALTER TABLE bao_recharge_record ADD userId bigint(20) comment '金额明细相关的用户';


CREATE TABLE `bao_advert_red_click` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `money` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `best` tinyint(4) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `userAccount` varchar(255) DEFAULT NULL,
  `advertRedId` bigint(20) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bao_advert_red` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertId` bigint(20) DEFAULT NULL,
  `redCount` int(11) DEFAULT NULL,
  `leftRedCount` int(11) DEFAULT NULL,
  `sum` varchar(255) DEFAULT NULL,
  `receiveTarget` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `isLocked` tinyint(4) DEFAULT NULL,
  `lastModifiedTime` datetime DEFAULT NULL,
  `lastModifier` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bao_advert_parameter` (
  `time` tinyint(4) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `eachPay` decimal(11,3) DEFAULT NULL,
    `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `bao_invite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `inviteMoney` varchar(64)DEFAULT NULL,
  `inviteUsers` varchar(255) DEFAULT NULL,
  `inviteAddress` varchar(255) DEFAULT NULL,
  `longitud` varchar(64) DEFAULT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `invateTime` datetime DEFAULT NULL,
  `applyTime` varchar(64) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bao_invite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `inviteMoney` varchar(64)DEFAULT NULL,
  `inviteUsers` varchar(255) DEFAULT NULL,
  `inviteAddress` varchar(255) DEFAULT NULL,
  `longitud` varchar(64) DEFAULT NULL,
  `latitude` varchar(64) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `invateTime` datetime DEFAULT NULL,
  `applyTime` varchar(64) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
   `userNum` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bao_invite_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `inviteId` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
   `ifPay` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;