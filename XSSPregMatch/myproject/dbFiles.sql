-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 17 okt 2018 kl 19:36
-- Serverversion: 10.1.36-MariaDB
-- PHP-version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `blacklist`
--
CREATE DATABASE IF NOT EXISTS `blacklist` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blacklist`;

-- --------------------------------------------------------

--
-- Tabellstruktur `blacklist`
--

CREATE TABLE `blacklist` (
  `bl_name` varchar(52) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `blacklist`
--

INSERT INTO `blacklist` (`bl_name`) VALUES
('password'),
('123456'),
('12345678'),
('qwerty'),
('123456789'),
('football'),
('iloveyou'),
('welcome'),
('starwars'),
('passw0rd'),
('freedom'),
('whatever'),
('trustno1'),
('1234567890'),
('princess'),
('passw0rd'),
('sunshine'),
('password1'),
('zaq1zaq1');
--
-- Databas: `create-products`
--
CREATE DATABASE IF NOT EXISTS `create-products` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `create-products`;

-- --------------------------------------------------------

--
-- Tabellstruktur `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sku` varchar(14) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumpning av Data i tabell `products`
--

INSERT INTO `products` (`product_id`, `name`, `sku`, `price`, `image`) VALUES
(1, 'Iphone', 'IPHO001', '400.00', 'iphone.jpg'),
(2, 'Camera', 'CAME001', '700.00', 'camera.jpg'),
(3, 'Watch', 'WATC001', '100.00', 'watch.jpg');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `sku` (`sku`);
--
-- Databas: `loguser`
--
CREATE DATABASE IF NOT EXISTS `loguser` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `loguser`;

-- --------------------------------------------------------

--
-- Tabellstruktur `loguser`
--

CREATE TABLE `loguser` (
  `username` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `homeAddress` varchar(32) CHARACTER SET utf8 NOT NULL,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `loguser`
--

INSERT INTO `loguser` (`username`, `password`, `homeAddress`, `counter`) VALUES
('plosen', '$2y$10$H9ujoOClzO0CmKc0ydjoAueNKYpX29AXVcZt3SoJAqd3ezAax.3W6', 'hbg', 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `loguser`
--
ALTER TABLE `loguser`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
