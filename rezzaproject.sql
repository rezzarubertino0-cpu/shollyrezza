-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jun 2026 pada 07.29
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rezzaproject`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `kd_kat` varchar(6) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(2, 'K001', 'Minuman'),
(3, 'K002', 'Makanan'),
(4, 'K003', 'Buah'),
(5, 'K004', 'Sepatu'),
(6, 'K005', 'Baju');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `min_stock` int(11) NOT NULL DEFAULT '5',
  `price` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `update_at`) VALUES
(6, 2, 'P001', 'Golda', 10, 5, 4000, 'c08e82561cf8ea070a2bc1dd235d5b87.jpg', '2026-05-20 06:57:13', '2026-05-09 01:39:22'),
(15, 2, 'P002', 'Teh pucuk', 20, 5, 5000, 'a2380a2123719ad4c9c6e4b4bf24a28e.jpg', '2026-05-20 06:58:41', '2026-05-20 05:44:10'),
(19, 2, 'P003', 'Floridina', 5, 5, 5000, '0a6b6cc2c62e535423edcfcfaa256f24.jpg', '2026-05-21 04:12:31', '2026-05-20 05:56:43'),
(20, 2, 'P004', 'Milkku', 20, 5, 4000, '91db4dea66a64b457346356e340896ae.jpg', '2026-05-21 04:07:32', '2026-05-20 05:58:47'),
(34, 3, 'P005', 'Chitato', 20, 5, 15000, 'b9da4d05cc29f2cd2b73fad2e3c3daad.jpg', '2026-05-21 04:07:41', '2026-05-20 06:23:36'),
(35, 3, 'P006', 'Qtela', 30, 5, 15000, 'debff74f60afb134e8e7b1194a067dc8.jpg', '2026-05-21 04:08:04', '2026-05-20 06:26:14'),
(36, 3, 'P007', 'Lays', 20, 5, 18000, '98e05c9a7461215df5a7c12853e0063f.jpg', '2026-05-21 04:08:15', '2026-05-20 06:28:00'),
(37, 3, 'P008', 'Taro', 20, 5, 12000, 'd7b998cbc86151fc6e1336e6cebe8356.jpg', '2026-05-21 04:08:22', '2026-05-20 06:30:20'),
(54, 4, 'P009', 'Rambutan', 30, 5, 15000, 'b75ec028878f12f403b0f33ce4a3c5f3.jpg', '2026-05-21 04:08:30', '2026-05-20 07:14:55'),
(66, 4, 'P010', 'Melon', 30, 5, 30000, 'dec24b350884f0462bdddac869372f03.jpg', '2026-05-21 04:08:39', '2026-05-20 07:30:34'),
(67, 4, 'P011', 'Semangka', 30, 5, 30000, 'b67696faf0a87df3351f55daaa01ea05.jpg', '2026-05-21 04:08:47', '2026-05-20 07:32:31'),
(69, 4, 'P012', 'Anggur', 40, 5, 40000, '17eb73f3b24a47bc1600b46baadff977.jpg', '2026-05-21 04:08:57', '2026-05-20 07:36:21'),
(74, 5, 'P013', 'Assic', 30, 5, 1500000, '192aec48d2dc9993a54bbdd206eb3349.jpg', '2026-05-21 04:09:06', '2026-05-20 08:01:31'),
(75, 5, 'P014', 'Mizonu', 30, 5, 2000000, 'fe8abc76966efdf1cdf4de83495a30ee.jpg', '2026-05-21 04:09:46', '2026-05-20 08:04:35'),
(76, 5, 'P015', 'Sepatu Fixch', 30, 5, 900000, '9c90ec5afc264b98bb258963f821f6db.jpg', '2026-05-21 04:09:53', '2026-05-20 08:05:59'),
(77, 5, 'P016', 'ortuseight', 20, 5, 1000000, '11917434112a29812b3639ecb0b49280.jpg', '2026-05-21 04:10:00', '2026-05-20 08:07:46'),
(94, 6, 'P017', 'Nike', 30, 3, 70000, 'fb31beb35b55cae555d815730e9a3c6a.jpg', '2026-05-21 04:10:10', '2026-05-20 08:32:05'),
(95, 6, 'P018', 'Polo', 30, 5, 100000, '029a563400d55e96c042cffb0e1e143f.jpg', '2026-05-21 04:10:19', '2026-05-20 08:33:27'),
(96, 6, 'P019', 'HM', 20, 5, 120000, 'b87add9eeb490e36425e040f1867de01.jpg', '2026-05-21 04:10:27', '2026-05-20 08:34:52'),
(97, 6, 'P020', 'Gucci', 20, 2, 150000, '3f858f13ec19504628e531724707fd42.jpg', '2026-05-21 04:10:35', '2026-05-20 08:36:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `Change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `stock_before` int(11) DEFAULT NULL,
  `stock_after` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `Change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(28, 6, 'ADD', 5, 4, 9, 'baik', '2026-05-15 02:25:08', 1),
(42, 6, 'REDUCE', 4, 9, 5, 'terjual', '2026-05-20 03:38:14', 1),
(46, 19, 'REDUCE', 10, 20, 10, 'terjual', '2026-05-21 04:12:05', 1),
(47, 19, 'REDUCE', 5, 10, 5, 'tejual', '2026-05-21 04:12:31', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(1, 'sholly rezza', 'rezzarubertino0@gmail.com', '$2y$10$oVx7Ye.8PA4DRuGNr6C9YeUnTFPT4C1JEAD.IfCeyYY6cNt1i.zpm', 'admin', 1, '2026-05-13 12:06:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
