-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 11:04 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualanmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `no_faktur` int(10) NOT NULL,
  `kode_pembeli` int(10) NOT NULL,
  `kode_mobil` int(10) NOT NULL,
  `tgl_fktur` varchar(10) NOT NULL,
  `jam_fktur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faktur`
--

INSERT INTO `faktur` (`no_faktur`, `kode_pembeli`, `kode_mobil`, `tgl_fktur`, `jam_fktur`) VALUES
(101, 1001, 2, '15/11/2016', '10:20:21'),
(102, 1002, 5, '15/06/2021', '15:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `kode_mobil` int(10) NOT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`kode_mobil`, `nama_mobil`, `merk`, `warna`, `tahun`, `harga`) VALUES
(1, 'Avanza', 'Toyota', 'Biru', 2018, 200000000),
(2, 'C-HR', 'Toyota', 'Putih', 2020, 500000000),
(3, 'Calya', 'Toyota', 'Coklat', 2020, 167000000),
(4, 'Brio', 'Honda', 'Hitam', 2020, 210000000),
(5, 'Civic', 'Honda', 'Silver', 2021, 350000000);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `kode_pembeli` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`kode_pembeli`, `nama`, `pekerjaan`, `alamat`, `no_telp`) VALUES
(1001, 'Ryan', 'Guru', 'Jl Cilamaya', 85691239),
(1002, 'Ririn', 'pengusaha', 'Jl Rawet', 85123488),
(1003, 'Syafrida', 'dokter', 'Jl Cikampek', 85123451),
(1004, 'Nanda', 'Atlet', 'Jl Melati', 98763455);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(10) NOT NULL,
  `no_faktur` int(10) NOT NULL,
  `tgl_fktur` varchar(10) NOT NULL,
  `jam_fktur` varchar(10) NOT NULL,
  `kode_pembeli` int(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kode_mobil` int(10) NOT NULL,
  `nama_mobil` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `no_faktur`, `tgl_fktur`, `jam_fktur`, `kode_pembeli`, `nama`, `kode_mobil`, `nama_mobil`, `merk`, `warna`, `tahun`, `harga`) VALUES
(1, 101, '15/11/2016', '10:20:21', 1001, 'Ryan ', 2, 'C-HR', 'Toyota', 'Putih', 2020, 500000000),
(2, 102, '15/11/2016', '10:20:21', 1002, 'Ririn', 5, 'Civic', 'Honda', 'Silver', 2021, 350000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faktur`
--
ALTER TABLE `faktur`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kode_mobil`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`kode_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
