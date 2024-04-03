-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 03:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'เรื่องทั่วไป'),
(2, 'เรื่องเรียน'),
(3, 'เรื่องกีฬา'),
(4, 'เรื่องเพื่อน'),
(5, 'เรื่องอาหาร');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(20148) NOT NULL,
  `post_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `post_date`, `user_id`, `post_id`) VALUES
(1, 'อ่านให้รู้เรื่องทำไงครับ', '2024-03-06 15:38:34', 1, 0),
(2, 'มีใครพิมพ์ไม่ทันเหมือนเราบ้าง ไม่รู้ว่าเราพิมพ์ช้าหรืออาจารย์สอนเร็วเลย', '2024-03-06 16:13:23', 1, 0),
(3, 'เราก็พิมพ์ตามอาจารย์ไม่ทันเหมือนกัน\r\n', '2024-03-06 16:44:52', 2, 0),
(4, 'เราพิมพ์ไม่ทันนน', '2024-03-06 16:48:19', 1, 0),
(5, 'sadsad', '2024-03-06 16:58:35', 1, 0),
(6, 'asd', '2024-03-06 16:59:27', 1, 0),
(9, 'อ่านเยอะๆๆสิจ๊ะ', '2024-03-13 15:39:06', 3, 4),
(10, 'ทำไมไม่อาบบ\r\n', '2024-03-13 15:45:41', 3, 5),
(11, 'ก็ขี้เกลียจ', '2024-03-13 15:45:58', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(2048) NOT NULL,
  `post_date` datetime NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `post_date`, `cat_id`, `user_id`) VALUES
(4, 'ทำไงให้เรียนเก่ง', 'อ่านหนังสือไม่เข้าใจ', '2024-03-13 15:31:43', 2, 3),
(5, 'อยากอาบน้ำ', 'กิ้วววว', '2024-03-13 15:45:29', 1, 3),
(7, 'โดนอาจารย์เมินทำไงดีคะ ช่วยด้วยยย', 'อาจารย์ไม่ค่อยสนใจในคำถามของเรา เราอยากรู้คำตอบบบบ', '2024-04-03 19:54:01', 2, 5),
(8, 'อยากเล่นบาสตัวไม่สูงทำไง', 'ตัวไม่ตัเราไม่สูงเล่นบาสไม่ได้', '2024-04-03 19:55:15', 3, 5),
(9, 'ทำไงให้เพื่อนเลิกต่อยเรา', 'แงเราเจ็บมากกกก', '2024-04-03 19:59:51', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(32) NOT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `name`, `gender`, `email`, `role`) VALUES
(1, 'ging', '8cb2237d0679ca88db6464eac60da96345513964', 'เดสดม สาวน้อยย', 'f', '01ging@gmail.com', 'm'),
(2, 'kanok', '83787f060a59493aefdcd4b2369990e7303e186e', 'จิดจี้ มามา', 'o', '01kanok@gmail.com', 'm'),
(3, 'admin', '8dc9fa69ec51046b4472bb512e292d959edd2aef', 'สิริ สุข', 'f', 'admin@gmail.com', 'a'),
(5, 'kanokpich18', '8cb2237d0679ca88db6464eac60da96345513964', 'กนก', 'f', 'cc.12345@gmail.com', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
