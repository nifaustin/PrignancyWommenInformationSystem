-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 01:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `aphia`
--

CREATE TABLE `aphia` (
  `id` int(11) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `user` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loc` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `user`, `email`, `loc`, `pass`) VALUES
(30, 'Muhoza John', 'muhozajohn4@gmail.com', 'Nyagatare', 'TheSaint@123'),
(31, 'Itwitaho Aphia', 'Itwitahoaphia@gmail.com', 'RubavuDistrict', 'aphia'),
(32, 'Mwerere Sabrina', 'mwereresabrina@gmail.com', 'Kigali', '1234'),
(33, 'Musafiri Godfrey', 'musafirigod@gmail.com', 'kigali', 'safari'),
(34, 'Niyo Faustin', 'niyo@gmail.com', 'Nyarutarama', '1234'),
(40, 'TheSaint', 'muhozajohn4@gmail.com', 'Rubavu', 'VickyTheSaint@1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aphia`
--
ALTER TABLE `aphia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aphia`
--
ALTER TABLE `aphia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
