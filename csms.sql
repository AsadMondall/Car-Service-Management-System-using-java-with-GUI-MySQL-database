-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 08:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_pass` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customer_id`, `customer_name`, `customer_pass`, `age`, `email`, `address`) VALUES
(1001, 'ashik', '#*as22', 22, 'as2123@gmail.com', 'Dhaka'),
(1002, 'rashed', '66a13#', 23, 'rs2233@gmail.com', 'Barishal'),
(1003, 'zakir', 'uad3#@', 22, 'azr4333@gmail.com', 'Khulna'),
(1004, 'tanvir', '6644#*', 24, 'tn3344@gmail.com', 'Jashore'),
(1005, 'asad', 'ww2#@*', 25, 'as4231@gmail.com', 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_name` varchar(200) DEFAULT NULL,
  `cost_perUnit` decimal(6,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_cost` varchar(200) DEFAULT NULL,
  `strr` varchar(100) DEFAULT NULL,
  `strTime` varchar(100) DEFAULT NULL,
  `strMonth` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`customer_id`, `customer_name`, `service_id`, `service_name`, `cost_perUnit`, `quantity`, `total_cost`, `strr`, `strTime`, `strMonth`) VALUES
(1001, 'ashik', 103, 'WIPER BLADES REPLACEMENT', '3000.00', 2, '6000', '05/January/2023', '13.19.10', 'January'),
(1004, 'tanvir', 108, 'ENGINE TUNE-UP', '4000.00', 1, '6000', '07/January/2023', '12.30.18', 'January'),
(1004, 'tanvir', 105, 'NEW TIRES', '4500.00', 2, '9000', '02/December/2022', '10.18.10', 'December'),
(1002, 'rashed', 102, 'OIL/OIL FILTER', '1500.00', 3, '4500', '05/October/2022', '13.15.06', 'October'),
(1003, 'zakir', 106, 'BATTERY REPLACEMENT', '2000.00', 2, '4000', '09/October/2022', '19.10.08', 'October'),
(1005, 'asad', 108, 'ENGINE TUNE-UP', '4000.00', 2, '8000', '13/September/2022', '21.31.10', 'September'),
(1001, 'ashik', 110, 'AIR CONDITIONING SYSTEM', '2000.00', 3, '6000', '21/September/2022', '11.26.10', 'September'),
(1001, 'ashik', 111, 'FIXING GLASS', '2500.00', 3, '7500', '10/August/2022', '15.25.21', 'August'),
(1003, 'zakir', 107, 'BRAKE WORK', '1500.00', 4, '6000', '17/August/2022', '11.21.29', 'August'),
(1003, 'zakir', 110, 'AIR CONDITIONING SYSTEM', '2000.00', 2, '4000', '05/July/2022', '14.42.32', 'July'),
(1004, 'tanvir', 105, 'NEW TIRES', '4500.00', 2, '9000', '02/July/2022', '10.18.10', 'July'),
(1002, 'rashed', 102, 'OIL/OIL FILTER', '1500.00', 3, '4500', '05/June/2022', '13.15.06', 'June'),
(1001, 'ashik', 103, 'WIPER BLADES REPLACEMENT', '3000.00', 2, '6000', '05/June/2022', '13.19.10', 'June'),
(1004, 'tanvir', 108, 'ENGINE TUNE-UP', '4000.00', 1, '6000', '07/June/2022', '12.30.18', 'June'),
(1005, 'asad', 108, 'ENGINE TUNE-UP', '4000.00', 2, '8000', '13/May/2022', '21.31.10', 'May'),
(1001, 'ashik', 110, 'AIR CONDITIONING SYSTEM', '2000.00', 3, '6000', '21/May/2022', '11.26.10', 'May'),
(1001, 'ashik', 111, 'FIXING GLASS', '2500.00', 3, '7500', '10/May/2022', '15.25.21', 'May'),
(1001, 'ashik', 103, 'WIPER BLADES REPLACEMENT', '3000.00', 2, '6000', '05/April/2022', '13.19.10', 'April'),
(1004, 'tanvir', 108, 'ENGINE TUNE-UP', '4000.00', 1, '6000', '07/April/2022', '12.30.18', 'April'),
(1004, 'tanvir', 105, 'NEW TIRES', '4500.00', 2, '9000', '02/March/2022', '10.18.10', 'March'),
(1002, 'rashed', 102, 'OIL/OIL FILTER', '1500.00', 3, '4500', '05/March/2022', '13.15.06', 'March'),
(1003, 'zakir', 106, 'BATTERY REPLACEMENT', '2000.00', 2, '4000', '09/March/2022', '19.10.08', 'March'),
(1005, 'asad', 108, 'ENGINE TUNE-UP', '4000.00', 2, '8000', '13/February/2022', '21.31.10', 'February'),
(1002, 'rashed', 102, 'OIL/OIL FILTER', '1500.00', 3, '4500', '05/February/2022', '13.15.06', 'February'),
(1001, 'ashik', 103, 'WIPER BLADES REPLACEMENT', '3000.00', 2, '6000', '05/February/2022', '13.19.10', 'February'),
(1004, 'tanvir', 108, 'ENGINE TUNE-UP', '4000.00', 1, '6000', '07/January/2023', '12.30.18', 'January');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(200) DEFAULT NULL,
  `cost` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `cost`) VALUES
(101, 'WASH & CLEAN', '2000.00'),
(102, 'OIL/OIL FILTER', '1500.00'),
(103, 'WIPER BLADES REPLACEMENT', '3000.00'),
(104, 'AIR FILTER REPLACEMENT', '3500.00'),
(105, 'NEW TIRES', '4500.00'),
(106, 'BATTERY REPLACEMENT', '2000.00'),
(107, 'BRAKE WORK', '1500.00'),
(108, 'ENGINE TUNE-UP', '4000.00'),
(109, 'WHEELS ALIGNED / BALANCED', '5000.00'),
(1010, 'AIR CONDITIONING SYSTEM', '2000.00'),
(1011, 'FIXING GLASS', '2500.00'),
(1012, 'COLORING', '5000.00'),
(1013, 'SEAT & COVERS', '2500.00');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `wallet_id` int(11) NOT NULL,
  `wallet_name` varchar(100) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_nid` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`wallet_id`, `wallet_name`, `customer_id`, `customer_nid`, `customer_name`, `password`) VALUES
(1111, 'Bkash', 1001, 19631122, 'ashik', '25432'),
(1112, 'Nagad', 1002, 19631111, 'rashed', '20412'),
(1113, 'Rocket', 1003, 1963176, 'zakir', '11465'),
(1114, 'Upai', 1004, 19631180, 'tanvir', '87402'),
(1115, 'Dbbl', 1005, 19631456, 'asad', '56498');

-- --------------------------------------------------------

--
-- Table structure for table `_admin`
--

CREATE TABLE `_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) DEFAULT NULL,
  `admin_pass` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_admin`
--

INSERT INTO `_admin` (`admin_id`, `admin_name`, `admin_pass`, `age`, `gender`, `city`) VALUES
(1010, 'salva', '#*12ASqq', 25, 'male', 'madrid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`wallet_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `_admin`
--
ALTER TABLE `_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD CONSTRAINT `expenditure_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`customer_id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
