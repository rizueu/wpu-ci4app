-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Agu 2020 pada 15.38
-- Versi server: 8.0.21-0ubuntu0.20.04.4
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'One Piece', 'one-piece', 'Eiichiro Oda', 'Gramedia', 'one-piece.png', NULL, NULL),
(2, 'Black Clover', 'black-clover', 'Yūki Tabata', 'Shueisha', 'black-clover.jpg', NULL, NULL),
(14, 'One Punch Man', 'one-punch-man', 'ONE', 'Viz Media', '3893767-1.jpg', '2020-08-22 22:32:23', '2020-08-22 22:32:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-08-24-061807', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1598250390, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Suci Lailasari', 'Gg. S. Parman No. 467, Bitung 47322, KalTim', '1994-07-15 03:04:21', '1983-09-15 19:23:21'),
(2, 'Rachel Susanti', 'Jr. HOS. Cjokroaminoto (Pasirkaliki) No. 384, Blitar 76315, KalBar', '1984-12-16 08:03:06', '2006-09-24 15:07:05'),
(3, 'Warsa Lazuardi', 'Jr. Achmad Yani No. 443, Mojokerto 44423, NTB', '2004-01-23 21:22:41', '2020-02-27 04:32:05'),
(4, 'Ida Paramita Yolanda', 'Ds. Bara Tambar No. 729, Palu 13999, KalTeng', '1994-04-16 03:16:08', '2010-08-10 05:32:38'),
(5, 'Juli Safina Padmasari S.Gz', 'Dk. Kyai Gede No. 577, Madiun 15889, KalBar', '1989-10-14 13:47:38', '2016-10-15 21:15:40'),
(6, 'Kuncara Wadi Sitorus S.Gz', 'Psr. Soekarno Hatta No. 146, Balikpapan 75054, SulUt', '1987-05-26 05:04:44', '1987-05-24 08:38:51'),
(7, 'Nyoman Saefullah', 'Ds. Cut Nyak Dien No. 982, Tanjungbalai 44952, BaBel', '1974-03-04 01:06:27', '2002-12-03 08:58:27'),
(8, 'Unjani Sudiati', 'Dk. Sudiarto No. 347, Gunungsitoli 83418, PapBar', '1988-06-20 14:17:21', '2000-07-14 02:15:07'),
(9, 'Kawaya Rajata S.IP', 'Kpg. Banceng Pondok No. 836, Sabang 22809, SulUt', '1995-09-02 18:24:36', '2018-04-01 04:17:25'),
(10, 'Rachel Kusmawati', 'Gg. K.H. Maskur No. 417, Palu 52553, SulUt', '2002-03-20 20:34:47', '2007-07-14 01:00:15'),
(11, 'Ridwan Maryadi', 'Ds. Barat No. 958, Bau-Bau 83741, SumBar', '2003-11-29 18:56:28', '2020-06-04 09:18:14'),
(12, 'Ira Tantri Aryani M.M.', 'Dk. W.R. Supratman No. 937, Malang 83754, DIY', '2019-05-27 02:12:05', '1995-05-16 22:13:31'),
(13, 'Maryadi Danang Anggriawan', 'Ds. Padma No. 636, Sukabumi 83056, SumUt', '2009-10-25 10:55:01', '1975-09-30 14:44:45'),
(14, 'Hasna Titi Rahmawati', 'Psr. Yogyakarta No. 877, Mataram 90761, SulSel', '2005-12-02 12:40:17', '1990-08-01 00:32:09'),
(15, 'Zulaikha Hartati', 'Jr. Radio No. 561, Bogor 74549, Bali', '2008-07-15 00:57:15', '1984-12-12 13:36:38'),
(16, 'Yessi Oktaviani', 'Ki. Yohanes No. 871, Denpasar 26520, Riau', '2001-12-13 11:57:43', '2014-01-02 20:36:04'),
(17, 'Cager Utama', 'Dk. Bappenas No. 41, Samarinda 14655, Lampung', '2000-09-03 21:33:55', '2020-03-31 05:31:48'),
(18, 'Rini Hartati', 'Kpg. Setia Budi No. 444, Magelang 14781, NTB', '1981-05-08 23:33:09', '1972-10-24 07:06:17'),
(19, 'Paramita Ana Safitri', 'Ki. Ters. Buah Batu No. 580, Banjarbaru 58189, SumBar', '1992-03-09 20:00:58', '2004-07-31 07:44:28'),
(20, 'Safina Gasti Wastuti S.Ked', 'Kpg. Kalimantan No. 404, Kupang 83683, SumBar', '1985-05-24 04:31:02', '2020-03-31 14:51:46'),
(21, 'Okto Maryadi S.Gz', 'Jr. Sunaryo No. 43, Tidore Kepulauan 58927, KalSel', '1997-07-21 00:52:38', '2009-12-03 00:07:36'),
(22, 'Luluh Marbun', 'Gg. Daan No. 969, Administrasi Jakarta Selatan 14209, Riau', '1970-11-09 12:19:28', '2019-03-23 19:48:41'),
(23, 'Dariati Sitompul', 'Ki. Yos Sudarso No. 749, Bekasi 29950, Jambi', '1990-10-28 09:11:49', '1977-07-03 14:59:17'),
(24, 'Gadang Nababan S.I.Kom', 'Dk. Gatot Subroto No. 156, Administrasi Jakarta Pusat 24688, Jambi', '1985-02-09 05:53:52', '2001-09-04 14:38:50'),
(25, 'Betania Putri Suartini S.T.', 'Dk. Ters. Kiaracondong No. 129, Magelang 78655, KalUt', '2006-11-25 22:55:56', '2012-04-07 15:09:26'),
(26, 'Adika Saragih', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 529, Sorong 78781, SulSel', '2016-09-26 07:46:54', '1992-04-29 20:06:56'),
(27, 'Septi Astuti', 'Ds. Bagonwoto  No. 237, Banjarmasin 95672, Bali', '1995-02-22 18:52:44', '2010-08-13 01:01:49'),
(28, 'Gatot Firmansyah S.Gz', 'Jr. Monginsidi No. 430, Blitar 78255, SumSel', '1980-08-18 13:34:24', '1972-10-21 14:38:37'),
(29, 'Tiara Almira Wijayanti S.Kom', 'Jr. Baiduri No. 741, Sukabumi 55628, Riau', '2010-07-20 13:29:42', '1983-10-22 22:24:08'),
(30, 'Betania Olivia Rahimah S.H.', 'Gg. Basmol Raya No. 192, Batam 92811, SulUt', '1982-06-19 04:29:43', '2006-01-26 03:42:38'),
(31, 'Prayitna Mustika Sihombing', 'Psr. Sudiarto No. 641, Ambon 64593, SulSel', '2018-01-08 21:19:15', '2010-10-23 00:48:50'),
(32, 'Tomi Daru Budiman S.Pt', 'Jr. Baranang Siang Indah No. 67, Makassar 42329, SulTeng', '2008-11-18 07:36:36', '1970-12-23 09:29:17'),
(33, 'Rangga Reksa Suryono M.Farm', 'Ds. Setia Budi No. 295, Bandar Lampung 91739, KepR', '1986-03-27 09:38:05', '1986-02-15 21:36:50'),
(34, 'Asmianto Sihotang', 'Dk. Tubagus Ismail No. 452, Ternate 63933, Maluku', '2014-02-25 14:38:04', '2001-07-02 21:37:05'),
(35, 'Mahdi Permadi S.Psi', 'Jr. Otto No. 244, Lubuklinggau 48018, SulUt', '1991-04-11 07:16:35', '2004-10-03 11:27:45'),
(36, 'Nasab Waskita', 'Psr. Merdeka No. 849, Probolinggo 46815, JaTim', '1984-05-25 03:20:18', '1994-10-01 10:17:22'),
(37, 'Martana Dodo Jailani S.Farm', 'Jln. Uluwatu No. 344, Bekasi 56271, Riau', '2000-11-02 01:07:08', '1973-08-30 04:17:39'),
(38, 'Rina Wastuti', 'Gg. Hasanuddin No. 526, Ternate 91612, KalUt', '2015-05-05 23:20:35', '1989-09-02 06:01:57'),
(39, 'Maryanto Mansur', 'Ds. Baranangsiang No. 374, Bogor 50719, NTT', '1976-08-30 23:08:17', '1973-12-25 02:28:33'),
(40, 'Jelita Fujiati M.M.', 'Kpg. PHH. Mustofa No. 809, Cimahi 87188, DIY', '1990-08-05 06:02:06', '1977-01-13 11:53:27'),
(41, 'Dipa Sitompul S.Farm', 'Psr. Bara No. 309, Sibolga 93991, PapBar', '2012-08-06 06:38:38', '1990-09-05 04:38:49'),
(42, 'Malik Siregar', 'Dk. Jend. A. Yani No. 52, Salatiga 89703, JaTeng', '1978-12-22 09:26:10', '1988-11-08 14:36:32'),
(43, 'Gasti Fujiati S.Gz', 'Jln. Agus Salim No. 45, Tangerang 97039, SulSel', '1989-05-11 01:45:14', '1989-03-04 11:12:37'),
(44, 'Taufan Winarno', 'Jln. R.M. Said No. 856, Sabang 26601, DIY', '1978-12-27 22:02:40', '1979-09-11 03:04:44'),
(45, 'Raisa Dina Permata', 'Ki. Baya Kali Bungur No. 72, Jayapura 84782, KalSel', '1987-02-02 17:45:29', '1989-12-21 23:03:45'),
(46, 'Atmaja Marbun', 'Jln. Ikan No. 784, Samarinda 29216, Banten', '2008-11-10 07:28:13', '1995-06-08 16:45:23'),
(47, 'Danu Adriansyah', 'Jr. Mulyadi No. 375, Pekalongan 49803, SumUt', '1980-02-26 14:02:13', '2005-07-03 18:24:16'),
(48, 'Paiman Sirait', 'Jr. Pelajar Pejuang 45 No. 476, Sorong 64297, BaBel', '1994-01-11 01:53:22', '1979-10-15 20:00:40'),
(49, 'Lega Wasita', 'Dk. Madiun No. 963, Bukittinggi 11366, KalTeng', '2016-02-06 14:41:12', '2001-04-13 09:04:07'),
(50, 'Lasmono Luis Suwarno', 'Jr. Sutarto No. 213, Bandar Lampung 14889, SumBar', '1983-02-22 08:22:37', '1986-11-11 06:12:51'),
(51, 'Radit Aslijan Prabowo M.Ak', 'Ds. Raden No. 578, Tanjungbalai 16934, Gorontalo', '1985-01-05 00:00:21', '2007-08-31 05:13:47'),
(52, 'Nadine Septi Hasanah', 'Dk. Bata Putih No. 664, Balikpapan 97021, Bengkulu', '2015-12-12 08:50:21', '1976-10-03 15:08:50'),
(53, 'Kamaria Wahyuni', 'Ki. Sampangan No. 816, Palangka Raya 76978, PapBar', '1996-12-20 01:01:45', '1970-01-07 06:01:04'),
(54, 'Jagaraga Salahudin S.E.', 'Jr. Tambak No. 608, Tasikmalaya 34619, KalBar', '2013-10-21 07:41:27', '1997-08-05 11:21:30'),
(55, 'Narji Nababan', 'Dk. Bakau Griya Utama No. 426, Bengkulu 58396, KepR', '2009-12-26 13:50:52', '1977-07-27 22:35:27'),
(56, 'Zelaya Jane Padmasari', 'Kpg. Baranang No. 223, Mataram 13685, Bali', '2003-07-30 21:36:11', '2011-11-11 00:26:18'),
(57, 'Endra Jayeng Saragih', 'Gg. Ikan No. 903, Gorontalo 40942, MalUt', '1978-01-30 02:00:18', '2008-03-15 20:51:53'),
(58, 'Elon Marpaung M.Kom.', 'Ki. Soekarno Hatta No. 598, Batam 85094, KepR', '2002-12-02 08:15:46', '1978-03-23 18:17:23'),
(59, 'Farhunnisa Andriani', 'Ds. Kebangkitan Nasional No. 319, Blitar 23807, SumSel', '1977-09-12 23:00:29', '1985-03-08 00:24:25'),
(60, 'Nabila Usada S.I.Kom', 'Jln. Muwardi No. 987, Binjai 29234, JaTeng', '2002-02-22 01:18:57', '1993-05-22 03:57:07'),
(61, 'Paris Lestari', 'Ds. Dipenogoro No. 925, Payakumbuh 59074, PapBar', '2001-11-07 11:23:23', '2006-10-23 01:33:40'),
(62, 'Kambali Hakim', 'Ki. Bambon No. 738, Bontang 84908, Lampung', '2005-12-04 22:34:11', '1971-11-20 09:04:21'),
(63, 'Yuni Yuliarti', 'Psr. Bakit  No. 859, Tidore Kepulauan 65888, Riau', '1998-05-02 15:02:48', '1988-06-21 01:34:28'),
(64, 'Jagapati Ramadan S.Farm', 'Kpg. Laksamana No. 178, Jambi 23430, SulBar', '1998-04-09 17:33:14', '1982-07-29 05:29:03'),
(65, 'Jelita Jelita Hasanah', 'Dk. Bakit  No. 686, Parepare 67712, SulUt', '2005-04-15 17:14:41', '2017-02-25 14:57:37'),
(66, 'Hana Nuraini', 'Kpg. Sunaryo No. 862, Pontianak 73864, Bengkulu', '2012-02-11 21:56:50', '1982-08-01 14:32:09'),
(67, 'Aisyah Lestari', 'Jr. Otista No. 344, Sorong 53494, BaBel', '1992-12-25 03:54:14', '2012-10-09 02:07:01'),
(68, 'Halima Vivi Anggraini S.Pd', 'Gg. Suryo No. 846, Bima 66769, PapBar', '1974-03-03 09:38:57', '1998-01-17 12:44:10'),
(69, 'Titi Padmasari', 'Jln. Aceh No. 536, Pekanbaru 12738, Aceh', '2000-02-24 13:13:45', '2012-04-16 21:31:24'),
(70, 'Hendri Marpaung S.Gz', 'Kpg. Bak Mandi No. 361, Sabang 36095, Bengkulu', '1978-04-19 11:24:32', '1972-12-04 05:10:40'),
(71, 'Warta Sabar Winarno S.Sos', 'Jln. Kartini No. 19, Malang 29121, MalUt', '2011-04-07 07:19:45', '2017-11-05 13:53:44'),
(72, 'Farhunnisa Laksmiwati', 'Gg. Banceng Pondok No. 366, Ambon 74698, JaTim', '1987-03-25 14:54:29', '1973-04-22 10:06:32'),
(73, 'Talia Aryani', 'Jln. Veteran No. 848, Pagar Alam 53889, PapBar', '1980-10-13 22:38:18', '1997-05-16 04:24:53'),
(74, 'Paiman Wasita', 'Ds. Dago No. 689, Depok 72107, Bali', '2013-02-09 02:33:36', '1994-02-15 18:36:47'),
(75, 'Sari Hasanah S.Pd', 'Dk. Bak Mandi No. 477, Banjarbaru 90788, MalUt', '1970-08-14 16:50:54', '2001-12-24 11:56:05'),
(76, 'Satya Natsir S.Sos', 'Ds. Baranang Siang Indah No. 803, Payakumbuh 46115, KepR', '1981-02-20 15:06:45', '1978-12-23 03:43:10'),
(77, 'Keisha Zulaika', 'Gg. Kebonjati No. 995, Administrasi Jakarta Barat 59700, KalUt', '1979-01-19 19:38:49', '1980-12-31 15:12:36'),
(78, 'Prabowo Anggriawan', 'Gg. Banceng Pondok No. 494, Palu 72295, Bali', '2018-09-10 20:46:18', '2011-10-03 00:48:43'),
(79, 'Wirda Usada', 'Gg. Sampangan No. 620, Mojokerto 58256, KalSel', '1985-04-26 12:37:12', '1971-05-06 04:26:17'),
(80, 'Ivan Olga Wibisono', 'Dk. Otista No. 377, Tangerang Selatan 44209, Banten', '2001-12-22 19:31:57', '1972-10-14 14:29:46'),
(81, 'Vanesa Yolanda', 'Psr. Basoka No. 320, Kediri 72508, Lampung', '1974-07-17 00:38:20', '1996-08-29 10:19:11'),
(82, 'Nova Astuti', 'Kpg. Sadang Serang No. 240, Cimahi 42895, SulUt', '1997-03-17 01:49:21', '2001-06-16 11:13:05'),
(83, 'Vanya Yuniar', 'Kpg. Kalimalang No. 409, Parepare 48434, Aceh', '2015-07-02 21:53:02', '1989-04-25 14:47:21'),
(84, 'Opung Zulkarnain', 'Jln. Adisumarmo No. 31, Lubuklinggau 41375, NTB', '2004-10-01 01:12:53', '1998-01-17 20:08:36'),
(85, 'Zamira Puspasari', 'Ds. Baabur Royan No. 653, Bekasi 31479, Bali', '2007-08-22 20:29:27', '2019-02-14 00:53:48'),
(86, 'Bahuwirya Simanjuntak S.Gz', 'Psr. Laswi No. 479, Kendari 17233, KalSel', '2007-02-22 10:14:06', '2008-08-03 17:06:11'),
(87, 'Sari Kasiyah Hastuti S.I.Kom', 'Dk. Achmad No. 620, Tomohon 45716, JaTim', '1991-04-25 05:17:38', '1994-10-08 16:05:12'),
(88, 'Cahyono Adikara Maulana S.H.', 'Ki. Dewi Sartika No. 550, Lhokseumawe 65615, SulBar', '1983-05-26 20:42:14', '2003-06-06 07:29:03'),
(89, 'Latika Permata', 'Psr. Bagis Utama No. 399, Palangka Raya 26615, JaTim', '1991-09-28 09:12:58', '1970-05-29 09:05:28'),
(90, 'Lidya Hastuti S.E.I', 'Kpg. Baya Kali Bungur No. 556, Tual 32364, Gorontalo', '2015-01-04 14:10:51', '1981-03-29 23:48:08'),
(91, 'Sidiq Mansur', 'Dk. Bata Putih No. 94, Surabaya 77001, SulTeng', '1973-09-12 11:30:23', '1976-07-27 09:06:24'),
(92, 'Warsa Najib Ramadan S.Gz', 'Psr. Gading No. 629, Batu 71667, JaBar', '2014-06-24 13:59:27', '1981-11-20 23:28:48'),
(93, 'Diana Nasyidah', 'Ki. Yosodipuro No. 608, Tanjung Pinang 52215, KalSel', '2017-03-12 20:03:44', '1975-05-24 08:20:33'),
(94, 'Queen Laksita', 'Ki. Nakula No. 975, Jayapura 58173, SulUt', '1977-07-02 13:57:24', '2017-02-16 15:32:56'),
(95, 'Lili Pertiwi', 'Jr. Baranang No. 915, Sibolga 38267, SulTra', '2003-12-12 17:03:19', '1974-06-30 13:24:42'),
(96, 'Cici Hani Mardhiyah S.I.Kom', 'Jln. Babadan No. 619, Parepare 15225, Lampung', '2012-07-16 14:12:37', '1983-06-30 14:25:12'),
(97, 'Jagaraga Tarihoran', 'Dk. R.E. Martadinata No. 266, Padangsidempuan 12901, Aceh', '1977-07-25 13:44:37', '1977-08-21 12:51:44'),
(98, 'Darmana Ganjaran Saptono', 'Jr. Dewi Sartika No. 133, Lubuklinggau 31264, SulTeng', '2019-06-12 17:16:29', '2019-01-12 00:29:54'),
(99, 'Raina Hassanah', 'Kpg. Elang No. 798, Medan 57906, Lampung', '1972-02-23 18:17:19', '2018-09-22 04:46:42'),
(100, 'Jamil Sihotang', 'Kpg. Bappenas No. 525, Batam 31141, JaBar', '1999-12-26 14:32:52', '2002-01-09 12:20:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
