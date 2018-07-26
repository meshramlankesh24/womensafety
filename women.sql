-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 07:44 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `women`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `uid` varchar(20) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `whomagainst` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `uid`, `subject`, `message`, `whomagainst`, `date`, `time`, `status`) VALUES
(2, '7798143826', 'smsmdm', 'mmdm', 'ms.sm', '2018-07-26', '17:32:03', 'New'),
(3, '7798143826', 'smsmdm', 'mmdm', 'ms.sm', '2018-07-26', '17:32:03', 'New'),
(4, '7798143826', 'lalam', 'msmsmskakamksmssmmzdmdkd.kxmd', 'uwksmsmsksmsmzkzmzmsmsmsmsms.sm', '2018-07-26', '17:49:16', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `id` int(11) NOT NULL,
  `aid` varchar(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `founder` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`id`, `aid`, `name`, `address`, `founder`, `password`, `status`) VALUES
(1, '7798143825', 'Mauli', 'Shegaon, Buldhana', 'Shrikant Patil', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `age` int(3) NOT NULL,
  `photo_addr` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mobile_no`, `address`, `age`, `photo_addr`, `date`, `time`, `password`, `status`) VALUES
(2, 'k', '7798143826', 'aksk', 44, 'user_profile_image/0', '0000-00-00', '15:15:48', '1', 0),
(3, 'lsm', '7744141369', 'k', 44, 'user_profile_image/2', '2018-07-26', '17:58:38', '2', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aid` (`aid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngo`
--
ALTER TABLE `ngo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
