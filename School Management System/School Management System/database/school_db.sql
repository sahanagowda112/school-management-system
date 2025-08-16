-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2021 at 10:08 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'Admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `hindi1` int(11) NOT NULL,
  `hindi2` int(11) NOT NULL,
  `hindi3` int(11) NOT NULL,
  `english1` int(11) NOT NULL,
  `english2` int(11) NOT NULL,
  `english3` int(11) NOT NULL,
  `maths1` int(11) NOT NULL,
  `maths2` int(11) NOT NULL,
  `maths3` int(11) NOT NULL,
  `science1` int(11) NOT NULL,
  `science2` int(11) NOT NULL,
  `science3` int(11) NOT NULL,
  `social_sec1` int(11) NOT NULL,
  `social_sec2` int(11) NOT NULL,
  `social_sec3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `roll_no`, `hindi1`, `hindi2`, `hindi3`, `english1`, `english2`, `english3`, `maths1`, `maths2`, `maths3`, `science1`, `science2`, `science3`, `social_sec1`, `social_sec2`, `social_sec3`) VALUES
(1, 1001, 75, 80, 95, 80, 82, 78, 80, 76, 65, 68, 91, 75, 65, 50, 50),
(3, 1002, 75, 80, 58, 96, 47, 68, 82, 75, 72, 65, 62, 85, 48, 65, 68);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `roll_no` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `class` int(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL,
  `fee_status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `roll_no`, `fname`, `lname`, `mother_name`, `father_name`, `dob`, `gender`, `category`, `mobile`, `class`, `address`, `status`, `fee_status`) VALUES
(1, 1001, 'Rohit', 'Sharma', 'Rohit Mother', 'Rohit Father', '1994-07-01', 'Male', 'GEN', 9987547820, 12, 'Plot no 144, San Frans D.C ', 'Active', 1),
(2, 1002, 'ashok Kumar', 'Meena', 'Ashok Mother', 'Ashok Father', '2000-07-05', 'Male', 'ST', 7742424214, 10, 'Ashok Address goes here...', 'Active', 0),
(3, 1003, 'Sarika', 'Meena', 'sarika monther', 'Sarika father', '2000-07-13', 'Female', 'ST', 9987452135, 8, 'Sarika address goes here....', 'In-Active', 1),
(4, 1004, 'Ajay', 'Yadav', 'Ajay father ', 'Ajay Mother', '2001-02-01', 'Male', 'OBC', 9988552414, 11, 'Address of Ajay Yadav goes here...', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `fname`, `lname`, `dob`, `gender`, `email`, `mobile`, `subject`, `status`, `address`) VALUES
(1, 'Ashok', 'Sharma', '1970-03-09', 'Male', 'ashok@gmail.com', 9988776655, 'Hindi', 'Active', 'Address of Ashok sir goes here...'),
(2, 'Mahesh', 'Sharma', '1980-08-10', 'Male', 'mahesh@gmail.com', 9999999998, 'English', 'Active', 'Address of Mahesh Sir goes here...');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
