-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2017 at 06:30 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `try_research`
--

-- --------------------------------------------------------

--
-- Table structure for table `classsections`
--

CREATE TABLE IF NOT EXISTS `classsections` (
  `Class_Section_ID` int(11) NOT NULL,
  `School_ID` int(11) NOT NULL COMMENT 'Foreign key from School table',
  `Class_Section_Num` int(15) NOT NULL COMMENT '(COMP 165 A)',
  `Instructor` varchar(15) NOT NULL COMMENT '(Bryant)',
  `Semester` varchar(6) NOT NULL COMMENT '(F2016)',
  PRIMARY KEY (`Class_Section_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `LabAdministrationID` int(10) NOT NULL,
  `StudentID` int(9) NOT NULL,
  `Group_number` int(2) NOT NULL,
  `Other_info` varchar(50) NOT NULL,
  PRIMARY KEY (`LabAdministrationID`,`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE IF NOT EXISTS `schools` (
  `School_ID` int(11) NOT NULL,
  `School` varchar(40) NOT NULL,
  PRIMARY KEY (`School_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `Student_ID` int(10) NOT NULL COMMENT 'student ID number',
  `School_ID` int(11) NOT NULL COMMENT 'foreign key from School table',
  `Stud_uName` varchar(15) NOT NULL COMMENT 'student username',
  `F_name` varchar(18) NOT NULL COMMENT 'student first name',
  `L_name` varchar(20) NOT NULL COMMENT 'student last name ',
  `Handle` varchar(10) NOT NULL COMMENT 'student screen name'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
