-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2017 at 06:21 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbabsensipegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblabsen`
--

CREATE TABLE `tblabsen` (
  `no` int(5) NOT NULL,
  `idpegawai` varchar(30) NOT NULL,
  `izin` varchar(4) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblabsen`
--

INSERT INTO `tblabsen` (`no`, `idpegawai`, `izin`, `tanggal`, `keterangan`) VALUES
(18, 'J3D112062', 'Izin', '2017-11-20', 'Acara keluarga'),
(19, 'J3D112062', 'Izin', '2017-11-19', 'Acara keluarga'),
(21, 'J3D112026', 'Izin', '2017-11-17', 'sakit'),
(22, 'J3D112026', 'Izin', '2017-11-08', 'sakit'),
(23, 'J3D112026', 'Izin', '2017-11-02', 'gabisa'),
(24, 'J3D112026', 'Cuti', '2017-11-21', 'Liburan'),
(25, 'J3D11222', 'Cuti', '2017-11-21', 'Liburan');

-- --------------------------------------------------------

--
-- Table structure for table `tbljabatan`
--

CREATE TABLE `tbljabatan` (
  `idJabatan` varchar(3) NOT NULL,
  `namajabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljabatan`
--

INSERT INTO `tbljabatan` (`idJabatan`, `namajabatan`) VALUES
('B01', 'Manajer Pemasaran'),
('B02', 'Manajer IT'),
('B03', 'Manajer Keuangan'),
('B04', 'Manajer HRD'),
('B05', 'Manajer Produksi'),
('C01', 'Staff IT'),
('C02', 'Staff Keuangan'),
('C03', 'Staff Pemasaran'),
('C04', 'Staff HRD'),
('C05', 'Staff Produksi'),
('D01', 'Office Boy'),
('D02', 'Office Girl');

-- --------------------------------------------------------

--
-- Table structure for table `tbljam`
--

CREATE TABLE `tbljam` (
  `id_jam` varchar(3) NOT NULL,
  `jam_masuk_mulai` time NOT NULL,
  `jam_kerja_mulai` time NOT NULL,
  `jam_kerja_selesai` time NOT NULL,
  `jam_keluar_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljam`
--

INSERT INTO `tbljam` (`id_jam`, `jam_masuk_mulai`, `jam_kerja_mulai`, `jam_kerja_selesai`, `jam_keluar_selesai`) VALUES
('1', '07:30:00', '08:00:00', '15:30:00', '15:59:59'),
('2', '15:30:00', '16:00:00', '23:30:00', '23:59:59'),
('3', '23:30:00', '00:00:00', '07:30:00', '07:59:59'),
('D', '07:00:00', '08:00:00', '17:00:00', '17:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblkehadiran`
--

CREATE TABLE `tblkehadiran` (
  `no_rec` mediumint(10) NOT NULL,
  `idpegawai` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jmasuk` time DEFAULT NULL,
  `jkeluar` time DEFAULT NULL,
  `id_jam` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkehadiran`
--

INSERT INTO `tblkehadiran` (`no_rec`, `idpegawai`, `tanggal`, `jmasuk`, `jkeluar`, `id_jam`) VALUES
(51, 'J3D112093', '2017-11-22', '07:30:49', '17:41:59', 'D'),
(52, 'J3D112026', '2017-11-21', '07:31:24', '17:38:59', 'D'),
(53, 'J3D112066', '2017-11-20', '07:32:30', '17:49:59', 'D'),
(54, 'J3D112081', '2017-11-20', '07:33:08', '15:49:59', '1'),
(55, 'J3D112093', '2017-11-20', '07:35:35', '17:43:59', 'D'),
(56, 'J3D112029', '2017-11-20', '07:35:57', '17:44:59', 'D'),
(57, 'J3D112032', '2017-11-20', '07:37:57', '17:29:59', 'D'),
(58, 'J3D212123', '2014-01-11', '07:39:00', '15:59:59', '1'),
(59, 'J3D112062', '2017-11-21', '07:36:24', '17:39:59', 'D'),
(60, 'J3D112093', '2017-11-21', '07:36:47', '17:53:59', 'D'),
(61, 'J3D112029', '2017-11-21', '07:38:18', '17:55:59', 'D'),
(62, 'J3D112026', '2017-11-22', '07:38:22', '17:45:59', 'D'),
(63, 'J3D112002', '2017-11-20', '15:40:51', '23:18:59', '2'),
(64, 'J3D112101', '2017-11-20', '15:30:29', '23:31:07', '2'),
(65, 'J3D112062', '2017-11-20', '07:25:01', '17:49:59', 'D'),
(66, 'J3D112026', '2017-11-20', '07:25:16', '17:29:31', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `tblpegawai`
--

CREATE TABLE `tblpegawai` (
  `idpegawai` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jabatan` varchar(3) NOT NULL,
  `foto` varchar(20) NOT NULL,
  `id_jam` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpegawai`
--

INSERT INTO `tblpegawai` (`idpegawai`, `nama`, `jabatan`, `foto`, `id_jam`) VALUES
('1', '1', 'B01', '1', '1'),
('J3D112001', 'Andynata', 'C03', 'avatar_09.jpg', '1'),
('J3D112002', 'Ahmad Fauzi', 'D01', 'avatar_09.jpg', '2'),
('J3D112003', 'Riema', 'B03', 'avatar_03.jpg', '1'),
('J3D112004', 'Grace Tika', 'B02', 'avatar_10.jpg', 'D'),
('J3D112005', 'Dhika', 'B01', 'avatar_02.jpg', 'D'),
('J3D112026', 'Arimbi Rachmi F', 'B03', 'avatar_03.jpg', 'D'),
('J3D112029', 'Muhammad Irsyad', 'C02', 'avatar_10.jpg', 'D'),
('J3D112032', 'Dewi Oktarina', 'D02', 'avatar_11.jpg', 'D'),
('J3D112042', 'Aldi Akbar', 'B01', 'avatar_02.jpg', 'D'),
('J3D112062', 'Triwandha Febian R R', 'C03', 'avatar_07.jpg', 'D'),
('J3D112066', 'Aditia Anugrah P', 'B04', 'avatar_04.jpg', 'D'),
('J3D112081', 'Ivan Kardianta', 'C05', 'ivan.jpg', '1'),
('J3D112092', 'Amin Shaum S', 'B05', 'avatar_06.jpg', 'D'),
('J3D112093', 'Dendi Abdul Rohim', 'B02', 'avatar_01.jpg', 'D'),
('J3D112101', 'Milla Nurfitriyani P', 'C05', 'mila.jpg', '2'),
('J3D112105', 'Akbar Siddieq', 'C04', 'avatar_08.jpg', '2'),
('J3D112114', 'M. Arifin', 'C05', 'avatar_05.jpg', '3'),
('J3D11222', 'Andy', 'C03', 'Andy.jpg', '1'),
('J3D212123', 'M. Ramdhan Firdaus', 'C01', 'avatar_12.jpg', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tblabsen`
--
ALTER TABLE `tblabsen`
  ADD PRIMARY KEY (`no`),
  ADD KEY `idpegawai` (`idpegawai`);

--
-- Indexes for table `tbljabatan`
--
ALTER TABLE `tbljabatan`
  ADD PRIMARY KEY (`idJabatan`);

--
-- Indexes for table `tbljam`
--
ALTER TABLE `tbljam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indexes for table `tblkehadiran`
--
ALTER TABLE `tblkehadiran`
  ADD PRIMARY KEY (`no_rec`),
  ADD KEY `id pegawai di tbl kehadiran` (`idpegawai`),
  ADD KEY `id_jam` (`id_jam`);

--
-- Indexes for table `tblpegawai`
--
ALTER TABLE `tblpegawai`
  ADD PRIMARY KEY (`idpegawai`),
  ADD KEY `jabatan` (`jabatan`),
  ADD KEY `id_jam` (`id_jam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblabsen`
--
ALTER TABLE `tblabsen`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblkehadiran`
--
ALTER TABLE `tblkehadiran`
  MODIFY `no_rec` mediumint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblabsen`
--
ALTER TABLE `tblabsen`
  ADD CONSTRAINT `idpegawai di absen` FOREIGN KEY (`idpegawai`) REFERENCES `tblpegawai` (`idpegawai`);

--
-- Constraints for table `tblkehadiran`
--
ALTER TABLE `tblkehadiran`
  ADD CONSTRAINT `id pegawai di tbl kehadiran` FOREIGN KEY (`idpegawai`) REFERENCES `tblpegawai` (`idpegawai`),
  ADD CONSTRAINT `jam di kehadiran` FOREIGN KEY (`id_jam`) REFERENCES `tbljam` (`id_jam`);

--
-- Constraints for table `tblpegawai`
--
ALTER TABLE `tblpegawai`
  ADD CONSTRAINT `tblpegawai_ibfk_1` FOREIGN KEY (`id_jam`) REFERENCES `tbljam` (`id_jam`),
  ADD CONSTRAINT `tblpegawai_ibfk_2` FOREIGN KEY (`jabatan`) REFERENCES `tbljabatan` (`idJabatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
