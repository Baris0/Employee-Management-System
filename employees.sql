-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Ara 2021, 12:20:00
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `employees`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `username` text COLLATE utf32_turkish_ci NOT NULL,
  `password` text COLLATE utf32_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_turkish_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('admin', 'admin'),
('mustafamurat', '12345');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employee`
--

CREATE TABLE `employee` (
  `name` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `surname` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `telno` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `tcno` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `birthday` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `adress` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `department` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `salary` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `id` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `working` text COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `employee`
--

INSERT INTO `employee` (`name`, `surname`, `telno`, `email`, `tcno`, `birthday`, `adress`, `department`, `salary`, `id`, `working`) VALUES
('Berk', 'Yilmaz', '0000 000 0000', 'berkyilmaz@gmail.com', '00000000000', '7Ekim1995', 'İstanbulBesiktas', 'Software', '6953', '1', 'Normal'),
('Merve', 'Durmaz', '0000 000 0000', 'mervedrmz10@hotmail.com', '00000000000', '20Temmuz1993', 'İstanbulKadikoy', 'Insan Kaynaklari', '4900', '2', 'Normal'),
('Ceren', 'Turker', '0000 000 0000', 'cerentrker0@hotmail.com', '00000000000', '9Eylul1986', 'İstanbulBuyukcekmece', 'Temizlik', '3900', '4', 'Normal');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `loging`
--

CREATE TABLE `loging` (
  `date` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `operation` text COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `loging`
--

INSERT INTO `loging` (`date`, `operation`) VALUES
('Sat Dec 04 20:47:02 TRT 2021', '3Id Numarali Calisan Eklendi'),
('Sat Dec 04 20:54:58 TRT 2021', 'Basarisiz Giris Denemesi'),
('Sat Dec 04 20:54:58 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 20:57:28 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 20:57:35 TRT 2021', 'Login Ekranina Donuldu'),
('Sat Dec 04 21:25:08 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:27:51 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:28:00 TRT 2021', '4 Id Numarali Calisan Eklendi'),
('Sat Dec 04 21:29:58 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sat Dec 04 21:30:04 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sat Dec 04 21:30:04 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sat Dec 04 21:30:04 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sat Dec 04 21:39:20 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sat Dec 04 21:41:03 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:41:33 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sat Dec 04 21:42:18 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:43:02 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:43:25 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:43:46 TRT 2021', '3 id Numarali Calisan Silindi'),
('Sat Dec 04 21:44:07 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sat Dec 04 21:44:45 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:44:51 TRT 2021', 'Login Ekranina Donuldu'),
('Sat Dec 04 21:45:04 TRT 2021', 'Sisteme Basarili Giris'),
('Sat Dec 04 21:45:12 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 13:40:25 TRT 2021', 'Sisteme Basarili Giris'),
('Sun Dec 05 13:41:08 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 13:41:08 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 13:59:53 TRT 2021', 'Sisteme Basarili Giris'),
('Sun Dec 05 14:00:53 TRT 2021', 'Sisteme Basarili Giris'),
('Sun Dec 05 14:02:04 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 14:00:59 TRT 2021', 'Login Ekranina Donuldu'),
('Sun Dec 05 14:03:11 TRT 2021', 'Basarisiz Giris Denemesi'),
('Sun Dec 05 14:03:43 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 14:03:43 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 14:06:16 TRT 2021', 'Basarisiz Giris Denemesi'),
('Sun Dec 05 14:06:16 TRT 2021', 'Basarisiz Giris Denemesi'),
('Sun Dec 05 14:06:16 TRT 2021', 'Basarisiz Giris Denemesi'),
('Sun Dec 05 14:06:16 TRT 2021', 'Basarisiz Giris Denemesi'),
('Sun Dec 05 14:06:16 TRT 2021', 'Sisteme Basarili Giris'),
('Sun Dec 05 14:06:42 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 14:06:38 TRT 2021', 'Login Ekranina Donuldu'),
('Sun Dec 05 14:07:44 TRT 2021', 'Sisteme Basarili Giris'),
('Sun Dec 05 14:11:22 TRT 2021', 'Islem Gecmisi Goruntulendi'),
('Sun Dec 05 14:18:07 TRT 2021', 'Sisteme Basarili Giris');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
