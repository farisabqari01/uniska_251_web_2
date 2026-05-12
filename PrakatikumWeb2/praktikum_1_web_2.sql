-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2026 pada 10.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_1_web_2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_id` int(11) NOT NULL DEFAULT 1,
  `nama` char(32) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tempat_lahir` char(32) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL DEFAULT 'Laki-laki'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `created_at`, `updated_at`, `status_id`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`) VALUES
(51, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Andi Saputra', 'Jl. Merdeka 1', 'Banjarmasin', '1995-01-01', 'Laki-laki'),
(52, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Budi Santoso', 'Jl. Merdeka 2', 'Banjarbaru', '1996-02-02', 'Laki-laki'),
(53, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Citra Lestari', 'Jl. Merdeka 3', 'Martapura', '1997-03-03', 'Perempuan'),
(54, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Dewi Anggraini', 'Jl. Merdeka 4', 'Pelaihari', '1998-04-04', 'Perempuan'),
(55, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Eko Prasetyo', 'Jl. Merdeka 5', 'Kandangan', '1995-05-05', 'Laki-laki'),
(56, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Fajar Hidayat', 'Jl. Merdeka 6', 'Amuntai', '1996-06-06', 'Laki-laki'),
(57, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Gita Sari', 'Jl. Merdeka 7', 'Barabai', '1997-07-07', 'Perempuan'),
(58, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Hendra Wijaya', 'Jl. Merdeka 8', 'Tanjung', '1998-08-08', 'Laki-laki'),
(59, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Indah Permata', 'Jl. Merdeka 9', 'Rantau', '1999-09-09', 'Perempuan'),
(60, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Joko Susilo', 'Jl. Merdeka 10', 'Kotabaru', '1994-10-10', 'Laki-laki'),
(61, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Kiki Amelia', 'Jl. Merdeka 11', 'Batulicin', '1995-11-11', 'Perempuan'),
(62, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Lukman Hakim', 'Jl. Merdeka 12', 'Sampit', '1996-12-12', 'Laki-laki'),
(63, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Maya Sari', 'Jl. Merdeka 13', 'Palangkaraya', '1997-01-13', 'Perempuan'),
(64, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Nanda Putra', 'Jl. Merdeka 14', 'Kapuas', '1998-02-14', 'Laki-laki'),
(65, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Oki Setiawan', 'Jl. Merdeka 15', 'Pangkalan Bun', '1999-03-15', 'Laki-laki'),
(66, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Putri Ayu', 'Jl. Merdeka 16', 'Pontianak', '1994-04-16', 'Perempuan'),
(67, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Qori Rahma', 'Jl. Merdeka 17', 'Singkawang', '1995-05-17', 'Perempuan'),
(68, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Rudi Hartono', 'Jl. Merdeka 18', 'Sintang', '1996-06-18', 'Laki-laki'),
(69, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Sari Dewi', 'Jl. Merdeka 19', 'Putussibau', '1997-07-19', 'Perempuan'),
(70, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Tono Pratama', 'Jl. Merdeka 20', 'Ketapang', '1998-08-20', 'Laki-laki'),
(71, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Umar Dani', 'Jl. Merdeka 21', 'Sambas', '1999-09-21', 'Laki-laki'),
(72, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Vina Melati', 'Jl. Merdeka 22', 'Mempawah', '1994-10-22', 'Perempuan'),
(73, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Wahyu Nugroho', 'Jl. Merdeka 23', 'Bengkayang', '1995-11-23', 'Laki-laki'),
(74, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Xena Putri', 'Jl. Merdeka 24', 'Melawi', '1996-12-24', 'Perempuan'),
(75, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Yudi Kurniawan', 'Jl. Merdeka 25', 'Sekadau', '1997-01-25', 'Laki-laki'),
(76, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Zahra Nabila', 'Jl. Merdeka 26', 'Sanggau', '1998-02-26', 'Perempuan'),
(77, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Agus Salim', 'Jl. Merdeka 27', 'Entikong', '1999-03-27', 'Laki-laki'),
(78, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Bella Safitri', 'Jl. Merdeka 28', 'Balikpapan', '1994-04-28', 'Perempuan'),
(79, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Cahyo Utomo', 'Jl. Merdeka 29', 'Samarinda', '1995-05-29', 'Laki-laki'),
(80, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Dina Oktavia', 'Jl. Merdeka 30', 'Bontang', '1996-06-30', 'Perempuan'),
(81, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Edi Saputra', 'Jl. Merdeka 31', 'Tarakan', '1997-07-01', 'Laki-laki'),
(82, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Fitri Handayani', 'Jl. Merdeka 32', 'Nunukan', '1998-08-02', 'Perempuan'),
(83, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Gilang Ramadhan', 'Jl. Merdeka 33', 'Tanjung Selor', '1999-09-03', 'Laki-laki'),
(84, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Hani Wulandari', 'Jl. Merdeka 34', 'Malinau', '1994-10-04', 'Perempuan'),
(85, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Iqbal Maulana', 'Jl. Merdeka 35', 'Bulungan', '1995-11-05', 'Laki-laki'),
(86, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Jihan Khairunnisa', 'Jl. Merdeka 36', 'Berau', '1996-12-06', 'Perempuan'),
(87, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Kurniawan', 'Jl. Merdeka 37', 'Kutai', '1997-01-07', 'Laki-laki'),
(88, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Lestari', 'Jl. Merdeka 38', 'Paser', '1998-02-08', 'Perempuan'),
(89, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Muhammad Rizky', 'Jl. Merdeka 39', 'Penajam', '1999-03-09', 'Laki-laki'),
(90, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Novianti', 'Jl. Merdeka 40', 'Mahakam', '1994-04-10', 'Perempuan'),
(91, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Oktavianus', 'Jl. Merdeka 41', 'Beruntung Baru', '1995-05-11', 'Laki-laki'),
(92, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Putra Wijaya', 'Jl. Merdeka 42', 'Banjar', '1996-06-12', 'Laki-laki'),
(93, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Qisthi Aulia', 'Jl. Merdeka 43', 'Tapin', '1997-07-13', 'Perempuan'),
(94, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Rahmat Hidayat', 'Jl. Merdeka 44', 'Hulu Sungai', '1998-08-14', 'Laki-laki'),
(95, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Siska Marlina', 'Jl. Merdeka 45', 'Tanah Laut', '1999-09-15', 'Perempuan'),
(96, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Taufik Akbar', 'Jl. Merdeka 46', 'Barito Kuala', '1994-10-16', 'Laki-laki'),
(97, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Ulfah Sari', 'Jl. Merdeka 47', 'Kuala Kapuas', '1995-11-17', 'Perempuan'),
(98, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Vicky Pratama', 'Jl. Merdeka 48', 'Muara Teweh', '1996-12-18', 'Laki-laki'),
(99, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Wulan Sari', 'Jl. Merdeka 49', 'Puruk Cahu', '1997-01-19', 'Perempuan'),
(100, '2026-04-21 08:30:40', '2026-04-21 08:30:40', 1, 'Yoga Prasetyo', 'Jl. Merdeka 50', 'Banjarmasin', '1998-02-20', 'Laki-laki');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
