-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.38-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table absensi_magang.db_absensi
CREATE TABLE IF NOT EXISTS `db_absensi` (
  `id_absen` varchar(30) NOT NULL,
  `nama_pegawai` varchar(125) NOT NULL,
  `kode_pegawai` varchar(125) NOT NULL,
  `tgl_absen` varchar(125) NOT NULL,
  `jam_masuk` varchar(13) NOT NULL,
  `jam_pulang` varchar(13) NOT NULL,
  `status_pegawai` int(1) NOT NULL,
  `keterangan_absen` varchar(100) NOT NULL,
  `maps_absen` varchar(255) NOT NULL,
  PRIMARY KEY (`id_absen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table absensi_magang.db_absensi: ~10 rows (approximately)
INSERT INTO `db_absensi` (`id_absen`, `nama_pegawai`, `kode_pegawai`, `tgl_absen`, `jam_masuk`, `jam_pulang`, `status_pegawai`, `keterangan_absen`, `maps_absen`) VALUES
	('absen_62fdeddd9bec5', 'Muhammad Nafi Muzakky', '581404670359963', 'Kamis, 18 Agustus 2024', '14:44:29', '14:44:32', 2, '', 'No Location'),
	('absen_62fdef937ec31', 'Rudy Darmawan', '144919023756036', 'Kamis, 18 Agustus 2024', '14:51:47', '14:51:49', 2, '', 'No Location'),
	('absen_62fdefb107db4', 'Adhitya Bagus Prakoso', '988527352016713', 'Kamis, 18 Agustus 2024', '14:52:17', '14:52:19', 2, '', 'No Location'),
	('absen_62fdf0073d739', 'Muhammad Reski Wijaya Kusuma', '793085268164523', 'Kamis, 18 Agustus 2024', '14:53:43', '14:53:45', 2, '', 'No Location'),
	('absen_6302c85473461', 'Muhammad Nafi Muzakky', '581404670359963', 'Senin, 22 Agustus 2024', '07:05:40', '22:06:08', 1, '', 'No Location'),
	('absen_6302c86bdb667', 'Rudy Darmawan', '144919023756036', 'Senin, 22 Agustus 2024', '07:06:47', '', 1, '', 'No Location'),
	('absen_6302c8a923d6c', 'Adhitya Bagus Prakoso', '988527352016713', 'Senin, 22 Agustus 2024', '07:07:05', '', 1, '', 'No Location'),
	('absen_6302c8bad2ff3', 'Muhammad Reski Wijaya Kusuma', '793085268164523', 'Senin, 22 Agustus 2024', '07:07:31', '', 1, '', 'No Location'),
	('absen_6305a49698986', 'Muhammad Nafi Muzakky', '581404670359963', 'Rabu, 24 Agustus 2024', '11:09:58', '14:24:27', 2, '', 'No Location'),
	('absen_66c5ea7ba80c6', '12345678', '767390821362954', 'Rabu, 21 Agustus 2024', '20:24:11', '20:24:17', 2, '', 'No Location');

-- Dumping structure for table absensi_magang.db_rememberme
CREATE TABLE IF NOT EXISTS `db_rememberme` (
  `id_session` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pegawai` varchar(125) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_agent` varchar(35) NOT NULL,
  `agent_string` varchar(255) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `user_ip` varchar(35) NOT NULL,
  `cookie_hash` varchar(255) NOT NULL,
  `expired` int(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id_session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table absensi_magang.db_rememberme: ~0 rows (approximately)

-- Dumping structure for table absensi_magang.db_setting
CREATE TABLE IF NOT EXISTS `db_setting` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table absensi_magang.db_setting: ~1 rows (approximately)
INSERT INTO `db_setting` (`status_setting`, `nama_instansi`, `jumbotron_lead_set`, `nama_app_absensi`, `logo_instansi`, `timezone`, `absen_mulai`, `absen_mulai_to`, `absen_pulang`, `maps_use`) VALUES
	(1, 'Japan Store', 'Selamat Datang di Sistem Absensi Japan Store', 'JAPAN STORE', 'fa60c7bfc97f9c29f70e671966e2ded4.jpg', 'Asia/Jakarta', '07:00:00', '08:00:00', '17:00:00', 0);

-- Dumping structure for table absensi_magang.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
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
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table absensi_magang.user: ~8 rows (approximately)
INSERT INTO `user` (`id_pegawai`, `nama_lengkap`, `username`, `password`, `role_id`, `umur`, `image`, `qr_code_image`, `kode_pegawai`, `instansi`, `jabatan`, `npwp`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `bagian_shift`, `is_active`, `qr_code_use`, `last_login`, `date_created`) VALUES
	(43, 'administrator', 'administrator', '$2y$10$gK5gi5mS2FmjxQ8DFHhdM.gDF0jL/J1BZ/.kYMGqTmZU.4uyzFSHu', 1, 0, 'default.png', 'no-qrcode.png', '356293510678081', 'Japan Store', 'Otomasi dan Pelayanan', 'Tidak Ada', '1999-01-01', 'Semarang', 'Perempuan', 0, 1, 0, 1724247482, 1657950724),
	(44, 'Muhammad Nafi Muzakky', 'nafi', '$2y$10$GyoY/acEu3cuBJWi/MR6vOq26YlTfE/KENEhHbzm1C.Ru4pJ4X356', 2, 22, 'default.png', 'no-qrcode.png', '581404670359963', 'Japan Store', 'Magang', 'Tidak Ada', '2000-02-14', 'Jepara', 'Laki - Laki', 1, 1, 0, 1661325885, 1657954033),
	(45, 'Rudy Darmawan', 'rudi', '$2y$10$K1aRP0HD85qQFIwDS8kk.Oajw.T15fOXVRQYhd/ZsutBUJBxxNlAa', 2, 21, 'default.png', 'no-qrcode.png', '144919023756036', 'Japan Store', 'Magang', 'Tidak Ada', '2000-02-01', 'Semarang', 'Laki - Laki', 1, 1, 0, 1661126813, 1657954637),
	(46, 'Adhitya Bagus Prakoso', 'adhit', '$2y$10$m6MaDowToYZmSQErDfrY..5E0UmK4rpAsoUh5ZFzACOyz.eczDjle', 2, 22, 'default.png', 'no-qrcode.png', '988527352016713', 'Japan Store', 'Magang', 'Tidak Ada', '2000-03-02', 'Semarang', 'Laki - Laki', 1, 1, 0, 1661126831, 1657955430),
	(50, 'Muhammad Reski Wijaya Kusuma', 'reski', '$2y$10$2ORzcZnr1zjyVeK704vOTucvv.i26UthimCIA6UPT/pHQwjFnUiVq', 2, 23, 'default.png', 'no-qrcode.png', '793085268164523', 'Japan Store', 'Peserta magang', 'Tidak Ada', '1999-01-01', 'semarang', 'Laki - Laki', 1, 1, 0, 1661126869, 1659429600),
	(52, 'Asad Bahy', 'asad', '$2y$10$DAERsvTeIpJdeOvIb2JQJObAIcOy7xJ/tHoBNkB9zQ1orJ34h9nQe', 2, 21, 'e14db83b4ccd3ec4df574e7b68001aec.png', 'no-qrcode.png', '944900513371622', 'Japan Store', 'peserta magang', 'Tidak Ada', '2001-01-01', 'semarang', 'Laki - Laki', 1, 1, 0, 0, 1661126979),
	(53, 'test', 'test', '$2y$10$oAhNtoZv245cOJpUf83EN.97b2y3/u6J3AVKP2fdM6aTrwihgrH82', 2, 0, 'default.png', 'no-qrcode.png', '198531686224797', 'Japan Store', 'test', 'Tidak Ada', '2024-08-21', 'test', 'Laki - Laki', 1, 1, 0, 0, 1724245318),
	(54, '12345678', '12345678', '$2y$10$VE5kWelWFmReHi.ORKs6BeK/rV7CzI6fxLPbLiqWMS2597fUHOc/u', 2, 0, 'eeca39a277a20855aabddcbaeeab29a6.jpg', 'no-qrcode.png', '767390821362954', 'Japan Store', '12345678', 'Tidak Ada', '2024-08-21', '12345678', 'Laki - Laki', 0, 1, 0, 1724247141, 1724246552);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
