-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 05:56 AM
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
-- Database: `3 nf`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Membership_id` int(11) NOT NULL,
  `Full Name` varchar(255) NOT NULL,
  `Physical Address` varchar(255) NOT NULL,
  `Salutation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Membership_id`, `Full Name`, `Physical Address`, `Salutation`) VALUES
(1, 'Mike Scott', 'Scranton', 1),
(2, 'Jim Halpert', 'Dunder', 1),
(3, 'Lisa Simpson', 'Springfield', 2);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `Membership_id` int(11) NOT NULL,
  `Movie Rented` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Membership_id`, `Movie Rented`) VALUES
(1, 'Threat Level Midnight'),
(1, 'Threat Level Midnight 2'),
(2, 'Godzilla'),
(3, 'The Simpsons'),
(3, 'South Park');

-- --------------------------------------------------------

--
-- Table structure for table `salutation`
--

CREATE TABLE `salutation` (
  `Salutation_id` int(11) NOT NULL,
  `Sautation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salutation`
--

INSERT INTO `salutation` (`Salutation_id`, `Sautation`) VALUES
(1, 'Mr.'),
(2, 'Ms.'),
(3, 'Mrs.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Membership_id`),
  ADD KEY `Salutation` (`Salutation`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD KEY `Membership_id` (`Membership_id`);

--
-- Indexes for table `salutation`
--
ALTER TABLE `salutation`
  ADD PRIMARY KEY (`Salutation_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Salutation`) REFERENCES `salutation` (`Salutation_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`Membership_id`) REFERENCES `customer` (`Membership_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
