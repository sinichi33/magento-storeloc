# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Database: viverecommerce
# Generation Time: 2016-08-17 06:26:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table vivere_store_location
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vivere_store_location`;

CREATE TABLE `vivere_store_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `vivere_store_location` WRITE;
/*!40000 ALTER TABLE `vivere_store_location` DISABLE KEYS */;

INSERT INTO `vivere_store_location` (`id`, `name`, `address`, `img`, `lat`, `lon`)
VALUES
	(1,'Jakarta Design Center','Level 6, Unit #SR 01-03<br>\nJl. Gatot Subroto Kav 53, Slipi - West Jakarta   Tel. 021-572 0388<br>\n<b>Business Hour :</b><br>\n<em>Monday - Friday, 10:00 am until 07:00 pm<br>\nSaturday - Sunday, 10:00 am until 05:00pm</em><br>\n<b>Wardrobe Collection and Couture Collection are available here</b>','wysiwyg/HDCS02.jpg','-6.20168','106.80097'),
	(2,'Central Park','Level 2, Unit #130,210,211 - West Jakarta  <br> Tel. 021-5698 5353<br>\nBusiness Hour : Monday - Sunday, 10:00 am until 10:00 pm<br>\n<b>Wardrobe & Kitchen Collection are available here</b>','wysiwyg/CP.jpg','-6.17585','106.79152'),
	(3,'Mal Kelapa Gading 3','Ground Floor, Unit G#03, North Jakarta   <br>Tel. 021-4585-3908<br>\nBusiness Hour : Monday - Sunday, 10:00 am until 10:00 pm','wysiwyg/MKG.jpg','-6.15735','106.90869'),
	(4,'Pondok Indah Mall 2','Level 2, Unit #230 - South Jakarta  <br> Tel. 021-7592-0925 <br>\nBusiness Hour : Monday - Sunday, 10:00 am until 10:00 pm','wysiwyg/PIM.jpg','-6.26746','106.78450'),
	(5,'Lippo Mall Kemang','Level 2, Kav. 36 - South Jakarta <br>\nJl. Pangeran Antasari - Kemang Village   <br>Tel. 021 - 2905 6889<br>\nBusiness Hour : Monday - Sunday, 10:00 am until 10:00 pm<br>\n<em><b>Kitchen & Bath Collection is available here</b></em>','wysiwyg/KMV.jpg','-6.26121','106.81265'),
	(6,'Sumarecon Mall Serpong 2','Ground Floor #230 -231<br>\nTangerang, Banten   <br>Tel. 021-2931-0517<br>\nBusiness Hour : Monday - Sunday, 10:00 am until 10:00 pm<br>\n<em><b>Wardrobe Collection is available here</b></em>','wysiwyg/SMS.jpg','-6.24070','106.62835'),
	(7,'Goodrich Building','Pakuwon Square Ak 1<br>\nJl. Mayjen Yono Soewoyo No. 35-36, Surabaya  <br> Tel. 031-994 212 49<br>\nBusiness Hour : Monday - Saturday, 09:00 am until 07:00 pm; Sunday, 10:00 am until 03:00 pm; Public Holiday, Closed <br>\n<b><em>Wardrobe & Kitchen Collection are available here </em></b>','wysiwyg/pkw.jpg','-7.25747','112.75209'),
	(8,'Seminyak Bali','Jl. Kayu Aya No. 6<br>\nOberoi, Seminyak, Denpasar  <br> Tel. 0361-734-785<br>\nBusiness Hour: Monday - Sunday, 10:00 am until 10:00 pm<br>\n<b><em>Wardrobe Collection is available here</em></b>','wysiwyg/SMN.jpg','-8.68418','115.15957'),
	(9,'Gift Store BRI 2 Building','BRI 2 Building, Center Park <br>\nJl.Jend Sudirman No.44-46 Bendungan Hilir, Tanah Abang  <br> Telp. 021-5790 4364<br>\nBusiness Hour : Monday - Friday, 07:30 am until 07:00 pm','wysiwyg/BCP.jpg','-6.21744','106.81389'),
	(10,'Gift Store Lippo Mall Puri','Lippo Mall Puri<br>\nLevel LG #59, Jl. Puri Indah Raya Blok U 1, Puri Indah CBD, Kembangan, Jakarta<br>\nTel. 021-2569 1177<br>\nBusiness Hour : Monday - Saturday, 10:00 am until 10:00 pm','wysiwyg/LMP.jpg','-6.19010','106.73881');

/*!40000 ALTER TABLE `vivere_store_location` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
