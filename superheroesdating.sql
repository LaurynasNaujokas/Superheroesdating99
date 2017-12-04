-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2017 at 05:39 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superheroesdating`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(10) NOT NULL,
  `message` varchar(255) NOT NULL,
  `sender` varchar(70) NOT NULL,
  `receiver` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `message`, `sender`, `receiver`) VALUES
(1, 'youll die you son of the bitch', 'batman@gmail.com', 'venom@gmail.com'),
(2, 'youll die you son of the bitch', 'batman@gmail.com', 'venom@gmail.com'),
(4, 'IM TALKING TO MYSELF', 'batman@gmail.com', 'batman@gmail.com'),
(5, 'asdasd', 'batman@gmail.com', 'batman@gmail.com'),
(7, 'ads', 'batman@gmail.com', 'doctorstrange@gmail.com'),
(8, 'asdas das das', 'batman@gmail.com', 'doctorstrange@gmail.com'),
(9, 'asdas das das6', 'batman@gmail.com', 'doctorstrange@gmail.com'),
(10, 'dasdsa jksa dasj iqw jlas js', 'batman@gmail.com', 'doctorstrange@gmail.com'),
(11, 'youre cool m8', 'batman@gmail.com', 'doctorstrange@gmail.com'),
(12, 'youre cool m8\'', 'batman@gmail.com', 'doctorstrange@gmail.com'),
(13, 'dedddddddddddddddd', 'batman@gmail.com', 'batman@gmail.com'),
(14, 'dedddddddddddddddd\'', 'batman@gmail.com', 'batman@gmail.com'),
(15, 'msg', 'batman@gmail.com', 'venom@gmail.com'),
(16, 'dsa', 'batman@gmail.com', 'batman@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `name` varchar(30) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `id` int(10) NOT NULL,
  `profile_email` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`name`, `comment`, `id`, `profile_email`) VALUES
('Your Name', 'dasdsadas', 1, 'doctorstrange@gmail.com'),
('Your Name', 'asddas', 2, 'spiderman@gmail.com'),
('Your Name', 'dasdasdas', 3, 'doctorstrange@gmail.com'),
('Venom', 'SpiderMAN!!!!! YOULL BE DEAD YOU TURD', 4, 'spiderman@gmail.com'),
('Your Name', 'dasdasdfas', 5, 'venom@gmail.com'),
('Spidermans friend', 'I will defend him, you snake Venom', 6, 'spiderman@gmail.com'),
('Your Name', 'lopas', 7, 'spiderman@gmail.com'),
('Your Name', 'lopas', 8, 'doctorstrange@gmail.com'),
('dede', 'dede', 9, 'doctorstrange@gmail.com'),
('Your Name', 'Cool', 10, 'spiderman@gmail.com'),
('Spiderman', 'No one likes you tentacle ', 11, 'venom@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `email` varchar(70) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `superpower` varchar(50) NOT NULL,
  `like_count` int(10) NOT NULL,
  `gift` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`email`, `nickname`, `superpower`, `like_count`, `gift`, `picture`) VALUES
('batman@gmail.com', 'Batmanas', '', 8, '', 'https://upload.wikimedia.org/wikipedia/en/1/17/Batman-BenAffleck.jpg'),
('doctorstrange@gmail.com', 'Doctor Strange', 'very strong stuff', 3, '', 'https://nerdist.com/wp-content/uploads/2016/09/20160930_n_nerdistnews_drstrangeinfinity_1x1.jpg'),
('spiderman@gmail.com', 'Spiderman', 'throws a spider web', 57, '', 'https://images-na.ssl-images-amazon.com/images/I/51KjWthOnCL.jpg'),
('venom@gmail.com', 'Venom', '', 0, '', 'http://www.dailyhogar.com/media/1462/venom.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `receiver` (`receiver`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_email` (`profile_email`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `profile` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`receiver`) REFERENCES `profile` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`profile_email`) REFERENCES `profile` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
