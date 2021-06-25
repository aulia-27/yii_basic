-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2021 at 04:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stok`) VALUES
(2, '1002', 'Minyak Goreng', 'Pieces', 1, 110, 50000, 400),
(3, '1003', 'Pencetak Kue', 'Unit', 3, 102, 1500000, 100),
(4, '1004', 'Gula', 'Kg', 1, 104, 200000, 400),
(5, '1005', 'Roti', 'Pieces', 2, 105, 100000, 500),
(6, '1006', 'Tepung Roti', 'Kg', 3, 103, 300000, 300),
(9, '1008', 'Bubuk Vanila', 'Kg', 3, 105, 50000, 250),
(10, '1009', 'Creamer', 'Pieces', 2, 102, 10000, 150),
(11, '1010', 'Coca-cola', 'Pieces', 8, 104, 800000, 400);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama_fakultas`) VALUES
(1, 'Fakultas Teknologi Informasi'),
(2, 'Fakultas Tenik '),
(3, 'Fakultas Kedokteran'),
(4, 'Fakultas Ilmu Komunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Barang Jadi', 'Barang Sudah Jadi'),
(2, 'Barang Konsumsi', 'Barang Siap Dipakai'),
(3, 'Barang Produksi', 'Barang Penghasil'),
(6, 'Barang Mentah', 'Barang Yang Belum di Olah'),
(8, 'Minuman', 'Barang-Barang Dalam Bentuk Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` char(1) NOT NULL DEFAULT 'L',
  `id_fakultas` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `tgl_lahir`, `jekel`, `id_fakultas`, `id_prodi`, `email`, `alamat`) VALUES
(1, '190001', 'Budi G', '2001-07-10', 'L', 1, 1, 'budiG@gmail.com', 'Bukittinggi'),
(2, '190002', 'Anton', '2002-06-12', 'L', 3, 3, 'Anton@gmail.com', 'Pauh, Padang');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `id` int(11) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id`, `nim`, `nama`, `tgl_lahir`, `jekel`, `alamat`, `id_fakultas`) VALUES
(1, '110001', 'Budi', '2001-06-13', 'Laki-Laki', 'Bukittinggi', 2),
(8, '110010', 'Andi', '2001-01-10', 'Laki-Laki', 'Lasi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `id_fakultas`, `prodi`, `keterangan`) VALUES
(1, 1, 'TRPL', 'Teknologi Rekayasa Perangkat Lunak'),
(2, 2, 'TM', 'Teknik Mesin '),
(3, 3, 'PenDok', 'Pendidikan Kedokteran'),
(4, 4, 'HI', 'Hubungan Internasional');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(101, 'Nul Hakim', '08000888880', 'Nul_Hakim@gmail.com', 'Jl. Prof. Hamka No.-99, Pakan Kurai, Kec. Guguk Panjang, Kota Bukittinggi, Sumatera Barat'),
(102, 'Rahman', '0809988888', 'Rahman@gmail.com', 'Jl. Prof. Hamka No.-999, Pakan Kurai, Kec. Guguk Panjang, Kota Bukittinggi, Sumatera Barat'),
(103, 'Aulia', '08000000088', 'aulia@gmail.com', 'Jl. Surau Batu, Ladang Cakiah, Kec. Aur Birugo Tigo Baleh, Kota Bukittinggi, Sumatera Barat '),
(104, 'Budi Tifani', '08992233222', 'budi@gmail.com', 'Jl. Prof. Hamka -101, Pakan Kurai, Kec. Guguk Panjang, Kota Bukittinggi, Sumatera Barat'),
(105, 'Andi', '089999900', 'andi@gmail.com', 'Jl. Raya Padang Panjang - Bukittinggi -00, Belakang Balok, Kec. Aur Birugo Tigo Baleh, Bukittiniggi'),
(110, 'Nona', '0888888888', 'nona@gmail.com', 'Lasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_jenis` (`id_jenis`),
  ADD KEY `barang_supplier` (`id_supplier`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_jenis` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `barang_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id`);

--
-- Constraints for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD CONSTRAINT `pelajar_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id`);

--
-- Constraints for table `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
