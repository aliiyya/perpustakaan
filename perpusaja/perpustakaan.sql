-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2020 pada 01.25
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(20) NOT NULL,
  `judul_buku` varchar(256) NOT NULL,
  `penulis` varchar(256) NOT NULL,
  `edisi` int(20) NOT NULL,
  `isbn` varchar(256) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penulis`, `edisi`, `isbn`,) VALUES
('145', 'PPKN', 'Andika', 2, '1A345D'),
('2', 'Kisah Klasik', 'Andika', 1, '1G234GR'),
('23', 'Bahasa belanda', 'Hun Bergh', 3, '1G234G'),
('3', 'Bahasa Jawa', 'Rr. Andrianadiningrat', 1, '2015.3.RRA'),
('4', 'Jayalah Indonesiaku', 'Almiraa', 1, '1A345DA'),
('5', 'Kisah Cintaku', 'Inosensia', 1, '1G234IN'),
('6', 'Algoritma Pemrograman', 'Drs.Wahyu Pujiono', 1 '1A345SRE'),
('A11', 'Bahasa indonesia', 'Ir Soekarno', 1, '1234'),
('AB11', 'Kisah Klasik', 'Andika', 2,'123',);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar`
--

CREATE TABLE `daftar` (
  `no_data` int(15) NOT NULL,
  `tanggal_pendataan` date NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `id_petugas` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `nim` int(15) NOT NULL,
  `nama_pengunjung` varchar(256) NOT NULL,
  `prodi` varchar(256) NOT NULL,
  `fakultas` varchar(256) NOT NULL,
  `id_petugas` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`nim`, `nama_pengunjung`, `prodi`, `fakultas`, `id_petugas`) VALUES
(1800018041, 'Rosa', 'Teknik Informatika', 'FTI', 12355),
(1800018042, 'Wanda Amrina', 'Teknik Informatika', 'FTI', 174),
(1800018045, 'Rosalina', 'Teknik Informatika', 'Teknologi Industri', 174),
(1800018150, 'Inosensia Lionetta Pricillia', 'Teknik Informatika', 'FTI', 156),
(1800018153, 'Nurul Isti', 'Teknik Informatika', 'FTI', 124),
(1800018155, 'Dika putra', 'Teknik Informatika', 'Teknologi Industri', 114),
(1800018157, 'Anita Mira', 'Tekpang', 'Teknologi Industri', 145),
(1800018158, 'Wanda', 'Teknik Informatika', 'FTI', 114),
(1900018150, 'Harnita', 'Teknik KIMIA', 'FTI', 189);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(15) NOT NULL,
  `nama_petugas` varchar(256) NOT NULL,
  `pekerjaan` varchar(256) NOT NULL,
  `sift` enum('senin - rabu pagi, kamis - sabtu siang','senin -  rabu siang, kamis - sabtu pagi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `pekerjaan`, `sift`) VALUES
(109, 'Nuyuy', 'Bersih-bersih', 'senin - rabu pagi, kamis - sabtu siang'),
(111, 'Rosa', 'Student Employment', 'senin - rabu pagi, kamis - sabtu siang'),
(112, 'Haikal', 'Student Employment', 'senin -  rabu siang, kamis - sabtu pagi'),
(113, 'Netta', 'Student Employment', 'senin - rabu pagi, kamis - sabtu siang'),
(114, 'Risa', 'Student Employment', 'senin - rabu pagi, kamis - sabtu siang'),
(124, 'bayu', 'apa aja', 'senin -  rabu siang, kamis - sabtu pagi'),
(145, 'Jarwo', 'Penjaga', 'senin -  rabu siang, kamis - sabtu pagi'),
(156, 'Putra', 'Student Employment', 'senin - rabu pagi, kamis - sabtu siang'),
(174, 'Raihan', 'Bersih-bersih buku', 'senin - rabu pagi, kamis - sabtu siang'),
(189, 'Wanda ', 'Bersih-bersih', 'senin -  rabu siang, kamis - sabtu pagi'),
(199, 'Putra', 'Bersih-bersih', 'senin -  rabu siang, kamis - sabtu pagi'),
(1111, 'haii', 'Student Employment', 'senin - rabu pagi, kamis - sabtu siang'),
(1234, 'Joko ismoyo', 'Student Employment', 'senin - rabu pagi, kamis - sabtu siang'),
(12355, 'Joko', 'Bersih-bersih', 'senin - rabu pagi, kamis - sabtu siang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` int(255) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `nim` int(15) NOT NULL,
  `id_buku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tanggal_pinjam`, `nim`, `id_buku`) VALUES
(1, '2019-12-18', 1700018174, 'AB11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`no_data`),
  ADD KEY `no_buku` (`id_buku`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_petugas_2` (`id_petugas`),
  ADD KEY `id_petugas_3` (`id_petugas`),
  ADD KEY `id_petugas_4` (`id_petugas`),
  ADD KEY `id_petugas_5` (`id_petugas`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`),
  ADD KEY `nim` (`nim`,`id_buku`),
  ADD KEY `id_buku` (`id_buku`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `nim` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1900018151;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12356;

--
-- AUTO_INCREMENT untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `no_pinjam` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `daftar`
--
ALTER TABLE `daftar`
  ADD CONSTRAINT `daftar_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD CONSTRAINT `pengunjung_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `pengunjung` (`nim`),
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;