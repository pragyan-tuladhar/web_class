-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 05:20 PM
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
-- Database: `normalisation`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Full Name` varchar(255) NOT NULL,
  `Physical Address` varchar(255) NOT NULL,
  `Movie Rented` varchar(255) NOT NULL,
  `Salutation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Full Name`, `Physical Address`, `Movie Rented`, `Salutation`) VALUES
('Mike Scott', 'Scranton', 'Threat Level Midnight', 'Mr.'),
('James Halpert', 'Dunder', 'Godzilla', 'Mr.'),
('Lisa Simpson', 'Springfield', 'The Simpsons', 'Mrs.'),
('Lisa Simpson', 'Springfield', 'south Park ', 'Mrs.'),
('Mike Scott', 'Scranton', 'Threat Level Midnight 2', 'Mr.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
