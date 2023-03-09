-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2021 at 09:28 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `added_on`) VALUES
(1, 'Name1', 'Email1@gmail.com', '2021-07-10 21:10:10'),
(2, 'Name2', 'Email2@gmail.com', '2021-07-10 21:10:10'),
(3, 'Name3', 'Email3@gmail.com', '2021-07-10 21:10:10'),
(4, 'Name4', 'Email4@gmail.com', '2021-07-10 05:10:10'),
(5, 'Name5', 'Email5@gmail.com', '2021-07-10 05:10:10'),
(6, 'Name6', 'Email6@gmail.com', '2021-07-10 05:10:10'),
(7, 'Name7', 'Email7@gmail.com', '2021-07-10 05:10:10'),
(8, 'Name8', 'Email8@gmail.com', '2021-07-12 08:20:10'),
(9, 'Name9', 'Email9@gmail.com', '2021-07-12 08:20:10'),
(10, 'Name10', 'Email10@gmail.com', '2021-07-12 08:20:10'),
(11, 'Name11', 'Email11@gmail.com', '2021-07-12 08:20:10'),
(12, 'Name12', 'Email12@gmail.com', '2021-07-13 21:10:10'),
(13, 'Name13', 'Email13@gmail.com', '2021-07-13 21:10:10'),
(14, 'Name14', 'Email14@gmail.com', '2021-07-13 21:10:10'),
(15, 'Name15', 'Email15@gmail.com', '2021-07-13 21:10:10'),
(16, 'Name16', 'Email16@gmail.com', '2021-07-13 21:10:10'),
(17, 'Name17', 'Email17@gmail.com', '2021-07-14 07:10:10'),
(18, 'Name18', 'Email18@gmail.com', '2021-07-14 07:10:10'),
(19, 'Name19', 'Email19@gmail.com', '2021-07-14 07:10:10'),
(20, 'Name20', 'Email20@gmail.com', '2021-07-14 07:10:10'),
(21, 'Name21', 'Email21@gmail.com', '2021-07-21 19:10:10'),
(22, 'Name22', 'Email22@gmail.com', '2021-07-21 19:10:10'),
(23, 'Name23', 'Email23@gmail.com', '2021-07-21 19:10:10'),
(24, 'Name24', 'Email24@gmail.com', '2021-07-21 19:10:10'),
(25, 'Name25', 'Email25@gmail.com', '2021-07-21 19:10:10'),
(26, 'Name26', 'Email26@gmail.com', '2021-07-21 19:10:10'),
(27, 'Name27', 'Email27@gmail.com', '2021-07-21 19:10:10'),
(28, 'Name28', 'Email28@gmail.com', '2021-07-21 19:10:10'),
(29, 'Name29', 'Email29@gmail.com', '2021-07-21 19:10:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
