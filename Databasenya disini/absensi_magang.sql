-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Sep 2022 pada 04.08
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_magang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_absensi`
--

CREATE TABLE `db_absensi` (
  `id_absen` varchar(30) NOT NULL,
  `nama_pegawai` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `tgl_absen` varchar(125) NOT NULL,
  `jam_masuk` varchar(13) NOT NULL,
  `jam_pulang` varchar(13) NOT NULL,
  `status_pegawai` int(1) NOT NULL,
  `keterangan_absen` varchar(100) NOT NULL,
  `maps_absen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_absensi`
--

INSERT INTO `db_absensi` (`id_absen`, `nama_pegawai`, `kode_pegawai`, `tgl_absen`, `jam_masuk`, `jam_pulang`, `status_pegawai`, `keterangan_absen`, `maps_absen`) VALUES
('absen_62fdeddd9bec5', 'Muhammad Nafi Muzakky', '581404670359963', 'Kamis, 18 Agustus 2022', '14:44:29', '14:44:32', 2, 'Bekerja Di Bagian Pengolahan', 'No Location'),
('absen_62fdef937ec31', 'Rudy Darmawan', '144919023756036', 'Kamis, 18 Agustus 2022', '14:51:47', '14:51:49', 2, 'Bekerja Di Bagian Otomasi', 'No Location'),
('absen_62fdefb107db4', 'Adhitya Bagus Prakoso', '988527352016713', 'Kamis, 18 Agustus 2022', '14:52:17', '14:52:19', 2, 'Bekerja Di Bagian Deposit', 'No Location'),
('absen_62fdf0073d739', 'Muhammad Reski Wijaya Kusuma', '793085268164523', 'Kamis, 18 Agustus 2022', '14:53:43', '14:53:45', 2, 'Bekerja Di Bagian Pelayanan', 'No Location'),
('absen_6302c85473461', 'Muhammad Nafi Muzakky', '581404670359963', 'Senin, 22 Agustus 2022', '07:05:40', '22:06:08', 1, 'Bekerja Di Bagian Otomasi', 'No Location'),
('absen_6302c86bdb667', 'Rudy Darmawan', '144919023756036', 'Senin, 22 Agustus 2022', '07:06:47', '', 1, 'Bekerja Di Bagian Otomasi', 'No Location'),
('absen_6302c8a923d6c', 'Adhitya Bagus Prakoso', '988527352016713', 'Senin, 22 Agustus 2022', '07:07:05', '', 1, 'Bekerja Di Bagian Otomasi', 'No Location'),
('absen_6302c8bad2ff3', 'Muhammad Reski Wijaya Kusuma', '793085268164523', 'Senin, 22 Agustus 2022', '07:07:31', '', 1, 'Bekerja Di Bagian Otomasi', 'No Location'),
('absen_6305a49698986', 'Muhammad Nafi Muzakky', '581404670359963', 'Rabu, 24 Agustus 2022', '11:09:58', '14:24:27', 2, 'Bekerja Di Bagian Deposit', 'No Location');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_rememberme`
--

CREATE TABLE `db_rememberme` (
  `id_session` int(11) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_agent` varchar(35) NOT NULL,
  `agent_string` varchar(255) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `user_ip` varchar(35) NOT NULL,
  `cookie_hash` varchar(255) NOT NULL,
  `expired` int(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_setting`
--

CREATE TABLE `db_setting` (
  `status_setting` int(1) NOT NULL DEFAULT 0,
  `nama_instansi` varchar(255) NOT NULL,
  `jumbotron_lead_set` varchar(125) NOT NULL,
  `nama_app_absensi` varchar(20) NOT NULL DEFAULT 'Absensi Online',
  `logo_instansi` varchar(255) NOT NULL,
  `timezone` varchar(35) NOT NULL,
  `absen_mulai` varchar(13) NOT NULL,
  `absen_mulai_to` varchar(13) NOT NULL,
  `absen_pulang` varchar(13) NOT NULL,
  `maps_use` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `db_setting`
--

INSERT INTO `db_setting` (`status_setting`, `nama_instansi`, `jumbotron_lead_set`, `nama_app_absensi`, `logo_instansi`, `timezone`, `absen_mulai`, `absen_mulai_to`, `absen_pulang`, `maps_use`) VALUES
(1, 'Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'Selamat Datang di Sistem Absensi Peserta Magang Atau PKL di Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'SIAMA ARPUS', '7e0679605edd8bf6b26a77609b0dfef2.png', 'Asia/Jakarta', '07:00:00', '08:00:00', '14:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_pegawai` int(11) NOT NULL,
  `nama_lengkap` varchar(125) NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(1) NOT NULL,
  `umur` int(11) NOT NULL,
  `image` varchar(125) NOT NULL,
  `qr_code_image` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `instansi` varchar(125) NOT NULL,
  `jabatan` varchar(125) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `bagian_shift` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `qr_code_use` int(2) NOT NULL,
  `last_login` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_pegawai`, `nama_lengkap`, `username`, `password`, `role_id`, `umur`, `image`, `qr_code_image`, `kode_pegawai`, `instansi`, `jabatan`, `npwp`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `bagian_shift`, `is_active`, `qr_code_use`, `last_login`, `date_created`) VALUES
(43, 'administrator', 'administrator', '$2y$10$gK5gi5mS2FmjxQ8DFHhdM.gDF0jL/J1BZ/.kYMGqTmZU.4uyzFSHu', 1, 0, 'default.png', 'no-qrcode.png', '356293510678081', 'Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'Otomasi dan Pelayanan', 'Tidak Ada', '1999-01-01', 'Semarang', 'Perempuan', 1, 1, 0, 1661326271, 1657950724),
(44, 'Muhammad Nafi Muzakky', 'nafi', '$2y$10$GyoY/acEu3cuBJWi/MR6vOq26YlTfE/KENEhHbzm1C.Ru4pJ4X356', 3, 22, 'default.png', 'no-qrcode.png', '581404670359963', 'Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'Magang', 'Tidak Ada', '2000-02-14', 'Jepara', 'Laki - Laki', 1, 1, 0, 1661325885, 1657954033),
(45, 'Rudy Darmawan', 'rudi', '$2y$10$K1aRP0HD85qQFIwDS8kk.Oajw.T15fOXVRQYhd/ZsutBUJBxxNlAa', 3, 21, 'default.png', 'no-qrcode.png', '144919023756036', 'Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'Magang', 'Tidak Ada', '2000-02-01', 'Semarang', 'Laki - Laki', 1, 1, 0, 1661126813, 1657954637),
(46, 'Adhitya Bagus Prakoso', 'adhit', '$2y$10$m6MaDowToYZmSQErDfrY..5E0UmK4rpAsoUh5ZFzACOyz.eczDjle', 3, 22, 'default.png', 'no-qrcode.png', '988527352016713', 'Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'Magang', 'Tidak Ada', '2000-03-02', 'Semarang', 'Laki - Laki', 1, 1, 0, 1661126831, 1657955430),
(50, 'Muhammad Reski Wijaya Kusuma', 'reski', '$2y$10$2ORzcZnr1zjyVeK704vOTucvv.i26UthimCIA6UPT/pHQwjFnUiVq', 3, 23, 'default.png', 'no-qrcode.png', '793085268164523', 'Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'Peserta magang', 'Tidak Ada', '1999-01-01', 'semarang', 'Laki - Laki', 1, 1, 0, 1661126869, 1659429600),
(52, 'Asad Bahy', 'asad', '$2y$10$DAERsvTeIpJdeOvIb2JQJObAIcOy7xJ/tHoBNkB9zQ1orJ34h9nQe', 3, 21, 'e14db83b4ccd3ec4df574e7b68001aec.png', 'no-qrcode.png', '944900513371622', 'Dinas Kearsipan Dan Perpustakaan Provinsi Jawa Tengah', 'peserta magang', 'Tidak Ada', '2001-01-01', 'semarang', 'Laki - Laki', 1, 1, 0, 0, 1661126979);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_absensi`
--
ALTER TABLE `db_absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indeks untuk tabel `db_rememberme`
--
ALTER TABLE `db_rememberme`
  ADD PRIMARY KEY (`id_session`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_rememberme`
--
ALTER TABLE `db_rememberme`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
