CREATE TABLE `players` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`citizenid` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci',
	`cid` INT(11) NULL DEFAULT NULL,
	`license` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`name` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`money` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`charinfo` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`job` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`gang` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`position` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`metadata` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
	`inventory` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`last_updated` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	`image` VARCHAR(250) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`dangerous` TINYINT(4) NULL DEFAULT '0',
	`wanted` TINYINT(4) UNSIGNED NULL DEFAULT '0',
	`race` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`citizenid`) USING BTREE,
	INDEX `id` (`id`) USING BTREE,
	INDEX `last_updated` (`last_updated`) USING BTREE,
	INDEX `license` (`license`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=7515
;