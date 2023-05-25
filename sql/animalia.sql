-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 25, 2023 at 11:02 AM
-- Server version: 10.11.3-MariaDB-1:10.11.3+maria~ubu2204
-- PHP Version: 8.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animalia`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_organization`
--

CREATE TABLE `mst_organization` (
  `id` int(3) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_organization`
--

INSERT INTO `mst_organization` (`id`, `code`, `name`) VALUES
(1, 'inv', 'Invertebrata'),
(2, 'ver', 'Vertebrata');

-- --------------------------------------------------------

--
-- Table structure for table `mst_phylum`
--

CREATE TABLE `mst_phylum` (
  `id` int(3) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `organization_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mst_phylum`
--

INSERT INTO `mst_phylum` (`id`, `code`, `name`, `organization_id`) VALUES
(1, 'pori', 'Porifera', 1),
(2, 'coel', 'Coelenterata', 1),
(3, 'platy', 'Platyhelminthes', 1),
(4, 'nema', 'Nemathelminthes', 1),
(5, 'anne', 'Annelida', 1),
(6, 'mollu', 'Mollusca', 1),
(7, 'art', 'Arthropoda', 1),
(8, 'ech', 'Echinodermata', 1),
(9, 'pis', 'Pisces', 2),
(10, 'amf', 'Amfibi', 2),
(11, 'mam', 'Mamalia', 2),
(12, 'aves', 'Aves', 2),
(13, 'rep', 'Reptil', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_organization`
--
ALTER TABLE `mst_organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_phylum`
--
ALTER TABLE `mst_phylum`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_organization`
--
ALTER TABLE `mst_organization`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_phylum`
--
ALTER TABLE `mst_phylum`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
