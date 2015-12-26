-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2015 at 01:59 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `portal2`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
`id` int(11) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `teacher_id` varchar(255) NOT NULL,
  `record` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `date`, `teacher_id`, `record`) VALUES
(18, '14S002', '2015-12-24 22:31:21', '10T002', 1),
(19, '14S003', '2015-12-24 22:31:21', '10T002', 0),
(20, '14S004', '2015-12-24 22:31:21', '10T002', 0),
(21, '10S001', '2015-12-26 12:55:58', '10T001', 1),
(22, '10S002', '2015-12-26 12:55:58', '10T001', 1),
(23, '17S005', '2015-12-26 12:59:01', '10T002', 1),
(24, '10S003', '2015-12-26 12:59:01', '10T002', 1),
(25, '15S012', '2015-12-26 12:59:01', '10T002', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `teacher_id` varchar(255) NOT NULL,
  `school_id` varchar(20) NOT NULL,
  `class_id` varchar(20) NOT NULL,
  `strength` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`teacher_id`, `school_id`, `class_id`, `strength`) VALUES
('10T001', 'abcd', '1B', 2),
('10T002', 'abcd', '5B', 3),
('10T002', 'abcd', '8A', 3);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE IF NOT EXISTS `parents` (
  `parent_id` varchar(20) NOT NULL,
  `student_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `school_id` varchar(10) NOT NULL,
  `school_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`) VALUES
('abcd', 'Test_school');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `name` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `roll` int(10) NOT NULL,
  `class_id` varchar(11) NOT NULL,
  `school_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='students table';

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `student_id`, `roll`, `class_id`, `school_id`) VALUES
('Arka Roy', '10S001', 1, '1B', 'abcd'),
('Akash Saha', '14S002', 2, '8A', 'abcd'),
('Suprotim Das', '14S003', 3, '8A', 'abcd'),
('Adarsh Singh', '14S004', 4, '8A', 'abcd'),
('Shrey Sharma', '17S005', 5, '5B', 'abcd'),
('Aakash Basu', '10S002', 6, '1B', 'abcd'),
('Anmol Verma', '10S003', 7, '5B', 'abcd'),
('Debpriya Piri', '15S012', 8, '5B', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `Subject_Id` varchar(20) NOT NULL,
  `Subject_Name` varchar(20) NOT NULL,
  `class_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Subject_Id`, `Subject_Name`, `class_id`) VALUES
('BIO08', 'Biology', '8A'),
('CHE08', 'Chemistry', '8A'),
('ENG08', 'English', '8A'),
('MAT01', 'Mathematics', '1B'),
('PHY08', 'Physics', '8A'),
('SS05', 'Social Science', '5A');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `Teacher_Name` varchar(20) NOT NULL,
  `teacher_id` varchar(20) NOT NULL,
  `school_id` varchar(20) NOT NULL,
  `Teacher_subject_id` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_Name`, `teacher_id`, `school_id`, `Teacher_subject_id`, `email`) VALUES
('Colin	White', '10T001', 'schoolabc', 'MAT01', 'colin.white@schoolabc.com'),
('Jane Shorts', '10T002', 'schoolabc', 'PHY08', 'jane.short@schoolabc.com'),
('Luke MacLeod', '10T003', 'schoolabc', 'ENG08', 'luke.macleod@schoolabc.com'),
('Jack Hart', '10T004', 'schoolabc', 'CHE08', 'jack.hart@schoolabc.com'),
('Rebecca White', '10T005', 'schoolabc', 'BIO08', 'rebacca.white@schoolabc.com'),
('Diane Edmunds', '11T004', 'schoolabc', 'SS05', 'diane.edmunds@schoolabc.com');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE IF NOT EXISTS `teacher_class` (
  `s.no.` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `teacher_id` varchar(20) NOT NULL,
  `class_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`s.no.`, `teacher_id`, `class_id`) VALUES
('2015-12-20 18:30:00', '14T001', '1A'),
('2015-12-24 20:09:48', '11T001', '8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_id`, `user_type`) VALUES
(1, 'arka', 'fc5e038d38a57032085441e7fe7010b0', '14S001', 1),
(2, 'teacher1', 'fc5e038d38a57032085441e7fe7010b0', '10T001', 2),
(3, 'teacher4', 'fc5e038d38a57032085441e7fe7010b0', '11T004', 2),
(4, 'teacher2', 'fc5e038d38a57032085441e7fe7010b0', '10T002', 2),
(5, 'teacher3', 'fc5e038d38a57032085441e7fe7010b0', '10T003', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type`) VALUES
(1, 'Teacher'),
(2, 'Parent'),
(3, 'Student'),
(4, 'School_admin'),
(5, 'Company_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
 ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`roll`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`Subject_Id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
 ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
 ADD PRIMARY KEY (`s.no.`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
 ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
