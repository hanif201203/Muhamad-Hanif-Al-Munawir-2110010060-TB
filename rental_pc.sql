-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 04:53 AM
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
-- Database: `rental_pc`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `nama_lengkap` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `kata_sandi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`pengguna_id`, `nama_lengkap`, `username`, `kata_sandi`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'Budi', 'Budi', 'Budi'),
(3, 'Luffy', 'Luffy', 'Luffy'),
(4, 'Agus Salim', 'Agus', 'Agus'),
(5, 'Samsudin Udin', 'Sudin', 'Sudin'),
(6, 'Muhamad', 'Hanif', 'Hanif'),
(7, 'Putri', 'Putri', 'Putri');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `nama_pc` varchar(15) NOT NULL,
  `durasi_pinjam` varchar(30) NOT NULL,
  `total_biaya` decimal(10,2) DEFAULT NULL,
  `metode_pembayaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `nama_peminjam`, `alamat`, `no_telp`, `nama_pc`, `durasi_pinjam`, `total_biaya`, `metode_pembayaran`) VALUES
(1, 'Budii', 'Banjarmasin', 8153313, 'Entery Level', '1 Hari', 100000.00, 'COD'),
(2, 'Andi', 'Banjarbaru', 824112, 'Mid-Range', '4 Hari', 500000.00, 'OVO'),
(3, 'Luffy', 'Martapura', 814341432, 'High-End', '2 Hari', 400000.00, 'Transfer Bank'),
(4, 'Agus', 'Banjarmasin', 8912442, 'High-End', '3 Hari', 500000.00, 'Go Pay'),
(5, 'Udin', 'Banjaarmasin Barat', 8124124, 'Entery Level', '7 Hari', 700000.00, 'Transfer Bank'),
(6, 'Bagus', 'Bandung', 812424, 'Entery Level', '2 Hari', 200000.00, 'COD'),
(7, 'Saiful', 'BJB', 8665453, 'Entery Level', '1 Hari', 100000.00, 'COD'),
(10, 'Samsudin', 'Banjarmasin', 8235233, 'Entery Level', '3 Hari', 300000.00, 'COD'),
(12, 'Putri', 'Banjarmasin', 813434, 'High-End', '7 Hari', 900000.00, 'COD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
