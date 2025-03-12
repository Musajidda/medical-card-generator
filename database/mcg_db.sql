-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 11:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcg_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `med_cert_info`
--

CREATE TABLE `med_cert_info` (
  `id` bigint(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `fullname` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `med_cert_info`
--

INSERT INTO `med_cert_info` (`id`, `code`, `fullname`, `created_at`, `updated_at`) VALUES
(1, '20230202-00001', 'Cooper Jr., Mark  D', '2023-02-02 11:35:38', NULL),
(3, '20250212-00001', 'AUWAL 3/0/2003, IBRAHIM  BELEL', '2025-02-12 13:27:00', NULL),
(4, '20250212-00002', 'AIsha 3/0/2003, ISa  Hamidu', '2025-02-12 14:16:33', NULL),
(5, '20250212-00003', 'ISAAAAAAA MR, Hamza  Muhammed', '2025-02-12 14:57:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `med_cert_info_meta`
--

CREATE TABLE `med_cert_info_meta` (
  `id` bigint(30) NOT NULL,
  `med_cert_info_id` bigint(30) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `med_cert_info_meta`
--

INSERT INTO `med_cert_info_meta` (`id`, `med_cert_info_id`, `meta_key`, `meta_value`) VALUES
(152, 1, 'lastname', 'Cooper'),
(153, 1, 'firstname', 'Mark'),
(154, 1, 'middlename', 'D'),
(155, 1, 'suffix', 'Jr.'),
(156, 1, 'dob', '1997-06-23'),
(157, 1, 'gender', 'Male'),
(158, 1, 'civil_status', 'Married'),
(159, 1, 'contact', '09123654789'),
(160, 1, 'nationality', 'Filipino'),
(161, 1, 'address', 'Sample Address'),
(162, 1, 'diagnostic', 'Flu'),
(163, 1, 'remarks', 'is advising the above individual should take at least 3-4 days to fully recover from his illness.'),
(164, 1, 'doctor_fullname', 'Claire Blake'),
(165, 1, 'doctor_suffix', 'MD'),
(166, 3, 'lastname', 'AUWAL'),
(167, 3, 'firstname', 'IBRAHIM'),
(168, 3, 'middlename', 'BELEL'),
(169, 3, 'suffix', '3/0/2003'),
(170, 3, 'dob', '2025-02-05'),
(171, 3, 'gender', 'Male'),
(172, 3, 'civil_status', 'Single'),
(173, 3, 'contact', '0908766656'),
(174, 3, 'nationality', 'NIGERIA'),
(175, 3, 'address', 'LOKUWA'),
(176, 3, 'diagnostic', 'ASSSA'),
(177, 3, 'remarks', 'AAAAAAAAAAA'),
(178, 3, 'doctor_fullname', 'AAAAAAAAAA'),
(179, 3, 'doctor_suffix', 'AAAAAAAAAAAAAAA'),
(180, 4, 'lastname', 'AIsha'),
(181, 4, 'firstname', 'ISa'),
(182, 4, 'middlename', 'Hamidu'),
(183, 4, 'suffix', '3/0/2003'),
(184, 4, 'dob', '2025-02-18'),
(185, 4, 'gender', 'Female'),
(186, 4, 'civil_status', 'Single'),
(187, 4, 'contact', '0908766656'),
(188, 4, 'nationality', 'NIGERIAN'),
(189, 4, 'address', 'NEW LINE'),
(190, 4, 'diagnostic', 'DR. AUWAL'),
(191, 4, 'remarks', ''),
(192, 4, 'doctor_fullname', 'DR.AUWAL'),
(193, 4, 'doctor_suffix', 'SSSS'),
(194, 5, 'lastname', 'ISAAAAAAA'),
(195, 5, 'firstname', 'Hamza'),
(196, 5, 'middlename', 'Muhammed'),
(197, 5, 'suffix', 'MR'),
(198, 5, 'dob', '2025-02-07'),
(199, 5, 'gender', 'Male'),
(200, 5, 'civil_status', 'Single'),
(201, 5, 'contact', '0908766656'),
(202, 5, 'nationality', 'NIGERIA'),
(203, 5, 'address', 'LOKUWA WARD'),
(204, 5, 'diagnostic', 'NEWWW'),
(205, 5, 'remarks', 'No any remarks'),
(206, 5, 'doctor_fullname', 'AUWAL'),
(207, 5, 'doctor_suffix', 'DR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `med_cert_info`
--
ALTER TABLE `med_cert_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `med_cert_info_meta`
--
ALTER TABLE `med_cert_info_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_med_cert_info_id_fk` (`med_cert_info_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `med_cert_info`
--
ALTER TABLE `med_cert_info`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `med_cert_info_meta`
--
ALTER TABLE `med_cert_info_meta`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `med_cert_info_meta`
--
ALTER TABLE `med_cert_info_meta`
  ADD CONSTRAINT `meta_med_cert_info_id_fk` FOREIGN KEY (`med_cert_info_id`) REFERENCES `med_cert_info` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
