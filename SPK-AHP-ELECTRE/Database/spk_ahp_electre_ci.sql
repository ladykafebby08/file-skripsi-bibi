-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2023 pada 17.26
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_ahp_electre_ci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`) VALUES
(4, 'Rahmi Basir (A1)'),
(5, 'Ernawati (A2)'),
(6, 'Leni Dinofita (A3)'),
(7, 'Rosni (A4)'),
(8, 'Peni Siskawati (A5)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` char(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `bobot` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `bobot`) VALUES
('C1', 'Status Rumah', 0.31244),
('C2', 'Pekerjaan', 0.20807),
('C3', 'Penghasilan', 0.16492),
('C4', 'Tanggung Jawab', 0.10703),
('C5', 'Jenis Atap', 0.07333),
('C6', 'Jenis Dinding', 0.07038),
('C7', 'Jenis Lantai', 0.03444),
('C8', 'MCK', 0.0294);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_ahp`
--

CREATE TABLE `kriteria_ahp` (
  `id_kriteria_ahp` int(11) NOT NULL,
  `id_kriteria_1` char(11) NOT NULL,
  `id_kriteria_2` char(11) NOT NULL,
  `nilai_1` float NOT NULL,
  `nilai_2` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria_ahp`
--

INSERT INTO `kriteria_ahp` (`id_kriteria_ahp`, `id_kriteria_1`, `id_kriteria_2`, `nilai_1`, `nilai_2`) VALUES
(833, 'C1', 'C2', 2, 0.5),
(834, 'C1', 'C3', 3, 0.33333),
(835, 'C1', 'C4', 4, 0.25),
(836, 'C1', 'C5', 5, 0.2),
(837, 'C1', 'C6', 5, 0.2),
(838, 'C1', 'C7', 6, 0.16667),
(839, 'C1', 'C8', 7, 0.14286),
(840, 'C2', 'C3', 2, 0.5),
(841, 'C2', 'C4', 3, 0.33333),
(842, 'C2', 'C5', 4, 0.25),
(843, 'C2', 'C6', 3, 0.33333),
(844, 'C2', 'C7', 5, 0.2),
(845, 'C2', 'C8', 6, 0.16667),
(846, 'C3', 'C4', 3, 0.33333),
(847, 'C3', 'C5', 3, 0.33333),
(848, 'C3', 'C6', 4, 0.25),
(849, 'C3', 'C7', 5, 0.2),
(850, 'C3', 'C8', 5, 0.2),
(851, 'C4', 'C5', 2, 0.5),
(852, 'C4', 'C6', 3, 0.33333),
(853, 'C4', 'C7', 4, 0.25),
(854, 'C4', 'C8', 5, 0.2),
(855, 'C5', 'C6', 3, 0.33333),
(856, 'C5', 'C7', 3, 0.33333),
(857, 'C5', 'C8', 2, 0.5),
(858, 'C6', 'C7', 7, 0.14286),
(859, 'C6', 'C8', 2, 0.5),
(860, 'C7', 'C8', 2, 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` char(11) NOT NULL,
  `nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(56, 4, 'C1', 57),
(57, 4, 'C2', 63),
(58, 4, 'C3', 67),
(59, 4, 'C4', 69),
(60, 4, 'C5', 75),
(61, 4, 'C6', 79),
(62, 4, 'C7', 83),
(63, 4, 'C8', 84),
(64, 5, 'C1', 57),
(65, 5, 'C2', 61),
(66, 5, 'C3', 66),
(67, 5, 'C4', 70),
(68, 5, 'C5', 72),
(69, 5, 'C6', 78),
(70, 5, 'C7', 80),
(71, 5, 'C8', 84),
(72, 6, 'C1', 57),
(73, 6, 'C2', 60),
(74, 6, 'C3', 64),
(75, 6, 'C4', 69),
(76, 6, 'C5', 72),
(77, 6, 'C6', 76),
(78, 6, 'C7', 81),
(79, 6, 'C8', 85),
(80, 7, 'C1', 57),
(81, 7, 'C2', 61),
(82, 7, 'C3', 65),
(83, 7, 'C4', 71),
(84, 7, 'C5', 73),
(85, 7, 'C6', 78),
(86, 7, 'C7', 80),
(87, 7, 'C8', 84),
(88, 8, 'C1', 57),
(89, 8, 'C2', 60),
(90, 8, 'C3', 64),
(91, 8, 'C4', 69),
(92, 8, 'C5', 73),
(93, 8, 'C6', 77),
(94, 8, 'C7', 82),
(95, 8, 'C8', 86);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` char(11) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(57, 'C1', 'Milik Sendiri', 5),
(58, 'C1', 'Bersama', 3),
(59, 'C1', 'Tidak ada', 2),
(60, 'C2', 'Tidak Bekerja', 1),
(61, 'C2', 'Buruh/Petani', 3),
(62, 'C2', 'Honorer', 4),
(63, 'C2', 'Wiraswasta/pedagang', 5),
(64, 'C3', 'Rp.0 - Rp.1.200.000', 1),
(65, 'C3', 'Rp.1.300.000-Rp.1.800.000', 2),
(66, 'C3', 'Rp.1.900.000- Rp.2.500.000', 3),
(67, 'C3', 'Lebih dari Rp.3.000.000', 4),
(68, 'C4', '1-3 Orang', 1),
(69, 'C4', '4-7 Orang', 2),
(70, 'C4', '8-11 Orang', 3),
(71, 'C4', '12-15 Orang', 4),
(72, 'C5', 'Ijuk', 1),
(73, 'C5', 'Genteng', 2),
(74, 'C5', 'Seng', 3),
(75, 'C5', 'Asbes', 4),
(76, 'C6', 'Plesteran Anyaman Bambu', 1),
(77, 'C6', 'Rumbia', 2),
(78, 'C6', 'Kayu', 3),
(79, 'C6', 'Tembok', 4),
(80, 'C7', 'Tanah', 1),
(81, 'C7', 'Kayu', 2),
(82, 'C7', 'Plesteran', 3),
(83, 'C7', 'Keramik', 4),
(84, 'C8', 'Sendiri', 5),
(85, 'C8', 'Bersama', 3),
(86, 'C8', 'Tidak ada', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `email`, `username`, `password`) VALUES
(1, 1, 'LADYKA FEBBY OLIVIA', 'admin@gmail.com', 'LADYKA FEBBY OLIVIA', 'c30f23ac4f4ae084b2a7db8baf4fe9ed'),
(7, 2, 'User', 'user@gmail.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_ahp`
--
ALTER TABLE `kriteria_ahp`
  ADD PRIMARY KEY (`id_kriteria_ahp`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `nilai` (`nilai`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user_level` (`id_user_level`);

--
-- Indeks untuk tabel `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kriteria_ahp`
--
ALTER TABLE `kriteria_ahp`
  MODIFY `id_kriteria_ahp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`nilai`) REFERENCES `sub_kriteria` (`id_sub_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_user_level`) REFERENCES `user_level` (`id_user_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
