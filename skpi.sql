-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Nov 2017 pada 00.33
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
-- Struktur dari tabel `approval`
--

CREATE TABLE `approval` (
  `id_approval` int(2) NOT NULL,
  `approval` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `approval`
--

INSERT INTO `approval` (`id_approval`, `approval`) VALUES
(1, 'BELUM DISETUJUI'),
(2, 'SUDAH DISETUJUI'),
(3, 'TIDAK DISETUJUI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidangkegiatan`
--

CREATE TABLE `bidangkegiatan` (
  `id_bidangkegiatan` int(2) NOT NULL,
  `bidang` text NOT NULL,
  `namakegiatan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidangkegiatan`
--

INSERT INTO `bidangkegiatan` (`id_bidangkegiatan`, `bidang`, `namakegiatan`, `created_at`, `updated_at`) VALUES
(1, 'Penalaran dan Keilmuan', 'Menulis Karya Ilmiah Dalam Koran/Majalah populer/umum', NULL, NULL),
(2, 'Organisasi dan Kepemimpinan', 'Menduduki Jabatan pada Lembaga Kemahasiswaan tiap Periode', NULL, NULL),
(3, 'Minat dan Bakat', 'Mempunyai Prestasi di Bidang Olahraga/Kesenian', NULL, NULL),
(4, 'Organisasi dan Kepemimpinan', 'Menduduki Jabatan Organisasi di Luar Kampus tiap Periode', NULL, NULL),
(5, 'Minat dan Bakat', 'Mengikuti pelatihan bidang Minat dan Bakat tiap kegiatan', NULL, NULL),
(6, 'Pengabdian Masyarakat', 'Mengikuti kegiatan sosial kemasyarakatan sebagai peserta per kegiatan', NULL, NULL),
(7, 'Penalaran dan Keilmuan', 'Menulis Karya Ilmiah Dalam Majalah Ilmiah Tiap artikel ', NULL, NULL),
(8, 'Penalaran dan Keilmuan', 'Menulis Karya Ilmiah Dalam Web (tiap artikel)', NULL, NULL),
(9, 'Penalaran dan Keilmuan', 'Mengikuti Lomba  Karya Ilmiah (Karya Tulis / pemikiran Kritis / debat)', NULL, NULL),
(10, 'Penalaran dan Keilmuan', 'Mendapatkan prestasi pada Lomba Karya ilmiah\r\n', NULL, NULL),
(11, 'Penalaran dan Keilmuan', 'Mengikuti forum ilmiah', NULL, NULL),
(12, 'Penalaran dan Keilmuan', 'Menampilkan Poster Pada pertemuan  Ilmiah', NULL, NULL),
(13, 'Penalaran dan Keilmuan', 'Membuat rancangan  dan karya teknologi,  karya seni, pertunjukan karya seni', NULL, NULL),
(14, 'Penalaran dan Keilmuan', 'Mengikuti Pelatihan Bidang Keilmuan per Kegiatan atau Magang (di luar kurikulum/mata kuliah)', NULL, NULL),
(15, 'Penalaran dan Keilmuan', 'Mengikuti Pelatihan/ Magang (di luar kurikulum/mata kuliah) yang Tidak Sesuai dengan Bidang Ilmu', NULL, NULL),
(16, 'Penalaran dan Keilmuan', 'Terlibat sebagai tenaga lapang /interviwer pada  penelitian dosen atau penelitian lain', NULL, NULL),
(17, 'Penalaran dan Keilmuan', 'Mengikuti workshop', NULL, NULL),
(18, 'Penalaran dan Keilmuan', 'Mengikuti seminar', NULL, NULL),
(19, 'Penalaran dan Keilmuan', 'Mengikuti Kreativitas Mahasiswa (PKM)', NULL, NULL),
(21, 'Organisasi dan Kepemimpinan', 'Mewakili PT/Fak  duduk dalam Panitia antar lembaga tiap Periode', NULL, NULL),
(22, 'Organisasi dan Kepemimpinan', 'Mengikuti pertemuan Organisasi/lembaga Tiap Kegiatan', NULL, NULL),
(23, 'Organisasi dan Kepemimpinan', 'Berperan serta aktif dalam Kepanitiaan tiap kegiatan', NULL, NULL),
(24, 'Organisasi dan Kepemimpinan', 'Mengikuti kegiatan Orientasi Mahasiswa Baru Universitas/Fak ', NULL, NULL),
(25, 'Organisasi dan Kepemimpinan', 'Mengikuti Latihan Kepemimpinan Manajemen Mahasiswa (LKMM) yang diselenggarakan oleh ormawa tingkat fakultas', NULL, NULL),
(26, 'Organisasi dan Kepemimpinan', 'Mengikuti Latihan Dasar Kepemimpinan Mahasiswa (LDKM)  yang diselenggarakan oleh ormawa tingkat jurusan/program', NULL, NULL),
(27, 'Organisasi dan Kepemimpinan', 'Mengikuti Latihan Kepemimpinan Mahasiswa (LKM) yang diselenggarakan oleh ormawa tingkat universitas', NULL, NULL),
(28, 'Minat dan Bakat', 'Berperan serta dalam kegiatan diskusi pengembangan diri', NULL, NULL),
(29, 'Minat dan Bakat', 'Melaksanakan Program Kewirausahaan', NULL, NULL),
(30, 'Minat dan Bakat', 'Mengikuti perlombaan kegiatan olahraga/kesenian/sejenisnya', NULL, NULL),
(31, 'Pengabdian Masyarakat', 'Berperan serta dalam memberikan pelatihan (tutor) sesuai dengan bidang ilmu pada masyarakat per kegiatan', NULL, NULL),
(32, 'Pengabdian Masyarakat', 'Berperan serta dalam memberikan pelatihan (tutor)  TIDAK sesuai dengan bidang ilmu pada masyarakat per kegiatan', NULL, NULL),
(33, 'Organisasi dan Kepemimpinan', 'bk', '2017-11-07 23:56:46', '2017-11-07 23:56:46'),
(34, 'Organisasi dan Kepemimpinan', 'ini untuk di edit atau dihapus', '2017-11-08 04:36:44', '2017-11-08 04:36:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `jurusan` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `fakultas`, `jurusan`) VALUES
(1, 'Ekomoni dan Bisnis', 'Administrasi Keuangan'),
(2, 'Ekonomi dan Bisnis', 'Kesekretariatan'),
(3, 'Ekomoni dan Bisnis', 'Manajemen Perusahaan'),
(4, 'Ekonomi dan Bisnis', 'Akuntansi'),
(5, 'Ekonomi dan Bisnis', 'Manajemen'),
(6, 'Ekonomi dan Bisnis', 'Ilmu Ekonomi dan Studi Pembangunan'),
(7, 'Ekonomi dan Bisnis', 'Ilmu Ekonomi Syari''ah'),
(8, 'Ilmu Budaya', 'Ilmu Sejarah'),
(9, 'Ilmu Budaya', 'Sastra Indonesia'),
(10, 'Ilmu Budaya', 'Sastra Inggris'),
(11, 'Ilmu Budaya', 'Televisi dan Film'),
(12, 'Hukum', 'Ilmu Hukum'),
(13, 'Ilmu sosial dan Ilmu Politik', 'Perpajakan'),
(14, 'Ilmu sosial dan Ilmu Politik', 'Usaha Perjalanan Wisata'),
(15, 'Ilmu sosial dan Ilmu Politik', 'Ilmu Administrasi Bisnis'),
(16, 'Ilmu sosial dan Ilmu Politik', 'Ilmu Administrasi Negara'),
(17, 'Ilmu sosial dan Ilmu Politik', 'Ilmu Hubungan Internasional'),
(18, 'Ilmu sosial dan Ilmu Politik', 'Ilmu Kesejahteraan Sosial'),
(19, 'Ilmu sosial dan Ilmu Politik', 'Sosiologi'),
(20, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Matematika'),
(21, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Kimia'),
(22, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Fisika'),
(23, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Biologi'),
(24, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Ekonomi'),
(25, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Sejarah'),
(26, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa Indonesia'),
(27, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Bahasa Inggris'),
(28, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Suru Sekolah dasar (PGSD)'),
(29, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Anak Usia Dini'),
(30, 'Keguruan dan Ilmu Pendidikan', 'Pendidikan Luar Sekolah'),
(31, 'Matematika dan Ilmu Pengetahuan Alam', 'Matematika'),
(32, 'Matematika dan Ilmu Pengetahuan Alam', 'Kimia'),
(33, 'Matematika dan Ilmu Pengetahuan Alam', 'Fisika'),
(34, 'Matematika dan Ilmu Pengetahuan Alam', 'Biologi'),
(35, 'Farmasi', 'farmasi'),
(36, 'Kedokteran', 'Pendidikan Dokter'),
(37, 'Kedokteran Gigi', 'Pendidikan Doketer Gigi'),
(38, 'Kesehatan Masyarakat', 'Administrasi Kebijakan Kesehatan'),
(39, 'Kesehatan Masyarakat', 'Epidemilogi dan Biostatistika Kependudukan'),
(40, 'Kesehatan Masyarakat', 'Gizi Masyarakat'),
(41, 'Kesehatan Masyarakat', 'Kesehatan Lingkungan K3'),
(42, 'Kesehatan Masyarakat', 'Promosi Kesehatan dan Ilmu Perilaku'),
(43, 'Pertanian', 'Agroteknologi'),
(44, 'Pertanian', 'Agribisnis'),
(45, 'Teknologi Pertanian', 'Teknik Pertanian'),
(46, 'Teknologi Pertanian', 'Teknologi Hasil Pertanian'),
(47, 'Teknologi Pertanian', 'Teknik Industri Pertanian'),
(48, 'Teknik', 'Teknik Elektro'),
(49, 'Teknik', 'Teknik Mesin'),
(50, 'Teknik', 'Teknik Sipil'),
(51, 'Ilmu Komputer', 'Sistem Informasi'),
(52, 'Ilmu Komputer', 'Teknologi Informasi'),
(53, 'Ilmu Komputer', 'Informatika'),
(54, 'Program Studi Ilmu Keperawatan (PSIK)', 'Ilmu Keperawatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepesertaan`
--

CREATE TABLE `kepesertaan` (
  `id_peserta` int(2) NOT NULL,
  `jenispeserta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepesertaan`
--

INSERT INTO `kepesertaan` (`id_peserta`, `jenispeserta`) VALUES
(1, 'Peserta'),
(2, 'Fasilitator'),
(3, 'Mentor'),
(4, 'Narasumber'),
(5, 'Pelatih'),
(6, 'Panitia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(12) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `id_fakultas` int(2) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `jk` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
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
  `nama_mhs` varchar(200) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_bidangkegiatan` int(11) NOT NULL,
  `id_softskill` int(11) NOT NULL,
  `bobot` float NOT NULL,
  `id_peserta` int(2) NOT NULL,
  `id_approval` int(2) NOT NULL,
  `tgl_approve` date NOT NULL,
  `sertifikat` longblob NOT NULL,
  `nip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `softskill`
--

CREATE TABLE `softskill` (
  `id_softskill` int(11) NOT NULL,
  `softskill` varchar(30) NOT NULL,
  `Deskripsi` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `softskill`
--

INSERT INTO `softskill` (`id_softskill`, `softskill`, `Deskripsi`, `updated_at`, `created_at`) VALUES
(1, 'Bekerja dalam Tim', 'Kemampuan dapat bekerjasama dalam suatu kelompok besar atau kecil untuk mencapai suatu tujuan bersama', NULL, NULL),
(2, 'Komunikasi Efektif', 'Kemampuan komunikasi dan menyampaikan informasi atau pesan yang jelas dan dapat dipahami dengan mudah oleh teman bicaranya', NULL, NULL),
(3, 'Manajemen Diri dan Waktu', 'Kemampuan menghadapi pekerjaan yang mendesak dan dalam satu waktu', NULL, NULL),
(4, 'Tangguh', 'Kemampuan bekerja dibawah tekanan dan tidak mudah menyerah', NULL, NULL),
(5, 'Berfikir Kritis dan Analitis', 'Kemampuan seseorang untuk menganalisa dan menguraikan informasi secara beralasan dan reflektif dengan menekankan pembuatan keputusan tentang apa yang harus dipercayai atau dilakukan', NULL, NULL),
(6, 'Fleksibel', 'Kemampuan beradaptasi/menyesuaikan diri terhadap lingkungan', NULL, NULL),
(7, 'Integritas', 'Memiliki inisiatif dengan sikap jujur, memenuhi suatu komitmen melakukan pekerjaan secara konsisten', NULL, NULL),
(8, 'Kreatif', 'Kemampuan memberikan gagasan baru dalam pemecahan masalah', NULL, NULL),
(9, 'Mandiri', 'Kemampuan untuk tidak menggantungkan keputusan terhadap orang lain', NULL, NULL),
(10, 'Dapat Diandalkan', 'Memiliki kepemimpinan yang baik', NULL, NULL),
(11, 'Produktif', 'Kemampuan untuk melakukan tindakan yang konstruktif, imaginative, kreatif dari individu ari suatuorganisasi yang dapat memberikan konstribusi yang nyata', NULL, NULL),
(12, 'Motivasi', 'Kemampuan memiliki dorongan yang kuat dan antusias pada diri dalam bekerja', NULL, NULL),
(13, 'coba', 'untuk di edit dan di hapus', '2017-11-08 05:01:54', '2017-11-08 05:01:54'),
(14, 'ini', 'untuk hapus', NULL, NULL);

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
(3, 'Tenaga Kemahasiswaan', 'kemahasiswaan@email.com', '$2y$10$KgxR3.ZpVgKoeIsnfZTY7uoxejLD98IQx8HcmaSaqD8lj.yY6cdwu', 'qrd9jf4FH8uFmZElxDmfcRJilSAKuno9b54pp3GjHi8WfqAjJLob1xBKRNXE', '2017-09-25 05:35:28', '2017-09-25 05:35:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approval`
--
ALTER TABLE `approval`
  ADD PRIMARY KEY (`id_approval`);

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
-- Indexes for table `kepesertaan`
--
ALTER TABLE `kepesertaan`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_fakultas` (`id_fakultas`);

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
-- AUTO_INCREMENT for table `approval`
--
ALTER TABLE `approval`
  MODIFY `id_approval` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bidangkegiatan`
--
ALTER TABLE `bidangkegiatan`
  MODIFY `id_bidangkegiatan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `kepesertaan`
--
ALTER TABLE `kepesertaan`
  MODIFY `id_peserta` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `softskill`
--
ALTER TABLE `softskill`
  MODIFY `id_softskill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
