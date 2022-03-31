USE `webshop`;

SET foreign_key_checks = 0;


DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` smallint unsigned NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Data for table `country`
--

INSERT INTO `country` VALUES 
(1,'RO','Romania'),
(2,'HU','Hungary'),
(3,'DE','Germany');



DROP TABLE IF EXISTS `county`;

CREATE TABLE `county` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Dumping data for table `state`
--

INSERT INTO `county` VALUES 
(1,'Alba',1),
(2,'Arad',1),
(3,'Arges',1),
(4,'Bacau',1),
(5,'Bihor',1),
(6,'Bistrita-Nasaud',1),
(7,'Botosani',1),
(8,'Brasov',1),
(9,'Braila',1),
(10,'Bucharest',1),
(11,'Buzau',1),
(12,'Caras-Severin',1),
(13,'Calarasi',1),
(14,'Cluj',1),
(15,'Constanta',1),
(16,'Covasna',1),
(17,'Dambovita',1),
(18,'Dolj',1),
(19,'Galati',1),
(20,'Giurgiu',1),
(21,'Gorj',1),
(22,'Harghita',1),
(23,'Hunedoara',1),
(24,'Ialomita',1),
(25,'Iasi',1),
(26,'Ilfov',1),
(27,'Maramures',1),
(28,'Mehedinti',1),
(29,'Mures',1),
(30,'Neamt',1),
(31,'Olt',1),
(32,'Prahova',1),
(33,'Satu Mare',1),
(34,'Salaj',1),
(35,'Sibiu',1),
(36,'Suceava',1),
(37,'Teleorman',1),
(38,'Timis',1),
(39,'Tulcea',1),
(40,'Vaslui',1),
(41,'Valcea',1),
(42,'Vrancea',1),
(43,'Baranya',2),
(44,'Bacs-Kiskun',2),
(45,'Bekes',2),
(46,'Borsod-Abauj-Zemplen',2),
(47,'Budapest',2),
(48,'Csongrad-Csanad',2),
(49,'Fejer',2),
(50,'Gyor-Moson-Sopron',2),
(51,'Hajdu-Bihar',2),
(52,'Heves',2),
(53,'Jasz-Nagykun-Szolnok',2),
(54,'Komarom-Esztergom',2),
(55,'Nograd',2),
(56,'Pest',2),
(57,'Somogy',2),
(58,'Szabolcs-Szatmar-Bereg',2),
(59,'Tolna',2),
(60,'Vas',2),
(61,'Veszprem',2),
(62,'Zala',2),
(63,'Baden-Wurttemberg',3),
(64,'Bavaria',3),
(65,'Berlin',3),
(66,'Brandenburg',3),
(67,'Bremen',3),
(68,'Hamburg',3),
(69,'Hesse',3),
(70,'Lower Saxony',3),
(71,'Mecklenburg-Vorpommern',3),
(72,'North Rhine-Westphalia',3),
(73,'Rhineland-Palatinate',3),
(74,'Saarland',3),
(75,'Saxony',3),
(76,'Saxony-Anhalt',3),
(77,'Schleswig-Holstein',3),
(78,'Thuringia',3);

SET foreign_key_checks = 1;
