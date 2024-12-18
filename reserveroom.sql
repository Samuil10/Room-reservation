-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 04:05 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reserveroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `person_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `person_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `createuser`
--

CREATE TABLE `createuser` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `createuser`
--

INSERT INTO `createuser` (`id`, `admin_id`, `user_id`, `name`, `username`, `password`) VALUES
(1, 1, 1, 'User 1', 'user1', 'password1'),
(2, 2, 2, 'User 2', 'user2', 'password2'),
(3, 3, 3, 'User 3', 'user3', 'password3'),
(4, 4, 4, 'User 4', 'user4', 'password4'),
(5, 5, 5, 'User 5', 'user5', 'password5'),
(6, 6, 6, 'User 6', 'user6', 'password6'),
(7, 7, 7, 'User 7', 'user7', 'password7'),
(8, 8, 8, 'User 8', 'user8', 'password8'),
(9, 9, 9, 'User 9', 'user9', 'password9'),
(10, 10, 10, 'User 10', 'user10', 'password10');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `username`, `password`) VALUES
(1, 'Admin 1', 'admin1', 'password1'),
(2, 'Admin 2', 'admin2', 'password2'),
(3, 'Admin 3', 'admin3', 'password3'),
(4, 'Admin 4', 'admin4', 'password4'),
(5, 'Admin 5', 'admin5', 'password5'),
(6, 'Admin 6', 'admin6', 'password6'),
(7, 'Admin 7', 'admin7', 'password7'),
(8, 'Admin 8', 'admin8', 'password8'),
(9, 'Admin 9', 'admin9', 'password9'),
(10, 'Admin 10', 'admin10', 'password10'),
(11, 'User 1', 'user1', 'password1'),
(12, 'User 2', 'user2', 'password2'),
(13, 'User 3', 'user3', 'password3'),
(14, 'User 4', 'user4', 'password4'),
(15, 'User 5', 'user5', 'password5'),
(16, 'User 6', 'user6', 'password6'),
(17, 'User 7', 'user7', 'password7'),
(18, 'User 8', 'user8', 'password8'),
(19, 'User 9', 'user9', 'password9'),
(20, 'User 10', 'user10', 'password10');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `person_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `time`, `person_id`, `date`) VALUES
(1, '2024-12-11 09:00:00', 1, '2024-12-12'),
(2, '2024-12-11 10:00:00', 2, '2024-12-13'),
(3, '2024-12-11 11:00:00', 3, '2024-12-14'),
(4, '2024-12-11 12:00:00', 4, '2024-12-15'),
(5, '2024-12-11 13:00:00', 5, '2024-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `person_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `person_id`) VALUES
(1, 11),
(2, 12),
(3, 13),
(4, 14),
(5, 15),
(6, 16),
(7, 17),
(8, 18),
(9, 19),
(10, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createuser`
--
ALTER TABLE `createuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `createuser`
--
ALTER TABLE `createuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `person` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `createuser`
--
ALTER TABLE `createuser`
  ADD CONSTRAINT `createuser_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `createuser_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `person` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
