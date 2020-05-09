-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 08:20 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(4, 'karan19@gmail.com', 'karan@12345');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5eb6432576216', '5eb64325810ea'),
('5eb643259b4d0', '5eb64325a0e18'),
('5eb64325bbe5c', '5eb64325c1729'),
('5eb64325dc685', '5eb64325e1fce'),
('5eb6432608e0b', '5eb643260e684');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('rustagi.karan291@gmail.com', '5eb641f63ba92', 10, 5, 5, 0, '2020-05-09 06:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5eb6432576216', 'Bytecode is executed by JVM', '5eb64325810ea'),
('5eb6432576216', 'The applet makes the Java code secure and portable', '5eb64325810f1'),
('5eb6432576216', 'Use of exception handling', '5eb64325810f4'),
('5eb6432576216', 'Dynamic binding between objects', '5eb64325810f7'),
('5eb643259b4d0', 'Dynamic', '5eb64325a0e05'),
('5eb643259b4d0', 'Architecture Neutral', '5eb64325a0e12'),
('5eb643259b4d0', 'Use of pointers', '5eb64325a0e18'),
('5eb643259b4d0', 'Object-oriented', '5eb64325a0e1e'),
('5eb64325bbe5c', 'Object', '5eb64325c171a'),
('5eb64325bbe5c', 'int', '5eb64325c1729'),
('5eb64325bbe5c', 'long', '5eb64325c172f'),
('5eb64325bbe5c', 'void', '5eb64325c1735'),
('5eb64325dc685', 'NHJ895', '5eb64325e1fb3'),
('5eb64325dc685', 'LH45698', '5eb64325e1fc1'),
('5eb64325dc685', '0988863', '5eb64325e1fc9'),
('5eb64325dc685', '0xnf029L', '5eb64325e1fce'),
('5eb6432608e0b', '24', '5eb643260e684'),
('5eb6432608e0b', '23', '5eb643260e693'),
('5eb6432608e0b', '20', '5eb643260e69a'),
('5eb6432608e0b', '25', '5eb643260e6a0');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5eb641f63ba92', '5eb6432576216', 'Which of the following option leads to the portability and security of Java?', 4, 1),
('5eb641f63ba92', '5eb643259b4d0', 'Which of the following is not a Java features?', 4, 2),
('5eb641f63ba92', '5eb64325bbe5c', 'What is the return type of the hashCode() method in the Object class?', 4, 3),
('5eb641f63ba92', '5eb64325dc685', 'Which of the following is a valid long literal?', 4, 4),
('5eb641f63ba92', '5eb6432608e0b', 'Evaluate the following Java expression, if x=3, y=5, and z=10:\r\n\r\n++z + y - y + z + x++', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5eb641f63ba92', 'Core-java', 2, 1, 5, 5, 'a small test of core-java', '#core-java', '2020-05-09 05:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('rustagi.karan291@gmail.com', 10, '2020-05-09 06:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Karan Rustagi', 'M', 'manit', 'rustagi.karan291@gmail.com', 9910688383, 'bac8b241b55ba135de9ce82e8ba25097');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
