-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2021 pada 10.18
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Makanan Pembuka', '2020-11-17 02:52:40', '2020-11-16 19:52:40'),
(2, 'Makanan Berat', '2020-11-16 21:10:59', '2020-11-16 21:10:59'),
(3, 'Makanan basi', '2021-01-04 06:37:31', '2021-01-04 06:37:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `id_user` int(11) NOT NULL,
  `harga` varchar(225) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `makanan`
--

INSERT INTO `makanan` (`id`, `nama`, `id_user`, `harga`, `foto`, `kategori`, `deskripsi`, `created_at`, `updated_at`) VALUES
(8, 'Kue Tard', 4, '90000', 'app/images/makanan/8-1609785405-guSC7.png', 'Makanan Pembuka', '<p>Makanan aja wdkoadwko</p>', '2021-01-04 18:36:45', '2021-01-04 11:36:45'),
(9, 'Akaka', 4, '121212', 'app/images/makanan/9-1609785464-nQRSE.png', 'Makanan Ringan', '<p>awdawdawdaw</p>', '2021-01-04 18:37:44', '2021-01-04 11:37:44'),
(10, 'gada', 4, '21231', 'app/images/makanan/10-1609785490-JgNaD.png', 'Makanan Pembuka', '<p>daawd aw dawda</p>', '2021-01-04 18:38:10', '2021-01-04 11:38:10'),
(11, 'Anamakas', 4, '99999', 'app/images/makanan/11-1609785522-hATrD.png', 'Makanan Pembuka', '<p>aska</p>', '2021-01-04 18:38:42', '2021-01-04 11:38:42'),
(12, 'lomana', 4, '828282', 'app/images/makanan/12-1609785547-eiYME.png', 'Makanan Berat', '<p>haehahaha</p>', '2021-01-04 18:39:07', '2021-01-04 11:39:07'),
(13, 'lomnabba', 4, '2131121', 'app/images/makanan/13-1609785575-aLGpx.png', 'Makanan Penutup', '<p>dwaplwdapwad</p>', '2021-01-04 18:39:35', '2021-01-04 11:39:35'),
(14, 'lomanaa', 4, '99922', 'app/images/makanan/14-1609785606-E4UGR.png', 'Makanan Ringan', '<p>wdakkodwawda</p>', '2021-01-04 18:40:06', '2021-01-04 11:40:06'),
(15, 'nianaia', 4, '88822', 'app/images/makanan/15-1609785657-jMGrm.png', 'Makanan Pembuka', '<p>kaoamna</p>', '2021-01-04 18:40:57', '2021-01-04 11:40:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `harga` varchar(225) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'Pastel Indomie', '11000', 3, '2020-11-17 05:35:23', '2020-11-16 22:35:23'),
(2, 'Nasi Goreng Spesial', '20000', 2, '2020-11-16 22:38:15', '2020-11-16 22:38:15'),
(3, 'Pastel Indomie', '11000', 2, '2021-01-04 11:28:15', '2021-01-04 11:28:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `username` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `remember_token` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `jenis_kelamin`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Erpi Resty Utari', 1, 'erpiresty', 'erpiresty@gmail.com', '$2y$10$z/R/hA1PO.3LLueZvfOateD0QLPttJOTn7PVBm4oLX.91ij875G92', NULL, '2021-01-04 13:56:45', '2021-01-04 13:56:45'),
(3, 'test', 2, 'testing', 'test@gmail.com', '$2y$10$9QaTw8vVj4yuvVuloWS/DeDRCnf0oFsaDXCdOT2RldMrzDG2AaBbm', NULL, '2021-01-04 13:56:50', '2021-01-04 13:56:50'),
(4, 'jojo', 2, 'koani@gmail.com', 'koani@gmail.com', '$2y$10$gdHeiuKFns6/EAGsgwK29OA182xcd0oC1eEkLkJWZCgHX5GCYJaJe', NULL, '2021-01-04 13:56:52', '2021-01-04 13:56:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
