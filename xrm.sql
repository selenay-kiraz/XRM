-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 10 May 2020, 14:23:25
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `xrm`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Adaylar`
--

CREATE TABLE `Adaylar` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyad` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `Adaylar`
--

INSERT INTO `Adaylar` (`id`, `ad`, `soyad`, `telefon`, `mail`) VALUES
(1, 'Oya', 'Toksöz', '5343425234', 'oyatoksoz@gmail.com'),
(2, 'Merve', 'Kuştul', '5432435150', 'm.kustul@hotmail.com'),
(3, 'Rümeysa ', 'Öztürk', '5357165243', 'ozturkrum@hotmail.com'),
(4, 'Elif', 'Öner', '5327524119', 'e.oner@hotmail.com'),
(5, 'Ediz', 'Uzun', '5536786352', 'e.uzun@gmail.com'),
(6, 'Talha', 'Çolakoğlu', '5345436573', 't.clkogl@gmail.com'),
(7, 'Ali', 'Demir', '5337652314', 'alidemir@yahoo.com'),
(8, 'Esra', 'Yeğin', '5349870012', 'e.yegin@gmail.com'),
(9, 'Suat ', 'Ateş', '5423123141', 's.ates@gmail.com'),
(10, 'Simge', 'Sağlam', '5306003524', 's.simge@hotmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calisma`
--

CREATE TABLE `calisma` (
  `calisma_id` int(11) UNSIGNED NOT NULL,
  `calisma_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `calisma_tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `departmanlar`
--

CREATE TABLE `departmanlar` (
  `id` int(11) NOT NULL,
  `departman_adi` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `departman_no` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sorumlusu` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `departmanlar`
--

INSERT INTO `departmanlar` (`id`, `departman_adi`, `departman_no`, `sorumlusu`, `email`) VALUES
(1, 'Pazarlama', '#2534', 'Berk Şen', 'berksen@xrm.com'),
(2, 'Yazılım', '#3452', 'Serhan Aksak', 'serhanaksak@xrm.com'),
(3, 'Sistem Analizi', '#4521', 'Melike Öztürk', 'melike@ozturk.com'),
(4, 'İnsan Kaynakları', '#3561', 'Mert Soylu', 'mertsoylu@xrm.com'),
(5, 'Aday Temsilcisi', '#6702', 'Melike Özkan', 'melike@ozkan.com'),
(6, 'Analiz', '#5734', 'İlayda Bozgül', 'illy@cool.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `id` int(11) NOT NULL,
  `duyuru` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `departman` text COLLATE utf8_turkish_ci NOT NULL,
  `açıklama` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`id`, `duyuru`, `departman`, `açıklama`, `durum`) VALUES
(1, '8 Mayıs Anneler Gününüz Kutlu Olsun!', 'Yönetim', '', ''),
(2, 'Covid-19 Bilgilendirmesi', 'İnsan Kaynakları', 'Bu zorlu süreçte evlerimizde kalalım. Ailelerimizi ve sevdiklerimizi bu şekilde koruyalım. Ev kalın! :)', 'Aktif'),
(3, 'Home Office çalışmalarımız devam ediyor', 'Yönetim', 'Covid-19 sebebiyle Home office hayatına geçiş yapmak bulunmaktayız. Normalleşme adımları atılana kadar lütfen evlerinizde kalınız! :)', 'Aktif'),
(4, 'İşe alım haftası', 'İnsan Kaynakları ', 'Ön değerlendirme', 'Aktif'),
(5, 'Oryantasyon', 'İnsan Kaynakları ', 'Şirketimizi Tanıyalım', 'Pasif'),
(6, 'Pazarlama ekibinde yeni işe alımlar başladı!', 'Pazarlama', 'Pazarlama ekibimizi genişletmek ve yeni adaylara şans vermek istiyoruz!', 'Aktif'),
(7, 'Sunum değerlendirmeleri yapıldı!', 'Aday Temsilcisi', 'Çözüm odaklı çalışan aday incelemesi', 'Aktif'),
(8, 'Yazılım Ekibi Toplantısı', 'Yazılım Departmanı', 'Yazılım Ekibimizin bugün yapacağı online toplantı salonu aktifleşmiştir.', 'Pasif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `egitim`
--

CREATE TABLE `egitim` (
  `egitim_id` int(11) UNSIGNED NOT NULL,
  `egitim_adi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `egitim_konusu` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `egitim_tarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `egitim`
--

INSERT INTO `egitim` (`egitim_id`, `egitim_adi`, `egitim_konusu`, `egitim_tarihi`) VALUES
(1, 'PHP ile Web Desing', 'PHP kullanarak Web tasarımını nasıl yapacağımız hakkında temel bilgiler.', '2020-05-29'),
(2, 'JavaScript Eğitimi', 'PHP ile JavaScript\'i birleştiren eğitim.', '2020-06-04'),
(3, 'XRM Yazılımları', 'XRM Yazılımlarının alt yapısını tanımak için verilen bir eğitim.', '2020-06-18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `Personeller`
--

CREATE TABLE `Personeller` (
  `id` int(11) NOT NULL,
  `ad` text NOT NULL,
  `soyad` text NOT NULL,
  `dogum_tarihi` text NOT NULL,
  `cinsiyet` text NOT NULL,
  `medeni_hal` text NOT NULL,
  `uyruk` text NOT NULL,
  `kimlik_no` text NOT NULL,
  `adres` text NOT NULL,
  `ulke` text NOT NULL,
  `sehir` text NOT NULL,
  `telefon` text NOT NULL,
  `mail` text NOT NULL,
  `cv_linki` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin5;

--
-- Tablo döküm verisi `Personeller`
--

INSERT INTO `Personeller` (`id`, `ad`, `soyad`, `dogum_tarihi`, `cinsiyet`, `medeni_hal`, `uyruk`, `kimlik_no`, `adres`, `ulke`, `sehir`, `telefon`, `mail`, `cv_linki`) VALUES
(1, 'Melike', 'Özkan', '13.08.1997', 'Kadın', 'Bekar', 'T.C.', '236452342346', 'Esenler', 'Türkiye', 'İstanbul', '05645477474', 'melike@ozkan.com', ''),
(2, 'İlayda ', 'Bozgül', '15.05.1997', 'Kadın', 'Bekar', 'T.C.', '414523746234', 'Bahçeşehir', 'Türkiye', 'İstanbul', '53464364564', 'illy@cool.com', ''),
(3, 'Melike ', 'Öztürk', '11.03.1998', 'Kadın', 'Bekar', 'T.C.', '12353463727', 'Sefaköy', 'Türkiye', 'İstanbul', '5367465345', 'melike@ozturk.com', '-'),
(4, 'Aslan ', 'Akın', '12.09.1987', 'Erkek', 'Evli', 'T.C.', '41435263746', 'Çatalca', 'Türkiye', 'İstanbul', '5465345798', 'aslan@xrm.com', '-'),
(5, 'Serhan', 'Aksak', '15.02.1989', 'Erkek', 'Evli', 'T.C.', '32546375435', 'Kemerburgaz', 'Türkiye', 'İstanbul', '5345433214', 'serhanaksak@xrm.com', '-'),
(6, 'Berk', 'Şen', '', 'Erkek', 'Evli ', 'T.C.', '13929365463', 'Beylikdüzü', 'Türkiye', 'İstanbul', '53467863355', 'berksen@xrm.com', '-'),
(7, 'Selen', 'Yıldız', '05.07.1997', 'Kadın', 'Evli', 'T.C.', '5346374783', 'Üsküdar', 'Türkiye', 'İstanbul', '5436746353', 'selenyildiz@xrm.com', '-'),
(8, 'Mutlu', 'Ay', '19.05.1977', 'Erkek', 'Evli', 'T.C.', '43524157251', 'Bayrampaşa', 'Türkiye', 'İstanbul', '53425352432', 'mutluay@xrm.com', '-'),
(9, 'Mert', 'Soylu', '13.09.1976', 'Erkek', 'Bekar', 'T.C. ', '3452678364', 'Gaziosmanpaşa', 'Türkiye', 'İstanbul', '5323245255', 'mertsoylu@xrm.com', '-'),
(10, 'Kaan ', 'Kılınç', '22.02.1989', 'Erkek', 'Bekar', 'T.C.', '1234764636', 'Kadıköy', 'Türkiye', 'İstanbul', '5463746373', 'k.kilinc@xrm.com', '-'),
(11, 'Melis', 'Aktan', '24.03.1987', 'Kadın', 'Evli', 'T.C.', '42431426123', 'Maltepe', 'Türkiye', 'İstanbul', '5364535212', 'melisaktan@xrm.com', '-'),
(13, 'Cenk', ' Avcı', '10.01.1988', 'Erkek', 'Bekar', 'T.C.', '142524335123', 'Beykent', 'Türkiye', 'İstanbul', '5443524354', 'cenkavci@xrm.com', '-'),
(14, 'Mert Can', 'Ayar', '01.02.1993', 'Erkek', 'Evli', 'T.C.', '41403492348', 'Çamlıca\r\n', 'Türkiye', 'İstanbul', '53463547634', 'canayar@xrm.com', '-'),
(15, 'Mehmet', 'Özgür', '12.02.1994', 'Erkek', 'Bekar', 'T.C.', '412351253434', 'Şişli', 'Türkiye\r\n', 'İstanbul\r\n', '5343425342', 'mehmetozgur@xrm.com', '-');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `Adaylar`
--
ALTER TABLE `Adaylar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `calisma`
--
ALTER TABLE `calisma`
  ADD PRIMARY KEY (`calisma_id`);

--
-- Tablo için indeksler `departmanlar`
--
ALTER TABLE `departmanlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `egitim`
--
ALTER TABLE `egitim`
  ADD PRIMARY KEY (`egitim_id`);

--
-- Tablo için indeksler `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `Personeller`
--
ALTER TABLE `Personeller`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `Adaylar`
--
ALTER TABLE `Adaylar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `calisma`
--
ALTER TABLE `calisma`
  MODIFY `calisma_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `departmanlar`
--
ALTER TABLE `departmanlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `egitim`
--
ALTER TABLE `egitim`
  MODIFY `egitim_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `Personeller`
--
ALTER TABLE `Personeller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
