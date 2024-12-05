-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2024 at 12:01 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pebol`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftarpesanan`
--

CREATE TABLE `daftarpesanan` (
  `id` int NOT NULL,
  `menu` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `kategory` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `total` int NOT NULL,
  `meja` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `total_harga` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `id_menu` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int NOT NULL,
  `namaMenu` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `kategory` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `harga` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('tersedia','habis','','') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `namaMenu`, `kategory`, `harga`, `status`) VALUES
(1, 'Espresso Maximal', 'Espresso Based', '19000', 'habis'),
(2, 'French Press Coffee', 'Brewed Coffee', '15000', 'habis'),
(3, 'Cold Brew Coffee', 'Cold Drinks', '16000', 'habis'),
(4, 'Cold Brew Coffee', 'Cold Drinks', '16000', 'habis'),
(5, 'Mocha', 'Specialty Drinks', '12000', 'habis'),
(6, 'Mocha', 'Specialty Drinks', '12000', 'habis'),
(7, 'French Press Coffee', 'Brewed Coffee', '15000', 'habis'),
(8, 'Iced Latte', 'Cold Brew Coffee', '13000', 'habis'),
(9, 'Blueberry Muffins', 'Pastries', '19000', 'habis'),
(10, 'Vanilla Latte', 'Specialty Drinks', '17000', 'habis'),
(14, 'Teh tarik', 'Tea', '15000', 'tersedia'),
(15, 'Kopsudi', 'Brewed Coffee', '20000', 'tersedia'),
(16, 'Earl Grey', 'Tea', '27000', 'tersedia'),
(17, 'Milk Pie', 'Pastries', '25000', 'tersedia'),
(19, 'Teh melati', 'Cold Drinks', '15000', 'tersedia'),
(20, 'Cappucino', 'Brewed Coffee', '27000', 'tersedia'),
(21, 'Frappucino', 'Esspresso Based', '30000', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `id_menu` int DEFAULT NULL,
  `namaMenu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `jumlah` int DEFAULT NULL,
  `meja` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `waktu` datetime DEFAULT CURRENT_TIMESTAMP,
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `id_menu`, `namaMenu`, `jumlah`, `meja`, `total_harga`, `waktu`, `tanggal`) VALUES
(1, 10, 'Vanilla Latte', 14, '7', NULL, '2000-11-00 00:00:00', '2024-11-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int NOT NULL,
  `id_menu` int DEFAULT NULL,
  `meja` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_menu` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jumlah` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_menu`, `meja`, `nama_menu`, `kategori`, `jumlah`, `total_harga`) VALUES
(1, 4, '10', 'Croissants', 'Pastries', '1', '11000.00'),
(2, 7, 'Bungkus', 'French Press Coffee', 'Brewed Coffee', '10', '150000.00'),
(3, 17, '7', 'Milk Pie', 'Pastries', '2', '50000.00'),
(4, 15, '7', 'Kopsudi', 'Brewed Coffee', '2', '40000.00'),
(5, 10, '7', 'Vanilla Latte', 'Specialty Drinks', '4', '68000.00'),
(6, 16, 'Bungkus', 'Earl Grey', 'Pastries', '2', '36000.00'),
(7, 20, '1', 'Cappucino', 'Brewed Coffee', '2', '54000.00'),
(8, 16, '7', 'Earl Grey', 'Tea', '3', '54000.00'),
(9, 20, '1', 'Cappucino', 'Brewed Coffee', '3', '81000.00'),
(10, 20, '1', 'Cappucino', 'Brewed Coffee', '3', '81000.00'),
(11, 21, '5', 'Frappucino', 'Espresso Based', '2', '70000.00'),
(12, 20, '6', 'Cappucino', 'Brewed Coffee', '2', '54000.00'),
(13, 20, '1', 'Cappucino', 'Brewed Coffee', '2', '54000.00'),
(14, 19, '9', 'Teh melati', 'Cold Drinks', '2', '30000.00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `nama` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('0','1') COLLATE utf8mb4_general_ci NOT NULL COMMENT '0 = user, 1 = admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `alamat`, `role`) VALUES
(1, 'Jonathan', 'jonathan1@gmail.com', '12345', 'Jl. Veteran', '1'),
(2, 'Crosby', 'crosby1@gmail.com', '123', 'Jl. Pembangunan', '0'),
(3, 'Victor', 'victor1@gmail.com', 'test', 'Jl susuk 2', '0'),
(26, 'Aku', 'test1@gmail.co.id', '1111', 'Jalan Jamin ginting', '0'),
(27, 'Jeremia', 'jeremia1@gmail.com', '12345', 'Jl.Veteran2', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftarpesanan`
--
ALTER TABLE `daftarpesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_daftarpesanan_menu` (`id_menu`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftarpesanan`
--
ALTER TABLE `daftarpesanan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftarpesanan`
--
ALTER TABLE `daftarpesanan`
  ADD CONSTRAINT `fk_daftarpesanan_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
