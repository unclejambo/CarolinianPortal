-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 03:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carolinian_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `birth_certificate` varchar(255) DEFAULT NULL,
  `grades` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `student_id`, `birth_certificate`, `grades`) VALUES
(5, 8, 'uploads\\1728757542171-coffee.png', 'uploads\\1728757542173-coffee.png'),
(6, 9, 'uploads\\1728758029926-coffee.png', NULL),
(7, 11, 'uploads\\1730388383813-7954987.jpg', 'uploads\\1730388383818-7954987.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `classification` varchar(50) DEFAULT NULL,
  `applicant_number` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `exam_date` date DEFAULT NULL,
  `exam_location` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `payment_status` enum('Pending','Paid') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `password`, `contact_number`, `classification`, `applicant_number`, `status`, `exam_date`, `exam_location`, `role`, `payment_status`) VALUES
(8, 'fresh', 'Subject', 'test1@email.com', '$2b$10$XuOEkmK/oEjhXqBsCZS2xOaH2vgUKLvIJLLkJrcuGkhcTmQR5DdcS', '123456789', 'freshmen', 'APP1728757542177', 'Approved', '2024-11-29', 'baz', 'student', ''),
(9, 'return', 'test', 'test2@email.com', '$2b$10$cNOwqRufIk7tOX0lN5EsSe2Cymg4TnDZ449UWN2oOsUHje3/ts5Re', '123456789', 'returnee', 'APP1728758029931', 'Approved', '2024-10-31', 'bazura grill', 'student', ''),
(10, 'AdminDiay', 'Ko', 'admin@email.com', '$2b$10$ZHuRVaiSurdfSnW.XneMfuPfEdnrfzxi982u9.ujm5dRAi.kRPVb2', '1234567890', 'admin', 'APP_ADMIN', 'pending', NULL, NULL, 'admin', ''),
(11, 'Bruno', 'Mars', 'brunomars@gmail.com', '$2b$10$iimD6S5WfwJ/bJdk9bk54.udpuQNU8wQf0BA81QiPG7n9/4hbsrjK', '09971234567', 'freshmen', 'APP1730388383823', 'Waiting for Payment', '2024-11-01', 'Bunzel', 'student', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
