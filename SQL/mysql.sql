CREATE TABLE `begina` (
  `btreeid` int(11) NOT NULL,
  `bval` int(11) DEFAULT NULL,
  KEY `begin_my_tree_FK` (`btreeid`),
  CONSTRAINT `begin_my_tree_FK` FOREIGN KEY (`btreeid`) REFERENCES `my_tree` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE `book` (
  `treeid` int(11) NOT NULL,
  `tval` int(11) NOT NULL DEFAULT '0',
  KEY `book_my_tree_FK` (`treeid`),
  CONSTRAINT `book_my_tree_FK` FOREIGN KEY (`treeid`) REFERENCES `my_tree` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `my_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(100) NOT NULL DEFAULT '0',
  `left_key` int(11) NOT NULL DEFAULT '0',
  `right_key` int(11) NOT NULL DEFAULT '0',
  `levels` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL,
  `val` int(11) DEFAULT NULL,
  `moon` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
