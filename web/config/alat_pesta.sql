-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 11 Jul 2013 pada 23.30
-- Versi Server: 5.5.24-log
-- Versi PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `alat_pesta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayar`
--

CREATE TABLE IF NOT EXISTS `bayar` (
  `no_bayar` int(10) NOT NULL AUTO_INCREMENT,
  `no_sewa` int(10) DEFAULT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `tgl_sewa` date DEFAULT NULL,
  `total_biaya` double DEFAULT NULL,
  PRIMARY KEY (`no_bayar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `bayar`
--

INSERT INTO `bayar` (`no_bayar`, `no_sewa`, `tgl_bayar`, `tgl_sewa`, `total_biaya`) VALUES
(1, 2, '2013-06-12', '2013-06-01', 400000),
(2, 3, '2013-07-25', '2013-07-20', 300000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `no_customer` int(10) NOT NULL AUTO_INCREMENT,
  `nama` char(35) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `alamat` char(50) DEFAULT NULL,
  `kota` char(35) DEFAULT NULL,
  `kodepos` int(20) DEFAULT NULL,
  `email` char(35) DEFAULT NULL,
  `hp` int(12) DEFAULT NULL,
  `notelp` int(12) DEFAULT NULL,
  `informasi` char(50) DEFAULT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`no_customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`no_customer`, `nama`, `tgl_lhr`, `alamat`, `kota`, `kodepos`, `email`, `hp`, `notelp`, `informasi`, `password`) VALUES
(1, 'Rizky Hendrawan', '0000-00-00', 'Jl.Sudirman No34 Semarang', 'Semarang', 553224, 'rizky@gmail.com', 2147483647, 2455664, '', ''),
(2, 'Rina Purlinawati', '0000-00-00', 'Jl.Kartini No 34', 'Semarang', 55344, 'rina@gmail.com', 2147483647, 24553445, '', ''),
(3, 'Indah', '0000-00-00', 'Jl.Indrapasta no 30', 'Semarang', 55355, 'indah@yahoo.com', 2147483647, 24773338, '', ''),
(4, 'Andrian Octavianus', '0000-00-00', 'Mejobo', 'Kudus', 59319, 'andrian.octo@gmail.com', 0, 2147483647, '', '31023102');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kembali`
--

CREATE TABLE IF NOT EXISTS `kembali` (
  `no_kembali` int(10) NOT NULL AUTO_INCREMENT,
  `no_sewa` int(10) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  PRIMARY KEY (`no_kembali`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `kembali`
--

INSERT INTO `kembali` (`no_kembali`, `no_sewa`, `tgl_kembali`) VALUES
(1, 2, '2013-05-30'),
(2, 3, '2013-07-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE IF NOT EXISTS `keranjang` (
  `id_customer` int(10) NOT NULL,
  `id_alat` int(10) NOT NULL,
  `Id_Keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` text NOT NULL,
  PRIMARY KEY (`Id_Keranjang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_customer`, `id_alat`, `Id_Keranjang`, `tanggal`) VALUES
(0, 4, 2, '11-07-2013'),
(4, 3, 3, '11-07-2013'),
(4, 2, 4, '11-07-2013');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peralatan`
--

CREATE TABLE IF NOT EXISTS `peralatan` (
  `no_alat` int(10) NOT NULL AUTO_INCREMENT,
  `nama` char(25) DEFAULT NULL,
  `kategori` char(20) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `harga` int(20) DEFAULT NULL,
  `deskripsi` tinytext,
  `foto` char(50) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  PRIMARY KEY (`no_alat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `peralatan`
--

INSERT INTO `peralatan` (`no_alat`, `nama`, `kategori`, `jumlah`, `harga`, `deskripsi`, `foto`, `status`) VALUES
(1, 'Tenda Pelangi', 'TEnda', 0, 400000, 'tenda canopy / lengkung. Tenda ini berbentuk lengkung dibagian atasnya. Biasanya dipakai untuk acara-acara disekolah, ulang tahun, seminar, acara rumah, dan kantor yang dilaksanakan di luar ruangan (outdoor) ataupun lapangan terbuka. ', 'img/2.jpg', 'Tersedia'),
(2, 'Dekorasi Taman', 'Dekorasi', 2, 350000, 'tenda canopy / lengkung. Tenda ini berbentuk lengkung dibagian atasnya. Biasanya dipakai untuk acara-acara disekolah, ulang tahun, seminar, acara rumah, dan kantor yang dilaksanakan di luar ruangan (outdoor) ataupun lapangan terbuka. ', 'img/3.jpg', 'Tersedia'),
(3, 'Meja Dan Kursi', 'Meja kursi', 18, 30000, 'tenda canopy / lengkung. Tenda ini berbentuk lengkung dibagian atasnya. Biasanya dipakai untuk acara-acara disekolah, ulang tahun, seminar, acara rumah, dan kantor yang dilaksanakan di luar ruangan (outdoor) ataupun lapangan terbuka.', 'img/4.jpg', 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `id_admin` int(10) DEFAULT NULL,
  `nama` char(25) DEFAULT NULL,
  `username` char(25) DEFAULT NULL,
  `password` char(45) DEFAULT NULL,
  `status` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_admin`, `nama`, `username`, `password`, `status`) VALUES
(1, 'Ari Wicaksono', 'arie', 'admin', 'Owner'),
(2, 'Dwi Ari', 'dwi', '12345', 'Peralatan'),
(3, 'Wicaksono', 'cak', 'petugas', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE IF NOT EXISTS `sewa` (
  `no_sewa` int(10) NOT NULL AUTO_INCREMENT,
  `no_alat` int(10) NOT NULL,
  `no_customer` int(10) DEFAULT NULL,
  `tgl_sewa` date DEFAULT NULL,
  `tgl_kirim` date DEFAULT NULL,
  `jumlah_sewa` int(10) DEFAULT NULL,
  `total_biaya` double DEFAULT NULL,
  `verifikasi` char(10) DEFAULT NULL,
  PRIMARY KEY (`no_sewa`,`no_alat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`no_sewa`, `no_alat`, `no_customer`, `tgl_sewa`, `tgl_kirim`, `jumlah_sewa`, `total_biaya`, `verifikasi`) VALUES
(1, 2, 3, '2013-05-20', '2013-05-22', 2, 750000, 'belum'),
(2, 1, 2, '2013-06-01', '2013-06-02', 1, 400000, 'sudah'),
(3, 3, 1, '2013-07-20', '2013-07-22', 30, 300000, 'sudah');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
