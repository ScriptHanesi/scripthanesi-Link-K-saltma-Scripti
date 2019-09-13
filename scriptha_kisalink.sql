-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 13 Eyl 2019, 15:34:23
-- Sunucu sürümü: 10.0.38-MariaDB
-- PHP Sürümü: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `scriptha_kisalink`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `site_link` varchar(200) NOT NULL,
  `site_baslik` varchar(250) NOT NULL,
  `site_aciklama` mediumtext NOT NULL,
  `site_sahibi` varchar(300) NOT NULL,
  `site_logo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_link`, `site_baslik`, `site_aciklama`, `site_sahibi`, `site_logo`) VALUES
(1, 'http://kisalink.scripthanesi.com', 'Scripthanesi Link Kısaltma Scripti', 'Scripthanesi Link Kısaltma Scripti', 'info@scripthanesi.com', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `link`
--

CREATE TABLE `link` (
  `link_id` int(11) NOT NULL,
  `kul_id` int(11) NOT NULL,
  `link_kisa` varchar(100) NOT NULL,
  `link_uzun` varchar(450) NOT NULL,
  `link_baslangic` datetime NOT NULL,
  `link_bitis` datetime NOT NULL,
  `link_sifre` varchar(80) NOT NULL,
  `link_reklam` varchar(100) NOT NULL,
  `link_okundumu` int(2) NOT NULL,
  `link_durum` int(2) NOT NULL DEFAULT '1',
  `link_tur` int(2) NOT NULL,
  `link_son_okunma` datetime NOT NULL,
  `link_toplam_okunma` bigint(11) NOT NULL,
  `link_ekleyen_bilgiler` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `kul_id` (`kul_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `link`
--
ALTER TABLE `link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
