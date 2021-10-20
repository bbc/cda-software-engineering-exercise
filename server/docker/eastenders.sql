# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.47)
# Database: eastenders
# Generation Time: 2020-04-30 12:07:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table characters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `characters`;

CREATE TABLE `characters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `actorName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bio` text COLLATE utf8_unicode_ci,
  `favourite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;

INSERT INTO `characters` (`id`, `characterName`, `actorName`, `imageUrl`, `bio`, `favourite`)
VALUES
	(1,'Ian Beale','Adam Woodyatt','https://ichef.bbci.co.uk/images/ic/256x144/p01gw8fm.jpg',NULL,NULL),
	(2,'Jane Beale','Laurie Brett','https://ichef.bbci.co.uk/images/ic/256x144/p02cxbjf.jpg',NULL,NULL),
	(3,'Kathy Beale','Gillian Taylforth','https://ichef.bbci.co.uk/images/ic/256x144/p032krh6.jpg',NULL,NULL),
	(4,'Steven Beale','Aaron Sidwell','https://ichef.bbci.co.uk/images/ic/256x144/p03wt0yk.jpg',NULL,NULL),
	(5,'Abi Branning','Lorna Fitzgerald','https://ichef.bbci.co.uk/images/ic/256x144/p03r153p.jpg',NULL,NULL),
	(6,'Dot Branning','June Brown','https://ichef.bbci.co.uk/images/ic/256x144/p01479vt.jpg',NULL,NULL),
	(7,'Jack Branning','Scott Maslen','https://ichef.bbci.co.uk/images/ic/256x144/p03z1ch7.jpg',NULL,NULL),
	(8,'Lauren Branning','Jacqueline Jossa','https://ichef.bbci.co.uk/images/ic/256x144/p040hjmp.jpg',NULL,NULL),
	(9,'Max Branning','Jake Wood','https://ichef.bbci.co.uk/images/ic/256x144/p04ly3p1.jpg',NULL,NULL),
	(10,'Babe Smith (Aunt Babe)','Annette Badland','https://ichef.bbci.co.uk/images/ic/256x144/p01r4xrx.jpg',NULL,NULL),
	(11,'Johnny Carter','Ted Reilly','https://ichef.bbci.co.uk/images/ic/256x144/p03nrl1c.jpg',NULL,NULL),
	(12,'Lee Carter','Danny-Boy Hatchard','https://ichef.bbci.co.uk/images/ic/256x144/p036k85y.jpg',NULL,NULL),
	(13,'Linda Carter','Kellie Bright','https://ichef.bbci.co.uk/images/ic/256x144/p01nl473.jpg',NULL,NULL),
	(14,'Mick Carter','Danny Dyer','https://ichef.bbci.co.uk/images/ic/256x144/p0414pqp.jpg',NULL,NULL),
	(15,'Shirley Carter','Linda Henry','https://ichef.bbci.co.uk/images/ic/256x144/p01fhbtc.jpg',NULL,NULL),
	(16,'Tina Carter','Luisa Bradshaw-White','https://ichef.bbci.co.uk/images/ic/256x144/p01lrbk1.jpg',NULL,NULL),
	(17,'Whitney Carter','Shona McGarty','https://ichef.bbci.co.uk/images/ic/256x144/p036kbg2.jpg',NULL,NULL),
	(18,'Martin Fowler','James Bye','https://ichef.bbci.co.uk/images/ic/256x144/p02dkkpn.jpg',NULL,NULL),
	(19,'Michelle Fowler','Played by Jenna Russell','https://ichef.bbci.co.uk/images/ic/256x144/p04lxnx1.jpg',NULL,NULL),
	(20,'Rebecca Fowler','Jasmine Armfield','https://ichef.bbci.co.uk/images/ic/256x144/p03y9rdh.jpg',NULL,NULL),
	(21,'Sonia Fowler','Natalie Cassidy','https://ichef.bbci.co.uk/images/ic/256x144/p01xrx0r.jpg',NULL,NULL),
	(22,'Stacey Fowler','Lacey Turner','https://ichef.bbci.co.uk/images/ic/256x144/p01rk2s9.jpg',NULL,NULL),
	(23,'Claudette Hubbard','Ellen Thomas','https://ichef.bbci.co.uk/images/ic/256x144/p02p8mxd.jpg',NULL,NULL),
	(24,'Denise Fox','Diane Parish','https://ichef.bbci.co.uk/images/ic/256x144/p040hhmd.jpg',NULL,NULL),
	(25,'Donna Yates','Lisa Hammond','https://ichef.bbci.co.uk/images/ic/256x144/p01xrrpt.jpg',NULL,NULL),
	(26,'Kim Fox-Hubbard','Tameka Empson','https://ichef.bbci.co.uk/images/ic/256x144/p02q9wmd.jpg',NULL,NULL),
	(27,'Patrick Trueman','Rudolph Walker','https://ichef.bbci.co.uk/images/ic/256x144/p00q1dgy.jpg',NULL,NULL),
	(28,'Vincent Hubbard','Richard Blackwood','https://ichef.bbci.co.uk/images/ic/256x144/p02qdrdh.jpg',NULL,NULL),
	(29,'Carmel Kazemi','Bonnie Langford','https://ichef.bbci.co.uk/images/ic/256x144/p03vjfq3.jpg',NULL,NULL),
	(30,'Khoroush Kazemi (Kush)','Davood Ghadami','https://ichef.bbci.co.uk/images/ic/256x144/p028p1xh.jpg',NULL,NULL),
	(31,'Shakil Kazemi (Shaks)','Shaheen Jafargholi','https://ichef.bbci.co.uk/images/ic/256x144/p03tsv82.jpg',NULL,NULL),
	(32,'Ben Mitchell','Harry Reid','https://ichef.bbci.co.uk/images/ic/256x144/p0274624.jpg',NULL,NULL),
	(33,'Billy Mitchell','Perry Fenwick','https://ichef.bbci.co.uk/images/ic/256x144/p040hhqf.jpg',NULL,NULL),
	(34,'Dennis Rickman Jnr','Play by Bleu Landau','https://ichef.bbci.co.uk/images/ic/256x144/p034jj9p.jpg',NULL,NULL),
	(35,'Glenda Mitchell','Glynis Barber','https://ichef.bbci.co.uk/images/ic/256x144/p00q4hrv.jpg',NULL,NULL),
	(36,'Honey Mitchell','Emma Barton','https://ichef.bbci.co.uk/images/ic/256x144/p0386sd7.jpg',NULL,NULL),
	(37,'Jay Brown','Jamie Borthwick','https://ichef.bbci.co.uk/images/ic/256x144/p045n28q.jpg',NULL,NULL),
	(38,'Louise Mitchell','Tilly Keeper','https://ichef.bbci.co.uk/images/ic/256x144/p03g76vq.jpg',NULL,NULL),
	(39,'Phil Mitchell','Steve McFadden','https://ichef.bbci.co.uk/images/ic/256x144/p03twx6g.jpg',NULL,NULL),
	(40,'Sharon Mitchell','Letitia Dean','https://ichef.bbci.co.uk/images/ic/256x144/p02nvkw1.jpg',NULL,NULL),
	(41,'Alfie Moon','Shane Richie','https://ichef.bbci.co.uk/images/ic/256x144/p00pd20d.jpg',NULL,NULL),
	(42,'Kat Moon','Jessie Wallace','https://ichef.bbci.co.uk/images/ic/256x144/p00q6x07.jpg',NULL,NULL),
	(43,'Mo Harris','Laila Morse','https://ichef.bbci.co.uk/images/ic/256x144/p00w8df9.jpg',NULL,NULL),
	(44,'Stacey Fowler','Lacey Turner','https://ichef.bbci.co.uk/images/ic/256x144/p01rk2s9.jpg',NULL,NULL),
	(45,'Jean Slater','Gillian Wright','https://ichef.bbci.co.uk/images/ic/256x144/p00w8dgk.jpg',NULL,NULL),
	(48,'Ryan Malloy','Neil McDermott','https://ichef.bbci.co.uk/images/ic/256x144/p00qpnmg.jpg',NULL,NULL);

/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
