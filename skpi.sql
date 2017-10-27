-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Okt 2017 pada 15.43
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skpi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidangkegiatan`
--

CREATE TABLE `bidangkegiatan` (
  `id_bidangkegiatan` int(2) NOT NULL,
  `bidangkegiatan` text NOT NULL,
  `namakegiatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidangkegiatan`
--

INSERT INTO `bidangkegiatan` (`id_bidangkegiatan`, `bidangkegiatan`, `namakegiatan`) VALUES
(1, 'Penalaran dan Keilmuan', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `jurusan` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_bidangkegiatan` int(11) NOT NULL,
  `namaukm` varchar(30) NOT NULL,
  `id_softskill` int(11) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `softskill`
--

CREATE TABLE `softskill` (
  `id_softskill` int(11) NOT NULL,
  `softskill` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `softskill`
--

INSERT INTO `softskill` (`id_softskill`, `softskill`) VALUES
(1, 'Bekerja dalam Tim'),
(2, 'Komunikasi Efektif'),
(3, 'Manajemen Diri dan Waktu'),
(4, 'Tangguh'),
(5, 'Berfikir Kritis dan Analitis'),
(6, 'Fleksibel'),
(7, 'Integritas'),
(8, 'Kreatif'),
(9, 'Mandiri'),
(10, 'Dapat Diandalkan'),
(11, 'Produktif'),
(12, 'Motivasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$75U/G37Vl/dvtIewM4JXIOt7eKQSGX.owVuh6K6j1FZnMZq2Agaee', 'QkCXqynfGzwDCacknryrWBcPUbtKkedehzHl9MYYnBPhdCfHTdeugRLYT1ar', '2017-09-21 21:27:47', '2017-09-21 21:27:47'),
(2, 'mahasiswa', 'mahasiswa@gmail.com', '$2y$10$WDLoe1e22uJ3iWOP0Q44v.16PikzvZdXouJ5SzbjNWNlpsnsQvv96', 'gZLK1GiMdW5OqkPglaecRlQKoyWvSuaXpChohUykTdcHzzZFQeytZwlXcvxI', '2017-09-25 05:23:24', '2017-09-25 05:23:24'),
(3, 'kemahasiswaan', 'kemahasiswaan@email.com', '$2y$10$KgxR3.ZpVgKoeIsnfZTY7uoxejLD98IQx8HcmaSaqD8lj.yY6cdwu', 'u0i1l7mdlCJciXY5RSGZBF75lbqMQgQBidAtiADOJsUufSAIJ88Yn51F8wzM', '2017-09-25 05:35:28', '2017-09-25 05:35:28'),
(4, 'a', 'adminhgj@gmail.com', '$2y$10$zazzp4W2CE3n3hVpPpf4mOkyDZAZ0SH3E0UbYeuq1c0n05b3xvx9e', NULL, '2017-10-17 04:50:43', '2017-10-17 04:50:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidangkegiatan`
--
ALTER TABLE `bidangkegiatan`
  ADD PRIMARY KEY (`id_bidangkegiatan`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_bidangkegiatan` (`id_bidangkegiatan`),
  ADD KEY `id_softskill` (`id_softskill`);

--
-- Indexes for table `softskill`
--
ALTER TABLE `softskill`
  ADD PRIMARY KEY (`id_softskill`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `softskill`
--
ALTER TABLE `softskill`
  MODIFY `id_softskill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
