-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2018 at 11:49 AM
-- Server version: 5.7.11
-- PHP Version: 7.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trades`
--

-- --------------------------------------------------------

--
-- Table structure for table `top_trades`
--

CREATE TABLE `top_trades` (
  `id` int(11) NOT NULL,
  `trade_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `symbol` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_trades`
--

INSERT INTO `top_trades` (`id`, `trade_time`, `symbol`, `price`, `quantity`) VALUES
(1, '2018-01-17 03:07:41', 'CBOE', '0', 113),
(2, '2018-01-17 03:07:44', 'CBOE', '1', 75),
(3, '2018-01-17 03:07:45', 'CBOE', '1', 186),
(4, '2018-01-17 03:07:45', 'CBOE', '1', 156),
(5, '2018-01-17 03:07:45', 'CBOE', '1', 131),
(6, '2018-01-17 03:07:45', 'CBOE', '0', 109),
(7, '2018-01-17 03:07:45', 'CBOE', '1', 111),
(8, '2018-01-17 03:10:57', 'CBOE', '0', 140),
(9, '2018-01-17 03:10:58', 'CBOE', '1', 155),
(10, '2018-01-17 03:10:58', 'CBOE', '0', 25),
(11, '2018-01-17 03:10:59', 'CBOE', '0', 177),
(12, '2018-01-17 03:11:00', 'CBOE', '0', 68),
(13, '2018-01-17 03:11:00', 'CBOE', '1', 166),
(14, '2018-01-17 03:11:01', 'CBOE', '0', 116),
(15, '2018-01-17 03:11:01', 'CBOE', '0', 131),
(16, '2018-01-17 03:55:10', 'CBOE', '1', 154),
(17, '2018-01-17 03:55:11', 'CBOE', '0', 124),
(18, '2018-01-17 03:55:11', 'CBOE', '0', 42),
(19, '2018-01-17 03:55:11', 'CBOE', '0', 95),
(20, '2018-01-17 03:55:11', 'CBOE', '0', 63),
(21, '2018-01-17 03:55:11', 'CBOE', '0', 96),
(22, '2018-01-17 03:55:11', 'CBOE', '0', 8),
(23, '2018-01-17 03:55:12', 'CBOE', '0', 53),
(24, '2018-01-17 03:55:12', 'CBOE', '1', 113),
(25, '2018-01-17 03:55:12', 'CBOE', '0', 50),
(26, '2018-01-17 03:55:12', 'CBOE', '0', 86),
(27, '2018-01-17 03:55:12', 'CBOE', '1', 114),
(28, '2018-01-17 03:55:12', 'CBOE', '1', 105),
(29, '2018-01-17 03:55:13', 'CBOE', '0', 83),
(30, '2018-01-17 03:55:13', 'CBOE', '1', 2),
(31, '2018-01-17 03:55:13', 'CBOE', '1', 200),
(32, '2018-01-17 03:55:13', 'CBOE', '1', 147),
(33, '2018-01-17 03:55:14', 'CBOE', '1', 157),
(34, '2018-01-17 03:57:58', 'CBOE', '1', 162),
(35, '2018-01-17 03:57:58', 'CBOE', '1', 129),
(36, '2018-01-17 03:57:58', 'CBOE', '0', 30),
(37, '2018-01-17 03:57:58', 'CBOE', '0', 21),
(39, '2018-01-17 03:57:59', 'CBOE', '1', 182),
(40, '2018-01-17 03:57:59', 'CBOE', '1', 176),
(41, '2018-01-17 03:58:25', 'CBOE', '0', 12),
(42, '2018-01-17 03:58:26', 'CBOE', '0', 192),
(43, '2018-01-17 03:58:26', 'CBOE', '1', 31),
(44, '2018-01-17 03:58:27', 'CBOE', '1', 78),
(45, '2018-01-17 03:58:27', 'CBOE', '0', 80),
(46, '2018-01-17 03:58:27', 'CBOE', '1', 141),
(47, '2018-01-17 03:58:27', 'CBOE', '0', 63),
(48, '2018-01-17 03:58:28', 'CBOE', '1', 52),
(49, '2018-01-17 03:58:28', 'CBOE', '0', 73),
(50, '2018-01-17 17:35:34', 'CBOE', '1', 24),
(51, '2018-01-17 17:35:36', 'CBOE', '1', 104),
(52, '2018-01-17 17:35:36', 'CBOE', '1', 136),
(53, '2018-01-17 17:36:09', 'CBOE', '1', 19),
(54, '2018-01-17 17:36:09', 'CBOE', '0', 123),
(55, '2018-01-17 17:36:09', 'CBOE', '1', 77),
(56, '2018-01-17 17:36:10', 'CBOE', '0', 172),
(57, '2018-01-17 17:36:11', 'CBOE', '1', 32),
(58, '2018-01-17 17:36:33', 'CBOE', '1', 88),
(59, '2018-01-17 17:36:33', 'CBOE', '1', 126),
(61, '2018-01-17 17:36:34', 'CBOE', '1', 181),
(62, '2018-01-17 17:36:35', 'CBOE', '1', 192),
(63, '2018-01-17 17:36:52', 'CBOE', '1', 84),
(64, '2018-01-17 17:36:53', 'CBOE', '1', 119),
(65, '2018-01-17 17:36:54', 'CBOE', '1', 126),
(66, '2018-01-17 17:36:55', 'CBOE', '1', 194),
(67, '2018-01-17 17:38:05', 'CBOE', '0', 94),
(68, '2018-01-17 17:38:05', 'CBOE', '1', 145),
(69, '2018-01-17 17:38:05', 'CBOE', '1', 185),
(70, '2018-01-17 17:38:05', 'CBOE', '1', 2),
(71, '2018-01-17 17:38:06', 'CBOE', '1', 196),
(72, '2018-01-17 17:38:06', 'CBOE', '0', 44),
(73, '2018-01-17 17:38:06', 'CBOE', '0', 157),
(74, '2018-01-17 17:38:06', 'CBOE', '0', 178),
(75, '2018-01-17 17:38:06', 'CBOE', '1', 56),
(76, '2018-01-17 17:38:06', 'CBOE', '1', 180),
(77, '2018-01-17 17:38:07', 'CBOE', '1', 94),
(78, '2018-01-17 17:38:07', 'CBOE', '1', 4),
(79, '2018-01-17 17:38:07', 'CBOE', '0', 166),
(80, '2018-01-17 17:38:07', 'CBOE', '1', 140),
(81, '2018-01-17 17:38:07', 'CBOE', '1', 152),
(82, '2018-01-17 17:38:07', 'CBOE', '0', 84),
(83, '2018-01-17 17:38:07', 'CBOE', '0', 22),
(84, '2018-01-17 17:38:08', 'CBOE', '1', 35),
(85, '2018-01-17 17:38:08', 'CBOE', '0', 23),
(86, '2018-01-17 17:38:08', 'CBOE', '0', 176),
(87, '2018-01-17 17:38:08', 'CBOE', '1', 60),
(88, '2018-01-17 17:39:59', 'CBOE', '0', 140),
(89, '2018-01-17 17:39:59', 'CBOE', '0', 35),
(90, '2018-01-17 17:39:59', 'CBOE', '1', 125),
(91, '2018-01-17 17:39:59', 'CBOE', '0', 47),
(92, '2018-01-17 17:39:59', 'CBOE', '0', 18),
(93, '2018-01-17 17:40:00', 'CBOE', '0', 90),
(94, '2018-01-17 17:40:00', 'CBOE', '0', 198),
(95, '2018-01-17 17:40:00', 'CBOE', '0', 138),
(96, '2018-01-17 17:40:00', 'CBOE', '1', 143),
(97, '2018-01-17 17:40:21', 'CBOE', '0', 92),
(98, '2018-01-17 17:40:21', 'CBOE', '1', 141),
(99, '2018-01-17 17:40:21', 'CBOE', '0', 107),
(100, '2018-01-17 17:40:21', 'CBOE', '0', 64),
(101, '2018-01-17 17:40:21', 'CBOE', '0', 84),
(102, '2018-01-17 17:40:21', 'CBOE', '1', 150);

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `id` int(11) NOT NULL,
  `trade_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `symbol` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`id`, `trade_time`, `symbol`, `price`, `quantity`) VALUES
(1, '2018-01-17 03:07:41', 'CBOE', 0, '113'),
(2, '2018-01-17 03:07:44', 'CBOE', 1, '75'),
(3, '2018-01-17 03:07:45', 'CBOE', 1, '186'),
(4, '2018-01-17 03:07:45', 'CBOE', 1, '156'),
(5, '2018-01-17 03:07:45', 'CBOE', 1, '131'),
(6, '2018-01-17 03:07:45', 'CBOE', 0, '109'),
(7, '2018-01-17 03:07:45', 'CBOE', 1, '111'),
(8, '2018-01-17 03:10:57', 'CBOE', 0, '140'),
(9, '2018-01-17 03:10:58', 'CBOE', 1, '155'),
(10, '2018-01-17 03:10:58', 'CBOE', 0, '25'),
(11, '2018-01-17 03:10:59', 'CBOE', 0, '177'),
(12, '2018-01-17 03:11:00', 'CBOE', 0, '68'),
(13, '2018-01-17 03:11:00', 'CBOE', 1, '166'),
(14, '2018-01-17 03:11:01', 'CBOE', 0, '116'),
(15, '2018-01-17 03:11:01', 'CBOE', 0, '131'),
(16, '2018-01-17 03:55:10', 'CBOE', 1, '154'),
(17, '2018-01-17 03:55:11', 'CBOE', 0, '124'),
(18, '2018-01-17 03:55:11', 'CBOE', 0, '42'),
(19, '2018-01-17 03:55:11', 'CBOE', 0, '95'),
(20, '2018-01-17 03:55:11', 'CBOE', 0, '63'),
(21, '2018-01-17 03:55:11', 'CBOE', 0, '96'),
(22, '2018-01-17 03:55:11', 'CBOE', 0, '8'),
(23, '2018-01-17 03:55:12', 'CBOE', 0, '53'),
(24, '2018-01-17 03:55:12', 'CBOE', 1, '113'),
(25, '2018-01-17 03:55:12', 'CBOE', 0, '50'),
(26, '2018-01-17 03:55:12', 'CBOE', 0, '86'),
(27, '2018-01-17 03:55:12', 'CBOE', 1, '114'),
(28, '2018-01-17 03:55:12', 'CBOE', 1, '105'),
(29, '2018-01-17 03:55:13', 'CBOE', 0, '83'),
(30, '2018-01-17 03:55:13', 'CBOE', 1, '2'),
(31, '2018-01-17 03:55:13', 'CBOE', 1, '200'),
(32, '2018-01-17 03:55:13', 'CBOE', 1, '147'),
(33, '2018-01-17 03:55:14', 'CBOE', 1, '157'),
(34, '2018-01-17 03:57:58', 'CBOE', 1, '162'),
(35, '2018-01-17 03:57:58', 'CBOE', 1, '129'),
(36, '2018-01-17 03:57:58', 'CBOE', 0, '30'),
(37, '2018-01-17 03:57:58', 'CBOE', 0, '21'),
(38, '2018-01-17 03:57:59', 'CBOE', 0, '102'),
(39, '2018-01-17 03:57:59', 'CBOE', 1, '182'),
(40, '2018-01-17 03:57:59', 'CBOE', 1, '176'),
(41, '2018-01-17 03:58:25', 'CBOE', 0, '12'),
(42, '2018-01-17 03:58:26', 'CBOE', 0, '192'),
(43, '2018-01-17 03:58:26', 'CBOE', 1, '31'),
(44, '2018-01-17 03:58:27', 'CBOE', 1, '78'),
(45, '2018-01-17 03:58:27', 'CBOE', 0, '80'),
(46, '2018-01-17 03:58:27', 'CBOE', 1, '141'),
(47, '2018-01-17 03:58:27', 'CBOE', 0, '63'),
(48, '2018-01-17 03:58:28', 'CBOE', 1, '52'),
(49, '2018-01-17 03:58:28', 'CBOE', 0, '73'),
(50, '2018-01-17 17:35:34', 'CBOE', 1, '24'),
(51, '2018-01-17 17:35:36', 'CBOE', 1, '104'),
(52, '2018-01-17 17:35:36', 'CBOE', 1, '136'),
(53, '2018-01-17 17:36:09', 'CBOE', 1, '19'),
(54, '2018-01-17 17:36:09', 'CBOE', 0, '123'),
(55, '2018-01-17 17:36:09', 'CBOE', 1, '77'),
(56, '2018-01-17 17:36:10', 'CBOE', 0, '172'),
(57, '2018-01-17 17:36:11', 'CBOE', 1, '32'),
(58, '2018-01-17 17:36:33', 'CBOE', 1, '88'),
(59, '2018-01-17 17:36:33', 'CBOE', 1, '126'),
(60, '2018-01-17 17:36:33', 'CBOE', 0, '1'),
(61, '2018-01-17 17:36:34', 'CBOE', 1, '181'),
(62, '2018-01-17 17:36:35', 'CBOE', 1, '192'),
(63, '2018-01-17 17:36:52', 'CBOE', 1, '84'),
(64, '2018-01-17 17:36:53', 'CBOE', 1, '119'),
(65, '2018-01-17 17:36:54', 'CBOE', 1, '126'),
(66, '2018-01-17 17:36:55', 'CBOE', 1, '194'),
(67, '2018-01-17 17:38:05', 'CBOE', 0, '94'),
(68, '2018-01-17 17:38:05', 'CBOE', 1, '145'),
(69, '2018-01-17 17:38:05', 'CBOE', 1, '185'),
(70, '2018-01-17 17:38:05', 'CBOE', 1, '2'),
(71, '2018-01-17 17:38:06', 'CBOE', 1, '196'),
(72, '2018-01-17 17:38:06', 'CBOE', 0, '44'),
(73, '2018-01-17 17:38:06', 'CBOE', 0, '157'),
(74, '2018-01-17 17:38:06', 'CBOE', 0, '178'),
(75, '2018-01-17 17:38:06', 'CBOE', 1, '56'),
(76, '2018-01-17 17:38:06', 'CBOE', 1, '180'),
(77, '2018-01-17 17:38:07', 'CBOE', 1, '94'),
(78, '2018-01-17 17:38:07', 'CBOE', 1, '4'),
(79, '2018-01-17 17:38:07', 'CBOE', 0, '166'),
(80, '2018-01-17 17:38:07', 'CBOE', 1, '140'),
(81, '2018-01-17 17:38:07', 'CBOE', 1, '152'),
(82, '2018-01-17 17:38:07', 'CBOE', 0, '84'),
(83, '2018-01-17 17:38:07', 'CBOE', 0, '22'),
(84, '2018-01-17 17:38:08', 'CBOE', 1, '35'),
(85, '2018-01-17 17:38:08', 'CBOE', 0, '23'),
(86, '2018-01-17 17:38:08', 'CBOE', 0, '176'),
(87, '2018-01-17 17:38:08', 'CBOE', 1, '60'),
(88, '2018-01-17 17:39:59', 'CBOE', 0, '140'),
(89, '2018-01-17 17:39:59', 'CBOE', 0, '35'),
(90, '2018-01-17 17:39:59', 'CBOE', 1, '125'),
(91, '2018-01-17 17:39:59', 'CBOE', 0, '47'),
(92, '2018-01-17 17:39:59', 'CBOE', 0, '18'),
(93, '2018-01-17 17:40:00', 'CBOE', 0, '90'),
(94, '2018-01-17 17:40:00', 'CBOE', 0, '198'),
(95, '2018-01-17 17:40:00', 'CBOE', 0, '138'),
(96, '2018-01-17 17:40:00', 'CBOE', 1, '143'),
(97, '2018-01-17 17:40:21', 'CBOE', 0, '92'),
(98, '2018-01-17 17:40:21', 'CBOE', 1, '141'),
(99, '2018-01-17 17:40:21', 'CBOE', 0, '107'),
(100, '2018-01-17 17:40:21', 'CBOE', 0, '64'),
(101, '2018-01-17 17:40:21', 'CBOE', 0, '84'),
(102, '2018-01-17 17:40:21', 'CBOE', 1, '150');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `top_trades`
--
ALTER TABLE `top_trades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `top_trades`
--
ALTER TABLE `top_trades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
