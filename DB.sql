
DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `role` (`role_id`, `role`)
VALUES
	(1,'ADMIN');
INSERT INTO `role` (`role_id`, `role`)
VALUES
	(2,'USER');
INSERT INTO `role` (`role_id`, `role`)
VALUES
	(3,'WRITER');
INSERT INTO `role` (`role_id`, `role`)
VALUES
	(4,'READER');

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user` (`user_id`, `active`, `email`, `last_name`, `name`, `password`)
VALUES
	(1,1,'houssem@gmail.com','houssem','360gunner','1998'),
	(2,1,'amira@gmail.com','amira','amira','bellili');
INSERT INTO `user` (`user_id`, `active`, `email`, `last_name`, `name`, `password`)
VALUES
	(3,1,'moh@gmail.com','mohammed','moh','elit');

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user_role` (`user_id`, `role_id`)
VALUES
	(1,1),
    (1,2),
    (1,3),
    (1,4),
    (2,2);
INSERT INTO `user_role` (`user_id`, `role_id`)
VALUES
	(3,1),
    (3,2),
    (3,4);

