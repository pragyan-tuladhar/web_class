-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2022 at 05:18 PM
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
-- Database: `2 nf`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Membership_ID` int(11) NOT NULL,
  `Full Name` varchar(255) NOT NULL,
  `Physical Address` varchar(255) NOT NULL,
  `Salutation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Membership_ID`, `Full Name`, `Physical Address`, `Salutation`) VALUES
(1, 'Mike Scott', 'Scranton', 'Mr.'),
(2, 'Jim Halpert', 'Dunder', 'Mr.'),
(3, 'Lisa Simpson', 'Springfield', 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Membership_ID` int(11) NOT NULL,
  `Movie Rented` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Membership_ID`, `Movie Rented`) VALUES
(1, 'Threat Level Midnight'),
(1, 'Threat Level Midnight 2'),
(2, 'Godzilla'),
(3, 'The Simpsons'),
(3, 'South Park');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Membership_ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD KEY `Membership_ID` (`Membership_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`Membership_ID`) REFERENCES `customer` (`Membership_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
