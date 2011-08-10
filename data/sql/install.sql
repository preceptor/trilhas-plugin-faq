CREATE TABLE IF NOT EXISTS `faq` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `classroom_id` bigint(20) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `classroom_id` (`classroom_id`)
);

ALTER TABLE `faq`
  ADD CONSTRAINT `faq_ibfk_2` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`id`),
  ADD CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);