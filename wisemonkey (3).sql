-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2018 at 01:50 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisemonkey`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `created`) VALUES
(1, 'SUV', '2018-07-19 09:11:24'),
(2, 'Sedan', '2018-07-19 09:11:24'),
(3, 'MPV', '2018-07-19 09:11:46'),
(4, 'Hatchback', '2018-07-19 09:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id`, `nama_admin`, `username`, `password`) VALUES
(1, 'MonkeyKingDotcom', 'MonkeyKing', 'monkey17'),
(2, 'BirdLayDotcom', 'BirdLay', 'bird17');

-- --------------------------------------------------------

--
-- Table structure for table `data_nasabah`
--

CREATE TABLE `data_nasabah` (
  `id` int(11) NOT NULL,
  `nama_nasabah` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nomor_hp` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Pria','Wanita','','') COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_nasabah`
--

INSERT INTO `data_nasabah` (`id`, `nama_nasabah`, `email`, `alamat`, `nomor_hp`, `gender`, `birthday`) VALUES
(1, 'Sadina Muhammad', 'sadina@gmail.com', 'jl.sadina', '081234567891', 'Wanita', '1960-02-14'),
(2, 'Mahmud Arif', 'mahmud@gmail.com', 'jl.mahmud', '081234567867', 'Pria', '1970-03-15'),
(3, 'Eden Cau', 'edena@gmail.com', 'jl.edena', '081234567891', 'Pria', '1971-04-16'),
(4, 'Irfan Asdi', 'irfan@gmail.com', 'jl.irfan', '081234567867', 'Pria', '1972-05-17'),
(5, 'Muhaimin Islandi', 'muhaimin@gmail.com', 'jl.muhaimin', '081233757891', 'Pria', '1973-06-18'),
(9, 'Barcanda Jaidin', 'barcanda@gmail.com', 'jl.barcanda', '085734567867', 'Pria', '1974-07-19'),
(10, 'Mongo Anto', 'mongo@gmail.com', 'jl.mongo', '081629407891', 'Pria', '1975-08-20'),
(11, 'Asmun Sumiring', 'asmun@gmail.com', 'jl.asmun', '088763906577', 'Pria', '1976-09-21'),
(12, 'Maya Indri', 'maya@gmail.com', 'jl.maya', '081234560123', 'Wanita', '1977-10-22'),
(13, 'Putri Aini', 'putri@gmail.com', 'jl.putri', '085260004467', 'Wanita', '1978-11-23'),
(14, 'Mahesa Marsya', ' marsya@gmail.com', 'jl.marsya', '0862337891', 'Wanita', '1979-12-24'),
(15, 'Ola Roso', 'ola@gmail.com', 'jl.ola', '082336076467', 'Wanita', '1980-01-25'),
(16, 'Ommi', 'ommi@gmail.com', 'jl.ommi', '081360897755', 'Pria', '1981-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `kode_invoice` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `waktu_transaksi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `kode_invoice`, `user_id`, `total_harga`, `waktu_transaksi`) VALUES
(1, 'INV001', 1, 100000000, '2018-07-25 00:00:00'),
(2, 'INV002', 2, 200000000, '2018-07-18 00:00:00'),
(3, 'INV003', 1, 100000000, '2018-07-10 00:00:00'),
(4, 'INV004', 2, 200000000, '2018-07-11 00:00:00'),
(5, 'INV005', 1, 300000000, '2018-07-05 00:00:00'),
(6, 'INV006', 2, 400000000, '2018-08-26 00:00:00'),
(7, 'INV007', 1, 500000000, '2018-08-30 00:00:00'),
(8, 'INV008', 2, 600000000, '2018-08-27 00:00:00'),
(9, 'INV009', 1, 700000000, '2018-08-21 00:00:00'),
(10, 'INV010', 2, 800000000, '2018-09-18 00:00:00'),
(11, 'INV011', 1, 100000000, '2018-09-10 00:00:00'),
(12, 'INV012', 2, 200000000, '2018-09-11 00:00:00'),
(13, 'INV013', 1, 300000000, '2018-09-05 00:00:00'),
(14, 'INV014', 2, 400000000, '2018-10-26 00:00:00'),
(15, 'INV015', 1, 500000000, '2018-10-30 00:00:00'),
(16, 'INV016', 2, 600000000, '2018-10-27 00:00:00'),
(17, 'INV017', 1, 700000000, '2018-11-21 00:00:00'),
(18, 'INV018', 2, 800000000, '2018-11-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `nama_produk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `harga` int(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice_detail`
--

INSERT INTO `invoice_detail` (`id`, `invoice_id`, `nama_produk`, `harga`, `qty`, `category`) VALUES
(1, 1, 'Wuling Convero Type S', 50000000, 1, 'MPV'),
(2, 1, 'Toyota Kijang Innova', 50000000, 1, 'MPV'),
(3, 2, 'Ranger Rover', 150000000, 1, 'SUV'),
(4, 2, 'Daihatsu Terios', 50000000, 1, 'MPV'),
(5, 3, 'Honda HRV', 50000000, 1, 'Hatchback'),
(6, 3, 'Mitsubishi Outlander', 50000000, 1, 'MPV'),
(7, 4, 'Toyota Fortuner', 150000000, 1, 'SUV'),
(8, 4, 'Toyota Yaris', 50000000, 1, 'Hatchback'),
(9, 5, 'Honda Jazz', 150000000, 1, 'Hatchback'),
(10, 5, 'Daihatsu Gran Max', 150000000, 1, 'MPV'),
(11, 6, 'Honda CRV', 200000000, 1, 'SUV'),
(12, 6, 'Suzuki SX-4', 200000000, 1, 'Hatchback'),
(13, 7, 'Wuling Convero Type S', 250000000, 1, 'MPV'),
(14, 7, 'Toyota Kijang Innova', 250000000, 1, 'MPV'),
(15, 8, 'Ranger Rover', 300000000, 1, 'SUV'),
(16, 8, 'Daihatsu Terios', 300000000, 1, 'MPV'),
(17, 9, 'Honda HRV', 350000000, 1, 'Hatchback'),
(18, 9, 'Mitsubishi Outlander', 350000000, 1, 'MPV'),
(19, 10, 'Toyota Fortuner', 400000000, 1, 'SUV'),
(20, 10, 'Toyota Yaris', 400000000, 1, 'Hatchback'),
(21, 11, 'Honda Jazz', 50000000, 1, 'Hatchback'),
(22, 11, 'Daihatsu Gran Max', 50000000, 1, 'MPV'),
(23, 12, 'Honda CRV', 100000000, 1, 'SUV'),
(24, 12, 'Suzuki SX-4', 100000000, 1, 'Hatchback'),
(25, 13, 'Toyota Fortuner', 150000000, 1, 'SUV'),
(26, 13, 'Toyota Yaris', 150000000, 1, 'Hatchback'),
(27, 14, 'Honda Jazz', 200000000, 1, 'Hatchback'),
(28, 14, 'Daihatsu Gran Max', 200000000, 1, 'MPV'),
(29, 15, 'Honda CRV', 250000000, 1, 'SUV'),
(30, 15, 'Suzuki SX-4', 250000000, 1, 'Hatchback'),
(31, 16, 'Honda CRV', 300000000, 1, 'SUV'),
(32, 16, 'Suzuki SX-4', 300000000, 1, 'Hatchback'),
(33, 17, 'Honda CRV', 350000000, 1, 'SUV'),
(34, 17, 'Suzuki SX-4', 350000000, 1, 'Hatchback'),
(35, 18, 'Honda CRV', 400000000, 1, 'SUV'),
(36, 18, 'Suzuki SX-4', 400000000, 1, 'Hatchback');

-- --------------------------------------------------------

--
-- Table structure for table `master_brand`
--

CREATE TABLE `master_brand` (
  `id` int(10) NOT NULL,
  `nama_brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mybrand'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_brand`
--

INSERT INTO `master_brand` (`id`, `nama_brand`) VALUES
(1, 'Giordano'),
(2, 'Zara'),
(3, 'Jobb'),
(4, 'Uniqlo'),
(5, 'Dagadu'),
(6, 'Joger'),
(7, 'Victoria Secret');

-- --------------------------------------------------------

--
-- Table structure for table `newusers`
--

CREATE TABLE `newusers` (
  `id` int(250) NOT NULL,
  `FullName` varchar(250) NOT NULL,
  `Username` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newusers`
--

INSERT INTO `newusers` (`id`, `FullName`, `Username`, `Email`, `Password`) VALUES
(1, 'Ahmad Ichsan Baihaqi', 'ichsan', 'ahmdichsanb@gmail.com', 'icancapcus'),
(2, 'Faldo Ilyanda', 'Faldo', 'faldo@gmail.com', 'faldoembem'),
(3, 'Vincent Wardhana', 'Vincent', 'vincentwardhana33@gmail.com', '65c3f75641b22925c737ca657b126cd68c39e423349d43031cf9a3b9a18cee1f'),
(4, 'Esa Adama', 'esa', 'esa@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(10) NOT NULL,
  `id_brand` int(10) DEFAULT NULL,
  `test` int(10) NOT NULL,
  `ukuran` enum('S','M','L','XL') COLLATE utf8_unicode_ci DEFAULT NULL,
  `kategori` enum('Pria','Wanita') COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_jenis` int(10) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `waktu_membuat_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_brand`, `test`, `ukuran`, `kategori`, `id_jenis`, `harga`, `quantity`, `waktu_membuat_data`) VALUES
(2, 2, 0, 'S', 'Pria', 2, 500000, 1, '2018-07-02 07:41:46'),
(3, 2, 0, 'M', 'Wanita', 2, 551987, 1, '2018-07-02 07:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `produk_samid`
--

CREATE TABLE `produk_samid` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `harga` int(10) NOT NULL,
  `foto_produk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `produk_samid`
--

INSERT INTO `produk_samid` (`id`, `nama_produk`, `harga`, `foto_produk`, `category_id`) VALUES
(1, 'Mitsubishi Xpander Roy', 10000000, 'maxresdefault (1).jpg', 1),
(2, 'Toyota Kijang Innova', 476000000, '', 2),
(3, 'Wuling Convero S', 175000000, '', 3),
(5, 'Grand Max Hibah dari Oki', 140000000, 'granmax.jpg', 4),
(6, 'Toyota Hilux', 10000000, '', 1),
(7, 'Honda Civic', 476000000, '', 2),
(8, 'Daihatsu Xenia', 175000000, '', 3),
(9, 'Pajero Sport', 140000000, '', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_nasabah`
--
ALTER TABLE `data_nasabah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_brand`
--
ALTER TABLE `master_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newusers`
--
ALTER TABLE `newusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indexes for table `produk_samid`
--
ALTER TABLE `produk_samid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_nasabah`
--
ALTER TABLE `data_nasabah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `master_brand`
--
ALTER TABLE `master_brand`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newusers`
--
ALTER TABLE `newusers`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk_samid`
--
ALTER TABLE `produk_samid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `master_brand` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
