-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 02, 2023 at 06:16 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1114142388, 1434130596, 'hi'),
(2, 1434130596, 594462732, 'hi'),
(3, 1434130596, 594462732, 'go'),
(4, 1434130596, 594462732, 'away'),
(5, 1434130596, 431460608, 'hey'),
(6, 594462732, 431460608, 'hey'),
(7, 431460608, 594462732, 'shubham'),
(8, 594462732, 431460608, 'i am chatting with you'),
(9, 431460608, 594462732, 'you are chatting with me'),
(10, 431460608, 594462732, 'yash will do phase 6'),
(11, 1434130596, 431460608, 'hey'),
(12, 1434130596, 431460608, 'shubahm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 594462732, 'Shubham', 'Kaushal', 'a@b.gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1682525741a.jpg', 'Active now'),
(2, 1114142388, 'Katrina', 'Kaushal', 'c@d.gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1682526785kat.jpg', 'Active now'),
(3, 1434130596, 'a', 'b', 'a@b.com', '900150983cd24fb0d6963f7d28e17f72', '1682612678Papa.jpg', 'Active now'),
(4, 431460608, 'a', 'b', 'c@d.com', '900150983cd24fb0d6963f7d28e17f72', '1682612941#DevFestIndia_badge.png', 'Active now');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
