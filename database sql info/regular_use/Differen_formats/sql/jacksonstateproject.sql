-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 12, 2017 at 10:43 PM
-- Server version: 5.6.35-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jacksonstateproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `listing_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` enum('CSC 118','CSC 119','CSC 225','CSC 228','CSC 214','CSC 216','CSC 312','CSC 323','CSC 325','CSC 330','CSC 435','CSC 437','CSC 441','CSC 450','CSC 475','CSC 499') NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `edition` int(11) NOT NULL,
  `quality` enum('Poor','Okay','Average','Good','Very Good','Excellent') NOT NULL,
  `actions` enum('Buy','Sell','Trade','') NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`listing_id`),
  KEY `fk_userid_books` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`listing_id`, `subject`, `price`, `isbn`, `author`, `title`, `edition`, `quality`, `actions`, `email_user`, `id`) VALUES
(1, 'CSC 499', '29.40', '9781119092155', 'Troy McMillan', 'Cisco Networking Essentials', 2, 'Excellent', 'Sell', 'jasondreams0513@gmail.com', 2),
(2, 'CSC 475', '30.00', '9780984782857', 'Gayle Laakmann McDowell', 'Cracking the Coding Interview', 6, 'Good', 'Sell', 'Jasondreams0513@gmail.com', 2),
(3, 'CSC 323', '69.70', '9780262033848', 'Thomas H. Cormen', 'Introduction to Algorithms', 3, 'Average', 'Sell', 'Jasondreams0513@gmail.com', 2),
(4, 'CSC 118', '80.00', '9789654875120', 'Fredrick Jones', 'Java Programming for Beginners', 1, 'Excellent', 'Trade', 'dustan26@live.com', 7),
(5, 'CSC 228', '70.00', '9782546824120', 'James Franklin', 'Digital Logic with HDL', 2, 'Very Good', 'Sell', 'dustan26@live.com', 7),
(6, 'CSC 323', '100.00', '9784521545256', 'Michael Moore', 'Algorithms for a New Tomorrow', 5, 'Average', 'Buy', 'dustan26@live.com', 7),
(7, 'CSC 330', '120.00', '9784587965123', 'John Phillips', 'Database for Beginners', 4, 'Very Good', 'Buy', 'dustan26@live.com', 7),
(9, 'CSC 228', '200.00', '9787778547825', 'John Smith', 'Digital Logic', 2, 'Average', 'Sell', 'dustan26@live.com', 7),
(10, 'CSC 228', '200.00', '9787778547825', 'John Smith', 'Digital Logic', 2, 'Average', 'Sell', 'dustan26@live.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(2, 'jason', 'jasondreams0513@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2017-03-22 20:16:02'),
(7, 'Dustan', 'dustan3526@live.com', '5d41402abc4b2a76b9719d911017c592', '2017-04-03 17:28:45'),
(8, 'felix', 'j00598560@students.jsums.edu', '25779f8829ab7a7650e85a4cc871e6ac', '2017-04-03 18:29:42'),
(9, 'xpooxp', 'xpooxp@gmail.com', '45573f52cc05742fa4d7b66099ab20c9', '2017-04-03 21:21:44'),
(10, 'ravenlawrence', 'J00639016@students.jsums.edu', '2a447b1649050ad6023e40ba15c7eeba', '2017-04-04 02:04:36'),
(11, 'username', 'email@email.com', '0c83f57c786a0b4a39efab23731c7ebc', '2017-04-16 16:28:19'),
(13, 'jamesbrown', 'dustan26@live.com', '5d41402abc4b2a76b9719d911017c592', '2017-04-16 21:12:59'),
(15, 'test', 'test@email.com', '098f6bcd4621d373cade4e832627b4f6', '2017-04-16 21:35:00'),
(16, 'jacksonchump', 'dustan26@live.com', '5d41402abc4b2a76b9719d911017c592', '2017-04-16 21:37:46'),
(17, 'dustan31', 'dustan26@live.com', '5d41402abc4b2a76b9719d911017c592', '2017-04-16 21:52:37'),
(25, '123', 'kjll@example.com', '202cb962ac59075b964b07152d234b70', '2017-04-16 22:20:11'),
(26, 'dustan333', 'dustan26@live.com', '5d41402abc4b2a76b9719d911017c592', '2017-04-16 22:20:29'),
(28, 'dustan5555', 'dustan331@gmail.com', '5d41402abc4b2a76b9719d911017c592', '2017-04-16 22:21:55'),
(33, 'klfad', 'fdjaks@email.com', 'd942287cd1b8477c9d31367912f33bc0', '2017-04-16 22:26:46'),
(34, 'fgkl', 'KAG@EMAIL.COM', '2fc22507f0e3c451f65f6c1136cb8e8e', '2017-04-16 22:27:08'),
(35, '121222', 'dustan311@gmail.com', '5d41402abc4b2a76b9719d911017c592', '2017-04-16 22:27:28'),
(36, 'jcroman', 'jcroman1978@yahoo.com', 'bde8b7a0cca019bf7eb387687b7f2af1', '2017-05-03 18:38:02'),
(37, 'jasondreams0513@gmail.com', 'jasondreams0513@gmail.com', 'e047816f241579bf3344e7626ece8315', '2017-05-09 19:24:44');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_userid_books` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
