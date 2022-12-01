-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                5.7.23 - MySQL Community Server (GPL)
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- thietbi için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `thietbi` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci */;
USE `thietbi`;

-- tablo yapısı dökülüyor kahve.anasayfa
CREATE TABLE IF NOT EXISTS `anasayfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `ustBaslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ustIcerik` varchar(6000) COLLATE utf8_turkish_ci NOT NULL,
  `link` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `altBaslik` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `altIcerik` varchar(6000) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- kahve.anasayfa: 1 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `anasayfa` DISABLE KEYS */;

-- tablo yapısı dökülüyor thietbi.kullanicilar
CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kadi` char(50) NOT NULL,
  `parola` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- thietbi.kullanicilar: 2 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `kullanicilar` DISABLE KEYS */;
INSERT INTO `kullanicilar` (`id`, `kadi`, `parola`) VALUES
	(1, 'admin1', '105a9a2d46f64e147097c986076d2164'),
	(2, 'admin2', '105a9a2d46f64e147097c986076d2164');
/*!40000 ALTER TABLE `kullanicilar` ENABLE KEYS */;

-- tablo yapısı dökülüyor thietbi.quanli
CREATE TABLE IF NOT EXISTS `quanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` char(50) COLLATE utf8_turkish_ci NOT NULL,
  `mathietbi` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `tenthietbi` char(250) COLLATE utf8_turkish_ci NOT NULL,
  `chitiet` text COLLATE utf8_turkish_ci NOT NULL,
  `sudung` tinyint(4) NOT NULL,
  `soluong` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- thietbi.quanli: 4 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `quanli` DISABLE KEYS */;
INSERT INTO `quanli` (`id`, `photo`, `mathietbi`, `tenthietbi`, `chitiet`, `sudung`, `soluong`) VALUES
	(4, 'products-01.jpg', 'Coffees & Teas', 'Blended to Perfection', '<p class="mb-0">We take pride in our work, and it shows. Every time you order a beverage from us, we guarantee that it will be an experience worth having. Whether it\'s our world famous Venezuelan Cappuccino, a refreshing iced herbal tea, or something as simple as a cup of speciality sourced black coffee, you will be coming back for more.</p>', 0, 300),
	(3, 'products-03.jpg', 'Bulk Speciality Blends', 'From Around the World', '<p class="mb-0">Travelling the world for the very best quality coffee is something take pride in. When you visit us, you\'ll always find new blends from around the world, mainly from regions in Central and South America. We sell our blends in smaller to large bulk quanlitities. Please visit us in person for more details.</p>', 1, 400),
	(5, 'products-03.jpg', 'Bulk Speciality Blends', 'From Around the World', '<p class="mb-0">Travelling the world for the very best quality coffee is something take pride in. When you visit us, you\'ll always find new blends from around the world, mainly from regions in Central and South America. We sell our blends in smaller to large bulk quanlitities. Please visit us in person for more details.</p>', 1, 500),
	(6, 'products-02.jpg', 'Bakery', 'Delicious Treats, Good Eats', '<p class="mb-0">Our seasonal menu features delicious snacks, baked goods, and even full meals perfect for breakfast or lunchtime. We source our ingredients from local, oragnic farms whenever possible, alongside premium vendors for specialty goods.</p>', 1, 150);
/*!40000 ALTER TABLE `quanli` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
