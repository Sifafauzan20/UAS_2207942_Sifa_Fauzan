-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 11:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_2207942_sifafauzan_uas_pilkomb`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_keuangan_sifafauzan`
--

CREATE TABLE `transaksi_keuangan_sifafauzan` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` enum('debit','kredit') NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_keuangan_sifafauzan`
--

INSERT INTO `transaksi_keuangan_sifafauzan` (`id`, `date`, `description`, `amount`, `status`, `receiver`, `jk`, `no_telp`, `address`) VALUES
(59, '2024-01-07', 'Dp penyewaan tempat', 350000, 'debit', 'Sifa fauzan', 'L', '0829238421', 'Tasikmalaya'),
(60, '2024-01-03', 'Konsumsi', 300000, 'kredit', 'Risna Nurfauzi', 'L', '085155306013', 'subang'),
(61, '2024-01-13', 'Penyewaan sound', 1500000, 'debit', 'Alissa isni', 'P', '082897645327', 'sumedang'),
(62, '2024-01-07', 'guest star', 3000000, 'kredit', 'Elsha rahma', 'P', '082923842112', 'Bandung'),
(63, '2024-01-07', 'Pembelian peralatan', 500000, 'kredit', 'Aldi Prasetyo', 'L', '086252561542', 'Cimahi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksi_keuangan_sifafauzan`
--
ALTER TABLE `transaksi_keuangan_sifafauzan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi_keuangan_sifafauzan`
--
ALTER TABLE `transaksi_keuangan_sifafauzan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
