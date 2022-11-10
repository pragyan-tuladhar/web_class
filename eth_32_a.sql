-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 06:50 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `eth_32_a`
--

CREATE TABLE `eth_32_a` (
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `favorite_song` varchar(255) DEFAULT NULL,
  `favorite_movie` varchar(255) DEFAULT NULL,
  `fav_actor` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eth_32_a`
--

INSERT INTO `eth_32_a` (`first_name`, `last_name`, `age`, `favorite_song`, `favorite_movie`, `fav_actor`) VALUES
('Pragyan', 'Tuladhar', 19, 'N95', 'Jojo Rabbit', 'Amir Khan'),
('Aviyan', 'Dahal', 19, 'Major Distribution', 'Angry Birds', 'Amir Khan'),
('Arman', 'Shah', 19, 'Hold the Hat', 'Godzilla', 'Amir Khan'),
('Sudat', 'Shrestha', 19, 'Na Risauna', 'Pirates of the Caribbean', 'Amir Khan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
