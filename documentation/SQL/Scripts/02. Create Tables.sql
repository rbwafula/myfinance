/* DROP ALL Constraints */
/* These only need to be dropped after initial creation. Uncomment if it is after 2nd run */
/*ALTER TABLE `ProjectLocation` DROP FOREIGN KEY `CNSTR_ProjectLocation_Projects_FK`;
ALTER TABLE `ProjectLocation` DROP FOREIGN KEY `CNSTR_ProjectLocation_Countries_FK`;*/



/* DROP ALL Tables */
DROP TABLE IF EXISTS `myfinance`.`accounts`;
DROP TABLE IF EXISTS `myfinance`.`accounttypes`;
DROP TABLE IF EXISTS `myfinance`.`currencies`;
DROP TABLE IF EXISTS `myfinance`.`transactions`;
DROP TABLE IF EXISTS `myfinance`.`users`;


/* Accounts Table */
CREATE TABLE IF NOT EXISTS `myfinance`.`accounts` (
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `description` varchar(100) NOT NULL default '',
    `accounttypes_id` int(5) UNSIGNED  NOT NULL,
    `status` tinyint(1) DEFAULT 0,
    `deleted` tinyint(1) DEFAULT 0,
    `createuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `createdate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `createipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    `lastmodifyuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifydate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifyipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;


/* Account Types Table */
CREATE TABLE IF NOT EXISTS `myfinance`.`accounttypes` (
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `description` varchar(100) NOT NULL default '',
    `status` tinyint(1) DEFAULT 0,
    `deleted` tinyint(1) DEFAULT 0,
    `createuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `createdate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `createipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    `lastmodifyuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifydate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifyipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;


/* Currencies Table */
CREATE TABLE IF NOT EXISTS `myfinance`.`currencies` (
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `shortcode` varchar(10) NOT NULL,
    `ratetokes` decimal (13,4) NOT NULL,
    `status` tinyint(1) DEFAULT 0,
    `deleted` tinyint(1) DEFAULT 0,
    `createuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `createdate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `createipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    `lastmodifyuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifydate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifyipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;


/* Transactions Table */
CREATE TABLE IF NOT EXISTS `myfinance`.`transactions` (
    `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
    `payer` int(11) NOT NULL,
    `payee` varchar(250) NOT NULL,
    `amount` decimal (13,2) NOT NULL,
    `currency` int(11) NOT NULL,
    `description` varchar(100) NOT NULL default '',
    `status` tinyint(1) DEFAULT 0,
    `deleted` tinyint(1) DEFAULT 0,
    `createuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `createdate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `createipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    `lastmodifyuser` int(11) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifydate` int(10) UNSIGNED DEFAULT 0 NOT NULL,
    `lastmodifyipaddr`varchar(45) DEFAULT '127.0.0.1' NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;


/* CREATE Foreign Indexes */
ALTER TABLE `myfinance`.`accounts`
ADD CONSTRAINT FK_Accounts_AccountTypes FOREIGN KEY (`accounttypes_id`) REFERENCES `accounttypes`(`id`); 

ALTER TABLE `myfinance`.`transactions`
ADD CONSTRAINT FK_Transactions_AccountPayer FOREIGN KEY (`payer`) REFERENCES `accounts`(`id`),
ADD CONSTRAINT FK_Transactions_Currency FOREIGN KEY (`currency`) REFERENCES `currencies`(`id`); 