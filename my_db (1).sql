-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2018 at 05:22 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `s_id` int(11) NOT NULL,
  `student_name` varchar(70) NOT NULL,
  `father_name` varchar(70) NOT NULL,
  `mother_name` varchar(70) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `d_birth` date NOT NULL,
  `religion` varchar(70) NOT NULL,
  `tel_number` int(70) NOT NULL,
  `image` blob NOT NULL,
  `f_occupation` varchar(70) NOT NULL,
  `m_occupation` varchar(70) NOT NULL,
  `f_income` int(70) NOT NULL,
  `g_tel` varchar(70) NOT NULL,
  `g_name` varchar(70) NOT NULL,
  `v_name` varchar(70) NOT NULL,
  `strt_name` varchar(70) NOT NULL,
  `post_office` varchar(70) NOT NULL,
  `thana_name` varchar(70) NOT NULL,
  `p_village` varchar(70) NOT NULL,
  `p_street` varchar(70) NOT NULL,
  `p_post` varchar(70) NOT NULL,
  `p_thana` varchar(70) NOT NULL,
  `p_district` varchar(70) NOT NULL,
  `exam_name` varchar(70) NOT NULL,
  `department` varchar(70) NOT NULL,
  `board_name` varchar(70) NOT NULL,
  `i_name` varchar(70) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `session` int(70) NOT NULL,
  `exam_center` varchar(70) NOT NULL,
  `passing_year` int(70) NOT NULL,
  `gpa_number` int(70) NOT NULL,
  `gpa_num` int(70) NOT NULL,
  `tel_num` int(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`s_id`, `student_name`, `father_name`, `mother_name`, `blood_group`, `d_birth`, `religion`, `tel_number`, `image`, `f_occupation`, `m_occupation`, `f_income`, `g_tel`, `g_name`, `v_name`, `strt_name`, `post_office`, `thana_name`, `p_village`, `p_street`, `p_post`, `p_thana`, `p_district`, `exam_name`, `department`, `board_name`, `i_name`, `roll_number`, `session`, `exam_center`, `passing_year`, `gpa_number`, `gpa_num`, `tel_num`) VALUES
(6, 'Sudipta Mondal', 'sfdfsdfdfs', 'sdfsdfsdf', 'B+', '1995-07-28', 'Hindu', 2147483647, 0x32333233313533355f323430353035333033333035323730325f313737363538373634383139373631393136365f6e2e6a7067, 'czxczcxzxc', 'czxczxcczx', 15000, '+88042141421412', 'dfafdssdsf', 'dssdfsdf', 'sdfsfsdsdf', '7400', 'sdffsdsdf', 'fdsfsfs', 'sdfsdffsdf', '7400', 'sdfsdffds', 'fsdfsffdsf', 'vxcvsdfdsf', 'dfsdfdsfsdfdf', 'Jessore', 'sdfffsdfsd', 132132, 2013, 'sdadasds', 2018, 5, 5, 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
