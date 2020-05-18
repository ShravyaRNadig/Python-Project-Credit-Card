-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2020 at 10:01 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shravya`
--

-- --------------------------------------------------------

--
-- Table structure for table `shrav`
--

CREATE TABLE `shrav` (
  `us` varchar(10) DEFAULT NULL,
  `em` varchar(10) DEFAULT NULL,
  `pa` varchar(10) DEFAULT NULL,
  `pa1` varchar(10) DEFAULT NULL,
  `ca` varchar(10) DEFAULT NULL,
  `ba` varchar(10) DEFAULT NULL,
  `branch` varchar(10) NOT NULL,
  `numb` int(10) NOT NULL,
  `dob` date NOT NULL,
  `ge` int(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `private_key` int(10) NOT NULL,
  `Key1` text NOT NULL,
  `bin_no` int(10) NOT NULL,
  `Convert1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shravs`
--

CREATE TABLE `shravs` (
  `us` varchar(10) DEFAULT NULL,
  `em` varchar(10) DEFAULT NULL,
  `pa` text,
  `pas` text,
  `gen` varchar(10) DEFAULT NULL,
  `dob` date NOT NULL,
  `ba` varchar(10) DEFAULT NULL,
  `br` varchar(10) DEFAULT NULL,
  `cn` text,
  `st` varchar(10) NOT NULL,
  `nwc` text NOT NULL,
  `dep` int(10) NOT NULL,
  `withdraw` int(10) NOT NULL,
  `verify` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `cnum` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cnum1` varchar(500) NOT NULL,
  `cnum2` varchar(500) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `Active` varchar(21) NOT NULL,
  `privateKey` varchar(300) NOT NULL,
  `key2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `bankname`, `branch`, `cnum`, `dob`, `gender`, `cnum1`, `cnum2`, `month`, `year`, `Active`, `privateKey`, `key2`) VALUES
(26, 'kaisher', 'kasher11yezdany@gmail.com', '123456', 'pune', 'pune', '7061409421', '21-02-1994', 'male', '654893325', '586', 'Feb', '2026', '1', 'pi9UsOV8AHAT9k9qiPc0B2dWwcg', 'GKNjH_9ZmYRdYFOmGtmIqRilXMI'),
(27, 'test', 'test11first@gmail.com', '123456', 'bank of broda', 'Pune', '7061409421', '21-02-1994', 'male', '0b111100111111011111001000110001110001', '0b1111101', 'May', '2024', '1', 'MYeHbqJP8mM7xgkJ8FRslErnEjU', 'HnBl7YoBZXQ-2IEBmHpL1_ifT0s'),
(28, 'test12', 'test12first@gmail.com', '123456', 'Karnataka', 'Karnataka', '8983201474', '21-02-1885', 'male', '654334879633', '325', 'Feb', '2023', '1', '29Rk_RzsGlkPoZQbExoxFLIt28s', 'f-G2znL372L-3Gn_OjovR_HxnOI');

-- --------------------------------------------------------

--
-- Table structure for table `vender`
--

CREATE TABLE `vender` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `cnum` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cnum1` varchar(50) NOT NULL,
  `cnum2` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `Active` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vender`
--

INSERT INTO `vender` (`id`, `username`, `email`, `password`, `bankname`, `branch`, `cnum`, `dob`, `gender`, `cnum1`, `cnum2`, `month`, `year`, `Active`) VALUES
(1, 'Sharavya', 'sharavya@gmail.com', '123456', 'Karnataka Bank', 'Bank of India', '9853554323', '02-02-2000', 'female', '65235485323', '568', 'Feb', '2021', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vender`
--
ALTER TABLE `vender`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `vender`
--
ALTER TABLE `vender`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
