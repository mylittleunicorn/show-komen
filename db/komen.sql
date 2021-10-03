-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 05:14 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komen`
--

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `post_id`, `user_id`, `isi`) VALUES
(1, 1, 2, 'aaaaaaaa'),
(2, 2, 2, 'aaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `judul` varchar(120) NOT NULL,
  `post` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `judul`, `post`, `user_id`) VALUES
(1, 'Don’t abuse Kotlin’s scope functions', 'Kotlin’s standard library contains several functions whose sole purpose is to execute a block of code within the context of an object.\r\nWhen you call such a function on an object with a lambda expression provided, it forms a temporary scope.', 1),
(2, 'React 18 — Reactjs Latest Version to Bring Lots of New Features', 'The extensively forecasted Version of React 18 has emerged finally. Its company has ultimately disclosed the baseline version of React 18 and its agenda, although the legal launch is unfinished. This time the team has attempted something unique and published the agenda early to know their user response because developers did not that broadly enjoy the previous version of React 17.', 1),
(3, 'How to Identify a Pseudo-Smart Person', 'Over my career as a copywriter, I’ve interviewed dozens of top performers. I’ve been privileged to have genuine, deep 1-on-1 conversations with heads of multi-million dollar businesses. These are aggressively smart people, who make me feel humbled just by their presence.\r\nIt’s comical how different these people are from my peers. Many of my acquaintances feel extremely smart. They have zero achievements to back up their ego. Even when every piece of evidence shows that they’re not so smart, they find a smart reason why the world is wrong and they’re right.', 2),
(4, 'Four Fake Nice Gestures That Are Actually Manipulative', 'Not only are we deceived more than we realize, manipulators often forget they are doing it. The behavior was ingrained during childhood. It got them what they wanted, out of trouble, into good graces. It went unchecked for years. By the time you deal with them as adults, they are very good at what they do. Here are four signs their smile means you are being played like a fiddle.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `pass` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `pass`) VALUES
(1, 'a', 'a'),
(2, 'b', 'b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
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
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
