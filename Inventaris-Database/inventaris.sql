-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 11:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idbarang` int(11) NOT NULL,
  `merek_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama_barang` varchar(128) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idbarang`, `merek_id`, `kategori_id`, `nama_barang`, `keterangan`, `stok`) VALUES
(5, 1, 4, 'Epson L23 Series', '2 Unit', 0),
(6, 11, 5, 'Tenda FN3', '3', 3),
(7, 11, 7, 'Tenda F3', 'ADA  : 1. DI RUANG LAB 1 UNIT\r\n            2. DI RUANG GURU 1 UNIT\r\n            3. DI RUANG KELAS 2 UNIT\r\n\r\n', 4),
(9, 11, 7, 'TP-Link', 'ADA 1 UNIT DI RUANG PERPUSTAKAAN', 1),
(13, 15, 11, 'Monitor', '1 Normal', 1),
(15, 31, 12, 'PersonalComputer', '1 Normal', 1),
(16, 31, 12, 'Mouse', '1 Normal', 1),
(22, 31, 12, 'Keyboard', '1 Normal', 1),
(23, 31, 15, 'PersonalComputer', '1 Normal', 1),
(25, 31, 15, 'Mouse', '1 Normal', 1),
(26, 31, 15, 'Keyboard', '1 Normal', 1),
(27, 31, 14, 'PersonalComputer', '1 Normal', 1),
(28, 16, 14, 'Mouse', '1 Normal', 1),
(29, 31, 14, 'Keyboard', '1 Normal\r\n', 1),
(30, 13, 14, 'Printer', '1 Normal', 1),
(31, 34, 14, 'Tv', '1 Normal', 1),
(32, 31, 14, 'Mouse', '1 Normal', 1),
(33, 13, 13, 'Printer', '3 Normal', 3),
(34, 38, 13, 'Monitor', '1 Normal', 1),
(35, 39, 13, 'CPU', '1 Normal', 1),
(36, 31, 13, 'PersonalComputer', '4 Normal', 4),
(37, 31, 13, 'Keyboard', '4 Normal', 4),
(38, 34, 13, 'Tv', '1 Normal', 1),
(39, 30, 13, 'Keyboard', '1 Normal', 1),
(40, 24, 13, 'Mikrotik', '1 Normal', 1),
(41, 25, 13, 'Switch', '1 Normal', 1),
(42, 26, 13, 'Switch', '1 Normal', 1),
(43, 21, 11, 'OHP-Proyektor', '1 Normal', 1),
(44, 34, 11, 'AC', '1 Normal', 1),
(45, 19, 11, 'AC', '1 Normal', 1),
(46, 26, 11, 'Switch-Hub', '2 Normal', 2),
(47, 22, 11, 'Router', '4 Normal', 4),
(48, 23, 11, 'Router', '1 Normal', 1),
(49, 14, 11, 'Monitor', '18 Normal', 18),
(50, 37, 11, 'Monitor', '1 Normal', 1),
(51, 31, 11, 'PersonalComputer', '13 Normal', 13),
(52, 16, 11, 'CPU', '15 Normal', 15),
(53, 17, 11, 'CPU', '1 Normal', 1),
(54, 18, 11, 'CPU', '2 Normal', 2),
(55, 14, 11, 'Monitor', '1 Rusak', 1),
(56, 27, 11, 'Monitor', '1 Rusak', 1),
(57, 28, 11, 'Monitor', '1 Rusak', 1),
(58, 16, 11, 'CPU', '4 Rusak', 4),
(59, 18, 11, 'CPU', '2 Rusak', 2),
(60, 29, 11, 'CPU', '1 Rusak', 1),
(61, 13, 11, 'Printer', '1 Normal', 1),
(62, 16, 11, 'Mouse', '18 Normal', 18),
(63, 30, 11, 'Mouse', '4 Normal', 4),
(64, 31, 11, 'Mouse', '13 Normal', 13),
(65, 33, 11, 'Mouse', '1 Normal', 1),
(66, 31, 11, 'Keyboard', '13 Normal', 13),
(67, 30, 11, 'Keyboard', '7 Normal', 7),
(68, 16, 11, 'Keyboard', '7 Normal', 7),
(69, 29, 11, 'Keyboard', '3 Normal', 3),
(70, 32, 11, 'Keyboard', '2 Normal', 2),
(71, 33, 11, 'Keyboard', '1 Normal', 1),
(72, 19, 11, 'Monitor-Server ', '2 Normal', 2),
(73, 16, 11, 'CPU-Server', '2 Normal', 2),
(74, 36, 11, 'Headset', '19 Normal', 19),
(75, 35, 11, 'Headset/Biru', '10 Normal', 10),
(76, 35, 11, 'Headset/Merah', '4 Normal', 4),
(77, 35, 11, 'Headset/Merah', '1 Rusak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `idbarang_keluar` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`idbarang_keluar`, `barang_id`, `jumlah`, `keterangan`, `tanggal`) VALUES
(1, 1, 1, 'Rusak', '2020-11-26');

--
-- Triggers `barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `kurang_stok` AFTER INSERT ON `barang_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok - new.jumlah WHERE idbarang = new.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `idbarang_masuk` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`idbarang_masuk`, `barang_id`, `jumlah`, `keterangan`, `tanggal`) VALUES
(1, 4, 10, 'Beli Baru', '2020-11-24'),
(2, 1, 3, 'Beli baru', '2020-11-23'),
(3, 3, 2, 'Beli baru', '2020-11-24'),
(4, 6, 3, 'aa', '2022-01-19'),
(5, 7, 4, 'Semua Baru', '2022-01-20'),
(6, 8, 1, 'BARANG BARU\r\n', '2022-01-21'),
(7, 9, 1, 'Semua Baru', '2022-01-21'),
(8, 11, 18, '18 Normal 1 Rusak', '2022-02-15'),
(9, 12, 19, '18 Normal 1 Rusak', '2022-02-15'),
(10, 13, 1, '1 Normal', '2022-02-15'),
(11, 14, 1, '1 Normal', '2022-02-15'),
(12, 17, 1, '1 Normal', '2022-02-15'),
(13, 15, 1, '1 Normal', '2022-02-15'),
(14, 17, 1, '1 Normal', '2022-02-15'),
(15, 16, 1, '1 Normal', '2022-02-15'),
(16, 18, 1, '1 Normal', '2022-02-15'),
(17, 18, 1, '1 Normal', '2022-02-15'),
(18, 20, 1, '1 Normal', '2022-02-15'),
(19, 22, 1, '1 Normal', '2022-02-15'),
(20, 23, 1, '1 Normal', '2022-02-15'),
(21, 24, 1, '1 Normal', '2022-02-15'),
(22, 24, 1, '1 Normal', '2022-02-18'),
(23, 25, 1, '1 Normal', '2022-02-18'),
(24, 26, 1, '1 Normal', '2022-02-18'),
(25, 28, 1, '1 Normal', '2022-02-19'),
(26, 29, 1, '1 Normal', '2022-02-19'),
(27, 27, 1, '1 Normal', '2022-02-19'),
(28, 30, 1, '1 Normal', '2022-02-19'),
(29, 31, 1, '1 Normal', '2022-02-19'),
(30, 32, 1, '1 Normal', '2022-02-19'),
(31, 34, 1, '1 Normal', '2022-02-19'),
(32, 33, 3, '3 Normal', '2022-02-19'),
(33, 35, 1, '1 Normal', '2022-02-19'),
(34, 36, 4, '4 Normal', '2022-02-19'),
(35, 37, 4, '4 Normal', '2022-02-19'),
(36, 38, 1, '1 Normal', '2022-02-19'),
(37, 39, 1, '1 Normal', '2022-02-19'),
(38, 40, 1, '1 Normal', '2022-02-19'),
(39, 41, 1, '1 Normal', '2022-02-19'),
(40, 42, 1, '1 Normal', '2022-02-19'),
(41, 43, 1, '1 Normal', '2022-02-19'),
(42, 44, 1, '1 Normal', '2022-02-19'),
(43, 45, 1, '1 Normal', '2022-02-19'),
(44, 46, 2, '2 Normal', '2022-02-19'),
(45, 47, 4, '4 Normal', '2022-02-19'),
(46, 48, 1, '1 Normal', '2022-02-19'),
(47, 49, 18, '18 Normal', '2022-02-19'),
(48, 50, 1, '1 Normal', '2022-02-19'),
(49, 51, 13, '13 Normal', '2022-02-19'),
(50, 53, 1, '1 Normal', '2022-02-19'),
(51, 54, 2, '2 Normal', '2022-02-19'),
(52, 52, 15, '15 Normal', '2022-02-19'),
(53, 55, 1, '1 Rusak', '2022-02-19'),
(54, 57, 1, '1 Rusak', '2022-02-19'),
(55, 56, 1, '1 Rusak', '2022-02-19'),
(56, 60, 1, '1 Rusak', '2022-02-19'),
(57, 59, 2, '2 Rusak', '2022-02-19'),
(58, 58, 4, '4 Rusak', '2022-02-19'),
(59, 61, 1, '1 Normal', '2022-02-19'),
(60, 65, 1, '1 Normal', '2022-02-19'),
(61, 64, 13, '13 Normal', '2022-02-19'),
(62, 63, 4, '4 Normal', '2022-02-19'),
(63, 62, 18, '18 Normal', '2022-02-19'),
(64, 71, 1, '1 Normal', '2022-02-19'),
(65, 70, 2, '2 Normal', '2022-02-19'),
(66, 68, 7, '7 Normal', '2022-02-19'),
(67, 67, 7, '7 Normal', '2022-02-19'),
(68, 66, 13, '13 Normal', '2022-02-19'),
(69, 69, 3, '3 Normal', '2022-02-19'),
(70, 73, 2, '2 Normal', '2022-02-19'),
(71, 72, 2, '2 Normal', '2022-02-19'),
(72, 74, 19, '19 Normal', '2022-02-19'),
(73, 75, 10, '10 Normal', '2022-02-19'),
(74, 76, 4, '4 Normal', '2022-02-19'),
(75, 77, 1, '1 Rusak', '2022-02-19');

--
-- Triggers `barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `tambah_stok` AFTER INSERT ON `barang_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET stok = stok + new.jumlah WHERE idbarang = new.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL,
  `keterangan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `nama_kategori`, `keterangan`) VALUES
(11, 'Elektronik/Lab', ' 1. PC \r\n2. Monitor \r\n3. CPU \r\n4. Keyboard \r\n5. Mouse \r\n6. AC \r\n7. OHP \r\n8. Router\r\n9. Headset \r\n10. Switch Hub\r\n11. Printer'),
(12, 'Elektronik/Kantor-Kepsek', '1. PC 2. Monitor 3. CPU 4. Keyboard 5. Mouse 6. AC 7. OHP 8. Router 9. Headset 10. Switch Hub 11. Printer'),
(13, 'Elektronik/Kantor-TU', '1. PC 2. Monitor 3. CPU 4. Keyboard 5. Mouse 6. AC 7. OHP 8. Router 9. Headset 10. Switch Hub 11. Printer'),
(14, 'Elektronik/Kantor-RuangGuru', '1. PC 2. Monitor 3. CPU 4. Keyboard 5. Mouse 6. AC 7. OHP 8. Router 9. Headset 10. Switch Hub 11. Printer'),
(15, 'Elektronik/Kantor-Waka', '1. PC 2. Monitor 3. CPU 4. Keyboard 5. Mouse 6. AC 7. OHP 8. Router 9. Headset 10. Switch Hub 11. Printer');

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `idmerek` int(11) NOT NULL,
  `nama_merek` varchar(128) NOT NULL,
  `keterangan` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`idmerek`, `nama_merek`, `keterangan`) VALUES
(12, 'Epson', 'Semua Seri'),
(13, 'Canon', 'Semua Seri'),
(14, 'Forsa', 'Semua Seri'),
(16, 'Alcatroz', 'Semua Seri'),
(17, 'Votre', 'Semua Seri'),
(18, 'Power Up', 'Semua Seri'),
(19, 'LG', 'Semua Seri\r\n'),
(20, 'Futura', 'Semua Seri'),
(21, 'Nec', 'Semua Seri'),
(22, 'Tenda', 'Semua Seri'),
(23, 'Tp-Link', 'Semua Seri'),
(24, 'HapLite', 'Semua Seri'),
(25, 'TotoLink', 'Semua Seri'),
(26, 'D-Link', 'Semua Seri'),
(27, 'Cougar', 'Semua Seri'),
(28, 'Dell', 'Semua Seri'),
(29, 'SPC', 'Semua Seri'),
(30, 'Logitech', 'Semua Seri'),
(31, 'HP', 'Semua Seri\r\n'),
(32, 'Komic', 'Semua Seri'),
(33, 'Micropeck', 'Semua Seri'),
(34, 'Polytron', 'Semua Seri'),
(35, 'Blitz', 'Semua Seri'),
(36, 'Digital', 'Semua Seri'),
(37, 'Rolien', 'Semua Seri'),
(38, 'Ikedo', 'Semua Seri'),
(39, 'Castello', 'Semua Seri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `nama`, `no_hp`, `username`, `password`, `level`) VALUES
(3, 'Fadhil Akbar', '081227056819', 'admin', '$2y$10$.oKMR84qiU2L1IMm0Alhqu0MRCn2aHoJNYVtH6txL4ZglknuMVyTO', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`idbarang_keluar`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`idbarang_masuk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`idmerek`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `idbarang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `idbarang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `idmerek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
