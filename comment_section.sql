-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 07:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comment_section`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `uid` varchar(130) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `uid`, `date`, `message`) VALUES
(190, '1', '2020-05-06 15:19:59', 'What \r\nParagraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph. A paragraph is defined as â€œa group of sentences or a single sentence that forms a unitâ€ (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long. Ultimately, a paragraph is a sentence or group of sentences that support one main idea. In this handout, we will refer to this as the â€œcontrolling idea,â€ because it controls what happens in the rest of the paragraph.'),
(194, '6', '2020-05-07 05:07:06', 'i am the boss.. new here. hi all'),
(195, '6', '2020-05-07 05:07:06', 'i am the boss.. new here. hi all'),
(196, '1', '2020-05-09 03:19:56', 'admin..seting is ok now'),
(197, '30', '2020-05-11 16:55:40', 'yes thats good'),
(198, '1', '2020-05-12 01:40:43', 'i am sajid');

-- --------------------------------------------------------

--
-- Table structure for table `profileimg`
--

CREATE TABLE `profileimg` (
  `pid` int(11) NOT NULL,
  `userid` int(8) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profileimg`
--

INSERT INTO `profileimg` (`pid`, `userid`, `status`) VALUES
(1, 6, 0),
(2, 1, 0),
(3, 2, 1),
(4, 7, 1),
(5, 8, 1),
(6, 8, 1),
(7, 9, 1),
(8, 10, 1),
(9, 11, 1),
(10, 11, 1),
(11, 12, 1),
(12, 11, 1),
(13, 12, 1),
(14, 13, 1),
(15, 14, 1),
(16, 14, 1),
(17, 15, 1),
(18, 16, 1),
(19, 17, 1),
(20, 18, 1),
(21, 30, 0),
(22, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `rid` int(8) NOT NULL,
  `uid` int(8) NOT NULL,
  `cid` int(8) NOT NULL,
  `date` datetime NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`rid`, `uid`, `cid`, `date`, `message`) VALUES
(67, 1, 170, '2020-04-28 21:05:03', 'my reply to your post\r\n     '),
(68, 1, 171, '2020-04-28 21:05:18', 'always the paragraph\r\n     '),
(86, 1, 188, '2020-05-04 01:06:42', 'good'),
(90, 1, 194, '2020-05-09 03:20:30', 'good the boss'),
(91, 6, 196, '2020-05-09 04:02:06', 'good youu good'),
(92, 24, 189, '2020-05-10 05:41:19', 'gg'),
(93, 30, 196, '2020-05-11 16:56:47', 'yes really'),
(94, 1, 195, '2020-05-12 01:40:21', 'hello'),
(95, 1, 196, '2020-05-12 01:40:43', 'gagadgk');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uid` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `mobile` int(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `dob` varchar(128) NOT NULL,
  `gender` varchar(64) NOT NULL,
  `department` varchar(64) NOT NULL,
  `designation` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uid`, `pass`, `firstname`, `lastname`, `mobile`, `email`, `dob`, `gender`, `department`, `designation`) VALUES
(1, 'mugu', '1234', 'mugus', 'rahman', 1724053196, '  mr.mugudho@gmail.com  ', '25-11-1998', 'male', 'cse', 'admin'),
(6, 'theBoss', '12345678', 'mahmudur', 'rahman mug', 1724053196, 'mr.mugdho96@gmail.com', '1-1-1905', 'Male', 'CSE', 'member'),
(27, 'moderator', '1234', 'mugus', 's', 1722908205, 'elitebadman@gmail.com', '2-2-1915', 'Male', 'EEE', 'moderator'),
(29, 'mugdho', '1234', 'mahmudur', 'rahman', 1724053196, 'mr.mugdho@gmail.com', '5-9-1919', 'Male', 'EEE', 'admin'),
(30, 'user1', '12345678', 'Taushif', 'Rahan', 1724053196, 'mr.mugdho@gmail.com', '12-12-1917', 'Male', 'EEE', 'member'),
(31, 'user1', '12345678', 'dfdffdf', 'fdfd', 1724053196, 'mr.mugdho@gmail.com', '13-11-1917', 'Female', 'EEE', 'member'),
(32, 'adminA', '1234', 'mahmudur', 'rahman', 1724053196, 'mr.mugdho96@gmail.com', '15-12-1918', 'Male', 'CSE', 'admin'),
(33, 'user2', '1234', 'mahmudur', 'f', 1724053196, 'mr.mugdho@gmail.com', '14-12-1916', 'Female', 'CSE', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `profileimg`
--
ALTER TABLE `profileimg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `profileimg`
--
ALTER TABLE `profileimg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `rid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
