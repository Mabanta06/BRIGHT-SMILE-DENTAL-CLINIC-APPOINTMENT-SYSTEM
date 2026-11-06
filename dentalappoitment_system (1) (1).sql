-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2026 at 02:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentalappoitment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(50) NOT NULL,
  `service` varchar(100) NOT NULL,
  `dentist` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_appointments`
--

INSERT INTO `tbl_appointments` (`id`, `patient_id`, `patient`, `phone`, `appointment_date`, `appointment_time`, `service`, `dentist`, `status`) VALUES
(1, 13, 'ronan', '', '2026-10-01', '8:30 AM - 9:00 AM', 'Teeth Cleaning', NULL, 'Pending'),
(2, 13, 'ronan', '', '2026-10-01', '10:30 AM - 11:00 AM', 'Braces Consultation', NULL, 'Pending'),
(3, 13, 'popo', '', '2026-02-25', '8:30 AM - 9:00 AM', 'Teeth Cleaning', NULL, 'Declined'),
(4, 13, 'ron', '', '2026-01-02', '8:30 AM - 9:00 AM', 'Teeth Cleaning', NULL, 'Approved'),
(5, 13, 'porche', '09771128448', '2026-10-02', '8:30 AM - 9:00 AM', 'Teeth Cleaning', NULL, 'Pending'),
(6, 13, 'awe', '09771126448', '2026-02-25', '8:30 AM - 9:00 AM', 'Braces Consultation', NULL, 'Declined');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dentists`
--

CREATE TABLE `tbl_dentists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dentists`
--

INSERT INTO `tbl_dentists` (`id`, `name`, `email`, `specialization`) VALUES
(1, 'Dr. Santos', 'santos@gmail.com', 'General Dentistry'),
(2, 'Dr. Cruz', 'cruz@gmail.com', 'Orthodontics'),
(3, 'Dr. Reyes', 'reyes@gmail.com', 'Oral Surgery');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'USER',
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `uname`, `password`, `role`, `email`) VALUES
(5, 'ronang@gmail.com', '123', 'DENTIST', NULL),
(6, 'roni@gmail.com', '123', 'DENTIST', NULL),
(7, 'anna@gmail.com', '123', 'DENTIST', 'wow@gmail.com'),
(8, 'gutang', 'admin123', 'ADMIN', 'gutang@gmail.com'),
(9, 'ronin@gmail.com', '123', 'USER', 'ronin@gmail.com'),
(10, 'turon@gmail.com', '123', 'USER', 'turon@gmail.com'),
(11, 'ronanmelzar@gmail.com', '112233', 'USER', 'ronanmelzar@gmail.com'),
(12, 'Yfel@gmail.com', '123', 'USER', 'Yfel@gmail.com'),
(13, 'Ronan Melzar', '1234', 'USER', 'turonguts@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dentists`
--
ALTER TABLE `tbl_dentists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_dentists`
--
ALTER TABLE `tbl_dentists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
