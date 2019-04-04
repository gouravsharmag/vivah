-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2019 at 04:37 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(8) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(10) NOT NULL,
  `cust_id` int(5) NOT NULL,
  `email` varchar(60) NOT NULL,
  `age` varchar(10) NOT NULL,
  `height` int(10) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `profilecreatedby` varchar(20) NOT NULL,
  `education` text NOT NULL,
  `education_sub` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `body_type` text NOT NULL,
  `physical_status` text NOT NULL,
  `drink` varchar(8) NOT NULL,
  `mothertounge` text NOT NULL,
  `colour` varchar(20) NOT NULL,
  `weight` int(5) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `diet` varchar(8) NOT NULL,
  `smoke` varchar(8) NOT NULL,
  `dateofbirth` date NOT NULL,
  `occupation` text NOT NULL,
  `occupation_descr` text NOT NULL,
  `annual_income` varchar(20) NOT NULL,
  `fathers_occupation` varchar(20) NOT NULL,
  `mothers_occupation` varchar(20) NOT NULL,
  `no_bro` int(5) NOT NULL,
  `no_sis` int(5) NOT NULL,
  `aboutme` text NOT NULL,
  `profilecreationdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `email`, `age`, `height`, `sex`, `religion`, `caste`, `subcaste`, `district`, `state`, `country`, `maritalstatus`, `profilecreatedby`, `education`, `education_sub`, `firstname`, `lastname`, `body_type`, `physical_status`, `drink`, `mothertounge`, `colour`, `weight`, `blood_group`, `diet`, `smoke`, `dateofbirth`, `occupation`, `occupation_descr`, `annual_income`, `fathers_occupation`, `mothers_occupation`, `no_bro`, `no_sis`, `aboutme`, `profilecreationdate`) VALUES
(116, 16, 'amit12@gmail.com', '16', 0, 'Male', 'Hindu', 'Penthecost', 'Not Applicable', 'Kollam', 'Andhrapradesh', 'India', 'Single', 'Self', 'Primary', '', 'amit', 'sharma', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 0, 'O +ve', 'Veg', 'No', '2002-08-08', '', '', '', '', '', 1, 1, '', '2018-10-24'),
(117, 1, '', '', 0, 'Male', 'Not Applicable', 'Roman Cathaolic', 'Not Applicable', '', '', 'Not Applic', 'Single', 'Self', 'Primary', '', 'amit', 'kjhg', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 0, 'O +ve', 'Veg', 'No', '0000-00-00', '', '', '', '', '', 1, 1, '', '2018-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `partnerprefs`
--

CREATE TABLE IF NOT EXISTS `partnerprefs` (
`id` int(10) NOT NULL,
  `custId` int(10) NOT NULL,
  `agemin` varchar(3) NOT NULL,
  `agemax` int(3) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `complexion` varchar(10) NOT NULL,
  `height` int(3) NOT NULL,
  `diet` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `mothertounge` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
`id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pic1` varchar(25) NOT NULL,
  `pic2` varchar(40) NOT NULL,
  `pic3` varchar(40) NOT NULL,
  `pic4` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(5) NOT NULL,
  `profilestat` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `userlevel` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profilestat`, `username`, `password`, `email`, `dateofbirth`, `gender`, `userlevel`) VALUES
(1, 0, 'admin', 'admin', 'admin@nowhere.com', '2016-02-17', 'male', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `custId` (`custId`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
