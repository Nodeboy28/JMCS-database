-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2019 at 07:01 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(100) NOT NULL,
  `department_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`) VALUES
(5, 'test'),
(6, 'test 2');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `s_id` int(11) NOT NULL,
  `form_details` varchar(1000) NOT NULL,
  `student_name` varchar(70) NOT NULL,
  `father_name` varchar(70) NOT NULL,
  `mother_name` varchar(70) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `d_birth` date NOT NULL,
  `religion` varchar(70) NOT NULL,
  `maritial_status` int(100) NOT NULL,
  `tel_number` int(70) NOT NULL,
  `stdntImage` varchar(100) NOT NULL,
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

INSERT INTO `student_info` (`s_id`, `form_details`, `student_name`, `father_name`, `mother_name`, `blood_group`, `d_birth`, `religion`, `maritial_status`, `tel_number`, `stdntImage`, `f_occupation`, `m_occupation`, `f_income`, `g_tel`, `g_name`, `v_name`, `strt_name`, `post_office`, `thana_name`, `p_village`, `p_street`, `p_post`, `p_thana`, `p_district`, `exam_name`, `department`, `board_name`, `i_name`, `roll_number`, `session`, `exam_center`, `passing_year`, `gpa_number`, `gpa_num`, `tel_num`) VALUES
(8, 'Honours', 'Dip', 'hgjhgggh', 'jkjhjkhjkh', 'AB+', '2019-01-02', 'Muslim', 0, 2147483647, 'uploads\\IMG_0902.jpg', 'bnmbnmbmb', 'nm,m,nm,n,m', 5454565, '+880454545', 'jhjkhkhkhh', 'bnmbmbbnmbm', 'bvbvnbbnv', 'nmbnbbv', 'bvbnvvnvvn', 'bbnvvbv', 'vnbvbnvnvn', 'bnvnbvv', 'nbmbmbmbmn', 'gfhgfhghgf', 'SSC', 'Science', 'Jessore', 'bmnmnbmmbn', 4565, 2013, 'nmnm,n,n,', 1998, 3, 3, 0),
(9, 'Intermediate', 'bristi', 'jhkhkjhjhh', 'jhkhhjkhjkhkjk', 'O-', '2019-01-10', 'Hindu', 0, 8805545, 'uploads\\IMG_0911.jpg', 'jhkhkhjkhkhkjkh', 'hjgjhgjhgjhgjhgjgg', 456465, '+88056456456', '5645646', '', '', '', '', '', '', '', '', '', 'Degree', 'Arts', 'Jessore', 'kkjjkkjjkj', 54545454, 2013, 'jhjjhjhjkhkjhjk', 2000, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
