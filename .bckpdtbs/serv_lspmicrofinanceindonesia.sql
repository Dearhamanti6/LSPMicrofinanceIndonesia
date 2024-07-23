-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 09:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serv_lspmicrofinanceindonesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsip_images`
--

CREATE TABLE `arsip_images` (
  `arimId` int(10) UNSIGNED NOT NULL,
  `arimTitle` varchar(65) NOT NULL,
  `arimCaption` varchar(500) NOT NULL,
  `arimFileType` varchar(10) NOT NULL,
  `arimUserIdSaved` int(10) UNSIGNED NOT NULL,
  `arimSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `arimActive` char(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `arsip_images`
--

INSERT INTO `arsip_images` (`arimId`, `arimTitle`, `arimCaption`, `arimFileType`, `arimUserIdSaved`, `arimSaved`, `arimActive`) VALUES
(1, 'Office Frontend View', 'Office Frontend View', 'jpg', 1, '2020-07-16 07:21:17', '1'),
(2, 'Preview Image Web Tempalte', 'Preview Image Web Tempalte', 'png', 1, '2020-07-16 09:50:21', '0'),
(3, 'BMC Logo Image', 'BMC Logo Image Preview', 'png', 1, '2020-07-16 09:49:59', '1'),
(4, 'Big CTA Image Preview', 'Big CTA Image Preview', 'jpg', 1, '2020-07-16 10:20:43', '1'),
(5, 'BRI Tower 2020', 'BRI Tower 2020 Office', 'jpeg', 1, '2020-07-20 01:08:59', '1'),
(6, 'BRI Sattelite BRISAT', 'BRI Sattelite BRISAT', 'jpg', 1, '2020-07-21 15:56:52', '1'),
(7, 'Overseas Study Training', 'Overseas Study Training', 'jpg', 1, '2020-07-22 03:17:30', '1'),
(8, 'BRILink 120 HUT Bank Rakyat Indonesia', 'BRILink 120 HUT Bank Rakyat Indonesia', 'jpg', 1, '2020-07-22 03:58:35', '1'),
(9, 'WirausahaBRIlian', 'WirausahaBRIlian Embed Image', 'jpg', 1, '2020-07-22 03:59:45', '1'),
(10, 'Cover BRI Research Institute', 'Cover BRI Research Institute', 'jpg', 1, '2021-02-17 07:03:05', '1'),
(11, 'Training and Technical Assistance for MSMEs Development', 'Training and Technical Assistance for MSMEs Development', 'png', 1, '2020-07-22 04:26:54', '1'),
(12, 'Study Visits from International Communities', 'Study Visits from International Communities', 'png', 1, '2020-07-22 04:28:43', '1'),
(13, 'Mentorship and Curator in Food Startup Indonesia Competition and ', 'Mentorship and Curator in Food Startup Indonesia Competition and Conference', 'png', 1, '2020-07-22 04:34:17', '1'),
(14, 'Bio-Econ Expo 2019', 'Bio-Econ Expo 2019 Photo', 'png', 1, '2020-07-22 04:38:39', '1'),
(15, 'Plataran UMKM Edisi Pendampingan Sertifikasi Halal', 'Plataran UMKM Edisi Pendampingan Sertifikasi Halal', 'jpg', 1, '2020-07-22 04:42:32', '1'),
(16, 'BRI Research Institute Office', 'BRI Research Institute Office', 'png', 1, '2021-02-17 07:01:48', '1'),
(17, 'Plataran UMKM Edisi Pendampingan Sertifikasi Halal', 'Plataran UMKM Edisi Pendampingan Sertifikasi Halal', 'jpg', 1, '2020-07-29 00:41:09', '1'),
(18, 'BRI Research Institute provides training on UMKM Access to Moder', 'BRI Research Institute provides training on UMKM Access to Modern Markets with Indomaret', 'jpg', 1, '2021-02-17 07:01:30', '1'),
(19, 'BRI Research Institute Holds Online Training for MSMEs to Survive', 'BRI Research Institute Holds Online Training for MSMEs to Survive the Pandemic Period', 'JPG', 1, '2021-03-05 03:34:27', '1'),
(20, 'BMSI Survey, UMKM Players Are Optimistic Towards 2021', 'The President Director of BRI Sunarso delivers the results of the BMSI survey in a virtual manner in Jakarta, Thursday, February 18, 2021', 'jpg', 1, '2021-03-05 07:16:32', '1'),
(21, 'Slider LSP Microfinance indonesia', 'Slider LSP Microfinance indonesia', 'jpg', 1, '2021-04-18 07:30:11', '1'),
(22, 'Pak Bakri Ketua', 'Pak Bakri Ketua LSP Microfinance', 'jpg', 1, '2021-04-19 04:47:41', '1'),
(23, 'bu anita dirut', 'bu anita dirut bririns', 'jpg', 1, '2021-04-19 04:53:04', '1'),
(24, 'Bu Anita LSP', 'Bu Anita LSP Microfinance', 'jpg', 1, '2021-04-21 02:54:23', '0'),
(25, 'Bu Anita LSP Microfinance', 'Bu Anita LSP Microfinance', 'jpg', 1, '2021-04-21 02:54:33', '1'),
(26, 'Pelatihan & Uji Sertifikasi Calon Asesor Kompetensi LSP Micro Fin', 'Pelatihan & Uji Sertifikasi Calon Asesor Kompetensi LSP Micro Finance Indonesia, \ntanggal 21 - 24 Desember 2020.\n', 'jpg', 1, '2021-04-21 03:17:18', '1'),
(27, 'Evaluasi Hasil Pekerjaan Calon Asesor oleh Master Asesor pada Pel', 'Evaluasi Hasil Pekerjaan Calon Asesor oleh Master Asesor pada Pelatihan & Uji Sertifikasi Asesor Kompetensi LSP Micro Finance Indonesia', 'jpg', 1, '2021-04-21 03:30:54', '1'),
(28, 'Pengarahan Master Asesor kepada Calon Asesor pada Acara Asesmen C', 'Pengarahan Master Asesor kepada Calon Asesor pada Acara Asesmen Calon Asesor (ACA) pada Tanggal 31 Januari 2021 di Gedung BRI II Lt. 29', 'jpg', 1, '2021-04-21 03:33:10', '1'),
(29, 'Foto Bersama Master Asesor (Penguji) dengan Calon Asesor beserta ', 'Foto Bersama Master Asesor (Penguji) dengan Calon Asesor beserta Pengurus LSP Micro Fiiinance Indonesia  pada Acara Asesmen Calon Asesor (ACA) pada Tanggal 31 Januari 2021 di Gedung BRI II Lt. 29', 'jpg', 1, '2021-04-21 03:36:01', '1'),
(30, 'DR. H. AHMAD SUBAGYO, SE.MM.CRBD.,CSA.,CRP.', 'DR. H. AHMAD SUBAGYO, SE.MM.CRBD.,CSA.,CRP.\n', 'jpg', 1, '2021-04-26 07:06:05', '1'),
(31, 'Dr. Roberto Akyuwen, STP, SE, M.Si. ', 'Dr. Roberto Akyuwen, STP, SE, M.Si. \n', 'jpg', 1, '2021-04-26 07:10:37', '1'),
(32, 'DR. H. AHMAD SUBAGYO, SE.MM.CRBD.,CSA.,CRP.', 'DR. H. AHMAD SUBAGYO, SE.MM.CRBD.,CSA.,CRP.', 'png', 1, '2021-04-27 07:30:23', '1'),
(33, 'tumbnail filler lsp', 'tumbnail filler lsp tumbnail filler lsp', 'jpeg', 1, '2021-06-26 01:58:20', '1'),
(34, 'Sertifikasi Pegelola BPR Mei 2022', 'Sertifikasi Pegelola BPR Mei 2022', 'jpeg', 1, '2022-06-09 04:11:08', '0'),
(35, 'Sertifikasi Pegelola BPR Mei 2022', 'Sertifikasi Pegelola BPR Mei 2022', 'jpeg', 1, '2022-06-09 04:10:57', '0'),
(36, 'Sertifikasi Pegelola BPR Mei 2022', 'Sertifikasi Pegelola BPR Mei 2022', 'jpeg', 1, '2022-06-09 04:05:06', '1'),
(37, 'Mitra UMi BRI KC Adi Sucipto Yogyakarta', 'Sertifikasi Mitra UMi  BRI KC Adi Sucipto Yogyakarta', 'jpeg', 1, '2022-07-04 02:35:54', '1'),
(38, 'Sertifikasi Mitra UMi BRI KC Solo', 'Pelaksanaan sertifikasi Mitra UMi BRI KC Solo', 'jpeg', 1, '2022-07-04 02:41:44', '1'),
(39, 'Pelaksanaan Sertifikasi Mitra UMi BRI KC Purbalingga', 'Pelaksanaan Sertifikasi Mitra UMi BRI KC Purbalingga', 'jpeg', 1, '2022-07-04 02:48:38', '1'),
(40, 'Sertifikasi Mitra UMi di TUK BRI KC Semarang Pattimura', 'Pelaksanaan Sertifikasi Mitra UMi di TUK BRI KC Semarang Pattimura', 'jpeg', 1, '2022-08-08 06:29:23', '1'),
(41, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI KC Purwodadi', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 13 - 14 Juli 2022 di BRI KC Purwodadi', 'jpeg', 1, '2022-08-08 06:32:20', '1'),
(42, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI di KC Blora', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 16 - 17 Juli 2022 di Blora', 'jpeg', 1, '2022-08-08 06:35:09', '1'),
(43, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI KC tegal', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 20 – 21 Juli 2022 di BRI KC Tegal', 'jpeg', 1, '2022-08-08 07:30:58', '1'),
(44, 'Antusiasme Mitra UMi BRI di Tempat Uji Kompetensi Pekalongan ', 'Antusiasme Mitra UMi BRI di Tempat Uji Kompetensi Pekalongan pada 22 Juli 2022', 'jpeg', 1, '2022-08-08 07:39:25', '1'),
(45, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI KC Kudus', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 2 – 3 Agustus 2022 di Kudus', 'jpeg', 1, '2022-08-08 07:43:33', '1'),
(46, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI KC Kudus', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 2 – 3 Agustus 2022 di Kudus', 'jpg', 1, '2022-08-08 07:50:28', '1'),
(47, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI KC Pati', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 4 - 5 Agustus 2022 di BRI KC Pati', 'jpeg', 1, '2022-08-08 07:55:27', '1'),
(48, 'Pelaksanaan uji sertifikasi dengan BEST Mitra UMi BRI di  Jakarta', 'Pelaksanaan uji sertifikasi dengan BEST Mitra UMi BRI pada 15 Juli 2022 di Jakarta', 'png', 1, '2022-08-09 01:46:13', '1'),
(49, 'Pelaksanaan uji sertifikasi dengan BEST Mitra UMi BRI ', 'Pelaksanaan uji sertifikasi dengan BEST Mitra UMi BRI pada 15 Juli 2022 di Jakarta', 'png', 1, '2022-08-09 01:47:25', '1'),
(50, 'Fajar S Pramono Vice President BRI/BRI Research Institute ', 'Fajar S Pramono\nVice President BRI/BRI Research Institute\n	\nPengelolaan portofolio atau pembiayaan usaha mikro dan ultra mikro merupakan salah satu bidang layanan jasa keuangan penting hari ini. Mengapa? Karena dunia ekonomi Indonesia semakin mengakui kontribusi sektor UMKM ini, baik dari aspek dominansi usaha yang mencapai 99,9% dari seluruh entitas bisnis di Indonesia, penyerapan tenaga kerja yang mencapai 97% dari total tenaga kerja yang ada, serta kontribusi terhadap PDB yang mencapai angka ', 'jpeg', 1, '2022-09-06 06:58:47', '1'),
(51, 'rapat di kementrian koperasi', 'rapat di kementrian koperasi', 'jpeg', 1, '2022-09-07 04:00:38', '1'),
(52, 'kegiatan sertifikasi', 'kegiatan sertifikasi', 'jpeg', 1, '2022-09-08 04:16:49', '1'),
(53, 'Sendik surabaya', 'Sendik Surabaya tanggal 24 agustus 2022', 'jpeg', 1, '2022-09-23 03:16:40', '1'),
(54, 'wilayah Bangkalan', 'Bangkalan tanggal 25 Agustus 2022', 'jpg', 1, '2022-09-23 03:18:02', '1'),
(55, 'Wilayah Mojokerto', 'Mojokerto Tanggal 26 Agustus 2022', 'jpeg', 1, '2022-09-23 03:18:58', '1'),
(56, 'wilayah Lamongan', 'lamongan tanggal 27 Agustus 2022', 'jpeg', 1, '2022-09-23 03:20:31', '1'),
(57, 'Wilayah Bojonegoro', 'Bojonegoro Tanggal 29 Agustus 2022', 'jpg', 1, '2022-09-23 03:23:21', '1'),
(58, 'Wilayah Kediri', 'Kediri tanggal 6 Seeptember 2022', 'jpeg', 1, '2022-09-23 07:45:34', '1'),
(59, 'Wilayah Nganjuk', 'Nganjuk tanggal 7 September 2022', 'jpeg', 1, '2022-09-23 07:46:16', '1'),
(60, 'Wilayah Madiun', 'Madiun Tanggal 8 September 2022', 'jpeg', 1, '2022-09-23 07:48:11', '1'),
(61, 'Wilayah Jember', 'Jember Tanggal 10-11 September 2022', 'jpg', 1, '2022-09-23 07:51:06', '1'),
(62, 'Wilayah Malang', 'Malang Tanggal 12 September 2022', 'jpg', 1, '2022-09-23 07:55:43', '1'),
(63, 'Bussiness Matching', 'Business Matching Event \nPERBARINDO, IMFEA dan LSP Microfinance Indonesia di Makasar, Sulawesi Selatan\n', 'jpeg', 1, '2022-11-02 02:19:16', '1'),
(64, 'SOSIALISASI LSP MI BERSAMA PERBARINDO DPD KEDIRI', 'Telah dilaksanakan kegiatan Sosialisasi LSP Microfinance bersama Perbarindo DPD Kediri, pada tanggal 7 September 2022, acara ini dihadiri oleh Perbarindo DPD Kediri di Hotel Crown Victory Tulungagung - Jawa Timur.', 'jpg', 1, '2022-11-30 06:57:42', '1'),
(65, 'SOSIALISASI LSP MI BERSAMA ASOSIASI LKM/LKMS', 'Kegiatan Sosialisasi LSP Microfinance bersama Asosiasi LKM/LKMS', 'jpg', 1, '2022-11-30 07:13:41', '1'),
(66, 'SOSIALISASI LSP MICROFINANCE BERSAMA PERBARINDO DKI JAKARTA', 'SOSIALISASI LSP MICROFINANCE BERSAMA PERBARINDO DKI JAKARTA', 'jpg', 1, '2022-11-30 07:19:28', '1'),
(67, 'PEMBUKAAN ACARA  BUSINESS MATCHING – SOSIALISASI LSP MI', 'PEMBUKAAN ACARA  BUSINESS MATCHING – SOSIALISASI LSP MI DI BANYUMAS HOTEL ASTON, 21 AGUSTUS 2022', 'jpg', 1, '2022-11-30 07:24:25', '1'),
(68, 'KOLABORASI LSP MI DENGAN PERBARINDO', 'KOLABORASI LSP MICROFINANCE DENGAN PERBARINDO', 'jpeg', 1, '2022-11-30 07:26:22', '1'),
(69, 'EVALUASI KINERJA BPR DAN BPRS', 'EVALUASI KINERJA BPR DAN BPRS KANTOR REGIONAL 1 DKI JAKARTA DAN BANTEN 3 NOVEMBER 2022', 'jpeg', 1, '2022-11-30 07:37:19', '1'),
(70, 'LSP DENGAN BPR SYARIAH HIK', 'LSP DENGAN BPR SYARIAH HIK', 'jpeg', 1, '2022-11-30 07:51:43', '1'),
(71, 'ibu anita retnani', 'jabatan komisaris LSP Microfinance', 'jpg', 1, '2022-12-22 02:44:25', '1'),
(72, 'pak bakri LSP Microfinance', 'Pak Bakri Microfinance (HD)', 'jpg', 1, '2022-12-22 02:46:39', '1'),
(73, 'Pak bagyo LSP Microfinance', 'Pak Bagyo Direktur pemasaran (HD)', 'jpg', 1, '2022-12-22 02:47:39', '1'),
(74, 'Kerjasama LSP Manisku Mandiri dan LSP Microfinance Indonesia', 'Kerjasama antara LSP Manajemen Bisnis Kewirausahaan Mandiri (Manisku Mandiri) dan LSP Microfinance Indonesia', 'jpeg', 1, '2023-03-28 02:21:32', '1'),
(75, 'KERJASAMA UNIVERSITAS MERCUBUANA DAN LSP MICROFINANCE INDONESIA', 'Kerjasama antara Universitas Mercubuana dan LSP Microfinance Indonesia.', 'jpeg', 1, '2023-03-28 02:54:34', '1'),
(76, 'KERJASAMA UNIVERSITAS MERCUBUANA DAN LSP MICROFINANCE INDONESIA', 'Kerjasama antara Universitas Mercubuana dan LSP Microfinance Indonesia', 'jpeg', 1, '2023-03-28 02:57:58', '1'),
(77, 'Kerjasama Universitas Nahdlatul Ulama Yogyakarta & LSP MI', 'Kerjasama antara Universitas Nahdlatul Ulama Yogyakarta dan LSP Microfinance Indonesia', 'jpg', 1, '2023-03-28 03:07:40', '1'),
(78, 'KERJASAMA UNIVERSITAS HASANUDDIN MAKASSAR DAN LSP MI', 'Kerjasama antara Universitas  Hasanuddin Makassar dan LSP Microfinance Indonesia', 'jpeg', 1, '2023-03-28 06:23:40', '1'),
(79, 'Kerjasama UIN Suska Riau dan LSP Microfinance Indonesia', 'Kerjasama antara Universitas Islam Negeri Sultan Syarif Kasim dan LSP Microfinance Indonesia', 'jpg', 1, '2023-03-28 07:11:12', '1'),
(80, 'Kerjasama antara Politeknik Nasional Denpasar Bali dan LSP MI', 'Kerjasama antara Politeknik Nasional Denpasar Bali dan LSP Microfinance Indonesia', 'jpg', 1, '2023-03-28 07:27:04', '1'),
(81, 'RUPS PT SERTIFIKASI MIKRO INDONESIA GEMILANG TAHUN 2022', 'Rapat Umum Pemegang Saham (RUPS) PT. Sertifikasi Mikro Indonesia Gemilang Tahun 2022.', 'png', 1, '2023-03-29 00:49:49', '1'),
(82, 'KERJA SAMA UPN \"VETERAN\" YOGYAKARTA & LSP MICROFINANCE INDONESIA', 'Kerjasama antara Universitas Pembangunan Nasional \"Veteran\" Yogyakarta dan LSP Microfinance Indonesia.\n', 'JPG', 1, '2023-03-29 01:05:11', '1'),
(83, 'KERJA SAMA UNIVERSITAS GADJAH MADA DAN LSP MICROFINANCE INDONESIA', 'Pada Jumat, 10 Februari 2023 LSP Microfinance Indonesia mengadakan pertemuan secara daring dengan Universitas Gadjah Mada, Yogyakarta. ', 'png', 1, '2023-03-29 01:12:11', '1'),
(84, 'Rapat Evaluasi Kinerja LSP Microfinance Indonesia dengan YBIG', 'Rapat Evaluasi Kinerja LSP Microfinance Indonesia dengan Yayasan BRIlian Indonesia Gemilang (YBIG)', 'jpeg', 1, '2023-03-29 01:20:43', '1'),
(85, 'Elaborasi LSP Microfinance Indonesia', 'Elaborasi LSP Microfinance Indonesia (Video Conference Zoom)', 'jpeg', 1, '2023-03-29 01:26:00', '1'),
(86, 'Kerjasama Universitas Jenderal Soedirman dan LSP MI', 'Kerjasama antara Universitas Jenderal Soedirman dan LSP Microfinance Indonesia', 'jpg', 1, '2023-03-29 02:35:53', '1'),
(87, 'Kerjasama Universitas Pancasila dan LSP Microfinance Indonesia', 'Kerjasama antara Universitas Pancasila dan LSP Microfinance Indonesia.', 'jpeg', 1, '2023-03-29 04:13:18', '1'),
(88, 'Workshop Digitalisasi BPR ', 'Workshop Digitalisasi BPR dalam rangka memperkuat literasi dan Inklusi keuangan', 'JPG', 1, '2023-03-29 04:15:41', '1'),
(89, 'Background Home', 'Pelatihan asesor kompetensi LSP Microfinance Indonesia', 'jpg', 1, '2023-05-05 07:30:47', '1'),
(90, 'Background Image 2', 'Pelatihan Asesor Kompetensi LSP Microfinance Indonesia 2', 'jpg', 1, '2023-05-05 07:38:31', '1'),
(91, 'Background Image 3', 'Pelatihan Asesor Kompetensi LSP Microfinance Indonesia 3', 'jpg', 1, '2023-05-05 07:39:02', '1'),
(92, 'TUK LSP MICROFINANCE INDONESIA', ' Assalamu\'alaikum Warahmatullahi Wabarakatuh.\n\nHalo sobat LSP!\nAda update terbaru seputar kegiatan LSP Microfinance Indonesia nih....\n\nPada tanggal 10 Mei 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Kalimalang, KC Kemayoran, KC Otista, KC Rawamangun, KC Tanah Abang, KC Tanjung Priok, KC Jakarta Daan Mogot, KC Jelambar, dan KC Jakarta Tanjung Duren.', 'png', 1, '2023-07-31 02:41:47', '1'),
(93, 'TUK KC DEPOK', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 MEI 2023, TUK BRI KC DEPOK', 'png', 1, '2023-07-31 02:44:26', '1'),
(94, 'TUK KC DEPOK', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 MEI 2023, TUK BRI KC DEPOK', 'png', 1, '2023-07-31 02:44:29', '1'),
(95, 'TUK BEKASI TOWN SQUARE', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 16 MEI 2023, TUK BRI KC BEKASI TOWN SQUARE', 'png', 1, '2023-07-31 02:48:13', '1'),
(96, 'TUK KARAWANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 16 MEI 2023, TUK BRI KC KARAWANG', 'png', 1, '2023-07-31 02:51:00', '1'),
(97, 'TUK BRI KANWIL JKT 3', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 23 MEI 2023, TUK BRI KANWIL JKT 3 (BSD)', 'png', 1, '2023-07-31 02:59:00', '1'),
(98, 'TUK BRI KANWIL JKT 3', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 23 MEI 2023, TUK BRI KANWIL JKT 3 (BSD)', 'png', 1, '2023-07-31 02:59:11', '1'),
(99, 'TUK PANDEGLANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 24 MEI 2023, TUK BRI KC PANDEGLANG', 'png', 1, '2023-07-31 03:01:29', '1'),
(100, 'TUK REGIONAL OFFICE BANDUNG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 7 - 8 JUNI 2023, TUK REGIONAL OFFICE BANDUNG', 'png', 1, '2023-07-31 03:12:55', '1'),
(101, 'TUK MAJALAYA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 8 JUNI 2023, TUK BRI KC MAJALAYA', 'png', 1, '2023-07-31 03:15:52', '1'),
(102, 'TUK CIMAHI', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 9 JUNI 2023,  TUK BRI KC CIMAHI', 'png', 1, '2023-07-31 03:27:34', '1'),
(103, 'TUK SOREANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 9 JUNI 2023, TUK BRI KC SOREANG', 'png', 1, '2023-07-31 04:13:14', '1'),
(104, 'TUK PURWAKARTA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC PURWAKARTA', 'png', 1, '2023-07-31 04:31:37', '1'),
(105, 'TUK BRI KC GARUT', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC GARUT', 'png', 1, '2023-07-31 08:19:44', '1'),
(106, 'TUK BRI KC GARUT', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC GARUT', 'png', 1, '2023-07-31 08:19:48', '1'),
(107, 'TUK BRI KC GARUT', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC GARUT', 'png', 1, '2023-07-31 08:19:53', '1'),
(108, 'TUK PAMANUKAN', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 JUNI 2023, TUK BRI PAMANUKAN', 'png', 1, '2023-07-31 08:21:49', '1'),
(109, 'TUK TASIKMALAYA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 JUNI 2023, TUK BRI KC TASIKMALAYA', 'png', 1, '2023-07-31 08:24:08', '1'),
(110, 'TUK SUBANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK KC SUBANG', 'png', 1, '2023-08-01 03:22:38', '1'),
(111, 'TUK CIAMIS', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK BRI KC CIAMIS', 'png', 1, '2023-08-01 03:24:47', '1'),
(112, 'TUK SUMEDANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK BRI SUMEDANG', 'png', 1, '2023-08-01 03:52:43', '1'),
(113, 'TUK BANJAR', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK BRI KC BANJAR', 'png', 1, '2023-08-01 03:58:33', '1'),
(114, 'TUK CIANJUR', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 JUNI 2023, TUK BRI KC CIANJUR ', 'png', 1, '2023-08-01 04:02:06', '1'),
(115, 'TUK MAJALENGKA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 JUNI 2023, TUK BRI KC MAJALENGKA', 'png', 1, '2023-08-01 04:06:07', '1'),
(116, 'TUK CIBADAK', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JUNI 2023, TUK BRI KC CIBADAK', 'png', 1, '2023-08-01 04:08:43', '1'),
(117, 'TUK KUNINGAN', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JUNI 2023, TUK BRI KC KUNINGAN', 'png', 1, '2023-08-01 04:10:53', '1'),
(118, 'TUK SUKABUMI', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JUNI 2023, TUK BRI KC SUKABUMI', 'png', 1, '2023-08-01 04:14:05', '1'),
(119, 'TUK INDRAMAYU', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JUNI 2023, TUK BRI KC INDRAMAYU', 'png', 1, '2023-08-01 04:17:02', '1'),
(120, 'TUK CIREBON', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 22 JUNI 2023, TUK BRI KC CIREBON', 'png', 1, '2023-08-01 04:20:15', '1'),
(121, 'TUK PADANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 JULI 2023, TUK BRI RUMAH BUMN PADANG', 'png', 1, '2023-08-01 04:36:16', '1'),
(122, 'TUK BRI SOLOK', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 JULI 2023, TUK BRI KC SOLOK', 'png', 1, '2023-08-01 04:38:02', '1'),
(123, 'TUK PEKANBARU', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 - 14 JULI 2023, TUK BRI KANWIL PEKANBARU', 'png', 1, '2023-08-01 04:39:56', '1'),
(124, 'TUK KANWIL MEDAN', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 17 - 18 JULI 2023, TUK BRI KANWIL MEDAN', 'png', 1, '2023-08-05 03:50:51', '1'),
(125, 'TUK KANWIL PALEMBANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JULI 2023, TUK BRI KANWIL PALEMBANG', 'png', 1, '2023-08-05 03:53:00', '1'),
(126, 'TUK KAYU AGUNG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JULI 2023, TUK BRI KC KAYU AGUNG', 'png', 1, '2023-08-05 03:55:15', '1'),
(127, 'TUK BANDAR JAYA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 24 JULI 2023, TUK BRI KC BANDAR JAYA', 'png', 1, '2023-08-05 03:56:55', '1'),
(128, 'TUK BRI METRO', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 25 JULI 2023, TUK BRI KC METRO', 'png', 1, '2023-08-08 00:17:51', '1'),
(129, 'Bri Kanwil Banjarmasin', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 07 Agustus 2023, TUK BRI Kanwil Banjarmasin', 'png', 1, '2023-09-29 07:10:06', '1'),
(130, 'BRI Kanwil Banjarmasin 2', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 08 Agustus 2023, TUK BRI Kanwil Banjarmasin', 'png', 1, '2023-09-29 07:15:03', '1'),
(131, 'BRI Kanwil Banjarmasin 2', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 08 Agustus 2023, TUK BRI Kanwil Banjarmasin', 'png', 1, '2023-09-29 07:15:08', '1'),
(132, 'BRI KC Kandangan', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 09 Agustus 2023, TUK BRI KC Kandangan', 'png', 1, '2023-10-20 01:39:04', '1'),
(133, 'BRI KC SAMARINDA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 - 12 Agustus 2023, TUK BRI KC SAMARINDA', 'png', 1, '2023-10-20 01:41:53', '1'),
(134, 'POLITEKNIK DENPASAR', 'KEGIATAN PEMASARAN SERTIFIKASI DI POLITEKNIK DENPASAR', 'png', 1, '2023-10-20 01:47:16', '1'),
(135, 'POLITEKNIK DENPASAR', 'KEGIATAN PEMASARAN SERTIFIKASI DI POLITEKNIK DENPASAR', 'png', 1, '2023-10-20 01:47:19', '1'),
(136, 'BRI KC MATARAM', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 05 SEPTEMBER 2023, TUK BRI KC MATARAM', 'png', 1, '2023-11-27 02:54:20', '1'),
(137, 'BRI KC SELONG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 06 SEPTEMBER 2023, TUK BRI KC SELONG', 'png', 1, '2023-11-27 02:58:24', '1'),
(138, 'BRI KC SUMBES', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 08 SEPTEMBER 2023, TUK BRI KC SUMBAWA BESAR', 'png', 1, '2023-11-27 03:00:23', '1'),
(139, 'BRI KC DENPASAR GATSU', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 - 12 SEPTEMBER 2023, TUK BRI KC DENPASAR GATOT SUBROTO', 'png', 1, '2023-11-27 03:03:00', '1'),
(140, 'BRI KC BANGLI', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 SEPTEMBER 2023, TUK BRI KC BANGLI', 'png', 1, '2023-11-27 03:06:25', '1'),
(141, 'BRI KC SEMARAPURA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 SEPTEMBER 2023, TUK BRI KC SEMARAPURA', 'png', 1, '2023-11-27 03:08:36', '1'),
(142, 'BRI KC GIANYAR DAN UBUD', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 SEPTEMBER 2023, TUK BRI KC GIANYAR dan KC UBUD', 'png', 1, '2023-11-27 03:15:08', '1'),
(143, 'BRI KC SINGARAJA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 SEPTEMBER 2023, TUK BRI KC SINGARAJA', 'png', 1, '2023-11-27 03:24:39', '1'),
(144, 'BRI KC DENPASAR GAJAH MADA & KC KUTA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC DENPASAR GAJAH MADA dan KC KUTA', 'png', 1, '2023-11-27 03:28:43', '1'),
(145, 'BRI KC DENPASAR GAJAH MADA & KC KUTA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC DENPASAR GAJAH MADA dan KC KUTA', 'png', 1, '2023-11-27 03:28:47', '1'),
(146, 'BRI KC DENPASAR GAJAH MADA & KC KUTA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC DENPASAR GAJAH MADA dan KC KUTA', 'png', 1, '2023-11-27 03:28:50', '1'),
(147, 'BRI KC DENPASAR GAJAH MADA & KC KUTA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC DENPASAR GAJAH MADA dan KC KUTA', 'png', 1, '2023-11-27 03:28:51', '1'),
(148, 'BRI KC NEGARA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC NEGARA', 'png', 1, '2023-11-27 03:32:02', '1'),
(149, 'BPR SUKAWATI PANCAKANTI', 'PELAKSANAAN UJI SERTIFKASI DENGAN BPR SUKAWATI PANCAKANTI PADA TANGGAL 15 SEPTEMBER 2023, TUK BPR SUKAWATI PANCAKANTI', 'png', 1, '2023-11-29 02:08:06', '1'),
(150, 'RCC dan PENYUSUNAN MAPA', 'RAPAT KOORDINASI RCC dan PENYUSUNAN MAPA SERTA PERANGKAT ASESMEN', 'png', 1, '2023-11-29 02:12:36', '1'),
(151, 'BRI KC GARUT II', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 05 OKTOBER 2023, TUK BRI KC GARUT BATCH II', 'png', 1, '2023-11-29 02:21:08', '1'),
(152, 'BRI KC SOMBA OPU', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 09 OKTOBER 2023, TUK BRI KC MAKASSAR SOMBA OPU', 'png', 1, '2023-11-29 02:45:34', '1'),
(153, 'BRI KC PANAKKUKANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 OKTOBER 2023, TUK BRI KC PANAKKUKANG', 'png', 1, '2023-11-29 02:50:02', '1'),
(154, 'BRI KC SUNGGUMINASA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 OKTOBER 2023, TUK BRI KC SUNGGUMINASA', 'png', 1, '2023-11-29 02:54:03', '1'),
(155, 'BRI KC TAKALAR', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 15 OKTOBER 2023, TUK BRI KC TAKALAR', 'png', 1, '2023-11-29 06:12:45', '1'),
(156, 'BRI KC MAROS', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 OKTOBER 2023, TUK BRI KC MAROS', 'png', 1, '2023-12-01 02:29:33', '1'),
(157, 'BRI KUNINGAN BATCH 2', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 18 OKTOBER 2023, TUK BRI KC KUNINGAN BATCH II', 'png', 1, '2023-12-01 02:35:26', '1'),
(158, 'BRI KC GARUT 2', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 OKTOBER 2023, TUK BRI KC CIANJUR BATCH II', 'png', 1, '2023-12-01 02:49:05', '1'),
(159, 'UPGRADING dan RCC ASESOR KOMPETENSI', 'UPGRADING dan RCC ASESOR KOMPETENSI', 'png', 1, '2023-12-04 07:58:04', '1'),
(160, 'WORKSHOP SDM', 'WORKSHOP \" PENINGKATAN KAPASITAS SDM MICROFINANCE MELALUI SERTIFIKASI KOMPETENSI \"', 'jpeg', 1, '2024-02-28 02:27:03', '1'),
(161, 'BRI KC Gatot Subroto', 'Sertifikasi BRI KC Gatot Subroto', 'png', 1, '2024-04-02 01:47:08', '1'),
(162, 'BRI KC Gatot Subroto', 'BRI KC Gatot Subroto', 'png', 1, '2024-04-02 01:47:49', '1'),
(163, 'BRI KC Tabanan', 'Kegiatan Sertifikasi BRI KC Tabanan', 'png', 1, '2024-04-02 01:53:59', '1'),
(164, 'BRI KC Semarapura', 'Kegiatan Sertifikasi BRI KC Semarapura', 'png', 1, '2024-04-02 01:57:37', '1'),
(165, 'Pertemuan antara LSP Microfinance indonesia dengan civitas akadem', 'Pertemuan antara LSP Microfinance indonesia dengan civitas akademika', 'png', 1, '2024-04-02 01:59:54', '1'),
(166, 'Mahasiswa Udayana', 'Mahasiswa Udayana dan BPR SUkawati Pancakanti', 'png', 1, '2024-04-02 02:32:18', '1'),
(167, 'Pertemuan Antara LSP dengan IBIK', 'Pertemuan Antara LSP dengan IBIK', 'png', 1, '2024-05-22 01:05:26', '1'),
(168, 'Kegiatan Sertifikasi Mahasiswa Universitas Negeri Jakarta', 'Kegiatan Sertifikasi Mahasiswa Universitas Negeri Jakarta', 'png', 1, '2024-05-28 07:19:23', '1'),
(169, 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO LIWA', 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO LIWA', 'png', 1, '2024-05-28 07:37:34', '1'),
(170, 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO METRO', 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO METRO', 'png', 1, '2024-05-29 00:17:14', '1'),
(171, 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO BANDARJAYA', 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO BANDARJAYA', 'png', 1, '2024-05-29 00:23:36', '1'),
(172, 'Tanda tangan MOU LSP dengan UNJ', 'PENANDATANGANAN MOU ANTARA LSP MICROFINANCE INDONESIA DENGAN UNIVERSITAS NEGERI JAKARTA', 'png', 1, '2024-05-29 00:28:15', '1'),
(173, 'Sertifikasi Mitra UMi BRI ', 'Sertifikasi Mitra UMi BRI ', 'jpg', 1, '2024-06-10 01:46:28', '1'),
(174, 'URGENSI PELATIHAN  DAN SERTIFIKASI KOMPETENSI BAGI LULUSAN PERGUR', 'URGENSI PELATIHAN  DAN SERTIFIKASI KOMPETENSI BAGI LULUSAN PERGURUAN TINGGI', 'png', 1, '2024-06-11 00:31:40', '1');

-- --------------------------------------------------------

--
-- Table structure for table `content_about_bri`
--

CREATE TABLE `content_about_bri` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_about_bri`
--

INSERT INTO `content_about_bri` (`contentId`, `contentText`) VALUES
(1, '<p style=\"text-align: justify;\">BRIRINS&nbsp;was established by Bank Rakyat Indonesia (BRI) as part of the Bank\'s commitment in promoting and developing microfinance as well as micro, small, and medium-scale enterprises. BRI has been playing a prime role in serving those segments of the Indonesian economy for more than a century in Indonesia.</p>\n<p style=\"text-align: justify;\">BRI is the oldest bank in Indonesia and was begun on 16 December 1895, when Raden Bei Aria Wiriaatmadja founded a small financial institution with the name of De Poerwokertosche Hulp-en Spaarbank der InlandscheHoofden. The Institution was a mosque-based association, whose function was to manage and disburse savings entrusted to it to the community in a very simple scheme.</p>\n<p style=\"text-align: justify;\">Over the years, the institution went through several name changes and as it evolved with the surrounding condition. Finally in 1992 the official name of the institution became PT Bank Rakyat Indonesia (Persero), a limited-liability company. Through out this time, the Bank continued to focus on serving micro enterprises and low-income households and supported the government in helping the nation reach food self-sufficiency. In 1984, BRI launched rural general credit called KUPEDES, a pioneering commercial micro credit product at that time. Not long after that, in 1986, the Bank launched SIMPEDES, a savings product for rural people. Breaking with the paradigm believed at the time, Kupedes micro credit turned out to be successful in developing micro and small-scale enterprises in Indonesia while contributing to the Bank\'s profitability. To date, for more than one hundred twenty years, BRI has continued to develop its core business in sustainable microfinance.</p>\n<p style=\"text-align: justify;\">In 2003, BRI became a publicly listed with 30% of its shares lised on Jakarta Stock Exchange (now Indonesia Stock Exchange/IDX) with the ticker code of BBRI. Currently, BBRI is part of the LQ45 equity index and is considered one of the blue chip shares in IDX.</p>\n<p style=\"text-align: justify;\">Networks</p>\n<ul>\n<li style=\"text-align: justify;\">Outlet 9.798</li>\n<li style=\"text-align: justify;\">E-Channels 330.254</li>\n<li style=\"text-align: justify;\">Brilink Agent (Branchless Banking) 272.817</li>\n<li style=\"text-align: justify;\">Debtor &gt; 11 million</li>\n<li style=\"text-align: justify;\">Deposit Customer &gt; 80 million</li>\n<li style=\"text-align: justify;\">Data as of September, 2018</li>\n</ul>\n<p style=\"text-align: justify;\">Latest Award</p>\n<ul>\n<li style=\"text-align: justify;\">The Best Bank in Indonesia 2018, Global Finance, 2018</li>\n<li style=\"text-align: justify;\">The Best Bank in Indonesia 2017, Global Finance, 2017</li>\n<li style=\"text-align: justify;\">The World\'s Biggest Companies 2017, Forbes Global 2000, 2017</li>\n<li style=\"text-align: justify;\">Best Microfinance Product 2017, The Asian Banker, 2017</li>\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `content_about_lsp`
--

CREATE TABLE `content_about_lsp` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_about_lsp`
--

INSERT INTO `content_about_lsp` (`contentId`, `contentText`) VALUES
(1, '<div class=\"col-md-12\">\n<div class=\"project-details-feature\">\n<p class=\"lead\" style=\"text-align: justify;\">LSP Microfinance Indonesia merupakan Lembaga Sertifikasi Profesi yang diberikan lisensi oleh BNSP merupakan level LSP Pihak 3. LSP Microfinance Indonesia didirikan oleh Asosiasi Microfinance Indonesia (IMFEA) dan BRI Research Institute. Pendirian LSP Microfinance Indonesia didukung oleh pihak regulator, yaitu OJK, Kemenkop, dan Asosiasi Koperasi yaitu Induk Koperasi Simpan Pinjam (IKSP). LSP Microfinance Indonesia dibawah naungan PT Sertifikasi Mikro Indonesia Gemilang yang telah disahkan oleh Menteri Hukum dan Hak Asasi Manusia Republik Indonesia. Pendirian LSP Microfinance Indonesia bertujuan untuk melaksanakan sertifikasi kompetensi kerja untuk sektor/profesi tertentu sesuai persetujuan dari BNSP. LSP Microfinance Indonesia mendukung peningkatan Kompetensi SDM Lembaga Keuangan Mikro guna meningkatkan Tata Kelola Microfinance untuk tumbuh berkembang dan berkesinambungan. Adapun hal-hal yang menjadi latar belakang berdirinya LSP Microfinance Indonesia sebagai berikut:</p>\n<ul class=\"list-unstyled tech-feature-list\">\n<li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Program Pemerintah terkait SDM Unggul serta BUMN AKHLAK <em>Core Values</em> (Amanah, Kompeten, Harmonis, Loyal, Adaptif, dan Kolaboratif).</li>\n<li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Semakin meningkatnya jumlah dan berkembangnya bentuk/jenis Lembaga Keuangan Mikro formal bank maupun non-bank serta lembaga keuangan informal yang belum tercatat di Lembaga resmi pemerintah.</li>\n<li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Perlu adanya standar kompetensi dalam pengelolaan microfinance yang sehat dengan kaidah-kaidah yang benar.</li>\n<li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Bentuk komitmen BRI untuk mengembangkan bisnis mikro yang merupakan <em>core business</em> BRI.</li>\n<li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Mengacu kepada Peraturan Otoritas Jasa Keuangan Nomor 1/POJK.07/2013 tentang Perlindungan Konsumen Sektor Jasa Keuangan dan UU OJK tentang Edukasi dan Perlindungan Konsumen dan POJK Nomor 76/POJK.07/2016 tentang Peningkatan Literasi dan Inklusi Keuangan di Sektor Jasa Keuangan Bagi Konsumen dan/atau masyarakat.</li>\n<li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>OJK sedang menyusun infrastruktur dan arsitektur LKM, salah satu infrastruktur adalah adanya LSP untuk meningkatkan kompetensi pengurus LKM.</li>\n</ul>\n</div>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `content_anggota`
--

CREATE TABLE `content_anggota` (
  `anggotaId` int(11) NOT NULL,
  `anggotaName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggotaPosition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggotaDetail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggotaDate` datetime NOT NULL,
  `anggotaAdmiId` int(11) NOT NULL,
  `anggotaStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_anggota`
--

INSERT INTO `content_anggota` (`anggotaId`, `anggotaName`, `anggotaPosition`, `anggotaDetail`, `anggotaDate`, `anggotaAdmiId`, `anggotaStatus`) VALUES
(2, 'arfi ra afdilah', 'KETUA', '<strong style=\"color:#999\">BRI Microfinance Center - </strong> ini CV', '2021-04-18 00:00:00', 6, 0),
(3, 'Anita Retnani', 'Komisaris', '<div class=\"boxRiwayat\">\n<div class=\"boxRiwayatInner\">\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Warga Negara Indonesia, berdomisili di Indonesia. Sebelum menjabat komisaris, beliau mengawali karir di PT. Bank Rakyat Indonesia, Tbk. Beliau pernah mendapat penugasan sebagai Pemimpin Cabang pada kantor Cabang BRI Yogyakarta dan Kepala Divisi Jaringan Bisnis Mikro di Kantor Pusat BRI. Setelah pensiun, selanjutnya Beliau menjabat sebagai Direktur Utama di perusahaan Mitra Bumdes Nusantara. Selanjutnya, Beliau juga pernah menjabat sebagai Direktur Utama BRI Research Institute dari tahun 2019 sampai tahun 2021.</span>&nbsp;<span style=\"font-size: 10pt;\">Beliau menyelesaikan Pendidikan strata satu di fakultas sosial ekonomi di Universitas Gadjah Mada pada tahun 1983, dan memperoleh gelar Magister nya pada tahun 1990.</span></p>\n</div>\n</div>', '2021-03-30 00:00:00', 6, 1),
(4, 'Bakri', 'Direktur Utama', '<div class=\"boxRiwayat\">\n<div class=\"boxRiwayatInner\">\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Warga Negara Indonesia, 58 tahun. Berdomisili di Indonesia. Sebelum menjabat sebagai Direktur Utama, beliau mengawali karir di PT. Bank Rakyat Indonesia, Tbk dengan jabatan sebagai Kepala Divisi Jaringan Bisnis Mikro (2015), Kepala Divisi Pengembangan Bisnis Mikro (2015-2017), Kepala Divisi Jaringan Bisnis (2017-2019) dan Kepala Divisi Jaringan BRIlink (2019-2020). Setelah pensiun, selanjutnya Beliau menjabat sebagai Advisor di BRI Research Institute.</span>&nbsp;<span style=\"font-size: 10pt;\">Beliau menyelesaikan Pendidikan sarjana di fakultas Peternakan dari Universitas Hasanuddin pada tahun 1988 dan memperoleh gelar Magister nya dari Universitas Gadjah Mada pada tahun 2008.</span></p>\n</div>\n</div>', '2021-03-31 00:00:00', 1, 1),
(5, 'DR. H. AHMAD SUBAGYO, SE.MM.CRBD.,CSA.,CRP.', 'Direktur Pemasaran', '<div class=\"boxRiwayat\">\n<div class=\"boxRiwayatInner\">\n<p><span style=\"font-size: 10pt;\">Warga Negara Indonesia, 50 tahun. Berdomisili di Indonesia. Beliau juga sebagai Konsultan Pendanaan Wirausaha Kementrian Koperasi dan UKM, Konsultan Senior Ahli Koperasi &ndash; Proyek Economic Growth Support Activity (EGSA) USAID, Komisaris Independen PT. Inovasi Kredit Indonesia, Komisaris Independen PT. Akulaku Finance Indonesia dan Komisaris Independen PT. Asuransi Takaful Umum.</span></p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<h4><span style=\"font-size: 10pt;\">Beliau menyelesaikan Pendidikan sarjana di fakultas ekonomi dari Universitas Jenderal Soedirman pada tahun 1996, gelar Magister nya dari Universitas Jenderal Soedirman pada tahun 1998 dan memperoleh gelar Doktor bidang Pengkajian Ekonomi Islam Universitas Islam negeri (UIN) Syarif Hidayatullah Jakarta 2011.</span></h4>\n</div>\n</div>', '2021-03-30 00:00:00', 1, 0),
(6, 'Dr. Roberto Akyuwen, STP, SE, M.Si. ', 'Dewan Pengarah', '								<div class=\"boxRiwayat\">\n                                <div class=\"boxRiwayatInner\">\n                                    <h4>Riwayat Pendidikan</h4>\n                                    <ul>\n                                            <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span> S3 - Doctorate in Economics, Postgraduate Program, Gadjah Mada University \nYogyakarta with supervisory research at State University of New York at Albany.</li>\n                                            <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span> S2 - Development Economics, Postgraduate Program, Gadjah Mada \nUniversity Yogyakarta.</li>\n                                            <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span> S1 - Economics and Development Studies, Faculty of Economics, Indonesian Open \nLearning University.</li>\n                                            <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span> S1 - Faculty of Agriculture Technology, Gadjah Mada University Yogyakarta.</li>\n                                    </ul>\n                                </div>\n                                <div class=\"boxRiwayatInner\">\n                                    <h4>Riwayat Pekerjaan</h4>\n                                    <ul>\n                                            <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>​​​​​​​Wakil Direktur Utama PT. Bank Rakyat Indonesia (Persero) Tbk. (2019 - sekarang)</li>\n                                            <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Direktur Bisnis Kecil & Jaringan PT Bank Negara Indonesia, Tbk (Persero) 2017-2019)</li>\n                                          <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Direktur PT Bank Tabungan Negara (Persero) Tbk (2016-2017)</li>\n                                            <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span>Senior Executive Vice Presiden (SEVP) PT Bank Rakyat Indonesia (Persero)​​​​​​ Tbk. (2016)</li>\n                                    </ul>\n                                </div>\n                            </div>', '2021-03-31 00:00:00', 1, 0),
(8, 'Ahmad Subagyo', 'Direktur Pemasaran', '<div class=\"boxRiwayat\">\n<div class=\"boxRiwayatInner\">\n<p style=\"text-align: justify;\"><span style=\"font-size: 10pt;\">Warga Negara Indonesia, 50 tahun. Berdomisili di Indonesia. Beliau juga sebagai Konsultan Pendanaan Wirausaha Kementrian Koperasi dan UKM, Konsultan Senior Ahli Koperasi &ndash; Proyek Economic Growth Support Activity (EGSA) USAID, Komisaris Independen PT. Inovasi Kredit Indonesia, Komisaris Independen PT. Akulaku Finance Indonesia dan Komisaris Independen PT. Asuransi Takaful Umum.&nbsp;</span><span style=\"font-size: 10pt;\">Beliau menyelesaikan Pendidikan sarjana di fakultas ekonomi dari Universitas Jenderal Soedirman pada tahun 1996, gelar Magister nya dari Universitas Jenderal Soedirman pada tahun 1998 dan memperoleh gelar Doktor bidang Pengkajian Ekonomi Islam Universitas Islam negeri (UIN) Syarif Hidayatullah Jakarta 2011.</span></p>\n</div>\n</div>', '2022-12-21 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_anggota_images`
--

CREATE TABLE `content_anggota_images` (
  `anggimId` int(11) NOT NULL,
  `anggimAnggotaId` int(11) NOT NULL,
  `anggimArimId` int(11) NOT NULL,
  `anggimSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `anggimStatus` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_anggota_images`
--

INSERT INTO `content_anggota_images` (`anggimId`, `anggimAnggotaId`, `anggimArimId`, `anggimSaved`, `anggimStatus`) VALUES
(2, 2, 20, '2021-04-19 03:49:55', 1),
(9, 6, 31, '2021-04-26 07:12:50', 1),
(10, 5, 32, '2021-04-27 07:30:28', 1),
(14, 3, 71, '2022-12-22 02:44:33', 1),
(15, 4, 72, '2022-12-22 02:47:46', 1),
(16, 8, 73, '2022-12-22 02:47:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_empowerment`
--

CREATE TABLE `content_empowerment` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_empowerment`
--

INSERT INTO `content_empowerment` (`contentId`, `contentText`) VALUES
(1, '<p>Our activities increase the self-reliance and welfare of communities. We initiate programs on development of knowledge, skills, awareness, and resource utilization.</p>\n<p>One of the instruments BRIRINS uses for this effort is by developing a digitized platform called the Wirausaha Brilian App, an integrated program and application to empower MSMEs. Through this app, MSME owner can obtain information on latest business news, access training and consultancy on financial literacy and business development, join business communities, and promote their products.</p>\n<p>In addition to BRIRINS&rsquo;s own efforts, we also work with stakeholders including government offices, legislators, state-owned enterprises, and private institutions.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_network_client`
--

CREATE TABLE `content_network_client` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_network_client`
--

INSERT INTO `content_network_client` (`contentId`, `contentText`) VALUES
(1, '<p><strong>Clients</strong></p>\n<div class=\"wrapper-gallery\">\n<div class=\"row nomargin\">\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">ACS Apraca</div>\n<div class=\"col-xs-8=4\">Rusia, India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">ACLEDA</div>\n<div class=\"col-xs-8=4\">Cambodia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Amanah Ikhtiar Bank</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">AmBank Berhad</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">AMRET</div>\n<div class=\"col-xs-8=4\">Cambodia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">BAAC</div>\n<div class=\"col-xs-8=4\">Thailand</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Banco de La Paquena</div>\n<div class=\"col-xs-8=4\">Dominican Republic</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Bancosol</div>\n<div class=\"col-xs-8=4\">Bolivia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Bank Kerjasama Rakyat Malaysia</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Bank Pembangunan &amp; Infrastruktur</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Bank Pertanian Malaysia</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Bank Simpanan National Malaysia</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">BASIX</div>\n<div class=\"col-xs-8=4\">India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">BDFC</div>\n<div class=\"col-xs-8=4\">Bhutan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Benxi Credit Union</div>\n<div class=\"col-xs-8=4\">China</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">BGMFI</div>\n<div class=\"col-xs-8=4\">Ethiopia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">BKRM</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">BRAC</div>\n<div class=\"col-xs-8=4\">Bangladesh</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">BRDB</div>\n<div class=\"col-xs-8=4\">Bangladesh</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">CARD</div>\n<div class=\"col-xs-8=4\">Philippines</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">CEM</div>\n<div class=\"col-xs-8=4\">Madagaskar</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">China Post</div>\n<div class=\"col-xs-8=4\">China</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Commercial Bank of Palestine</div>\n<div class=\"col-xs-8=4\">Palestine</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Coop Bank of Kenya</div>\n<div class=\"col-xs-8=4\">Kenya</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Cooperative Bank of Kenya</div>\n<div class=\"col-xs-8=4\">Kenya</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">CRDB</div>\n<div class=\"col-xs-8=4\">Uganda</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Credit rural and Development Bank</div>\n<div class=\"col-xs-8=4\">Tanzania</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Crediamigo</div>\n<div class=\"col-xs-8=4\">Brazil</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Crimson Biz. Solutions Nigeria</div>\n<div class=\"col-xs-8=4\">Nigeria</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Dire Microfinancetitution</div>\n<div class=\"col-xs-8=4\">Ethiopia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">ECLOF</div>\n<div class=\"col-xs-8=4\">Ghana</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">EONCAP Islamic Bank</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Faulu</div>\n<div class=\"col-xs-8=4\">Kenya</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Fullerton India Credit Ltd.</div>\n<div class=\"col-xs-8=4\">India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Goldman Sach</div>\n<div class=\"col-xs-8=4\">Japan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">GTZ Nepal</div>\n<div class=\"col-xs-8=4\">Nepal</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Hong Leong Bank</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">ICCI</div>\n<div class=\"col-xs-8=4\">India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">IMCC</div>\n<div class=\"col-xs-8=4\">Philippines</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">IMY Microfinance</div>\n<div class=\"col-xs-8=4\">India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">JICA Papua New Guinea</div>\n<div class=\"col-xs-8=4\">Japan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">John Hopkins University</div>\n<div class=\"col-xs-8=4\">USA</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">KASHF &amp; IFC</div>\n<div class=\"col-xs-8=4\">Pakistan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Khushali Bank</div>\n<div class=\"col-xs-8=4\">Pakistan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">King Khalid Foundation</div>\n<div class=\"col-xs-8=4\">Saudi Arabia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">K-Rep Bank</div>\n<div class=\"col-xs-8=4\">Kenya</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Krungthai Bank</div>\n<div class=\"col-xs-8=4\">Thailand</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Malayan Banking</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Mercycorp.</div>\n<div class=\"col-xs-8=4\"></div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">MESPT Nairobi</div>\n<div class=\"col-xs-8=4\">Kenya</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Microfinance Network</div>\n<div class=\"col-xs-8=4\">USA</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Microfund</div>\n<div class=\"col-xs-8=4\">Jordan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">MicroSave</div>\n<div class=\"col-xs-8=4\">India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">MOF Kenya</div>\n<div class=\"col-xs-8=4\">Kenya</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">MRRU Bangladesh Bank</div>\n<div class=\"col-xs-8=4\">Bangladesh</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">NABARD</div>\n<div class=\"col-xs-8=4\">India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">National Bank of Ethiopia</div>\n<div class=\"col-xs-8=4\">Ethiopia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">National Microfinance Bank</div>\n<div class=\"col-xs-8=4\">Tanzania</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">National TEKUN Foundation</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Nigerian Agriculture Cooperative and Rural Develop</div>\n<div class=\"col-xs-8=4\">Nigeria</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">OCSSCO</div>\n<div class=\"col-xs-8=4\"></div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">ORIX Leasing Palistan, Ltd.</div>\n<div class=\"col-xs-8=4\">Pakistan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Pakistan Microfinance Network</div>\n<div class=\"col-xs-8=4\">Pakistan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">PBDAC</div>\n<div class=\"col-xs-8=4\">Egypt</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">People Bank of China</div>\n<div class=\"col-xs-8=4\">China</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">PKSF</div>\n<div class=\"col-xs-8=4\">Bangladesh</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Postal Bank</div>\n<div class=\"col-xs-8=4\">Tanzania</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Postal Saving Bank of China</div>\n<div class=\"col-xs-8=4\">China</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Prasac MFI Lmt.</div>\n<div class=\"col-xs-8=4\">Cambodia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">PRASAC</div>\n<div class=\"col-xs-8=4\">Cambodia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">PSBC</div>\n<div class=\"col-xs-8=4\">China</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">RODEM</div>\n<div class=\"col-xs-8=4\">Bolivia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Rasthra Bank</div>\n<div class=\"col-xs-8=4\">Nepal</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">RHB Bank</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Robinson Savings Bank</div>\n<div class=\"col-xs-8=4\">Philippines</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Rural Bankers Fed. Caraga Region</div>\n<div class=\"col-xs-8=4\"></div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Rural Banks</div>\n<div class=\"col-xs-8=4\">Philippines</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Sarhad Rural Support Program</div>\n<div class=\"col-xs-8=4\">Pakistan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Rural Credit Cooperative Association</div>\n<div class=\"col-xs-8=4\">China</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">SFPI Ethiopia</div>\n<div class=\"col-xs-8=4\">Ethiopia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">ShoreBank International</div>\n<div class=\"col-xs-8=4\">Pakistan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">SME Bank</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Southern Bank Malaysia</div>\n<div class=\"col-xs-8=4\">Malaysia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">SRSP</div>\n<div class=\"col-xs-8=4\">Pakistan</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Standard Bank of South Africa</div>\n<div class=\"col-xs-8=4\">South Africa</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Standard Chartered India</div>\n<div class=\"col-xs-8=4\">India</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Ugandan Finance Trust</div>\n<div class=\"col-xs-8=4\">Uganda</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">VBARD</div>\n<div class=\"col-xs-8=4\">Vietnam</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">VBSP</div>\n<div class=\"col-xs-8=4\">Vietnam</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">XAC Bank</div>\n<div class=\"col-xs-8=4\">Mongolia</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">Zambuka Trust</div>\n<div class=\"col-xs-8=4\">Zimbabwe</div>\n</div>\n</div>\n<div class=\"rest-clients col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-8\">RUFIP</div>\n<div class=\"col-xs-8=4\">Ethiopia</div>\n</div>\n</div>\n</div>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `content_network_community`
--

CREATE TABLE `content_network_community` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_network_community`
--

INSERT INTO `content_network_community` (`contentId`, `contentText`) VALUES
(1, '<p>To add its exepertise, BRIRINS draws on its extended community of experts in banking, microfinance, and financial inclusion from within and outside BRI as well as experts in economic development and micro, small, and medium-scale enterprises.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_product_consultancy`
--

CREATE TABLE `content_product_consultancy` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_product_consultancy`
--

INSERT INTO `content_product_consultancy` (`contentId`, `contentText`) VALUES
(1, '<p style=\"text-align: justify;\">We provide consultancy services to financial institutions especially microfinance and non-banks. These services include:</p>\n<p style=\"text-align: justify;\">- Business Planning<br />- Development and Evaluation on Human Capital<br />- Organization (Core Competency Strategy, Organizational Effectiveness, Business Process Redesign)<br />- Marketing<br />- Management Efficiency (Good Corporate Governance and Risk Management)<br />- Business Development (Product and Market Development, Acquisition and Merger, Take Over and Investment, Feasibility Study)<br />- Operational Procedures (Credit and Funding Manual and Procedures, PSAK 50/55 and 71 Manual)</p>\n<p style=\"text-align: justify;\">BRIRINS also has a fully-equipped and operational laboratory and workshop for MSME entrepreneurship development as well as for agriculture technology including pre-planting, planting, harvesting, and post harvesting process.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_product_research`
--

CREATE TABLE `content_product_research` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_product_research`
--

INSERT INTO `content_product_research` (`contentId`, `contentText`) VALUES
(1, '<p style=\"text-align: justify;\">BRIRINS&nbsp;conducts research and studies on microfinance and micro, small, and medium-sized enterprise (MSME) development.</p>\n<p style=\"text-align: justify;\">Our work can help financial institutions and policymakers in decision-making related to MSMEs and microfinance, especially in financial inclusion and poverty reduction.</p>\n<p style=\"text-align: justify;\">One of our research goals is aimed at positioning and empowering banks and non-bank institutions to serve MSME customers creatively and effectively. To accomplish this, we work with financial institutions in the following areas:</p>\n<p>- product repositioning<br />- product life-cycle<br />- product innovation<br />- channel distribution<br />- policy and strategy on pricing<br />- customer profile<br />- business development<br />- human capital development.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_product_technical`
--

CREATE TABLE `content_product_technical` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_product_technical`
--

INSERT INTO `content_product_technical` (`contentId`, `contentText`) VALUES
(1, '<p style=\"text-align: justify;\">BRIRINS&nbsp;provides training and technical assistance to a wide range of enterprises and institutions, from the financial sector as well as MSMEs. We have expertise in microfinance, commercial banking, agriculture, and the craft industry as well as other sectors. This includes helping MSME owners to develop their businesses from upstream level to downstream, i.e. from capital needs, raw materials, production, and the packaging process to the marketing stage.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_study_customize`
--

CREATE TABLE `content_study_customize` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_study_customize`
--

INSERT INTO `content_study_customize` (`contentId`, `contentText`) VALUES
(1, '<p style=\"text-align: justify;\"><strong></strong>BRI Research Institute (BRIRINS) are providing a unique training program where we can modify your training content and schedule based on your company condition and culture. This training allowing participants to learn various aspects of micro banking practices from BRI microfinance experts and specialist both in the head office, regional office, even in branch and BRI Unit office. We are helping Policy Makers, CEO&rsquo;s, Executive from Central Bank, Microfinance Institutions, Micro Banks, Commercial Banks, Development Banks, Government Agencies, NGO&rsquo;s, Donor Agencies, Investors, even Practitioners and Academician which interested in developing sustainable microfinance. The training will take 5 to 10 days, it includes seminar, in class session, discussion with management in BRI Head Office and Regional Offices, followed by direct field experience along with the Branch Managers, and visiting BRI Corporate University as our training center.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_study_overseas`
--

CREATE TABLE `content_study_overseas` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_study_overseas`
--

INSERT INTO `content_study_overseas` (`contentId`, `contentText`) VALUES
(1, '<p style=\"text-align: justify;\">BRI Research Institute (BRIRINS) can bring quality training about microfinance into your doorstep. Supported by years of experience, BRIRINS will give you a comprehensive training that can give you a clear understanding about how BRI microfinance system works. Instead of going to Indonesia for the training, we can conduct the training in your own place, without reducing the quality of the training. Imagine mobilizing savings from borrowers to fund further loans, instead of relying on government subsidies or the instability of donor funding. Imagine freeing up the money now used for credit subsidies to expand health care, schools, and food programs for the poorest in your communities. Throughout the world, donor institutions, governmental agencies, central banks, commercial banks, and development banks, NGO&rsquo;s, researchers, academicians, and consultants &ndash; are all searching for solutions to move billions of people living in poverty into the economic mainstream. Bank Rakyat Indonesia is a Public Listed Company which focus on micro, small, and medium business. It&rsquo;s micro banking system the &ldquo;BRI-Unit&rdquo; provides commercial microfinance to low income clients across Indonesia. It is the only large scale, microfinance institution fully supported by voluntary public savings, operating profitably for more than 30 years. We are so happy to become your global partner to work together in developing microfinance across the world.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `content_study_regular`
--

CREATE TABLE `content_study_regular` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_study_regular`
--

INSERT INTO `content_study_regular` (`contentId`, `contentText`) VALUES
(1, '<p style=\"text-align: justify;\"><strong>POLICY &amp; REGULATION</strong></p>\n<p style=\"text-align: justify;\">This training is suitable for top managements or executives including CEO from Central Bank, Commercial Bank, Investors, Policy Makers, even Practitioners and Academician. You will understand how to create a good policy and regulation for your MFI&rsquo;s based on BRI&rsquo;s best practices and years of experience in Indonesia setting and environment. From one BRI-Unit, Terras BRI-Unit, BRIlink Agent (branches/agent banking), and all the next level of innovation in BRI including, all forms, procedures, reporting requirements, managements information system, risk management, training, and marketing are standardized. The &ldquo;Big Picture&rdquo; becomes clear by observing the BRI-Units. The main objectives of policy &amp; regulation training are to assist you in creating a platform for the establishment of your microfinance institutions.</p>\n<p style=\"text-align: justify;\"><strong>MICRO BANKING SYSTEM</strong></p>\n<p style=\"text-align: justify;\">Micro banking System - General Micro banking for Executive: Discussions with BRI or Central Bank top managements. We will facilitate you to shape and refine your vision and overall strategies. Find out which regulatory policies from the central bank and government are most conducive to your long-term growth. Besides BRI Head Office, this program includes visit to the branch offices, BRI-Units, and BRI-Units Customers which will clarify your strategic and operational planning issues.</p>\n<p style=\"text-align: justify;\">General Micro banking for Practitioners: Whether you&rsquo;re just setting up new microfinance institutions or enhancing an established one, managers, senior staff, consultants, and researchers will get benefit from 3-5 day general micro banking course. Your &ldquo;How to questions?\" will be answered with concrete, practical, and detail solutions for managing and implementing goals and policies such as:policy regulatory, product and innovations, operations to microcredit, saving mobilization, internal control and supervision and other financial inclusion program.</p>\n<p style=\"text-align: justify;\"><strong>INTERNAL CONTROL, SUPERVISION AND RISK MANAGEMENT</strong></p>\n<p style=\"text-align: justify;\">Large-scale outreach, with millions of small deposits and loans, offers plenty of opportunity for fraud - unless you have sound, secure systems set up to maintain supervision and control. This course gives all the details you\'ll need to establish systematic, objective, independent control procedures to keep your microfinance/micro banking running smoothly and profitably. With over 5,300 BRI-Units spread out across 6,000 islands, BRI have had to optimize supervision and control systems to maintain high performance levels. We share BRI best practices with your auditors, financial managers and policy makers.</p>\n<p style=\"text-align: justify;\"><strong>BRANCHLESS OR AGENT BANKING</strong></p>\n<p style=\"text-align: justify;\">BRI Branchless or Agent Banking known as &ldquo;Agen BRILink&rdquo;, by definition, is the delivery of financial services using BRI client&rsquo;s network as the extension of BRI conventional network. This is one of BRI commitment to support the Financial Inclusion Program. Carrying tagline &ldquo;To Reach the Unreachable&rdquo;, BRI try to serve the unserved by distributing the financial services to the remote area where even no other bank want to serve. Using BRI&rsquo;s customer as the Agent, BRI deliver the financial services without building a new BRI office since make partnership with BRI client as the agent (BRIlink) in certain area. This also makes BRI network become more efficient. Even now, by the end of October 2018, BRI already have more than 321.554 Agent all across Indonesia, with sales volume IDR 295,29 Trillion. From this study visit and benchmarking, we will share about the success of BRI on Branchless or Agent Banking in serving loan, saving and other services such as payment (transfer, top up, electricity and water bills, including fertilizer and staples food in agriculture or government aid distribution for the low income people, etc.)</p>\n<p style=\"text-align: justify;\"><strong>COMMUNITY EMPOWERMENT PROGRAM</strong></p>\n<p style=\"text-align: justify;\">Community empowerment refers to the process of enabling communities to increase their live-value and entrepreneurship. Community development and empowerment, therefore, is more than just the involvement, participation or engagement of communities. It implies community ownership and action that explicitly aims at social, political, and even economic change. Through this study visit, BRIRINS will share about how BRI empower the community, and how to create a sustainable and a good relationship between BRI and customer, poverty alleviation program, programmed loan including poverty alleviation program, business incubation, capacity building, and CSR program in the framework of empowering the community. In addition, to increase business productivity and communication from a community, BRIRINS develops an integrated program for micro, small, and medium size business empowerment by using Brilliant Entrepreneurship program called as &ldquo;Wirausaha Brilian&rdquo; mobile application and web www.wirausahabrilian.bri.co.id</p>\n<p style=\"text-align: justify;\"><strong>INFORMATION TECHNOLOGY</strong></p>\n<p style=\"text-align: justify;\">This is about how BRI manage more than 650.000 physical branches/e-channel/branchless banking in one big system by using BRI Networking System &ldquo;BRINETS&rdquo;, including how BRI become the only bank who own and operate satellite system for empowering the core banking system. This study visit will show you how BRI generate system to manage various kind of systems to support the operation and business activity such as Loan Approval System for Loan, BRINETS for Operation, BRISMART for Learning Activity, BRISTARS for Human Resource Management, Data Warehouse portal, and many more.</p>\n<p></p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 28px; top: 917px;\">\n<div class=\"gtx-trans-icon\"></div>\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `content_visi_lsp`
--

CREATE TABLE `content_visi_lsp` (
  `contentId` int(10) UNSIGNED NOT NULL,
  `contentText` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_visi_lsp`
--

INSERT INTO `content_visi_lsp` (`contentId`, `contentText`) VALUES
(1, '<p class=\"lead\" style=\"text-align: justify;\">\n                    <b>Visi</b><br>\n                    Menjadi Lembaga sertifikasi keuangan mikro terbaik di Indonesia\n                </p>\n                <p class=\"lead\" style=\"text-align: justify;\">\n                    <b>Misi</b><br>\n                    Demi mewujudkan visinya, maka LSP P3 Microfinance Indonesia perlu\n                    menjalankan misi yang tepat yaitu:\n                </p>\n                        <div class=\"col-md-8\">\n                            <div class=\"project-details-feature\">\n                                <ul class=\"list-unstyled tech-feature-list\">\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Memiliki tempat uji sertifikasi yang terpercaya bagi seluruh pihak terkait.</strong>\n                                    </li>\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Menyediakan instrument Uji Kompetensi berbasis Teknologi Informasi.</strong>\n                                    </li>\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Mengkinikan berbagai skema uji kompetensi berbasis kebutuhan industri.</strong></li>\n                                </ul>\n                            </div>\n                        </div>\n                    <p class=\"lead\">\n                    <b>Tujuan :</b>\n                    </p>\n                        <div class=\"col-md-8\">\n                            <div class=\"project-details-feature\">\n                                <ul class=\"list-unstyled tech-feature-list\">\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Meningkatkan kualitas/ kompetensi SDM pelaku microfinance Indonesia.</strong>\n                                    </li>\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Menarik investor dan meningkatkan akses pendanaan skala mikro.</strong>\n                                    </li>\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Menjamin kesinambungan program microfinance di Indonesia.</strong></li>\n                                </ul>\n                            </div>\n                        </div>\n                    <p class=\"lead\" style=\"text-align: justify;\">\n                    <b>Sasaran Mutu :</b><br>\n                    </p>\n                        <div class=\"col-md-8\">\n                            <div class=\"project-details-feature\">\n                                <ul class=\"list-unstyled tech-feature-list\">\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Hasil uji kompetensi yang handal dan terpercaya.</strong>\n                                    </li>\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Proses uji kompetensi yang berkualitas.</strong>\n                                    </li>\n                                    <li class=\"py-1\"><span class=\"ti-control-forward mr-2 text-secondary\"></span><strong>Asesor kompetensi yang berkualitas dalam industri.</strong></li>\n                                </ul>\n                            </div>\n                        </div>');

-- --------------------------------------------------------

--
-- Table structure for table `converence`
--

CREATE TABLE `converence` (
  `convId` int(10) UNSIGNED NOT NULL,
  `convTitle` varchar(255) NOT NULL,
  `convExcerpt` varchar(255) NOT NULL DEFAULT '',
  `convDetail` text NOT NULL,
  `convPublishTime` datetime NOT NULL,
  `convSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `convAdmiId` int(11) NOT NULL,
  `convStatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `converence`
--

INSERT INTO `converence` (`convId`, `convTitle`, `convExcerpt`, `convDetail`, `convPublishTime`, `convSaved`, `convAdmiId`, `convStatus`) VALUES
(1, 'Converence', 'Conv Desc', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;Conv Content</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-16 16:31:18', '2020-07-16 09:36:16', 1, 0),
(2, 'Converence', 'Conv Desc', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;Conv Content</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-16 16:32:22', '2020-07-16 09:36:18', 1, 0),
(3, 'Converence Test E', 'desc e', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;dde</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-08 16:36:36', '2020-07-16 09:54:40', 1, 0),
(4, 'Test News', 'Test', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;tset</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-10 00:00:00', '2020-07-16 09:54:37', 1, 0),
(5, 'BMC Converence', 'Converence And Talk Show', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;</p>', '2020-07-22 06:30:40', '2020-07-22 04:43:27', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `converence_images`
--

CREATE TABLE `converence_images` (
  `coimId` int(10) UNSIGNED NOT NULL,
  `coimConvId` int(10) UNSIGNED NOT NULL,
  `coimArimId` int(10) UNSIGNED NOT NULL,
  `coimSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `coimStatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `converence_images`
--

INSERT INTO `converence_images` (`coimId`, `coimConvId`, `coimArimId`, `coimSaved`, `coimStatus`) VALUES
(8, 4, 3, '2020-07-16 09:50:59', 1),
(7, 3, 3, '2020-07-16 09:50:33', 1),
(5, 2, 1, '2020-07-16 09:32:22', 1),
(9, 5, 6, '2020-07-21 23:30:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoId` int(10) UNSIGNED NOT NULL,
  `fotoUserId` int(10) UNSIGNED DEFAULT NULL,
  `fotoEccaId` int(10) UNSIGNED DEFAULT NULL,
  `fotoTitle` varchar(165) DEFAULT NULL,
  `fotoDetail` text DEFAULT NULL,
  `fotoSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fotoStatus` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `foto_image`
--

CREATE TABLE `foto_image` (
  `ftimId` int(10) UNSIGNED NOT NULL,
  `ftimfotoId` int(10) UNSIGNED NOT NULL,
  `ftimArimId` int(10) UNSIGNED NOT NULL,
  `ftimSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ftimStatus` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `headline`
--

CREATE TABLE `headline` (
  `headId` int(10) UNSIGNED NOT NULL,
  `headNewsId` int(10) UNSIGNED NOT NULL,
  `headAdmiId` int(10) UNSIGNED NOT NULL,
  `headSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `headStatus` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `live_stream`
--

CREATE TABLE `live_stream` (
  `lvstId` int(10) UNSIGNED NOT NULL,
  `lvstTitle` varchar(256) NOT NULL DEFAULT '',
  `lvstArimId` int(10) UNSIGNED NOT NULL,
  `lvstEmbed` varchar(256) NOT NULL DEFAULT '',
  `lvstSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lvstUserId` int(11) NOT NULL,
  `lvstActive` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_stream`
--

INSERT INTO `live_stream` (`lvstId`, `lvstTitle`, `lvstArimId`, `lvstEmbed`, `lvstSaved`, `lvstUserId`, `lvstActive`) VALUES
(1, 'BMC', 4, 'https://www.youtube.com/watch?v=F-ie9xD-7zs', '2020-07-21 16:07:44', 1, 0),
(2, 'All About BMC', 4, 'https://www.youtube.com/watch?v=F-ie9xD-7zs', '2020-07-22 03:57:24', 1, 0),
(3, 'BRILink 120 HUT BRI', 8, 'https://www.youtube.com/watch?v=U7iAoJNXY8w', '2021-06-26 02:01:35', 1, 0),
(4, 'Wirausaha BRIlian', 9, 'https://www.youtube.com/watch?v=bskF5_miAF8', '2021-06-26 02:01:33', 1, 0),
(5, 'BRI Research Institute ', 10, 'https://www.youtube.com/watch?v=F-ie9xD-7zs', '2021-06-26 02:01:30', 1, 0),
(6, 'LSP Microfinance Indonesia ', 33, 'https://youtu.be/wyPcEinnbB4', '2024-06-10 01:59:24', 1, 1),
(7, 'Sertifikasi Kompetensi Mitra UMi BRI by LSP Microfinance Indonesia', 173, 'https://youtu.be/QYBLxGd2rXc', '2024-06-10 02:09:03', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` int(10) UNSIGNED NOT NULL,
  `newsTitle` varchar(255) NOT NULL,
  `newsExcerpt` varchar(255) NOT NULL DEFAULT '',
  `newsDetail` text NOT NULL,
  `newsPublishTime` datetime NOT NULL,
  `newsSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `newsAdmiId` int(11) NOT NULL,
  `newsStatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `newsTitle`, `newsExcerpt`, `newsDetail`, `newsPublishTime`, `newsSaved`, `newsAdmiId`, `newsStatus`) VALUES
(1, 'Development Testing', 'Descriptions Content', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;Contents Oke</p>\n<p><img src=\"../../uploads/library/1/1_512x351.jpg\" width=\"100%\" /></p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-16 14:21:41', '2020-07-16 07:54:20', 1, 0),
(2, 'Development Testings', 'Development Testing', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;Dev</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-16 14:56:55', '2020-07-16 07:57:10', 1, 0),
(3, 'Converence Test E', 'desc e', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;dd e</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-15 16:36:36', '2020-07-16 09:42:36', 1, 0),
(7, 'Training and Technical Assistance for MSMEs Development', 'Training and Technical Assistance for MSMEs Development', '<p style=\"text-align: justify;\"><span>BRI asked BRIRINS to provide training and technical assistance to its small-business customers in Malang and Manado. The training topics included entrepreneurship, financial plans for small-scaled enterprises as well as financial literacy.</span></p>', '2020-01-02 00:00:00', '2021-04-18 07:44:54', 1, 0),
(4, 'Converence', 'Conv Desc', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;Conv Content</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-16 16:27:41', '2020-07-16 09:32:32', 1, 0),
(5, 'Converence', 'Conv Desc', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;Conv Content</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-16 16:28:47', '2020-07-16 09:32:30', 1, 0),
(6, 'Article Test', 'Article Desc', '<p><strong style=\"color: #999;\">BRI Microfinance Center - </strong>&nbsp;Article Content</p>\n<div id=\"mouseposition-extension-element-full-container\" style=\"position: fixed; top: 0px; left: 0px; right: 0px; bottom: 0px; pointer-events: none; z-index: 2147483647; font-weight: 400;\">\n<div id=\"mouseposition-extension-element-rect-display\" style=\"display: none; position: absolute; background: rgba(255, 255, 255, 0.7); outline: black solid 1px; font-size: 12px; z-index: 2147483647; justify-content: center; align-items: center; user-select: none; cursor: default; color: #000000; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; width: 0px; height: 0px;\">\n<pre style=\"flex: 1 1 0%; text-align: center; background-color: rgba(255, 255, 255, 0.7); color: #000000; min-width: 42px; min-height: 12px; transition: all 1s ease 0s;\"></pre>\n</div>\n<pre id=\"mouseposition-extension-element-coordinate-display\" style=\"position: absolute; display: none; background: #ffffff; font-size: 12px; line-height: 14px; border-radius: 3px; border-width: 1px; border-color: #222222 black #333333; border-style: solid; padding: 3px; z-index: 2147483647; color: #222222; user-select: none; cursor: default; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\"></pre>\n</div>', '2020-07-16 16:34:07', '2020-07-22 04:01:55', 1, 0),
(8, 'Study Visits from International Communities', 'Study Visits from International Communities', '<p style=\"text-align: justify;\"><span>BRIRINS received groups of microfinance bankers from Nepal, Srilanka, and Pakistan as well as graduate students from the Global Network for Advanced Management from several different countries to study about microfinance in Indonesia, especially in Bank Rakyat Indonesia. Participants in BRIRINS&rsquo;s one-day program received an overview of BRI and Indonesian microfinance, while participants in the 5-day deep dive explored specific microfinance topics during their study visits. These visitors had an opportunity to visit the Bank&rsquo;s micro borrowers, a BRI microfinance unit, a branchless banking unit, and more.</span></p>', '2020-02-08 00:00:00', '2021-04-18 07:44:58', 1, 0),
(9, 'Mentorship and Curator in Food Startup Indonesia Competition and Conference', 'Mentorship and Curator in Food Startup Indonesia Competition and Conference', '<p style=\"text-align: justify;\"><span>In mid-July the Indonesian Creative Economy Body (BEKRAF) organized its &ldquo;Pitching Competition and Conference on Food Startup Indonesia&rdquo; in Surabaya, East Java. BRIRINS participated as part of the curator and mentorship team which included prominent food companies, investors, related government officials in creative economy, etc. BEKRAF aimed to maximize the potential of the culinary industry in Indonesia&rsquo;s creative economy development. They pre-selected 150 food startup companies from all over the country to join this event before selecting the 30 best startups. These winners received business partners as well as investors to develop their businesses.</span></p>', '2020-04-08 00:00:00', '2021-04-18 07:46:43', 1, 0),
(10, 'Bio-Econ Expo 2019', 'Bio-Econ Expo 2019', '<p style=\"text-align: justify;\"><span>In July 2019 BRIRINS participated as one of the featured speakers and curators in the Start-up Business Competition held by the United Nations Development Programme (UNDP) in Jakarta. This competition was focused on social and bio-diversity-related businesses.</span></p>', '2020-05-14 00:00:00', '2021-04-26 04:50:30', 1, 0),
(11, 'Plataran UMKM Edisi Pendampingan Sertifikasi Halal', 'Plataran UMKM Edisi Pendampingan Sertifikasi Halal', '<p style=\"text-align: justify;\"><span>PT Bank Rakyat Indonesia (Persero) Tbk terus menunjukkan komitmennya dalam mendampingi pelaku Usaha Mikro Kecil dan Menengah (UMKM) dalam mengembangkan bisnis mereka. Salah satu terobosan yang telah dilakukan adalah mengadakan kelas online bertajuk Plataran UMKM: Pendampingan Proses Sertifikasi Halal Edisi Eksklusif 125 UMKM Pemenang Kurasi Event GUKMI (Galang UKM) 2019.</span><br /><br /><span>BRI Microfinance Center ditunjuk sebagai pelaksana, mengkonsep acara ini dalam rangkaian Program Plataran UMKM. Adapun edisi sebelumnya yakni Plataran UMKM edisi Kelas Kopi, Edisi Kelas Sehat hingga Edisi Sertifikasi Halal. Semua pelatihan online ini ditayangkan melalui Aplikasi Wirausaha Brilian, sebuah aplikasi pengelolaan UMKM terpadu yang nantinya bisa ditonton dan dilihat dikemudian hari.</span><br /><br /><span>Acara ini juga termasuk tugas awal BRI Microfinance Center sebagai penyelia halal sejak sejak diresmikan pada tanggal 23 januari 2020 oleh kepala BPJPH Prof. Ir. Sukoso, M.Sc, Ph.D bersama dengan Ibu Anita Retnani selaku Direktur Utama BMC di Gedung BRI II. Harapannya adalah agar BMC sebagai garda terdepan pemberdayaan UMKM dapat aktif dan cepat dalam membantu pelaku UMKM untuk mengajukan sertifikasi halal sehingga UMKM cepat untuk bersaing dengan produk-produk dari luar negeri.</span><br /><br /><span>Beberapa materi yang dibagikan dalam kelas online tersebut meliputi titik krisis halal, prosedur dan administrasi proses sertifikasi serta terakhir, ketentuan regulasi penyelenggaraan JPH.</span><br /><br /><span>Menurut Ust. Moh Yamin selaku pemateri Ketentuan Regulasi Penyelenggaraan JPH mengatakan &rdquo;agar UMKM memperhatikan secara detail bahan-bahan penyusun atau kompisisi produk UMKMnya, terkadang ada campuran zat-zat yang tidak halal tercampur dalam produk sehingga mengakibatkan produk tersebut tidak halal&rdquo;.</span><br /><br /><span>Bapak Burhan Primanintyo selaku narasumber Titik Kritis Halal \"Lebih menelaah secara dalam definisi Halal dari aspek agama Islam&rdquo;, sedangkan Ibu Lia Merlina menjelaskan tentang Prosedur dan Administrasi Proses Sertifikasi Halal \"Bagaimana UMKM mengajukan Dokumen produk halal dari Lembaga Penjamin Halal (LPH) atau Audit Halal dan Majelis Ulama Indonesia (MUI).</span><br /><br /><span>Pada akhirnya, acara ini diharapkan mampu mengakselerasi UMKM memperoleh sertifikasi halal dan mendorong UMKM Go Global.</span></p>', '2020-06-18 00:00:00', '2020-07-23 07:26:54', 1, 0),
(12, 'Plataran UMKM: Assistance to Halal Certification Process Exclusive Edition 125 UMKM Winner', 'Plataran UMKM: Assistance to Halal Certification Process Exclusive Edition 125 UMKM Winner', '<p><strong style=\"color: #999;\">BRI Research Institute - </strong>&nbsp;PT Bank Rakyat Indonesia (Persero) Tbk continues to show their commitment in assisting&nbsp; Micro&nbsp; Small&nbsp; Medium Enterprises (MSME) entrepreneurs in developing their business. In collaboration with BRI Research Institute,&nbsp; they held an online class titled UMKM Plataran: Assistance to Halal Certification Process Exclusive Edition 125 UMKM Winners of Curation of GUKMI (Galang UKM) Event 2019.</p>\n<p>Some of the material shared in the online class includes the halal crisis point, procedure, and administration of the certification process and finally, the regulatory provisions for the implementation of JPH. Ust. Moh Yamin as the presenter of the JPH Implementation Regulations said that \" MSME has to pay attention on detail to the ingredients of the MSME products or composition, sometimes there is a mixture of non-halal substances mixed in the product so that the product is not halal\".</p>\n<p>This event also included the initial task of the&nbsp;<span>BRI Research Institute</span> as a halal supervisor since it was inaugurated on January 23, 2020 by the head of BPJPH Prof. Ir. Sukoso, M.Sc, Ph.D together with Ms. Anita Retnani as the Managing Director of BRIRINS in BRI II Building.</p>\n<p></p>\n<p>MA</p>', '2020-07-29 07:45:00', '2021-04-21 03:37:46', 1, 0),
(13, 'BRI Research Institute Provides Training on UMKM Access to Modern Markets with Indomaret', 'BRI Research Institute Provides Training on UMKM Access to Modern Markets with Indomaret', '<p><strong style=\"color: #999;\">BRI Research Institute&nbsp;- </strong>&nbsp;BRI Research Institute (BRIRINS) remains consistently committed in advancing Indonesia\'s MSMEs which are being forged by the Covid-19 pandemic. One of which is to hold training for Micro, Small and Medium Enterprises (MSME) entrepreneurs to enter the Modern Market. Indomaret as a large retail franchise network in Indonesia is lined up to become a partner in this training.</p>\n<p>Indomaret was represented by Purwanto Wahyudi as Microenomics Project Executive welcomed this training, Indomaret was willing to help MSMEs in improving the quality of their products and packaging, hoping that later MSMEs could enter and join to market their products at Indomaret outlets.</p>\n<p>\"For the way a product can enter Indomaret is not difficult, only through a number of stages of screening in accordance with Indomaret standards. This is to maintain good quality products that enter the Modern Market, \"said Purwanto</p>\n<p></p>\n<p>MA</p>', '2020-07-29 07:55:00', '2021-04-26 04:50:28', 1, 0),
(14, 'BRI Research Institute Holds Online Training for MSMEs to Survive the Pandemic Period', 'BRI Research Institute Holds Online Training for MSMEs to Survive the Pandemic Period', '<p><strong style=\"color: #999;\">BRI Research Institute - </strong>&nbsp;BRI Research Institute (BRIRIns) remains consistently committed to advancing Indonesian MSMEs, one of which is by collaborating with the Bank BRI through BRIncubator to hold an online training themed \"RERAMBAT PLANT: Medicinal Herbs and Herbs\" on Wednesday, March 3, 2021.</p>\n<p>In this online training, Karyanto as Founder of Jamudigital.com and Murjiyanti as local heroes will be present as speakers who will share knowledge about the world of herbs and spices and experiences regarding herbal medicine.</p>\n<p>\"The back to nature movement has been echoed all over the world. This movement teaches people to switch from synthetic medicines to medicines made from natural (herbal) or what we know in Indonesia as traditional medicine or herbal medicine. So, the world community is aware of natural ingredients and of course, this is a tremendous potential for \"said Karyanto, Wednesday (3/3/2021).</p>\n<p>In line with this, Murjiyati with 35 years of experience selling herbal medicine also provides tips for marketing herbal products, &ldquo;Don\'t be ashamed to sell herbal medicine, don\'t be underestimated. Jamu is very useful for health. So, it is better if other Indonesian MSMEs are enthusiastic about selling herbal medicine because it is much needed by all groups. \" said Murjiyati.</p>\n<p>BRI and the BRI Research Institute are committed to providing commodity-based online training to inspire this business with up to 12 editions throughout 2021.</p>\n<p></p>\n<p>GN/MA</p>', '2021-03-03 17:00:00', '2021-04-26 04:50:26', 1, 0),
(15, 'BMSI Survey, UMKM Players Are Optimistic Towards 2021', 'The President Director of BRI Sunarso delivers the results of the BMSI survey in a virtual manner in Jakarta, Thursday, February 18, 2021', '<p><strong style=\"color: #999;\">BRI Research Institute - </strong>Optimism of micro, small and medium enterprises (MSMEs) in doing business in the fourth quarter of 2020 is maintained. This was reflected in the BRI Micro &amp; SME Index (BMSI) expectation index which was recorded above 100, namely 105.4.</p>\n<p>The high expectation index shows that the majority of MSME players are optimistic that their business activities will improve in the first quarter of 2021. \"The business world is quite optimistic towards 2021,\" said the President Director of BRI Sunarso when delivering the results of the BMSI survey in a virtual manner in Jakarta, Thursday, February 18, 2021.</p>\n<p>On the other hand, the results of the BMSI survey this time also showed an increase in the confidence index of MSME players in the Government (IKP), namely 136.3, higher than the previous quarter which was at 126.8. Sunarso concluded that this figure shows that the majority of MSME actors give a good assessment of the Government\'s ability to carry out its duties.</p>\n<p>In general, the MSME business performance in the fourth quarter of 2020 experienced a slight decline compared to the previous period, namely to 81.5, from the previous figure of 84.2. This decline is in line with the decline in GDP of minus 0.42 percent from the third quarter to the fourth quarter of 2020.</p>\n<p>Three factors were recorded as the causes of this decline in the performance of MSMEs, namely the impact of tightening social activities and community mobility, seasonal factors or business cycles, and the influence of weather that disrupted the production of MSMEs.</p>\n<p>\"The strict PSBB policy at the end of the third quarter of 2020, which was followed by a reduction in the Christmas and New Year 2020 holidays, made many consumers cancel their year-end holiday and shopping plans, which further suppressed the business performance of MSMEs,\" said Sunarso.</p>\n<p>BMSI noted that the largest decrease occurred in production volume and sales value. This has an impact on the lower volume of input goods, finished goods, and the use of labor. By sector, almost all sectors experienced a decline, except for the manufacturing sector. The highest decline occurred in the hotel and restaurant sector.</p>\n<p>Meanwhile, the decline in the agricultural sector is related to the start of the planting season, so that agricultural production, particularly food crops, has decreased. Furthermore, the BMSI level in the mining and construction sector was also lower than the previous quarter, due to high rainfall which disrupted construction (housing) activities and mining production activities.</p>\n<p>BRI senior economist Anton Hendranata said the stimulus for the 2020 economic recovery in the form of restructuring, new loans, and a combination of the two have had a positive impact on business actors so that they do not fall deeper.</p>\n<p>&ldquo;When they don\'t fall deeper, they are supported by new loans, allowing them to get back into the business. Likewise, business actors who can still survive then get new loans, it is very effective for them to get up, \"he said.</p>\n<p>The Business Activity Survey and MSME Business Sentiment Bank Rakyat Indonesia has a sample of 5,000 MSME company respondents spread across all economic sectors and in 33 provinces. The sample selection is carried out using the stratified systematic random sampling method so that it can represent the business sector, province, and business scale. This survey was conducted by the BRI Research Institute on 11 January - 3 February 2021. Interviews were conducted by telephone with strict quality control so that the data collected was valid and reliable.</p>\n<p></p>\n<p>GN/MA</p>', '2021-02-18 13:15:00', '2021-04-21 03:33:35', 1, 0),
(16, 'Pelatihan & Uji Sertifikasi Calon Asesor Kompetensi LSP Micro Finance Indonesia,  tanggal 21 - 24 Desember 2020.', 'Pelatihan & Uji Sertifikasi Calon Asesor Kompetensi LSP Micro Finance Indonesia,  tanggal 21 - 24 Desember 2020.', '<strong style=\"color:#999\">LSP Microfinance Indonesia - </strong> ', '2021-12-21 00:00:00', '2021-04-21 03:19:12', 1, 1),
(17, 'Evaluasi Hasil Pekerjaan Calon Asesor oleh Master Asesor pada Pelatihan & Uji Sertifikasi Asesor Kompetensi LSP Micro Finance Indonesia', 'Evaluasi Hasil Pekerjaan Calon Asesor oleh Master Asesor pada Pelatihan & Uji Sertifikasi Asesor Kompetensi LSP Micro Finance Indonesia', '<strong style=\"color:#999\">LSP Microfinance Indonesia - </strong> ', '2021-12-21 00:00:00', '2021-04-21 03:31:00', 1, 1),
(18, 'Pengarahan Master Asesor kepada Calon Asesor pada Acara Asesmen Calon Asesor (ACA) pada Tanggal 31 Januari 2021 di Gedung BRI II Lt. 29', 'Pengarahan Master Asesor kepada Calon Asesor pada Acara Asesmen Calon Asesor (ACA) pada Tanggal 31 Januari 2021 di Gedung BRI II Lt. 29', '<strong style=\"color:#999\">LSP Microfinance Indonesia - </strong> ', '2021-12-22 00:00:00', '2021-04-21 03:33:15', 1, 1),
(19, 'Foto Bersama Master Asesor (Penguji) dengan Calon Asesor beserta Pengurus LSP Micro Finance Indonesia  pada Acara Asesmen Calon Asesor (ACA) pada Tanggal 31 Januari 2021 di Gedung BRI II Lt. 29', 'Foto Bersama Master Asesor (Penguji) dengan Calon Asesor beserta Pengurus LSP Micro Finance Indonesia  pada Acara Asesmen Calon Asesor (ACA) pada Tanggal 31 Januari', '<strong style=\"color:#999\">LSP Microfinance Indonesia - </strong> ', '2021-12-31 00:00:00', '2021-04-21 03:36:50', 1, 1),
(20, 'Sertifikasi Pengelola BPR Mei 2022', 'Sertifikasi Pegelola BPR Mei 2022', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;Pada bulan Mei telah dilaksanakan sertifikasi kompetensi dengan skema Pelaksanaan Proses Pinjaman terhadap 27 peserta bertempat tinggal di LSP Microfinance Indoseia. Asessment ini merupakan realisasi dari MOU yang sudah ditanda tangani oleh BPR Botani dan LSP Microfinance Indonesia.</p>', '2022-06-09 11:08:34', '2022-06-09 04:08:34', 6, 1),
(21, 'Pelaksanaan Sertifikasi Kompetensi Mitra UMi BRI di Yogyakarta', 'Pelaksanaan Sertifikasi Mitra UMi BRI KC Adisucipto Yogyakarta', '<p><strong style=\"color: #999;\"><strong>Yogyakarta<span>&nbsp;</span></strong>&nbsp;- </strong><strong>&nbsp;</strong>Rabu 15 Juni 2022, LSP Microfinance Indonesia telah melaksanakan Uji Kompetensi kepada 34 Mitra UMi dari wilayah Yogyakarta, Klaten, Kutoarjo, Bantul, Magelang, Muntilan , Parakan, dan Purworejo.</p>\n<p>&ldquo;<em>Sertifikasinya tidak seperti ujian, tapi seperti ngobrol santai dan suasananya menyenangkan</em>&rdquo; jelas Ibu Iik salah satu Mitra UMi Unit Tegalrejo</p>\n<p>Uji Kompetensi yang diadakan di TUK Sewaktu BRI KC Adisucipto Yogyakarta ini merupakan agenda perdana dalam pelaksanaan sertifikasi kompetensi para Mitra UMi sebagai wujud komitmen LSP Microfinance Indonesia dengan Divisi Ultra Micro BRI dalam mengembangkan dan memberdayakan Mitra UMi sebagai kepanjangan tangan BRI dalam suatu komunitas.&nbsp;</p>', '2022-07-04 09:39:41', '2022-07-04 02:39:41', 6, 1),
(22, 'Pelaksanaan Sertifikasi Kompetensi Mitra UMi BRI KC Solo', 'Pelaksanaan sertifikasi Mitra UMi BRI KC Solo', '<p><strong style=\"color: #999;\">Solo - </strong>&nbsp;Dalam rangkaian agenda kegiatan sertifikasi kompetensi Mitra UMi batch kedua LSP Microfinance Indonesia yang berlokasi di TUK Sewaktu BRI KC Slamet Riyadi, Solo, pelaksanaan uji kompetensi kali ini dihadiri oleh 34 peserta dari berbagai wilayah Karanganyar, Sragen, Wonogiri dan Boyolali. Diharapkan proses sertifikasi ini dapat membantu untuk meyakinkan para klien, bahwa produk yang dihasilkan dibuat oleh tenaga yang berkompeten di bidangnya.</p>', '2022-07-04 09:42:34', '2022-08-08 06:36:53', 6, 1),
(23, 'Antusiasme Mitra UMi BRI di Tempat Uji Kompetensi Sewaktu KC Purbalingga', 'Pelaksanaan Sertifikasi Mitra UMi BRI KC Purbalingga ', '<p><strong style=\"color: #999;\">Purbalingga - </strong>&nbsp;Kegiatan Sertifikasi Kompetensi Mitra UMi di agenda ketiga bertempat di BRI KC Purbalingga. Pelaksanaan sertifikasi kali ini dihadiri oleh 58 peserta dari berbagai daerah diantaranya Kebumen, Banjarnegara, Wonosobo, Majenang, Gombong, Purwokerto, Cilacap, dan Ajibarang. Pelaksanaan sertifikasi yang diadakan di BRI KC Purbalingga ini merupakan penutup dari serangkaian kegiatan sertifikasi untuk wilayah kerja kantor wilayah Yogyakarta.</p>', '2022-07-04 09:56:59', '2022-07-04 02:56:59', 6, 1),
(24, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 6 - 7 Juni 2022 di BRI KC Semarang Pattimura', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 6 - 7 Juni 2022 di BRI KC Semarang Pattimura', '<p><strong>Semarang &ndash; </strong>Setelah menutup pelaksanaan sertifikasi di BRI KC Purbalingga, pelaksanaan Sertifikasi selanjutnya menuju ke Semarang, tepatnya di BRI KC Semarang Pattimura. Pelaksanaan sertifikasi kali ini dihadiri oleh 41 peserta dari berbagai daerah tidak hanya dari Kota Semarang namun para peserta ada juga dari Kendal dan Demak.</p>\n<p>&ldquo;<em>awalnya saya pikir sertifikasi njlimet atau susah, ternyata setelah bertemu assessor hanya berdiskusi tentang apa yang sudah kita lakukan&rdquo; </em>jelas Bapak Nur Kholis&nbsp; salah satu Mitra UMi Unit Pegandon Kendal</p>\n<p>Acara sertifikasi di BRI KC Semarang Pattimura merupakan agenda pembuka untuk pelaksanaan sertifikasi area kerja Kantor Wilayah Semarang. Untuk sertifikasi selanjutnya, tim LSP Microfinance Indonesia akan menuju ke kota kedua yakni BRI KC Purwodadi.</p>', '2022-08-08 15:00:00', '2022-08-08 06:31:10', 6, 1),
(25, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 13 - 14 Juli 2022 di BRI KC Purwodadi', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 13 - 14 Juli 2022 di BRI KC Purwodadi', '<p><strong style=\"color: #999;\">Purwodadi&nbsp;- </strong>&nbsp;Dalam agenda kedua LSP Microfinance Indonesia menuju ke Tempat Uji Kompetensi selanjutnya yakni di BRI KC Purwodadi. Pelaksanaan Uji Kompetensi kali ini dihadiri oleh 73 peserta yang khusus dihadiri oleh peserta di KC Purwodadi. Semangat dari mitra UMi BRI KC Purwodadi menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Sesudah menyelesaikan sertifikasi di BRI KC Purwodadi tim LSP Microfinance menuju ke kota selanjutnya yakni Blora</p>', '2022-08-08 15:00:00', '2022-08-08 06:32:46', 6, 1),
(26, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 16 - 17 Juli 2022 di BRI KC Blora', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 16 - 17 Juli 2022 di BRI KC Blora', '<p><strong style=\"color: #999;\">Blora&nbsp;- </strong>&nbsp;Agenda ketiga LSP Microfinance Indonesia menuju ke Tempat Uji Kompetensi selanjutnya yakni di BRI KC Blora. Pelaksanaan sertifikasi kali ini dihadiri oleh 48 peserta dari berbagai wilayah di sekitar Blora seperti Cepu dan Rembang. Meskipun jalan menuju TUK BRI KC Blora banyak yang sedang dalam fase perbaikan namun tidak menurunkan semangat peserta sertifikasi Mitra UMi untuk melaksanakan sertifikasi dan bertemu dengan rekan &ndash; rekan mitra UMi yang lain. Tim LSP Microfinance selanjutnya menuju ke kota Tegal sebagai rangkaian kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-08-08 15:00:00', '2022-08-08 06:36:31', 6, 1),
(27, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 20 – 21 Juli 2022 di BRI KC Tegal', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 20 – 21 Juli 2022 di BRI KC Tegal', '<p><strong style=\"color: #999;\">Tegal&nbsp;- </strong>&nbsp;Agenda keempat LSP Microfinance Indonesia menuju ke Tempat Uji Kompetensi selanjutnya yakni di BRI KC Tegal. Pelaksanaan sertifikasi kali ini dihadiri oleh 62 peserta dari berbagai wilayah di sekitar Tegal seperti Brebes, Bumiayu, Slawi. Diharapkan proses sertifikasi ini dapat membantu Mitra UMi mendapatkan legitimasi dan menjadi advisor keuangan nasabah yang membutuhkan kredit. Tim LSP Microfinance selanjutnya menuju ke kota Pekalongan sebagai rangkaian kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-08-08 15:00:00', '2022-08-08 07:33:18', 6, 1),
(28, 'Antusiasme Mitra UMi di Tempat Uji Kompetensi BRI KC Pekalongan pada 22 Juli 2022', 'Antusiasme Mitra UMi BRI di Tempat Uji Kompetensi Pekalongan pada 22 Juli 2022', '<p><strong style=\"color: #999;\">Pekalongan&nbsp;- </strong>&nbsp;Agenda kelima LSP Microfinance Indonesia menuju ke BRI KC Pekalongan. Pelaksanaan sertifikasi kali ini dihadiri oleh 30 peserta dari berbagai daerah tidak hanya di sekitar wilayah Pekalongan namun hingga Batang dan Pemalang. Diharapkan proses sertifikasi ini dapat membantu untuk meyakinkan para klien, bahwa produk yang dihasilkan dibuat oleh tenaga yang berkompeten di bidangnya</p>', '2022-08-08 15:00:00', '2022-08-08 07:40:07', 6, 1),
(29, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 2 – 3 Agustus 2022 di Kudus', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 2 – 3 Agustus 2022 BRI KC Kudus', '<p><strong style=\"color: #999;\">Kudus -&nbsp;</strong>Agenda keenam LSP Microfinance Indonesia menuju ke BRI KC Kudus. Pelaksanaan sertifikasi kali ini dihadiri oleh 60 peserta dari berbagai daerah tidak hanya di sekitar wilayah Kudus namun hingga Demak dan Jepara. Semangat dari mitra UMi BRI KC Purwodadi menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke kota Pati sebagai penutup rangkaian kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-08-08 15:00:00', '2022-08-08 07:52:19', 6, 1),
(30, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 4 - 5 Agustus 2022 di BRI KC Pati', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 4 - 5 Agustus 2022 di BRI KC Pati', '<p><strong style=\"color: #999;\">Pati&nbsp;- </strong>&nbsp;Dalam agenda terakhir serangkaian sertifikasi wilayah Semarang, LSP Microfinance Indonesia menuju ke Tempat Uji Kompetensi selanjutnya yakni di BRI KC Pati. Pelaksanaan Uji Kompetensi kali ini dihadiri oleh 63 peserta yang khusus dihadiri oleh peserta di KC Pati. Kegiatan sertifikasi di KC Pati Sebagai penutup serangkaian pelaksanaan sertifikasi. Tercatat 377 Mitra UMi area kerja kanwil Semarang sudah melakukan proses sertifikasi.&nbsp;&nbsp; Dalam pelaksanaan sertifikasi kompetensi para Mitra UMi sebagai wujud komitmen LSP Microfinance Indonesia dengan Divisi Ultra Micro BRI dalam mengembangkan dan memberdayakan Mitra UMi sebagai kepanjangan tangan BRI dalam suatu komunitas.</p>', '2022-08-08 15:00:00', '2022-08-08 07:55:57', 6, 1),
(31, 'Pelaksanaan uji sertifikasi dengan BEST Mitra UMi BRI pada 15 Juli 2022 di Jakarta', 'Pelaksanaan uji sertifikasi dengan BEST Mitra UMi BRI pada 15 Juli 2022 di Jakarta', '<p><strong style=\"color: #999;\">Jakarta&nbsp;- </strong>&nbsp;Dalam agenda sertifikasi kali ini, Divisi Ultra Micro dengan LSP Microfinance secara khusus mengundang agent UMi yang memiliki prestasi dari berbagai Kanwil BRI di Indonesia untuk mengikuti sertifikasi di TUK BRI Kantor Pusat. Sejumlah 6 peserta Mitra UMi dari yakni Kanwil Malang, Kanwil Jakarta 2, Kanwil Denpasar, Kanwil Semarang, Kanwil Banjarmasin dan Kanwil Medan. Dalam pelaksanaan sertifikasi kompetensi para Mitra UMi sebagai wujud komitmen LSP Microfinance Indonesia dengan Divisi Ultra Micro BRI dalam mengembangkan dan memberdayakan Mitra UMi sebagai kepanjangan tangan BRI dalam suatu komunitas.</p>', '2022-08-08 15:00:00', '2022-08-09 01:48:01', 6, 1),
(32, 'Urgensi Sertifikasi Profesi Microfinance', 'Urgensi Sertifikasi Profesi Microfinance', '<p><strong>F</strong><strong>ajar S Pramono</strong></p>\n<p><em>Vice President BRI/BRI Research Institute</em></p>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\n<p>Pengelolaan portofolio atau pembiayaan usaha mikro dan ultra mikro merupakan salah satu bidang layanan jasa keuangan penting hari ini. Mengapa? Karena dunia ekonomi Indonesia semakin mengakui kontribusi sektor UMKM ini, baik dari aspek dominansi usaha yang mencapai 99,9% dari seluruh entitas bisnis di Indonesia, penyerapan tenaga kerja yang mencapai 97% dari total tenaga kerja yang ada, serta kontribusi terhadap PDB yang mencapai angka 61,07% di pertengahan tahun 2021 ini.</p>\n<p>Selain itu, UMKM <em>include</em> di dalamnya usaha ultra mikro yang saat ini sedang dalam prioritas pengembangan dan pemberdayaan diakui merupakan salah satu sumber pertumbuhan baru ekonomi Indonesia. Dalam sebuah webinar Holding Ultra Mikro bulan Agustus 2021 lalu Menteri Koperasi dan UKM Teten Masduki mengatakan, sebanyak 30 juta dari total 57 juta usaha ultra mikro di Indonesia belum memiliki akses pembiayaan formal. Dari 30 juta usaha ultra mikro tersebut, 5 juta usaha masih bergantung kepada rentenir, 8 juta usaha mengandalkan pinjaman dari kerabat, sementara 18 juta lainnya memang belum terlayani sama sekali.</p>\n<p>Di sisi yang lain lagi, harapan tinggi disampaikan Menteri Keuangan Sri Mulyani yang menargetkan tambahan sebanyak 29 juta usaha ultra mikro untuk bisa memperoleh akses pembiayaan melalui holding ultra mikro sampai dengan tahun 2024. Juga harapan adanya penyerapan tenaga kerja dalam jumlah yang sama dari Menteri BUMN, berdasar asumsi penyerapan 1 (satu) tenaga kerja per usaha ultra mikro yang naik kelas tersebut.</p>\n<p>Mengingat sedemikian besar kontribusi dan potensi sektor UMKM berikut ultra mikro bagi perekonomian Indonesia, pengelolaan dan pengembangannya tidak boleh salah arah. <em>Treatment</em> yang keliru dalam membangun sektor ini akan menjadi bumerang bagi masa depan perekonomian Indonesia.</p>\n<p>&nbsp;</p>\n<p><strong>Profil Unik Ultra Mikro </strong></p>\n<p>Usaha ultra mikro khususnya, memiliki profil usaha yang unik. Definisi usaha ultra mikro itu sendiri sudah sangat spesifik. Yakni, usaha milik orang perorangan yang dijalankan dengan tujuan memenuhi kebutuhan hidup sehari-hari (<em>an sich</em>).&nbsp;</p>\n<p>Profil unik usaha ultra mikro lainnya adalah budaya pengelolaan keuangan yang sangat konvensional. Mereka tidak terbiasa membuat catatan <em>cash flow</em>, belum memiliki rekening di bank atau simpanan teradministrasi di koperasi, belum mampu memisahkan antara uang usaha (modal berputar) dengan uang hasil usaha (<em>saving</em>), sehingga hampir selalu ditemukan jawaban &ldquo;yang penting bisa makan&rdquo; ketika ada pertanyaan terkait berapa omset dan keuntungan usaha yang didapatkannya.</p>\n<p>Sebagai usaha yang baru berpikir &ldquo;untuk makan&rdquo;, rata-rata usaha ultra mikro belum memiliki orientasi pengembangan usaha ke depan (naik kelas) yang jelas. Usaha sekedar &ldquo;mengalir&rdquo;, dikerjakan sendiri oleh anggota keluarga yang ada, dan hasilnya terbatas untuk keperluan hari itu dan modal esok harinya.</p>\n<p>Selain itu, rata-rata pelaku usaha ultra mikro tidak memiliki jenjang pendidikan yang cukup tinggi, sehingga mereka belum terbiasa melakukan pembelajaran dan pengembangan diri secara mandiri (otodidak).</p>\n<p>Yang diharapkan memang asupan literasi. Apakah itu dari pemerintah, lembaga keuangan, lembaga pemberdayaan ekonomi, perguruan tinggi, dan lain sebagainya. Namun, harapan ini berhadapan dengan dua hal : belum meratanya gerak literasi keuangan, serta tingkat penyerapan pemahaman yang cenderung minimal akibat rendahnya tingkat pendidikan tadi.</p>\n<p>Keunikan lainnya adalah minimnya inovasi, baik dari aspek pemasaran, terlebih aspek teknologi yang mengharuskan investasi. Rata-rata mereka mendapatkan ilmu usaha dari teman, orang tua, ataupun masih sekedar terinspirasi dari <em>booming</em> usaha ultra mikro tertentu pada saat tertentu pula. Tidak berkelanjutan. Semua itu tentu menjadi tantangan bagi naik kelasnya mereka ke usaha mikro, kecil dan menengah, yang harus ditemukan metode pengatasannya.</p>\n<p>&nbsp;</p>\n<p><strong>Sertifikasi Profesi</strong></p>\n<p>Dengan keunikan yang dimiliki usaha mikro dan ultra mikro itulah, diperlukan validasi kapabilitas serta kredibilitas pelaku bisnis <em>microfinance</em>, yang evaluasinya bisa dilakukan melalui lembaga sertifikasi profesi.</p>\n<p>Masalahnya, saat ini belum banyak Lembaga Sertifikasi Profesi (LSP) yang bergerak khusus di bidang <em>microfinance</em>. Dari daftar LSP berlisensi di laman resmi milik Badan Nasional Sertifikasi Profesi (BNSP), baru ada satu LSP yang mengkhususkan diri pada sertifikasi <em>microfinance</em>. Yakni, LSP Microfinance Indonesia (LSP MFI) di Jakarta, yang didirikan oleh Asosiasi Microfinance Indonesia (IMFEA) dan BRI Research Institute.</p>\n<p>Sementara lembaga sertifikasi lain terkait UMKM lebih menyasar kepada para pelaku UMKM, dengan sertifikasi kompetensi sebagai pelaku wirausaha. Sebagai contoh, LSP Wirausaha Indonesia, LSP Wirausaha dan Produktivitas Merdeka dan LSP Manajemen Bisnis dan Kewirausahaan (Menbiska).</p>\n<p>Jika mengacu pada kunci sukses proses pembiayaan usaha mikro dan ultra mikro, maka pemahaman mengenai proses pemberian pinjaman, pola pembinaan debitur, pengelolaan risiko, serta penyelamatan dan penyelesaian pinjaman bermasalah harus dikuasai dengan sangat baik. Semua itu harus terangkum dalam kurikulum dan evaluasi yang sifatnya &ldquo;wajib&rdquo; dalam sertifikasi profesi <em>microfinance</em>.</p>\n<p>Namun, di luar masalah teknis tadi, ada &ldquo;kompetensi&rdquo; yang juga harus dimiliki pelaku bisnis <em>microfinance</em> mengingat keunikan profil usaha mikro dan ultra mikro yang telah dijabarkan di atas. Yakni : kompetensi komunikasi, yang dari pengalaman di lapangan memang sangat khas dan tidak bisa dipersamakan dengan pola komunikasi pada umumnya. Dengan <em>uniqueness profile</em> tersebut, model komunikasi, konsep literasi, konten modul pembinaan hingga ke penyesuaian atas durasi pemahaman pelaku usaha mikro dan ultra mikro harus sedikit banyak &ldquo;dimodifikasi&rdquo;. Dan ini membutuhkan kompetensi tersendiri.</p>\n<p>Tantangan lain adalah kompetensi pelaku bisnis <em>microfinance</em> untuk bisa luwes dan sigap melakukan perubahan serta penyesuaian pola pengelolaan <em>microfinance</em> mengingat dinamika, volatilitas dan kebelumpastian iklim ekonomi negeri sebagai dampak pandemi berikut ancaman krisis lanjutan yang diprediksi masih bisa muncul.</p>\n<p>Sertifikasi profesi <em>microfinance</em> juga menjadi sangat penting jika kita sadar bahwa yang dibutuhkan <em>stakeholder</em> bisnis <em>microfinance</em> bukan hanya eksekutor-eksekutor handal penerima instruksi pimpinan perusahaan atau lembaga, tapi juga kepemilikan jiwa intrapreneurship agar eksekutor-eksekutor lapangan itu mampu berpikir dari sudut pandang seorang entrepreneur.</p>\n<p>Inilah yang akan membuat setiap eksekusi kebijakan <em>microfinance</em> di lapangan terasa membumi, dekat, bersifat memintarkan dan sekaligus menyamankan pelaku usaha mikro dan ultra mikro dalam mengembangkan usahanya ke level yang lebih tinggi.</p>\n<p><strong style=\"color: #999;\"> </strong>&nbsp;</p>', '2022-09-06 13:45:00', '2022-09-08 04:06:19', 6, 1),
(33, 'Kunjungan LSP Microfinance Indonesia  ke Kementrian Koperasi dan UKM', 'Kunjungan LSPMFI  ke Kementrian Koperasi dan UKM', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;Pada tanggal 30 Agustus 2022 manajemen bersama pengurus LSMFI mengunjungi Kementrian Koperasi dan UKM. Tujuan kunjungan ini adalah untuk&nbsp; memperkenalkan Lembaga Sertifikasi dan Profesi Microfinance Indonesia (LSPMFI) sekaligus menjajaki peluang kerjasama dalam meningkatkan dan memajukan Koperasi dan UKM di Indonesia. Pertemuan ini dihadiri oleh manajemen dan pengurus LSPMFI yang diwakili oleh Ibu Anita sebagai Komisaris, Bapak Bakri sebagai Direktur Utama, dan Bapak Ahmad Subagyo sebagai Direktur Marketing serta Pejabat Kementrian Koperasi yang diwakili oleh Bapak Nasrun Siagian sebagai Asisten Deputi Perkoperasian Kemenkop UKM beserta jajarannya.</p>', '2022-09-08 10:59:00', '2022-09-08 04:37:30', 6, 1),
(34, 'Pelaksanaan Uji Sertifikasi Kompetensi Karyawan Koperasi Simpan Pinjam Gerai Dana Cepat Nusantara Sejahtera', 'Pelaksanaan Uji Sertifikasi Kompetensi Karyawan Koperasi Simpan Pinjam Gerai Dana Cepat Nusantara Sejahtera', '<p>Pada tanggal 6 September 2022 Lembaga Sertifikasi Profesi Microfinance Indonesia telah menyelenggarakan uji sertifikasi kompetensi kepada karyawan Koperasi Simpan Pinjam Gerai Dana Cepat Nusantara (GDCN) sebanyak 22 orang di kota Jombang dimana seluruhnya dinyatakan lulus dan kompeten.&nbsp; Skema yang dilaksanakan dalam uji sertifkasi kompetensi&nbsp; ini meliputi skema pelaksanaan proses pinjaman, skema pengelolaan risiko pinjaman dan skema penyelesaian pinjaman bermasalah. Pelaksanaan uji sertifikasi ini diharapkan dapat meningkatkan kompetensi karyawan koperasi GDCN sehingga dapat lebih profesional dalam melaksanakan pekerjaannya.</p>', '2022-09-08 11:20:00', '2022-09-08 04:25:28', 6, 1),
(35, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 24 Agustus 2022 di Sendik BRI Surabaya', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 24 Agustus 2022 di Sendik BRI Surabaya', '<p><strong style=\"color: #999;\">Sendik BRI Surabaya&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke Sendik BRI Surabaya. Pelaksanaan sertifikasi kali ini dihadiri oleh 31 peserta dari Surabaya, Waru dan Krian. Semangat dari mitra UMi Sendik BRI Surabaya menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Bangkalan untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '0022-09-23 10:31:00', '2022-09-23 03:32:08', 6, 1),
(36, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 24 Agustus 2022 di Sendik BRI Surabaya', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 24 Agustus 2022 di Sendik BRI Surabaya', '<p><strong style=\"color: #999;\">Sendik BRI Surabaya&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke Sendik BRI Surabaya. Pelaksanaan sertifikasi kali ini dihadiri oleh 31 peserta dari Surabaya, Waru dan Krian. Semangat dari mitra UMi Sendik BRI Surabaya menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Bangkalan untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-09-23 10:31:00', '2022-09-23 03:35:19', 6, 1),
(37, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 25 Agustus 2022 di BRI KC Bangkalan', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 25 Agustus 2022 di BRI KC Bangkalan', '<p><strong style=\"color: #999;\">Bangkalan&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Bangkalan. Pelaksanaan sertifikasi kali ini dihadiri oleh 23 peserta dari Bangkalan, Pemekasan dan Sumenep. Semangat dari mitra UMi BRI KC Bangkalan menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Mojokerto untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-09-23 10:42:00', '2022-09-23 03:45:59', 6, 1),
(38, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 26 Agustus 2022 di BRI KC Mojokerto', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 26 Agustus 2022 di BRI KC Mojokerto', '<p><strong style=\"color: #999;\"><span style=\"font-size: 12pt;\">Mojokerto&nbsp;</span>- </strong>&nbsp;</p>\n<p><span style=\"font-size: 12pt;\">LSP Microfinance Indonesia menuju ke BRI KC Mojokerto. Pelaksanaan sertifikasi kali ini dihadiri oleh 26 peserta dari Mojokerto dan Jombang. Semangat dari mitra UMi BRI KC Mojokerto menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Lamongan untuk kegiatan sertifikasi Mitra UMi BRI.</span></p>', '2022-09-23 10:52:00', '2022-10-06 03:53:08', 6, 1),
(39, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 27 Agustus 2022 di BRI KC Lamongan', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 27 Agustus 2022 di BRI KC Lamongan', '<p><strong style=\"color: #999;\">Lamongan&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Lamongan. Pelaksanaan sertifikasi kali ini dihadiri oleh 42 peserta dari Lamongan dan Gersik. Semangat dari mitra UMi BRI KC Lamongan menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Bojonegoro untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-09-23 11:00:00', '2022-09-23 03:54:56', 6, 1),
(40, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 29 Agustus 2022 di BRI KC Bojonegoro', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 29 Agustus 2022 di BRI KC Bojonegoro', '<p><strong style=\"color: #999;\">Bojonegoro&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Bojonegoro. Pelaksanaan sertifikasi kali ini dihadiri oleh 52 peserta dari Bojonegoro dan Tuban. Semangat dari mitra UMi BRI KC Bojonegoro menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Kegiatan sertifikasi di KC Bojonegoro Sebagai penutup serangkaian pelaksanaan sertifikasi&nbsp;Kompetensi Mitra UMi di wilayah Surabaya.</p>', '2022-09-23 11:22:00', '2022-09-23 06:45:05', 6, 1),
(41, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 6 September 2022 di BRI KC Kediri', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 6 September 2022 di BRI KC Kediri', '<p><strong style=\"color: #999;\">Kediri&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Kediri. Pelaksanaan sertifikasi kali ini dihadiri oleh 54 peserta dari Kediri, Belitar, Trenggalek, Pare dan Tulungagung. Semangat dari mitra UMi BRI KC Kediri menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Nganjuk untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-09-23 14:42:00', '2022-09-23 07:57:45', 6, 1),
(42, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 7 September 2022 di BRI KC Nganjuk', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 7 September 2022 di BRI KC Nganjuk', '<p><strong style=\"color: #999;\">Nganjuk&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Nganjuk. Pelaksanaan sertifikasi kali ini dihadiri oleh 58 peserta dari Nganjuk. Semangat dari mitra UMi BRI KC Nganjuk menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Madiun untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-09-23 14:55:00', '2022-09-23 07:59:34', 6, 1),
(43, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 8 September 2022 di BRI KC Madiun', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 8 September2022 di BRI KC Madiun\n\n', '<p><strong style=\"color: #999;\">Madiun&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Madiun. Pelaksanaan sertifikasi kali ini dihadiri oleh 41 peserta dari Madiun, Ngawi dan Ponorogo. Semangat dari mitra UMi BRI KC Madiun menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Jember untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-09-23 15:15:00', '2022-09-23 08:01:19', 6, 1);
INSERT INTO `news` (`newsId`, `newsTitle`, `newsExcerpt`, `newsDetail`, `newsPublishTime`, `newsSaved`, `newsAdmiId`, `newsStatus`) VALUES
(44, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 10-11 September 2022 di BRI KC Jember', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 10-11 September 2022 di BRI KC Jember', '<p><strong style=\"color: #999;\">Jember - </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Jember. Pelaksanaan sertifikasi kali ini dihadiri oleh 122 peserta dari Jember, Banyuwangi, Bondowoso, Lumajang dan Situbondo. Semangat dari mitra UMi BRI KC Jember menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Tim LSP Microfinance selanjutnya menuju ke Malang untuk kegiatan sertifikasi Mitra UMi BRI.</p>', '2022-09-23 15:30:00', '2022-09-23 08:03:06', 6, 1),
(45, 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 12 September 2022 di BRI KC Malang', 'Pelaksanaan uji sertifikasi dengan Mitra UMi BRI pada 12 September 2022 di BRI KC Malang', '<p><strong style=\"color: #999;\">Malang&nbsp;- </strong>&nbsp;</p>\n<p>LSP Microfinance Indonesia menuju ke BRI KC Malang. Pelaksanaan sertifikasi kali ini dihadiri oleh 16 peserta dari Malang, Kepanjen, Pasuruan dan Probolinggo. Semangat dari mitra UMi BRI KC Malang menjadikan pelaksanaan sertifikasi berjalan sukses dan lancar. Kegiatan sertifikasi di KC Malang Sebagai penutup serangkaian pelaksanaan sertifikasi Kompetensi Mitra UMi di wilayah Malang.</p>', '2022-09-23 15:45:00', '2022-09-23 08:04:00', 6, 1),
(46, 'Business Matching Event  PERBARINDO, IMFEA dan LSP Microfinance Indonesia di Makasar, Sulawesi Selatan', 'Business Matching Event  PERBARINDO, IMFEA dan LSP Microfinance Indonesia di Makasar, Sulawesi Selatan', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p style=\"text-align: justify;\"><strong>Perhimpunan BPR seluruh Indonesia (PERBARINDO) bekerja sama dengan Indonesia Microfinance Expert Association (IMFEA) dan </strong>LSP Microfinance Indonesia (LSP-MFI), bersepakat untuk berkolaborasi dalam sejumlah agenda strategis sektor keuangan dan teknologi digital.</p>\n<p style=\"text-align: justify;\"><em>Business Matching</em> event merupakan kegiatan kolaborasi antara <strong>Perhimpunan BPR seluruh Indonesia (PERBARINDO), Indonesia Microfinance Expert Association (IMFEA) dan LSP Microfinance Indonesia </strong>yang diadakan pada Selasa, 26 Oktober 2022 di Hotel Mercure, Makassar. Event tersebut juga melibatkan Lembaga Penyedia Teknologi yang memberikan layanan marketplace <em>Lending-Credit Scoring-Electronic Know Your Customer</em> (e-KYC) yang dihadiri lebih dari 20 BPR di seluruh Sulawesi Selatan.</p>', '2022-10-28 00:00:00', '2022-11-02 02:21:06', 6, 1),
(47, 'SOSIALISASI LSP MI BERSAMA PERBARINDO DPD KEDIRI DI HOTEL CROWN VICTORY TULUNGAGUNG-JATIM', 'SOSIALISASI LSP MI BERSAMA PERBARINDO DPD KEDIRI\nDI HOTEL CROWN VICTORY TULUNGAGUNG-JATIM, \n07 SEPTEMBER 2022\n', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p>Telah dilaksanakan kegiatan Sosialisasi LSP Microfinance Perbarindo DPD Kediri, pada tanggal 7 September 2022, acara ini dihadiri oleh Perbarindo DPD Kediri di Hotel Crown Victory, Tulungagung - Jawa Timur.</p>', '2022-09-07 00:00:00', '2022-11-30 07:42:19', 6, 1),
(48, 'SOSIALISASI LSP MI BERSAMA ASOSIASI LKM/LKMS JATENG DI HOTEL KHAS SEMARANG, 9 AGUSTUS 2022', 'SOSIALISASI LSP MI BERSAMA ASOSIASI LKM/LKMS JATENG\nDI HOTEL KHAS SEMARANG, \n09 AGUSTUS 2022\n', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p>Telah dilaksanakan kegiatan Sosialisasi LSP Microfinance bersama Asosiasi LKM/LKMS, pada tanggal 09 Agustus 2022, acara ini dihadiri oleh Perhimpunan Asosiasi LKM/LKMS di Hotel Khas Semarang - Jawa Tengah.</p>', '2022-08-09 00:00:00', '2022-11-30 08:04:40', 6, 1),
(49, 'SOSIALISASI LSP MICROFINANCE BERSAMA PERBARINDO DKI JAYA  RESTO GODONG IDJO DEPOK , 27 AGUSTUS 2022', 'SOSIALISASI LSP MICROFINANCE BERSAMA PERBARINDO DKI JAYA \nRESTO GODONG IDJO DEPOK , 27 AGUSTUS 2022\n', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p>Telah dilaksanakan kegiatan Sosialisasi LSP Microfinance bersama Perbarindo DKI Jakarta, pada tanggal 27 Agustus 2022 acara ini dihadiri oleh Peserta Perbarindo DKI Jakarta di Resto Godong Idjo Depok.</p>', '2022-08-27 00:00:00', '2022-11-30 07:19:33', 6, 1),
(50, 'PEMBUKAAN ACARA  BUSINESS MATCHING – SOSIALISASI LSP MI DI BANYUMAS HOTEL ASTON, 21 AGUSTUS 2022', 'PEMBUKAAN ACARA  BUSINESS MATCHING – SOSIALISASI LSP MI DI BANYUMAS\nHOTEL ASTON, 21 AGUSTUS 2022\n', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p>Telah dilaksanakan kegiatan Business Matching dan Sosialisasi LSP Microfinance pada tanggal 21 Agustus 2022, acara ini dihadiri oleh Lembaga Keuangan dan Koperasi Asbisindo di Hotel Aston Banyumas.</p>', '2022-11-30 14:24:31', '2022-11-30 07:24:31', 6, 1),
(51, 'EVALUASI KINERJA BPR DAN BPRS KANTOR REGIONAL 1 DKI JAKARTA - BANTEN 03 NOVEMBER 2022', 'EVALUASI KINERJA BPR DAN BPRS KANTOR REGIONAL 1 DKI JAKARTA DAN BANTEN 03 NOVEMBER 2022', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p>Telah dilaksanakan kegiatan Evaluasi Kinerja LSP Microfinance dengan BPR/BPRS Kantor Regional 1 DKI Jakarta dan Banten pada tanggal 03 November 2022, acara ini dihadiri oleh Ketua BPR dan BPRS di Kantor Regional 1 DKI Jakarta - Banten.</p>', '2022-11-03 00:00:00', '2022-11-30 08:03:51', 6, 1),
(52, 'KOLABORASI LSP MICROFINANCE DENGAN PERBARINDO 27 OKTOBER 2022', 'KOLABORASI LSP MICROFINANCE DENGAN PERBARINDO 27 OKTOBER 2022', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p>Telah dilaksanakan kegiatan Kolaborasi LSP Microfinance dengan Perbarindo pada tanggal 27 Oktober 2022 acara ini dihadiri oleh Peserta Perbarindo di Gedung BRI II Lantai.29 DKI Jakarta - Sudirman.</p>', '2022-10-27 15:00:00', '2022-11-30 08:00:05', 6, 1),
(53, 'LSP MICROFINANCE DENGAN BPR SYARIAH HIK 22 NOVEMBER 2022', 'LSP MICROFINANCE DENGAN BPR SYARIAH HIK 22 NOVEMBER 2022', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;</p>\n<p>Telah dilaksanakan kegiatan Sharing Session dengan&nbsp; pada tanggal 22 November 2022 acara ini dihadiri oleh Anggota BPR Syariah HIK di BSD Tangerang.</p>', '2022-11-22 14:52:29', '2022-11-30 07:58:48', 6, 1),
(54, 'KERJASAMA LSP MANISKU MANDIRI DAN LSP MICROFINANCE INDONESIA, 12 JANUARI 2023', 'Kerjasama antara LSP Manajemen Bisnis Kewirausahaan Mandiri (Manisku Mandiri) dan LSP Microfinance Indonesia\n', '<p style=\"text-align: justify;\">LSP Microfinance Indonesia melaksanakan pertemuan langsung dengan Pimpinan LSP Manajemen Bisnis Kewirausahan Mandiri (Manisku Mandiri) pada Kamis, 12 Januari 2023.</p>\n<p style=\"text-align: justify;\">Pada kesempatan tersebut dihadiri oleh Bp. Ir. Asep Sopandi, M.M. selaku Direktur LSP Manisku Mandiri. Diharapkan kegiatan ini dapat meningkatkan kerjasama khususnya dalam bidang sertifikasi kompetensi.</p>', '2023-01-12 10:00:00', '2023-03-29 01:07:39', 1, 1),
(55, 'KERJASAMA UNIVERSITAS MERCUBUANA DAN LSP MICROFINANCE INDONESIA, 17 JANUARI 2023', 'Kerjasama antara Universitas Mercubuana dan LSP Microfinance Indonesia', '<p style=\"text-align: justify;\"><span>Pada Selasa, 17 Januari 2023, LSP Microfinance Indonesia mengadakan pertemuan dengan Universitas Mercubuana. Pertemuan ini dihadiri oleh Bp. Dr. H. Sonny Indrajaya, M.M., selaku Ketua Program Studi S-1 Manajemen.</span><br /><br /><span>Pada kegiatan ini juga membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemamuan teknis yang sudah terstandar dan terukur.</span></p>', '2023-01-17 10:00:00', '2023-03-29 01:07:30', 1, 1),
(56, 'KERJASAMA UNIVERSITAS NAHDLATUL ULAMA YOGYAKARTA DAN LSP MICROFINANCE INDONESIA, 26 JANUARI 2023', 'Kerjasama antara Universitas Nahdlatul Ulama Yogyakarta dan LSP Microfinance Indonesia', '<p style=\"text-align: justify;\">Pada Kamis, 26 Januari 2023, LSP Microfinance Indonesia mengadakan pertemuan secara daring dengan Universitas Nahdlatul Ulama Yogyakarta.<br /><br />Pertemuan tersebut dihadiri oleh Ibu Dra. Diah Retno Wulandaru, M.B.A. selaku Dekan Fakultas Ekonomi, beserta jajarannya. Pada kegiatan ini juga membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur. &nbsp;</p>', '2023-01-26 10:00:00', '2023-03-29 01:07:13', 1, 1),
(57, 'KERJA SAMA UNIVERSITAS HASANUDDIN MAKASSAR DAN LSP MICROFINANCE INDONESIA, 26 JANUARI 2023', 'Kerjasama antara Universitas  Hasanuddin Makassar dan LSP Microfinance Indonesia', '<p style=\"text-align: justify;\"><span>Pada Kamis, 26 Januari 2023 LSP Microfinance Indonesia mengadakan pertemuan dengan Universitas Hasanuddin Makassar.</span><br /><br /><span>Pada kegiatan ini juga membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur oleh Badan Nasional Sertifikasi Profesi (BNSP).</span></p>', '2023-01-26 10:00:00', '2023-03-29 01:07:03', 1, 1),
(58, 'KERJA SAMA UNIVERSITAS ISLAM NEGERI SULTAN SYARIF KASIM DAN LSP MICROFINANCE INDONESIA, 27 JANUARI 2023', 'Kerjasama antara Universitas Islam Negeri Sultan Syarif Kasim dan LSP Microfinance Indonesia', '<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Pada Jumat, 27 Januari 2023 LSP Microfinance Indonesia mengadakan pertemuan secara daring dengan Universitas Islam Negeri Sultan Syarif Kasim (UIN Suska, Riau).&nbsp;</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Pertemuan dihadiri oleh Ibu Dr. Mahyarni S.E., M.M. selaku Dekan Fakultas Ekonomi dan Ilmu Sosial&nbsp; beserta jajarannya.&nbsp;</span>Pada kegiatan ini juga membahas terkait rencana program pelaksanaan&nbsp; sertifikasi kompetensi&nbsp; untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur.</p>\n<p></p>', '2023-01-27 10:00:00', '2023-03-29 01:06:52', 1, 1),
(59, 'KERJA SAMA POLITEKNIK NASIONAL DENPASAR BALI DAN LSP MICROFINANCE INDONESIA, 30 JANUARI 2023', 'Kerjasama antara Politeknik Nasional Denpasar Bali dan LSP Microfinance Indonesia', '<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Pada Senin, 30 Januari 2023 LSP Microfinance Indonesia mengadakan pertemuan secara daring dengan Politeknik Nasional Denpasar Bali.&nbsp;</span></p>\n<p style=\"text-align: justify;\"><span style=\"font-weight: 400;\">Pertemuan dihadiri oleh Bapak I Made Adi Purwantara selaku Direktur Politeknik Nasional Denpasar.&nbsp;</span>Pada kegiatan ini juga membahas terkait rencana program pelaksanaan&nbsp; sertifikasi kompetensi&nbsp; untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur.</p>', '2023-01-30 10:00:00', '2023-03-29 04:17:00', 1, 1),
(60, 'RAPAT UMUM PEMEGANG SAHAM PT SERTIFIKASI MIKRO INDONESIA GEMILANG TAHUN 2022, 6 FEBRUARI 2023', 'Rapat Umum Pemegang Saham (RUPS) PT. Sertifikasi Mikro Indonesia Gemilang Tahun 2022.', '<p style=\"text-align: justify;\">Pada Senin, 6 Februari 2023, telah dilaksanakan Rapat Umum Pemegang Saham (RUPS) PT. Sertifikasi Mikro Indonesia Gemilang Tahun 2022.<br /><br />RUPS diadakan secara hybrid (tatap muka dan online melalui video conference zoom). Untuk tatap muka diselenggarakan di Ruang Majapahit, Gedung BRI II Lt. 29, Jl. Jend Sudirman Kav 44-46, Jakarta Pusat dan dihadiri oleh pemegang saham perseroan. &nbsp;</p>', '2023-02-06 10:00:00', '2023-03-29 00:54:57', 1, 1),
(61, 'KERJA SAMA UNIVERSITAS PEMBANGUNAN NASIONAL \"VETERAN\" YOGYAKARTA DAN LSP MICROFINANCE INDONESIA, 7 FEBRUARI 2023', 'Kerjasama antara Universitas Pembangunan Nasional \"Veteran\" Yogyakarta dan LSP Microfinance Indonesia.', '<p style=\"text-align: justify;\"><span>Pada Selasa, 7 Februari 2023, LSP Microfinance Indonesia mengadakan pertemuan dengan Universitas Pembangunan Nasional \"Veteran\" Yogyakarta.</span><br /><br /><span>Pertemuan tersebut dihadiri oleh Bapak Dr. Januar Eko Prasetio, S.E., M.Si., C.A. selaku Wakil Dekan Bidang Kemahasiswaan, Kerjasama dan Alumni Universitas Pembangunan Nasional \"Veteran\" Yogyakarta.&nbsp;</span><span>Pada kegiatan ini membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur.</span></p>', '2023-02-07 10:00:00', '2023-03-29 01:05:56', 1, 1),
(68, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 MEI 2023, TUK LSP MICROFINANCE INDONESIA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 MEI 2023, TUK LSP MICROFINANCE INDONESIA', '<p style=\"text-align: left;\"><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 10 Mei 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Kalimalang, KC Kemayoran, KC Otista, KC Rawamangun, KC Tanah Abang, KC Tanjung Priok, KC Jakarta Daan Mogot, KC Jelambar, dan KC Jakarta Tanjung Duren.</span></p>', '2023-05-10 08:00:00', '2023-07-31 03:35:20', 1, 1),
(62, 'KERJA SAMA UNIVERSITAS GADJAH MADA DAN LSP MICROFINANCE INDONESIA, 10 FEBRUARI 2023', 'Kerjasama antara Universitas Gadjah Mada dan LSP Microfinance Indonesia.\n', '<p style=\"text-align: justify;\"><span>Pada Jumat, 10 Februari 2023, LSP Microfinance Indonesia mengadakan pertemuan secara daring dengan Universitas Gadjah Mada, Yogyakarta.</span><br /><br /><span>Pertemuan tersebut dihadiri oleh Bapak Dr. Suadi selaku Direktur Sumber Daya Manusia, Universitas Gadjah Mada, Yogyakarta.</span><br /><br /><span>Pada kegiatan ini membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur.</span></p>', '2023-02-10 10:00:00', '2023-03-29 01:12:41', 1, 1),
(63, 'RAPAT EVALUASI KINERJA LSP MICROFINANCE INDONESIA DENGAN YAYASAN BRILIAN INDONESIA GEMILANG (YBIG), 27 FEBRUARI 2023', 'Rapat Evaluasi Kinerja LSP Microfinance Indonesia dengan Yayasan BRIlian Indonesia Gemilang (YBIG)', '<p style=\"text-align: justify;\"><span>Pada Senin, 27 Februari 2023 LSP Microfinance Indonesia mengadakan rapat evaluasi kinerja dengan Yayasan BRIlian Indonesia Gemilang (YBIG).</span><br /><br /><span>Rapat evaluasi ini merpuakan salah satu kegiatan rutin yang bertujuan untuk mengkoordinasikan capaian dan rencana kerja masing-masing bidang. Dalam rapat ini juga dilakukan pembahasan beberapa inisiatif strategi yang akan menjadi acuan untuk pelaksanaan pekerjaan dalam periode waktu tertentu.</span></p>', '2023-02-27 10:00:00', '2023-03-29 01:20:50', 1, 1),
(64, 'ELABORASI LSP MICROFINANCE INDONESIA (VIDEO CONFERENCE ZOOM), 27 FEBRUARI 2023', 'Elaborasi LSP Microfinance Indonesia', '<p style=\"text-align: justify;\"><span>Elaborasi LSP Microfinance Indonesia merupakan suatu kegiatan yang diinisiasi oleh LSP Microfinance Indonesia, yang dihadiri oleh Dr. Roberto Akyuwen selaku Kepala OJK Regional I DKI Jakarta-Banten, Ketua Yayasan BRIlian Indonesia Gemilang (YBIG), dan Komisaris dan Asesor LSP Microfinance Indonesia.</span><br /><br /><span>Elaborasi LSP Microfinance Indonesia merupakan kegiatan dalam rangka melihat gambaran potensi perkembangan keuangan di bidang microfinance serta menjadi ajang refreshment dan evaluasi terkait pelaksanaan kegiatan sertifikasi kompetensi.</span></p>', '2023-02-27 10:00:00', '2023-03-29 01:26:08', 1, 1),
(65, 'KERJA SAMA UNIVERSITAS JENDERAL SOEDIRMAN DAN LSP MICROFINANCE INDONESIA, 3 MARET 2023', 'Kerjasama antara Universitas Jenderal Soedirman dan LSP Microfinance Indonesia.', '<p style=\"text-align: justify;\"><span>Pada Jumat, 3 Maret 2023, LSP Microfinance Indonesia mengadakan pertemuan secara daring menggunakan video conference zoom dengan Universitas Jenderal Soedirman (Unsoed).</span><br /><br /><span>Pertemuan tersebut dihadiri oleh Bapak Taufik dan Ibu Ratna Setriani. Pada pertemuan ini juga membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur.</span></p>', '2023-03-03 10:00:00', '2023-03-29 02:36:03', 1, 1),
(66, 'KERJA SAMA UNIVERSITAS PANCASILA DAN LSP MICROFINANCE INDONESIA, 6 MARET 2023', 'Kerjasama antara Universitas Pancasila dan LSP Microfinance Indonesia.', '<p style=\"text-align: justify;\"><span>Pada Senin, 6 Maret 2023, LSP Microfinance Indonesia mengadakan pertemuan dengan Universitas Pancasila.</span><br /><br /><span>Pertemuan tersebut dihadiri oleh Bapak Dr. Harnovinsah, S.E., M.Si., Ak., CA., Cert.IPSAS. selaku Ketua Program Studi Magister Akuntansi.&nbsp;</span><span>Pada pertemuan ini juga membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar dan terukur.</span></p>', '2023-03-06 10:00:00', '2023-03-29 04:13:28', 1, 1),
(67, 'WORKSHOP DIGITALISASI BPR DALAM RANGKA MEMPERKUAT LITERASI DAN INKLUSI KEUANGAN, 15 MARET 2023', 'Workshop Digitalisasi BPR dalam rangka memperkuat literasi dan Inklusi keuangan', '<p style=\"text-align: justify;\"><span>Pada Rabu, 15 Maret 2023, telah dilaksanakannya workshop Digitalisasi BPR dalam rangka memperkuat literasi dan inklusi keuangan di Hotel JW. Marriott.</span><br /><br /><span>Pada kesempatan ini Direktur LSP Microfinance Indonesia, Bapak Bakri menjadi salah satu narasumber yang memberikan paparan mengenai keuangan mikro, menakup penjelasan pengetahuan mengenai metode analisis microfinance dan manfaat digitalisasi perbankan terhadap penyaluran kredit kepada Usaha Mikro kecil.</span></p>', '2023-03-15 10:00:00', '2023-03-29 04:16:10', 1, 1),
(69, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 MEI 2023, TUK BRI KC DEPOK', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 MEI 2023, TUK BRI KC DEPOK', '<p><strong style=\"color: #999;\">DEPOK&nbsp;-&nbsp;</strong><span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 11 Mei 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI KC Depok. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Cibubur, KC Cibinong, dan KC Depok.</span></p>', '2023-05-11 08:00:00', '2023-07-31 04:01:46', 1, 1),
(70, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 16 MEI 2023, TUK BRI KC BEKASI TOWN SQUARE', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 16 MEI 2023, TUK BRI KC BEKASI TOWN SQUARE', '<p><strong style=\"color: #999;\">BEKASI&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 16 Mei 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI KC Bekasi Town Square. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Bekasi, KC Pondok Gede, dan KC Tambun.</span></p>', '2023-05-16 08:00:00', '2023-07-31 04:02:27', 1, 1),
(71, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 17 MEI 2023, TUK BRI KC KARAWANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 17 MEI 2023, TUK BRI KC KARAWANG', '<p><strong style=\"color: #999;\">KARAWANG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 17 Mei 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI KC Karawang. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Karawang, KC Cikarang, dan KC Cikampek.</span></p>', '2023-05-17 08:00:00', '2023-07-31 04:02:55', 1, 1),
(72, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 23 MEI 2023, TUK BRI KANWIL JKT 3 (BSD)', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 23 MEI 2023, TUK BRI KANWIL JKT 3 (BSD)', '<p><strong style=\"color: #999;\">KANWIL JKT 3 (BSD)&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 23 Mei 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI Kanwil Jakarta 3 (BSD). Kegiatan ini diikuti oleh peserta Mitra UMi dari KC BSD, KC Joglo, KC Ciledug, KC Tanggerang Merdeka, KC Jakarta Tanggerang, KC Pamulang, dan KC Ciputat.</span></p>', '2023-05-23 08:00:00', '2023-07-31 04:03:41', 1, 1),
(73, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 24 MEI 2023, TUK BRI KC PANDEGLANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 24 MEI 2023, TUK BRI KC PANDEGLANG', '<p><strong style=\"color: #999;\">PANDEGLANG&nbsp;-&nbsp;</strong><span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 24 Mei 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI KC Pandeglang. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Balaraja, KC Rangkasbitung, KC Pandeglang, KC Labuan, KC Serang, dan KC Cilegon.</span></p>', '2023-05-24 08:00:00', '2023-07-31 04:04:18', 1, 1),
(74, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 7 - 8 JUNI 2023, TUK REGIONAL OFFICE BANDUNG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 7 - 8 JUNI 2023, TUK REGIONAL OFFICE BANDUNG', '<p><strong style=\"color: #999;\">BANDUNG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 7 - 8 Juni 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI Regional Office Bandung. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Bandung Martadinata, KC Bandung Soekarno Hatta, KC Bandung A.H. Nasution, KC Bandung Naripan, KC Bandung Kopo, dan KC Bandung Setiabudi.</span></p>', '2023-06-07 08:00:00', '2023-07-31 04:04:47', 1, 1),
(75, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 8 JUNI 2023, TUK BRI KC MAJALAYA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 8 JUNI 2023, TUK BRI KC MAJALAYA', '<p><strong style=\"color: #999;\">MAJALAYA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 8 Juni 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI KC Majalaya. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Majalaya.</span></p>', '2023-06-08 08:00:00', '2023-07-31 04:05:13', 1, 1),
(76, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 9 JUNI 2023,  TUK BRI KC CIMAHI', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 9 JUNI 2023,  TUK BRI KC CIMAHI', '<p><strong style=\"color: #999;\">CIMAHI&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia nih....</span><br /><br /><span>Pada tanggal 9 Juni 2023, LSP Microfinance Indonesia melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi di BRI KC Cimahi. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Cimahi.</span></p>', '2023-06-09 08:00:00', '2023-07-31 04:06:18', 1, 1),
(77, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 9 JUNI 2023, TUK BRI KC SOREANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 9 JUNI 2023, TUK BRI KC SOREANG', '<p><strong style=\"color: #999;\">SOREANG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada tanggal 9 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Soreang. Untuk tempat asesmennya bertempat di RM Riung Panyaungan, Bandung, Jawa Barat.</span></p>', '2023-06-09 08:00:00', '2023-07-31 04:14:11', 1, 1),
(78, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC PURWAKARTA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC PURWAKARTA', '<p><strong style=\"color: #999;\">PURWAKARTA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Ada update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Senin, 12 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Purwakarta. Peserta kegiatan sertifikasi di KC Purwakarta sebanyak 34 orang. Untuk tempat asesmennya bertempat di Kantor Cabang BRI Purwakarta.</span></p>', '2023-06-12 08:00:00', '2023-07-31 04:32:23', 1, 1),
(79, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC GARUT', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 JUNI 2023, TUK BRI KC GARUT', '<p><strong style=\"color: #999;\">GARUT&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Senin, 12 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Garut. Peserta kegiatan sertifikasi di KC Garut sebanyak 70 orang. Untuk tempat asesmennya bertempat di Rumah Makan Liwet Asep Strawberry, Garut.</span></p>', '2023-06-12 08:00:00', '2023-07-31 08:20:32', 1, 1),
(80, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 JUNI 2023, TUK BRI PAMANUKAN', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 JUNI 2023, TUK BRI PAMANUKAN', '<p><strong style=\"color: #999;\">PAMANUKAN&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Selasa, 13 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Pamanukan. Peserta kegiatan sertifikasi di KC Pamanukan sebanyak 48 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Pamanukan.</span></p>', '2023-06-13 08:00:00', '2023-07-31 08:22:48', 1, 1),
(81, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 JUNI 2023, TUK BRI KC TASIKMALAYA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 JUNI 2023, TUK BRI KC TASIKMALAYA', '<p><strong style=\"color: #999;\">TASIKMALAYA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Selasa, 13 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Tasikmalaya. Peserta kegiatan sertifikasi di KC Tasikmalaya sebanyak 58 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Tasikmalaya.</span></p>', '2023-06-13 08:00:00', '2023-07-31 08:24:38', 1, 1),
(82, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK KC SUBANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK KC SUBANG', '<p><strong style=\"color: #999;\">SUBANG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Rabu, 14 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Subang. Peserta kegiatan sertifikasi di KC Subang sebanyak 37 orang. Untuk tempat asesmennya bertempat di BRI Kantor Cabang Subang.</span></p>', '2023-06-14 08:00:00', '2023-08-01 03:23:12', 1, 1),
(83, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK BRI KC CIAMIS', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK BRI KC CIAMIS', '<p><strong style=\"color: #999;\">CIAMIS - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Rabu, 14 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Ciamis. Peserta kegiatan sertifikasi di KC Ciamis sebanyak 33 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Ciamis, Jawa Barat.</span></p>', '2023-06-14 08:00:00', '2023-08-01 03:25:22', 1, 1),
(84, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK BRI SUMEDANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 JUNI 2023, TUK BRI SUMEDANG', '<p><strong style=\"color: #999;\">SUMEDANG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Ngga bosen kan ya nunggu info LSP MI? Pasti ngga dong. Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Kamis, 15 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Sumedang. Peserta kegiatan sertifikasi di KC Sumedang sebanyak 33 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Sumedang, Jawa Barat.</span></p>', '2023-06-15 08:00:00', '2023-08-01 03:53:16', 1, 1),
(85, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 16 JUNI 2023, TUK BRI KC BANJAR', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 16 JUNI 2023, TUK BRI KC BANJAR', '<p><strong style=\"color: #999;\">BANJAR&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Ngga bosen kan ya nunggu info LSP MI? Pasti ngga dong. Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Jumat, 16 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Banjar. Peserta kegiatan sertifikasi di KC Banjar sebanyak 47 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Banjar, Jawa Barat.</span></p>', '2023-06-16 08:00:00', '2023-08-01 03:59:56', 1, 1),
(86, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 JUNI 2023, TUK BRI KC CIANJUR ', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 JUNI 2023, TUK BRI KC CIANJUR ', '<p><strong style=\"color: #999;\">CIANJUR&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Ngga bosen kan ya nungguin info dari LSP MI? Pasti ngga dong. Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Senin, 19 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Cianjur. Peserta kegiatan sertifikasi di KC Cianjur sebanyak 30 orang. Untuk tempat asesmennya bertempat di Rumah Makan Ikan Bakar Cianjur, Jawa Barat.</span></p>', '2023-06-19 08:00:00', '2023-08-01 04:03:07', 1, 1),
(87, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 JUNI 2023, TUK BRI KC MAJALENGKA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 JUNI 2023, TUK BRI KC MAJALENGKA', '<p><strong style=\"color: #999;\">MAJALENGKA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Ngga bosen kan ya nungguin info dari LSP MI? Pasti ngga dong. Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Senin, 19 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Majalengka. Peserta kegiatan sertifikasi di KC Majalengka sebanyak 30 orang. Untuk tempat asesmennya bertempat di Majalengka, Jawa Barat.</span></p>', '2023-06-19 08:00:00', '2023-08-01 04:07:06', 1, 1),
(88, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JUNI 2023, TUK BRI KC CIBADAK', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JUNI 2023, TUK BRI KC CIBADAK', '<p><strong style=\"color: #999;\">CIBADAK&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Ngga bosen kan ya nungguin info dari LSP MI? Pasti ngga dong. Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Selasa, 20 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Cibadak. Peserta kegiatan sertifikasi di KC Cibadak sebanyak 21 orang. Untuk tempat asesmennya bertempat di BRI KC Cibadak, Jawa Barat.</span></p>', '2023-06-20 08:00:00', '2023-08-01 04:09:25', 1, 1),
(89, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JUNI 2023, TUK BRI KC KUNINGAN', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JUNI 2023, TUK BRI KC KUNINGAN', '<p><strong style=\"color: #999;\">KUNINGAN&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Selasa, 20 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Kuningan. Peserta kegiatan sertifikasi di KC Kuningan sebanyak 35 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Kuningan.</span></p>', '2023-06-20 08:00:00', '2023-08-01 04:12:47', 1, 1),
(90, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JUNI 2023, TUK BRI KC SUKABUMI', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JUNI 2023, TUK BRI KC SUKABUMI', '<p><strong style=\"color: #999;\">SUKABUMI&nbsp;- </strong>Halo sobat LSP!&nbsp;Bagaimana kabarnya? Semoga sehat selalu ya.<br />Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....<br /><br />Pada hari Rabu, 21 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Sukabumi. Peserta kegiatan sertifikasi di KC Sukabumi sebanyak 32 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Sukabumi.&nbsp;</p>', '2023-06-21 08:00:00', '2023-08-01 04:15:33', 1, 1),
(91, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JUNI 2023, TUK BRI KC INDRAMAYU', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JUNI 2023, TUK BRI KC INDRAMAYU', '<p><strong style=\"color: #999;\">INDRAMAYU&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Rabu, 21 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Indramayu. Peserta kegiatan sertifikasi di KC Indramayu sebanyak 45 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Indramayu.</span></p>', '2023-06-21 08:00:00', '2023-08-01 04:18:49', 1, 1),
(92, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 22 JUNI 2023, TUK BRI KC CIREBON', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 22 JUNI 2023, TUK BRI KC CIREBON', '<p><strong style=\"color: #999;\">CIREBON&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Kamis, 22 Juni 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Cirebon. Peserta kegiatan sertifikasi di KC Cirebon sebanyak 35 orang. Untuk tempat asesmennya bertempat di Kantor Cabang Cirebon.</span></p>', '2023-06-22 08:00:00', '2023-08-01 04:20:48', 1, 1),
(93, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 JULI 2023, TUK BRI RUMAH BUMN PADANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 JULI 2023, TUK BRI RUMAH BUMN PADANG', '<p><strong style=\"color: #999;\">RUMAH BUMN PADANG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Senin, 10 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Batusangkar, KC Bukittinggi, KC Padang Panjang, KC Payakumbuh, KC Pariaman, dan KC Simpang Empat. Peserta kegiatan sertifikasi di Rumah BUMN Padang sebanyak 39 orang. Untuk tempat asesmennya bertempat di Rumah BUMN Padang.</span></p>', '2023-07-10 08:00:00', '2023-08-01 04:36:47', 1, 1),
(94, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 JULI 2023, TUK BRI KC SOLOK', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 JULI 2023, TUK BRI KC SOLOK', '<p><strong style=\"color: #999;\">SOLOK - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Selasa, 11 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Solok. Peserta kegiatan sertifikasi di KC Solok sebanyak 16 orang. Untuk tempat asesmennya bertempat di KC Solok.</span></p>', '2023-07-11 08:00:00', '2023-08-01 04:38:27', 1, 1),
(95, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 - 14 JULI 2023, TUK BRI KANWIL PEKANBARU', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 - 14 JULI 2023, TUK BRI KANWIL PEKANBARU', '<p><strong style=\"color: #999;\">PEKANBARU&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Kamis dan Jumat, 13 - 14 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Bangkinang, KC Dumai, KC Duri, KC Pangkalan Kerinci, KC Pekanbaru Lancang Kuning, KC Pekanbaru Tuanku Tambusai, KC Perawang, dan KC Siak. Peserta kegiatan sertifikasi di Kanwil Pekanbaru sebanyak 57 orang, yang terdiri dari 30 orang pada sesi pertama yaitu 13 Juli 2023 dan 27 orang pada sesi kedua yaitu 14 Juli 2023. Untuk tempat asesmennya bertempat di BRI Kantor Wilayah Pekanbaru.</span></p>', '2023-07-13 08:00:00', '2023-08-01 04:40:35', 1, 1),
(96, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 17 - 18 JULI 2023, TUK BRI KANWIL MEDAN', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 17 - 18 JULI 2023, TUK BRI KANWIL MEDAN', '<p><strong style=\"color: #999;\">MEDAN&nbsp;- </strong>Halo sobat LSP! Bagaimana kabarnya? Semoga sehat selalu ya.<br />Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....<br /><br />Pada hari Senin dan Selasa, 17 - 18 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari Kanwil Medan yang terdiri dari KC Lubuk Pakam, KC Medan Iskandar Muda, dan KC Medan Thamrin. Peserta kegiatan sertifikasi di Kanwil Medan sebanyak 92 orang. Untuk tempat asesmennya bertempat di BRI Kantor Wilayah Medan.<br />&nbsp;</p>', '2023-07-17 08:00:00', '2023-08-05 03:51:22', 1, 1),
(97, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JULI 2023, TUK BRI KANWIL PALEMBANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 20 JULI 2023, TUK BRI KANWIL PALEMBANG', '<p><strong style=\"color: #999;\">PALEMBANG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Kamis, 20 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari Kanwil Palembang yang terdiri dari KC Palembang A. Rivai dan KC Palembang Sriwijaya. Peserta kegiatan sertifikasi di Kanwil Palembang sebanyak 26 orang. Untuk tempat asesmennya bertempat di BRI Kantor Wilayah Palembang.</span></p>', '2023-07-20 08:00:00', '2023-08-05 03:53:26', 1, 1),
(98, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JULI 2023, TUK BRI KC KAYU AGUNG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 21 JULI 2023, TUK BRI KC KAYU AGUNG', '<p><strong style=\"color: #999;\">KAYU AGUNG - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Jumat, 21 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Kayu Agung. Peserta kegiatan sertifikasi di KC Kayu Agung sebanyak 44 orang. Untuk tempat asesmennya bertempat di BRI KC Kayu Agung.</span></p>', '2023-07-21 08:00:00', '2023-08-05 03:55:40', 1, 1),
(99, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 24 JULI 2023, TUK BRI KC BANDAR JAYA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 24 JULI 2023, TUK BRI KC BANDAR JAYA', '<p><strong style=\"color: #999;\">BANDAR JAYA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Senin, 24 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Bandar Jaya. Peserta kegiatan sertifikasi di KC Bandar Jaya sebanyak 47 orang. Untuk tempat asesmennya bertempat di BRI KC Bandar Jaya.</span></p>', '2023-07-24 08:00:00', '2023-08-05 03:57:24', 1, 1),
(100, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 25 JULI 2023, TUK BRI KC METRO', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 25 JULI 2023, TUK BRI KC METRO', '<p><strong style=\"color: #999;\">METRO&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Selasa, 25 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Metro. Peserta kegiatan sertifikasi di KC Metro sebanyak 42 orang. Untuk tempat asesmennya bertempat di BRI KC Metro.</span></p>', '2023-07-25 08:00:00', '2023-08-08 00:17:58', 1, 1),
(101, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 25 JULI 2023, TUK BRI KC METRO', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 25 JULI 2023, TUK BRI KC METRO', '<p><strong style=\"color: #999;\">METRO&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia lagi nih....</span><br /><br /><span>Pada hari Selasa, 25 Juli 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Metro. Peserta kegiatan sertifikasi di KC Metro sebanyak 42 orang. Untuk tempat asesmennya bertempat di BRI KC Metro.</span></p>', '2023-07-25 08:00:00', '2023-09-29 07:06:25', 1, 0),
(102, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 07 Agustus 2023, TUK BRI Kanwil Banjarmasin', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 07 Agustus 2023, TUK BRI Kanwil Banjarmasin', '<p><strong style=\"color: #999;\">Banjarmasin&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Agustus....</span><br /><br /><span>Pada hari Senin, 7 Agustus 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari Kanwil Banjarmasin yang terdiri dari KC Banjarmasin Samudera dan KC Marahaban. Peserta kegiatan sertifikasi di Kanwil Banjarmasin sebanyak 32 orang. Untuk tempat asesmennya bertempat di BRI Kanwil Banjarmasin.</span></p>', '2023-08-07 08:00:00', '2023-09-29 07:11:20', 1, 1),
(103, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 08 Agustus 2023, TUK BRI Kanwil Banjarmasin', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 08 Agustus 2023, TUK BRI Kanwil Banjarmasin', '<p><strong style=\"color: #999;\">Banjarmasin 2&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Agustus nih....</span><br /><br /><span>Pada hari Selasa, 8 Agustus 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari Kanwil Banjarmasin yang terdiri dari KC Martapura, KC Pelaihari, dan KC Kuala Kapuas. Peserta kegiatan sertifikasi di Kanwil Banjarmasin sebanyak 20 orang. Untuk tempat asesmennya bertempat di BRI Kanwil Banjarmasin.</span></p>', '2023-08-08 08:00:00', '2023-09-29 07:15:47', 1, 1);
INSERT INTO `news` (`newsId`, `newsTitle`, `newsExcerpt`, `newsDetail`, `newsPublishTime`, `newsSaved`, `newsAdmiId`, `newsStatus`) VALUES
(104, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 09 Agustus 2023, TUK BRI KC Kandangan', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 09 Agustus 2023, TUK BRI KC Kandangan', '<p><strong style=\"color: #999;\">Kandangan&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Agustus nih....</span><br /><br /><span>Pada hari Rabu, 9 Agustus 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Rantau, KC Kandangan, KC Barabai, KC Amuntai, dan KC Tanjung Tabalong. Untuk tempat asesmennya bertempat di BRI KC Kandangan. Peserta kegiatan sertifikasi di BRI KC Kandangan sebanyak 20 orang.</span></p>', '2023-08-09 08:00:00', '2023-10-20 01:39:32', 1, 1),
(105, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 - 12 Agustus 2023, TUK BRI KC SAMARINDA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 - 12 Agustus 2023, TUK BRI KC SAMARINDA', '<p><strong style=\"color: #999;\">SAMARINDA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Agustus nih....</span><br /><br /><span>Pada hari Jumat dan Sabtu, 11 - 12 Agustus 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Samarinda dan KC Balikpapan. Peserta kegiatan sertifikasi di KC Samarinda sebanyak 30 orang. Untuk tempat asesmen pada tanggal 11 Agustus 2023 bertempat di BRI KC Samarinda dan pada tanggal 12 Agustus 2023 bertempat di Balikpapan.</span></p>', '2023-08-11 08:00:00', '2023-10-20 01:42:26', 1, 1),
(106, 'KEGIATAN PEMASARAN SERTIFIKASI DI POLITEKNIK DENPASAR', 'KEGIATAN PEMASARAN SERTIFIKASI DI POLITEKNIK DENPASAR', '<p><strong style=\"color: #999;\">DENPASAR - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada Selasa, 12 September 2023, LSP Microfinance Indonesia melakukan kegiatan pemasaran sertifikasi di Politeknik Denpasar, Bali. Kegiatan ini dihadiri oleh Bapak I Made Adi Purwantara selaku Direktur Politeknik Denpasar. Pada pertemuan ini juga membahas terkait rencana program pelaksanaan sertifikasi kompetensi untuk dapat membantu meningkatkan daya saing calon lulusan ketika mencari pekerjaan dan sebagai gambaran atas kemampuan teknis yang sudah terstandar&nbsp;dan&nbsp;terukur.</span></p>', '2023-09-12 08:00:00', '2023-10-20 01:47:58', 1, 1),
(107, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 05 SEPTEMBER 2023, TUK BRI KC MATARAM', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 05 SEPTEMBER 2023, TUK BRI KC MATARAM', '<p><strong style=\"color: #999;\">MATARAM&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Selasa, 5 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Mataram. Peserta kegiatan sertifikasi di KC Mataram sebanyak 28 orang. Untuk tempat asesmen pada tanggal 5 September 2023 bertempat di BRI KC Mataram.</span></p>', '2023-09-05 08:00:00', '2023-11-27 02:54:56', 1, 1),
(108, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 06 SEPTEMBER 2023, TUK BRI KC SELONG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 06 SEPTEMBER 2023, TUK BRI KC SELONG', '<p><strong style=\"color: #999;\">SELONG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Rabu, 6 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Selong. Peserta kegiatan sertifikasi di KC Selong sebanyak 56 orang. Untuk tempat asesmen pada tanggal 6 September 2023 bertempat di BRI KC Selong.</span></p>', '2023-09-06 08:00:00', '2023-11-27 02:58:52', 1, 1),
(109, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 08 SEPTEMBER 2023, TUK BRI KC SUMBAWA BESAR', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 08 SEPTEMBER 2023, TUK BRI KC SUMBAWA BESAR', '<p><strong style=\"color: #999;\">SUMBAWA BESAR&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Jumat , 8 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Sumbawa Besar. Peserta kegiatan sertifikasi di KC Sumbawa Besar sebanyak 53 orang. Untuk tempat asesmen pada tanggal 8 September 2023 bertempat di BRI KC Sumbawa Besar.</span></p>', '2023-09-08 08:00:00', '2023-11-27 03:00:50', 1, 1),
(110, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 - 12 SEPTEMBER 2023, TUK BRI KC DENPASAR GATOT SUBROTO', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 - 12 SEPTEMBER 2023, TUK BRI KC DENPASAR GATOT SUBROTO', '<p><strong style=\"color: #999;\">DENPASAR GATOT SUBROTO&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Senin dan Selasa, 11 - 12 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Denpasar Gatot Subroto. Peserta kegiatan sertifikasi di KC Denpasar Gatot Subroto pada tangga 11 September 2023 sebanyak 31 orang, sedangkan untuk tanggal 12 September 2023 sebanyak 14 orang. Untuk tempat asesmen pada tanggal 11 - 12 September 2023 bertempat di BRI KC Denpasar Gatot Subroto.</span></p>', '2023-09-11 08:00:00', '2023-11-27 03:03:53', 1, 1),
(111, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 SEPTEMBER 2023, TUK BRI KC BANGLI', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 SEPTEMBER 2023, TUK BRI KC BANGLI', '<p><strong style=\"color: #999;\">BANGLI&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Senin, 11 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Bangli. Peserta kegiatan sertifikasi di KC Bangli sebanyak 16 orang. Untuk tempat asesmen pada tanggal 11 September 2023 bertempat di BRI KC Bangli.</span></p>', '2023-09-11 08:00:00', '2023-11-27 03:06:50', 1, 1),
(112, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 SEPTEMBER 2023, TUK BRI KC SEMARAPURA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 SEPTEMBER 2023, TUK BRI KC SEMARAPURA', '<p><strong style=\"color: #999;\">SEMARAPURA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Selasa, 12 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi dari KC Semarapura. Peserta kegiatan sertifikasi di KC Semarapura sebanyak 25 orang. Untuk tempat asesmen pada tanggal 12 September 2023 bertempat di Semarapura.</span></p>', '2023-09-12 08:00:00', '2023-11-27 03:09:00', 1, 1),
(113, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 SEPTEMBER 2023, TUK BRI KC GIANYAR dan KC UBUD', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 SEPTEMBER 2023, TUK BRI KC GIANYAR dan KC UBUD', '<p><strong style=\"color: #999;\">GIANYAR &nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Rabu, 13 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Gianyar dan KC Ubud. Peserta kegiatan sertifikasi di KC Gianyar dan KC Ubud sebanyak 28 orang. Untuk tempat asesmen pada tanggal 13 September 2023 bertempat di BRI Kantor Cabang Gianyar dan Ubud.</span></p>', '2023-09-13 08:00:00', '2023-11-27 03:15:48', 1, 1),
(114, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 SEPTEMBER 2023, TUK BRI KC SINGARAJA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 SEPTEMBER 2023, TUK BRI KC SINGARAJA', '<p><strong style=\"color: #999;\">SINGARAJA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Rabu, 13 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Singaraja. Peserta kegiatan sertifikasi di KC Singaraja sebanyak 35 orang. Untuk tempat asesmen pada tanggal 13 September 2023 bertempat di BRI KC Singaraja.</span></p>', '2023-09-13 08:00:00', '2023-11-27 03:25:17', 1, 1),
(115, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC DENPASAR GAJAH MADA dan KC KUTA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC DENPASAR GAJAH MADA dan KC KUTA', '<p><strong style=\"color: #999;\">DENPASAR GAJAH MADA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Kamis, 14 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Denpasar Gajah Mada &amp; KC Kuta. Peserta kegiatan sertifikasi di KC Denpasar Gajah Mada &amp; KC Kuta sebanyak 36 orang. Untuk tempat asesmen pada tanggal 14 September 2023 bertempat di BRI KC Denpasar Gajah Mada &amp; KC Kuta.</span></p>', '2023-09-14 08:00:00', '2023-11-27 03:29:25', 1, 1),
(116, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC NEGARA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 14 SEPTEMBER 2023, TUK BRI KC NEGARA', '<p><strong style=\"color: #999;\">NEGARA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Kamis, 14 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Negara. Peserta kegiatan sertifikasi di KC Negara sebanyak 48 orang. Untuk tempat asesmen pada tanggal 14 September 2023 bertempat di BRI KC Negara.</span></p>', '2023-09-14 08:00:00', '2023-11-27 03:32:37', 1, 1),
(117, 'PELAKSANAAN UJI SERTIFKASI DENGAN BPR SUKAWATI PANCAKANTI PADA TANGGAL 15 SEPTEMBER 2023, TUK BPR SUKAWATI PANCAKANTI', 'PELAKSANAAN UJI SERTIFKASI DENGAN BPR SUKAWATI PANCAKANTI PADA TANGGAL 15 SEPTEMBER 2023, TUK BPR SUKAWATI PANCAKANTI', '<p><strong style=\"color: #999;\">BPR SUKAWATI PANCAKANTI&nbsp;&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada hari Jumat, 15 September 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi). Kegiatan ini diikuti oleh peserta dari BPR Sukawati Pancakanti. Kegiatan sertifikasi ini bertempat di BPR Sukawati Pancakanti dengan jumlah peserta sebanyak 22 orang.</span></p>', '2023-09-15 08:00:00', '2023-11-29 02:08:47', 1, 1),
(118, 'RAPAT KOORDINASI RCC dan PENYUSUNAN MAPA SERTA PERANGKAT ASESMEN', 'RAPAT KOORDINASI RCC dan PENYUSUNAN MAPA SERTA PERANGKAT ASESMEN', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan September nih....</span><br /><br /><span>Pada Selasa, 26 September 2023, telah dilaksanakan Rapat Koordinasi RCC &amp; Penyusunan MAPA serta Perangkat Asesmen. Rapat koordinasi RCC &amp; Penyusunan MAPA serta Perangkat Asesmen ini diadakan secara tatap muka yang diselenggarakan di Ruang Majapahit, Gedung BRI II Lt. 29, Jl. Jend Sudirman Kav 44-46, Jakarta Pusat dan dihadiri oleh Asesor - Asesor dari LSP Microfinance Indonesia</span></p>', '2023-09-26 08:00:00', '2023-11-29 02:12:59', 1, 1),
(119, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 05 OKTOBER 2023, TUK BRI KC GARUT BATCH II', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 05 OKTOBER 2023, TUK BRI KC GARUT BATCH II', '<p><strong style=\"color: #999;\">GARUT II&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>Pada hari Kamis, 5 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI Batch II di KC Garut. Kegiatan sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi adalah proses evaluasi dan pengakuan terhadap kompetensi dan keterampilan para mitra UMi BRI yang bergerak di bidang usaha ultra mikro. Peserta kegiatan sertifikasi Batch II di KC Garut sebanyak 117 orang. Untuk tempat asesmen pada tanggal 5 Oktober 2023 bertempat di Hotel Harmoni, Garut.</span></p>', '2023-10-05 05:00:00', '2023-11-29 02:21:38', 1, 1),
(120, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 09 OKTOBER 2023, TUK BRI KC MAKASSAR SOMBA OPU', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 09 OKTOBER 2023, TUK BRI KC MAKASSAR SOMBA OPU', '<p><strong style=\"color: #999;\">MAKASSAR SOMBA OPU&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>Pada hari Senin, 9 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Makassar Somba Opu. Peserta kegiatan sertifikasi di KC Makassar Somba Opu sebanyak 23 orang. Untuk tempat asesmen pada tanggal 9 Oktober 2023 bertempat di BRI KC Makassar Somba Opu.</span></p>', '2023-10-09 08:00:00', '2023-11-29 02:46:21', 1, 1),
(121, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 OKTOBER 2023, TUK BRI KC PANAKKUKANG', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 10 OKTOBER 2023, TUK BRI KC PANAKKUKANG', '<p><strong style=\"color: #999;\">PANAKKUKANG&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>Pada hari Selasa, 10 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Panakkukang. Peserta kegiatan sertifikasi di KC Panakkukang sebanyak 24 orang. Untuk tempat asesmen pada tanggal 10 Oktober 2023 bertempat di BRI KC Panakkukang.</span></p>', '2023-10-10 08:00:00', '2023-11-29 02:50:28', 1, 1),
(122, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 OKTOBER 2023, TUK BRI KC SUNGGUMINASA', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 11 OKTOBER 2023, TUK BRI KC SUNGGUMINASA', '<p><strong style=\"color: #999;\">SUNGGUMINASA&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>PPada hari Rabu, 11 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh Mitra UMi BRI dari KC Sungguminasa. Peserta kegiatan sertifikasi di KC Sungguminasa sebanyak 69 orang. Untuk tempat asesmen pada tanggal 11 Oktober 2023 bertempat di KC Sungguminasa.</span></p>', '2023-10-11 08:00:00', '2023-11-29 02:54:36', 1, 1),
(123, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 15 OKTOBER 2023, TUK BRI KC TAKALAR', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 15 OKTOBER 2023, TUK BRI KC TAKALAR', '<p><strong style=\"color: #999;\">TAKALAR&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>Pada hari Kamis, 12 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh Mitra UMi BRI dari KC Takalar. Peserta kegiatan sertifikasi di KC Takalar sebanyak 41 orang. Untuk tempat asesmen pada tanggal 12 Oktober 2023 bertempat di KC Takalar.</span></p>', '2023-10-12 08:00:00', '2023-12-01 02:32:04', 1, 0),
(124, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 OKTOBER 2023, TUK BRI KC MAROS', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 13 OKTOBER 2023, TUK BRI KC MAROS', '<p><strong style=\"color: #999;\">MAROS&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>Pada hari Jumat, 13 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh Mitra UMi BRI dari KC Maros. Peserta kegiatan sertifikasi di KC Maros sebanyak 22 orang. Untuk tempat asesmen pada tanggal 13 Oktober 2023 bertempat di KC Maros.</span></p>', '2023-10-13 08:00:00', '2023-12-01 02:30:06', 1, 1),
(125, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 OKTOBER 2023, TUK BRI KC TAKALAR', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 12 OKTOBER 2023, TUK BRI KC TAKALAR', '<p><strong style=\"color: #999;\">TAKALAR - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>Pada hari Kamis, 12 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI. Kegiatan ini diikuti oleh Mitra UMi BRI dari KC Takalar. Peserta kegiatan sertifikasi di KC Takalar sebanyak 41 orang. Untuk tempat asesmen pada tanggal 12 Oktober 2023 bertempat di KC Takalar.</span></p>', '2023-10-12 08:00:00', '2023-12-01 02:33:17', 1, 1),
(126, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 18 OKTOBER 2023, TUK BRI KC KUNINGAN BATCH II', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 18 OKTOBER 2023, TUK BRI KC KUNINGAN BATCH II', '<p><strong style=\"color: #999;\">KUNINGAN&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan Oktober nih....</span><br /><br /><span>Pada hari Rabu, 18 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI Batch II di KC Kuningan. Peserta kegiatan sertifikasi Batch II di KC Kuningan sebanyak 68 orang. Untuk tempat asesmen pada tanggal 18 Oktober 2023 bertempat di Rumah Makan New Saung Ema\', Kuningan.</span></p>', '2023-10-18 08:00:00', '2023-12-01 02:36:10', 1, 1),
(127, 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 OKTOBER 2023, TUK BRI KC CIANJUR BATCH II', 'PELAKSANAAN UJI SERTIFKASI DENGAN MITRA UMi BRI PADA TANGGAL 19 OKTOBER 2023, TUK BRI KC CIANJUR BATCH II', '<p><strong style=\"color: #999;\">GARUT&nbsp;- </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di akhir bulan Oktober nih....</span><br /><br /><span>Pada hari Kamis, 19 Oktober 2023, LSP Microfinance Indonesia telah melaksanakan Kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) Mitra UMi BRI Batch II di Cianjur. Kegiatan ini diikuti oleh peserta Mitra UMi BRI dari KC Cianjur dan BRI KCP Sukanagara Cianjur. Peserta kegiatan sertifikasi di BRI KCP Sukanagara Cianjur sebanyak 32 orang, sedangkan peserta kegiatan sertifikasi di BRI KC Cianjur sebanyak 28 orang. Untuk tempat asesmennya sendiri bertempat di TUK masing &ndash; masing.</span></p>', '2023-10-19 08:00:00', '2023-12-01 02:50:43', 1, 1),
(128, 'UPGRADING dan RCC ASESOR KOMPETENSI', 'UPGRADING dan RCC ASESOR KOMPETENSI', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span>Halo sobat LSP!&nbsp;</span><span>Bagaimana kabarnya? Semoga sehat selalu ya.</span><br /><span>Mimin mau ngasih info update terbaru seputar kegiatan LSP Microfinance Indonesia di bulan November nih....</span><br /><br /><span>Pada tanggal 23 - 24 November 2023, telah dilaksanakan kegiatan Upgrading dan sertifikasi ulang asesor kompetensi atau yang biasa disebut dengan Recognition Current Competency (RCC). Kegiatan ini dihadiri oleh 8 asesor dari LSP Microfinance Indonesia yang dipandu oleh Master Assessor Ratnawati Lilasari Djanis, M.Pd. Acara ini menjadi titik fokus dalam pemetaan kompetensi saat ini.</span></p>', '2023-11-23 08:00:00', '2023-12-04 07:58:27', 1, 1),
(129, 'WORKSHOP \" PENINGKATAN KAPASITAS SDM MICROFINANCE MELALUI SERTIFIKASI KOMPETENSI \"', 'WORKSHOP \" PENINGKATAN KAPASITAS SDM MICROFINANCE MELALUI SERTIFIKASI KOMPETENSI \"', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span>Lembaga Sertifikasi Profesi (LSP) Microfinance Indonesia menegaskan komitmennya dalam meningkatkan kualitas dan pengembangan lembaga melalui program Penambahan Ruang Lingkup (PRL).</span></p>\n<p><span>Sebagai langkah awal, LSP Microfinance Indonesia menggelar workshop dengan tema &ldquo;Peningkatan Kapasitas SDM Microfinance Melalui Sertifikasi Kompetensi&rdquo; pada hari Selasa, 27 Februari 2024. Workshop tersebut menjadi momen penting dalam merespon tantangan pengembangan ekonomi Indonesia, terutama dalam mendukung sektor usaha mikro.</span></p>\n<p>Selengkapnya ada di :</p>\n<ol>\n<li><span><a href=\"https://inibadah.com/workshop-lsp-microfinance-transformasi-sdm-untuk-pertumbuhan-usaha-mikro/\">https://inibadah.com/workshop-lsp-microfinance-transformasi-sdm-untuk-pertumbuhan-usaha-mikro/</a></span></li>\n<li><span><a href=\"https://majalahtime.com/lsp-microfinance-indonesia-dorong-pengembangan-kompetensi-sdm-sektor-mikro/\">https://majalahtime.com/lsp-microfinance-indonesia-dorong-pengembangan-kompetensi-sdm-sektor-mikro/</a></span></li>\n<li><span><a href=\"https://mediainternasional.com/workshop-strategis-meningkatkan-kompetensi-sdm-dalam-usaha-mikrofinance/\">https://mediainternasional.com/workshop-strategis-meningkatkan-kompetensi-sdm-dalam-usaha-mikrofinance/</a></span></li>\n<li><span><a href=\"https://koranprioritas.com/sektor-mikrofinance-fokus-pada-peningkatan-kapasitas-sdm-melalui-workshop/\">https://koranprioritas.com/sektor-mikrofinance-fokus-pada-peningkatan-kapasitas-sdm-melalui-workshop/</a></span></li>\n<li><span><a href=\"https://temposiana.com/kunci-sukses-workshop-peningkatan-kualitas-sdm-microfinance/\">https://temposiana.com/kunci-sukses-workshop-peningkatan-kualitas-sdm-microfinance/</a></span></li>\n<li><span><a href=\"https://tiras.id/forum-diskusi-membahas-peningkatan-kapasitas-sdm-di-workshop-lsp-microfinance/\">https://tiras.id/forum-diskusi-membahas-peningkatan-kapasitas-sdm-di-workshop-lsp-microfinance/</a></span></li>\n<li><span><a href=\"https://bagyanews.com/lsp-microfinance-indonesia-gelar-workshop-dengan-tema-prl/\">https://bagyanews.com/lsp-microfinance-indonesia-gelar-workshop-dengan-tema-prl/</a></span></li>\n<li><span><a href=\"https://suara-pembaruan.com/workshop-peningkatan-kapasitas-sdm-microfinance-wujud-komitmen-lsp-microfinance-indonesia/\">https://suara-pembaruan.com/workshop-peningkatan-kapasitas-sdm-microfinance-wujud-komitmen-lsp-microfinance-indonesia/</a></span></li>\n<li><span><a href=\"https://eksekutif.com/bnsp-beri-wawasan-penting-dalam-workshop-sdm-microfinance/\">https://eksekutif.com/bnsp-beri-wawasan-penting-dalam-workshop-sdm-microfinance/</a></span></li>\n<li><span><a href=\"https://nginfo.in/lsp-microfinance-indonesia-menggelar-workshop-untuk-peningkatan-kapasitas-sdm-microfinance/\">https://nginfo.in/lsp-microfinance-indonesia-menggelar-workshop-untuk-peningkatan-kapasitas-sdm-microfinance/</a></span></li>\n<li><span><a href=\"https://bulir.id/sinergi-industri-dan-pemerintah-dalam-workshop-lsp-microfinance-indonesia/\">https://bulir.id/sinergi-industri-dan-pemerintah-dalam-workshop-lsp-microfinance-indonesia/</a></span></li>\n<li><span><a href=\"https://indienesia.id/infonesia/langkah-strategis-workshop-peningkatan-kapasitas-sdm-microfinance-di-jakarta/\">https://indienesia.id/infonesia/langkah-strategis-workshop-peningkatan-kapasitas-sdm-microfinance-di-jakarta/</a></span></li>\n<li><span><a href=\"https://infomoneter.co/workshop-peningkatan-kapasitas-sdm-microfinance-langkah-menuju-keberlanjutan-ekonomi-mikro/\">https://infomoneter.co/workshop-peningkatan-kapasitas-sdm-microfinance-langkah-menuju-keberlanjutan-ekonomi-mikro/</a></span></li>\n<li><span><a href=\"https://telegraf.co.id/lsp-microfinance-indonesia-gelar-workshop-peningkatan-kapasitas-sdm-microfinance-melalui-sertifikasi-kompetensi/\">https://telegraf.co.id/lsp-microfinance-indonesia-gelar-workshop-peningkatan-kapasitas-sdm-microfinance-melalui-sertifikasi-kompetensi/</a></span></li>\n</ol>\n<p>&nbsp;</p>', '2024-02-27 09:00:00', '2024-02-28 02:28:50', 1, 1),
(130, 'Kegiatan Sertifikasi Kompetensi Mitra UMi TUK BRI KC Gatot Subroto', 'Pelaksanaan Sertifikasi Mitra UMI BRI KC Gatot Subroto', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span class=\"OYPEnA text-decoration-none text-strikethrough-none\">Pada tanggal 20 Maret 2024, LSP Microfinance Indonesia menyelenggarakan kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) bagi Mitra UMi BRI. Kegiatan Sertifikasi Profesi BNSP merupakan proses evaluasi dan pengakuan terhadap kompetensi serta keterampilan para Mitra UMi yang bergerak dalam bidang usaha Ultra Mikro. Kegiatan ini dihadiri oleh Mitra UMi BRI dari KC Denpasar Gatot Subroto, KC Denpasar Gajah Mada, dan KC Kuta. Kegiatan sertifikasi ini dilakukan di BRI KC Gatot Subroto yang dihadiri oleh 18 Mitra UMi.</span></p>', '2024-03-20 10:00:00', '2024-04-02 01:48:34', 6, 1),
(131, 'Kegiatan Sertifikasi Kompetensi Mitra UMi TUK BRI KC Tabanan', 'Pelaksanaan Kegiatan Sertifikasi Kompetensi Mitra UMi TUK BRI KC Tabanan', '<p style=\"text-align: justify;\"><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span class=\"OYPEnA text-decoration-none text-strikethrough-none\">Pada tanggal 21 Maret 2024, LSP Microfinance Indonesia menyelenggarakan kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) bagi Mitra UMi BRI. Kegiatan Sertifikasi Profesi BNSP merupakan proses evaluasi dan pengakuan terhadap kompetensi serta keterampilan para Mitra UMi yang bergerak dalam bidang usaha Ultra Mikro. Kegiatan ini dihadiri oleh Mitra UMi BRI dari KC Tabanan. Kegiatan sertifikasi ini dilakukan di BRI KC Tabanan yang dihadiri oleh 10 Mitra UMi.</span></p>', '2024-03-22 10:00:00', '2024-04-02 01:55:37', 6, 1),
(132, 'Kegiatan Sertifikasi Kompetensi Mitra UMi TUK BRI KC Semarapura', 'Kegiatan Sertifikasi Kompetensi Mitra UMi TUK BRI KC Semarapura', '<p style=\"text-align: justify;\"><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span class=\"OYPEnA text-decoration-none text-strikethrough-none\">Pada tanggal 21 Maret 2024, LSP Microfinance Indonesia menyelenggarakan kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) bagi Mitra UMi BRI. Kegiatan Sertifikasi Profesi BNSP merupakan proses evaluasi dan pengakuan terhadap kompetensi serta keterampilan para Mitra UMi yang bergerak dalam bidang usaha Ultra Mikro. Kegiatan ini dihadiri oleh Mitra UMi BRI dari KC Tabanan. Kegiatan sertifikasi ini dilakukan di BRI KC Tabanan yang dihadiri oleh 9 Mitra UMi.</span></p>', '2024-03-23 00:00:00', '2024-04-02 01:58:22', 6, 1),
(133, 'Pertemuan antara LSP Microfinance Indonesia dengan Civitas Akademika', 'Pertemuan antara LSP Microfinance indonesia dengan civitas akademika', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;Pada tanggal 19 hingga 22 Maret 2024, LSPMI telah melaksanakan kegiatan pemasaran kepada Civitas Akademika di tiga universitas ternama di Jawa Barat dan Jawa Tengah. Pertemuan tersebut dihadiri oleh Bapak Prabowo Ajie selaku Manager Pemasaran LSPMI, dan perwakilan dari Universitas Padjajaran, Universitas Siliwangi, dan Universitas Jendral Sudirman. Di Denpasar, LSPMI juga mengadakan pertemuan dengan Universitas Pendidikan Nasional (UNDIKNAS) yang dihadiri oleh Ibu Agustini selaku Manager Sertifikasi LSPMI.</p>\n<p>Dalam pertemuan tersebut, LSPMI memaparkan berbagai program sertifikasi yang tersedia bagi mahasiswa, termasuk manfaat dan keuntungan yang bisa diperoleh dari mengikuti program sertifikasi, salah satunya sebagai Surat Keterangan Pendamping Ijasah (SKPI) bagi mahasiswa. Selain itu, LSPMI juga membuka peluang kerjasama dengan universitas untuk penyelenggaraan program sertifikasi. LSPMI optimis bahwa kerjasama dengan universitas akan memberikan dampak positif bagi mahasiswa, Universitas, dan Dunia kerja.</p>', '2024-03-24 10:00:00', '2024-04-02 02:14:37', 6, 1),
(134, 'Kegiatan Sertifikasi Kompetensi  Mahasiswa Universitas Udayana & Karyawan BPR Sukawati Pancakanti', 'Kegiatan Sertifikasi Kompetensi  Mahasiswa Universitas Udayana & Karyawan BPR Sukawati Pancakanti', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span class=\"OYPEnA text-decoration-none text-strikethrough-none\">Pada tanggal 23 Maret 2024, LSP Microfinance Indonesia menyelenggarakan kegiatan Sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) bagi Mahasiswa Universitas Udayana serta Karyawan BPR Sukawati Pancakanti.Sertifikat yang diperoleh dari proses ini kemudian akan digunakan sebagai Surat Keterangan Pendamping Ijazah (SKPI) bagi Mahasiswa Universitas Udayana serta merupakan proses evaluasi dan pengakuan terhadap kompetensi bagi karyawan BPR Sukawati Pancakanti.</span><span class=\"OYPEnA text-decoration-none text-strikethrough-none white-space-prewrap\"> </span><span class=\"OYPEnA text-decoration-none text-strikethrough-none\">Kegiatan sertifikasi ini dilakukan di TUK BPR Kanti yang dihadiri oleh 22 peserta.</span></p>', '2024-03-25 10:00:00', '2024-04-02 02:32:33', 6, 1),
(135, 'PERTEMUAN ANTARA LSP MICROFINANCE INDONESIA DENGAN INSTITUT BISNIS DAN INFORMATIKA KESATUAN', 'PERTEMUAN ANTARA LSP MICROFINANCE INDONESIA DENGAN INSTITUT BISNIS DAN INFORMATIKA KESATUAN', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;H<span>ey Sobat LSP!&nbsp;</span><span>Ada kabar seru dari kami!</span><br /><br /><span>Di bulan April ini, kami telah melakukan sebuah pertemuan penting terkait kerjasama dengan Institut Bisnis dan Informatika Kesatuan (IBIK) Bogor lho.</span></p>\n<p><span>Pertemuan kali ini adalah membahas potensi kerjasama sertifikasi kompetensi bagi mahasiswa IBIK Bogor untuk meningkatkan kompetensi dan persiapan mereka didunia kerja yang kompetitif.</span></p>', '2024-04-18 08:00:00', '2024-05-22 01:12:48', 1, 1),
(136, 'KEGIATAN SERTIFIKASI MAHASISWA UNIVERSITAS NEGERI JAKARTA', 'KEGIATAN SERTIFIKASI MAHASISWA UNIVERSITAS NEGERI JAKARTA', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span>Halo Sobat LSP!&nbsp;</span><span>Semangat terus ya!</span></p>\n<p><br /><span>Mimin mau bagiin kabar seru nih seputar kegiatan LSP Microfinance Indonesia di bulan Mei 2024 yang pasti bikin kamu tertarik.</span></p>\n<p><span>Pada tanggal 04 Mei 2024, LSP Microfinace Indonesia menyelenggarakan kegiata sertifikasi BNSP (Badan Nasional Sertifikasi Profesi) bagi Mahasiswa Universitas Negeri Jakarta. Sertifikasi yang diperoleh dari proses ini kemudian akan digunakan sebagai Surat Keterangan Pendamping Ijazah (SKPI) serta merupakan proses evaluasi dan pengakuan terhadap kompetensi bagi Mahasiswa Universitas Negeri Jakarta.&nbsp;</span></p>', '2024-05-04 08:00:00', '2024-05-28 07:24:55', 1, 1),
(137, 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO LIWA', 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO LIWA', '<p><strong style=\"color: #999;\">Liwa&nbsp;- </strong>&nbsp;Pada tanggal 13 Mei 2024, LSP Microfinance Indonesia Menyelenggarakan kegiatan sertifikasi BNSP ( Badan Nasional Sertifikasi Profesi ) bagi Mitra UMi BRI. Kegiatan Sertifikasi Profesi BNSP merupakan proses evaluasi dan pengakuan terhadap kompetensi serta keterampilan para Mitra UMi yang bergerak dalam bidang usaha Ultra Mikro. Kegiatan ini dihadiri oleh Mitra UMi BRI dari KC Liwa. Kegiatan sertifikasi ini dilakukan di BRI KC Liwa yang dihadiri oleh 16 Mitra UMi.</p>', '2024-05-13 08:00:00', '2024-05-28 07:44:43', 1, 1),
(138, 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO METRO', 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO METRO', '<p><strong style=\"color: #999;\">METRO&nbsp;- </strong>&nbsp;<span>Halo semua!&nbsp;</span></p>\n<p><span>Mimin punya kabar seru nih tentang kegiatan LSP Microfinance Indonesia yang pasti bikin kamu tertarik.</span></p>\n<p><span>Pada tanggal 14 Mei 2024,&nbsp;LSP Microfinance Indonesia Menyelenggarakan kegiatan sertifikasi BNSP ( Badan Nasional Sertifikasi Profesi ) bagi Mitra UMi BRI. Kegiatan Sertifikasi Profesi BNSP merupakan proses evaluasi dan pengakuan terhadap kompetensi serta keterampilan para Mitra UMi yang bergerak dalam bidang usaha Ultra Mikro. Kegiatan ini dihadiri oleh Mitra UMi BRI dari KC Metro. Kegiatan sertifikasi ini dilakukan di BRI KC Metro yang dihadiri oleh 13 Mitra UMi.</span></p>', '2024-05-14 08:00:00', '2024-05-29 00:19:48', 1, 1),
(139, 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO BANDARJAYA', 'KEGIATAN SERTIFIKASI KOMPETENSI MITRA UMi BRI BO BANDARJAYA', '<p><strong style=\"color: #999;\">Bandarjaya&nbsp;- </strong>&nbsp;<span>Halo semua!</span></p>\n<p>Pada tanggal 15 Mei 2024, LSP Microfinance Indonesia Menyelenggarakan kegiatan sertifikasi BNSP ( Badan Nasional Sertifikasi Profesi ) bagi Mitra UMi BRI. Kegiatan Sertifikasi Profesi BNSP merupakan proses evaluasi dan pengakuan terhadap kompetensi serta keterampilan para Mitra UMi yang bergerak dalam bidang usaha Ultra Mikro. Kegiatan ini dihadiri oleh Mitra UMi BRI dari KC Bandarjaya. Kegiatan sertifikasi ini dilakukan di BRI KC Bandarjaya yang dihadiri oleh 34 Mitra UMi.</p>', '2024-05-15 08:00:00', '2024-05-29 00:26:03', 1, 1),
(140, 'PENANDATANGANAN MOU ANTARA LSP MICROFINANCE INDONESIA DENGAN UNIVERSITAS NEGERI JAKARTA', 'PENANDATANGANAN MOU ANTARA LSP MICROFINANCE INDONESIA DENGAN UNIVERSITAS NEGERI JAKARTA', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span>Hey Sobat LSP!</span></p>\n<p>Pada tanggal 22 Mei 2024, Lembaga Sertifikasi Profesi Microfinance Indonesia (LSPMI) berkolaborasi dengan Universitas Negeri Jakarta dalam pertemuan strategis. Turut hadir Direktur utama LSP Microfinance Indonesia , Bapak Ir. Bakri dan tim serta dekan Fakultas Ekonomi&nbsp; Universitas Negeri Jakarta Prof. Usep Suhud, M.Si, Ph.D, beserta tim. Fokus pada pertemuan kali ini&nbsp; adalah penandatanganan&nbsp; Mou kerjasama sertifikasi kompetensi untuk meningkatkan kompetensi dan persiapan Mahasiswa/i Universitas Negeri Jakarta di dunia kerja yang kompetitif.</p>', '2024-05-22 13:00:00', '2024-05-29 00:36:04', 1, 1),
(141, 'URGENSI PELATIHAN  DAN SERTIFIKASI KOMPETENSI BAGI LULUSAN PERGURUAN TINGGI', 'SOSIALISASI URGENSI PELATIHAN  DAN SERTIFIKASI KOMPETENSI BAGI LULUSAN PERGURUAN TINGGI PADA FAKULTAS EKONOMI UNIVERSITAS NEGERI JAKARTA', '<p><strong style=\"color: #999;\">LSP Microfinance Indonesia - </strong>&nbsp;<span>Hai sobat LSP!&nbsp;</span><span>Gimana kabarnya? Semoga semuanya sehat dan semangat!</span></p>\n<p><span>Pada&nbsp; tanggal 06 Juni 2024, LSP Microfinance Indonesia mengadakan sosialisasi di Fakultas Ekonomi Universitas Negeri Jakarta&nbsp; (FE UNJ) untuk menekankan pentingnya sertifikasi kompetansi dalam meningkatkan kualitas dan daya saing lulusan. Materi utama disampaikan oleh Direktur utama LSP Microfinance Indonesia, Bapak Ir. Bakri, M.M, dan dihadiri oleh Wakil Dekan Bidang Kemahasiswaan danAlimni FE UNJ, Dr. Indra Pahala, M.Si.,. Sosialisasi ini membahas tujuan dan manfaat sertifikasi serta pengenalan unit kompetensi yang ditawarkan oleh LSP Microfinance Indonesia.&nbsp;&nbsp;</span></p>', '2024-06-06 13:00:00', '2024-06-11 00:41:21', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_images`
--

CREATE TABLE `news_images` (
  `neimId` int(10) UNSIGNED NOT NULL,
  `neimNewsId` int(10) UNSIGNED NOT NULL,
  `neimArimId` int(10) UNSIGNED NOT NULL,
  `neimSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `neimStatus` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_images`
--

INSERT INTO `news_images` (`neimId`, `neimNewsId`, `neimArimId`, `neimSaved`, `neimStatus`) VALUES
(1, 6, 1, '2020-07-16 09:34:07', 1),
(2, 7, 11, '2020-07-22 04:27:34', 1),
(3, 8, 12, '2020-07-22 04:29:09', 1),
(4, 9, 13, '2020-07-22 04:36:28', 1),
(5, 10, 14, '2020-07-22 04:39:10', 1),
(6, 11, 15, '2020-07-22 04:42:55', 1),
(7, 12, 17, '2020-07-29 00:42:50', 1),
(8, 13, 18, '2020-07-29 00:54:52', 1),
(9, 14, 19, '2021-03-05 03:35:48', 1),
(10, 15, 20, '2021-03-05 07:21:54', 1),
(11, 16, 26, '2021-04-21 03:19:12', 1),
(12, 17, 27, '2021-04-21 03:31:00', 1),
(13, 18, 28, '2021-04-21 03:33:15', 1),
(14, 19, 29, '2021-04-21 03:36:50', 1),
(15, 20, 36, '2022-06-09 04:08:34', 1),
(16, 21, 37, '2022-07-04 02:39:42', 1),
(17, 22, 38, '2022-07-04 02:42:34', 1),
(18, 23, 39, '2022-07-04 02:56:59', 1),
(19, 24, 40, '2022-08-08 06:31:10', 1),
(20, 25, 41, '2022-08-08 06:32:46', 1),
(21, 26, 42, '2022-08-08 06:36:10', 1),
(22, 27, 43, '2022-08-08 07:33:19', 1),
(23, 28, 44, '2022-08-08 07:40:07', 1),
(24, 29, 46, '2022-08-08 07:52:19', 1),
(25, 30, 47, '2022-08-08 07:55:57', 1),
(26, 31, 49, '2022-08-09 01:48:01', 1),
(27, 32, 50, '2022-09-06 06:59:00', 1),
(28, 33, 51, '2022-09-08 04:03:06', 1),
(29, 34, 52, '2022-09-08 04:25:28', 1),
(30, 35, 53, '2022-09-23 03:32:08', 1),
(31, 36, 53, '2022-09-23 03:35:19', 1),
(32, 37, 54, '2022-09-23 03:43:44', 1),
(33, 38, 55, '2022-09-23 03:50:25', 1),
(34, 39, 56, '2022-09-23 03:54:56', 1),
(35, 40, 57, '2022-09-23 04:03:38', 1),
(36, 41, 58, '2022-09-23 07:57:45', 1),
(37, 42, 59, '2022-09-23 07:59:34', 1),
(38, 43, 60, '2022-09-23 08:01:19', 1),
(39, 44, 61, '2022-09-23 08:03:06', 1),
(40, 45, 62, '2022-09-23 08:04:00', 1),
(41, 46, 63, '2022-11-02 02:19:49', 1),
(42, 47, 64, '2022-11-30 07:04:25', 1),
(43, 48, 65, '2022-11-30 07:14:06', 1),
(44, 49, 66, '2022-11-30 07:19:33', 1),
(45, 50, 67, '2022-11-30 07:24:31', 1),
(46, 51, 69, '2022-11-30 07:41:27', 1),
(47, 52, 68, '2022-11-30 07:52:00', 1),
(48, 53, 70, '2022-11-30 07:52:29', 1),
(49, 54, 74, '2023-03-28 02:31:01', 1),
(51, 55, 76, '2023-03-28 02:58:08', 1),
(52, 56, 77, '2023-03-28 03:08:19', 1),
(53, 57, 78, '2023-03-28 06:24:36', 1),
(54, 58, 79, '2023-03-28 07:11:20', 1),
(55, 59, 80, '2023-03-28 07:27:20', 1),
(56, 60, 81, '2023-03-29 00:51:42', 1),
(57, 61, 82, '2023-03-29 01:05:56', 1),
(58, 62, 83, '2023-03-29 01:12:41', 1),
(59, 63, 84, '2023-03-29 01:20:50', 1),
(60, 64, 85, '2023-03-29 01:26:08', 1),
(61, 65, 86, '2023-03-29 02:36:03', 1),
(62, 66, 87, '2023-03-29 04:13:28', 1),
(63, 67, 88, '2023-03-29 04:16:11', 1),
(64, 68, 92, '2023-07-31 02:42:03', 1),
(65, 69, 94, '2023-07-31 02:45:51', 1),
(66, 70, 95, '2023-07-31 02:48:50', 1),
(67, 71, 96, '2023-07-31 02:51:39', 1),
(68, 72, 98, '2023-07-31 03:00:04', 1),
(69, 73, 99, '2023-07-31 03:02:03', 1),
(70, 74, 100, '2023-07-31 03:13:27', 1),
(71, 75, 101, '2023-07-31 03:16:20', 1),
(72, 76, 102, '2023-07-31 03:30:57', 1),
(73, 77, 103, '2023-07-31 04:14:13', 1),
(74, 78, 104, '2023-07-31 04:32:23', 1),
(75, 79, 107, '2023-07-31 08:20:34', 1),
(76, 80, 108, '2023-07-31 08:22:51', 1),
(77, 81, 109, '2023-07-31 08:24:39', 1),
(78, 82, 110, '2023-08-01 03:23:14', 1),
(79, 83, 111, '2023-08-01 03:25:22', 1),
(80, 84, 112, '2023-08-01 03:53:17', 1),
(81, 85, 113, '2023-08-01 03:59:57', 1),
(82, 86, 114, '2023-08-01 04:03:07', 1),
(83, 87, 115, '2023-08-01 04:07:06', 1),
(84, 88, 116, '2023-08-01 04:09:26', 1),
(85, 89, 117, '2023-08-01 04:12:47', 1),
(86, 90, 118, '2023-08-01 04:15:33', 1),
(87, 91, 119, '2023-08-01 04:18:50', 1),
(88, 92, 120, '2023-08-01 04:20:49', 1),
(89, 93, 121, '2023-08-01 04:36:47', 1),
(90, 94, 122, '2023-08-01 04:38:27', 1),
(91, 95, 123, '2023-08-01 04:40:35', 1),
(92, 96, 124, '2023-08-05 03:51:22', 1),
(93, 97, 125, '2023-08-05 03:53:27', 1),
(94, 98, 126, '2023-08-05 03:55:40', 1),
(95, 99, 127, '2023-08-05 03:57:24', 1),
(96, 100, 128, '2023-08-08 00:17:58', 1),
(97, 101, 128, '2023-08-08 00:18:02', 1),
(98, 102, 129, '2023-09-29 07:11:20', 1),
(99, 103, 131, '2023-09-29 07:15:47', 1),
(100, 104, 132, '2023-10-20 01:39:32', 1),
(101, 105, 133, '2023-10-20 01:42:26', 1),
(102, 106, 135, '2023-10-20 01:47:58', 1),
(103, 107, 136, '2023-11-27 02:54:56', 1),
(104, 108, 137, '2023-11-27 02:58:52', 1),
(105, 109, 138, '2023-11-27 03:00:50', 1),
(106, 110, 139, '2023-11-27 03:03:53', 1),
(107, 111, 140, '2023-11-27 03:06:50', 1),
(108, 112, 141, '2023-11-27 03:09:00', 1),
(109, 113, 142, '2023-11-27 03:15:48', 1),
(110, 114, 143, '2023-11-27 03:25:17', 1),
(111, 115, 147, '2023-11-27 03:29:25', 1),
(112, 116, 148, '2023-11-27 03:32:37', 1),
(113, 117, 149, '2023-11-29 02:08:48', 1),
(114, 118, 150, '2023-11-29 02:12:59', 1),
(115, 119, 151, '2023-11-29 02:21:38', 1),
(116, 120, 152, '2023-11-29 02:46:21', 1),
(117, 121, 153, '2023-11-29 02:50:28', 1),
(118, 122, 154, '2023-11-29 02:54:36', 1),
(119, 123, 155, '2023-11-29 06:13:13', 1),
(120, 124, 156, '2023-12-01 02:30:06', 1),
(121, 125, 155, '2023-12-01 02:33:17', 1),
(122, 126, 157, '2023-12-01 02:36:10', 1),
(123, 127, 158, '2023-12-01 02:50:43', 1),
(124, 128, 159, '2023-12-04 07:58:27', 1),
(125, 129, 160, '2024-02-28 02:28:50', 1),
(126, 130, 162, '2024-04-02 01:48:34', 1),
(127, 131, 163, '2024-04-02 01:55:37', 1),
(128, 132, 164, '2024-04-02 01:58:22', 1),
(129, 133, 165, '2024-04-02 02:14:37', 1),
(130, 134, 166, '2024-04-02 02:32:33', 1),
(131, 135, 167, '2024-05-22 01:12:48', 1),
(132, 136, 168, '2024-05-28 07:24:55', 1),
(133, 137, 169, '2024-05-28 07:44:43', 1),
(134, 138, 170, '2024-05-29 00:19:48', 1),
(135, 139, 171, '2024-05-29 00:26:03', 1),
(136, 140, 172, '2024-05-29 00:36:04', 1),
(137, 141, 174, '2024-06-11 00:41:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `sldrId` int(10) UNSIGNED NOT NULL,
  `sldrArimId` int(10) UNSIGNED NOT NULL,
  `sldrTitle` varchar(200) DEFAULT NULL,
  `sldrSubTitle` varchar(200) NOT NULL DEFAULT '',
  `sldrSaved` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sldrAdmiId` int(11) NOT NULL,
  `sldrActive` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sldrId`, `sldrArimId`, `sldrTitle`, `sldrSubTitle`, `sldrSaved`, `sldrAdmiId`, `sldrActive`) VALUES
(1, 90, 'LSP Microfinance Indonesia', 'LSP Microfinance Indonesia', '2023-05-05 07:55:30', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tm_asesor`
--

CREATE TABLE `tm_asesor` (
  `asesor_id` int(11) NOT NULL,
  `nama_asesor` varchar(100) DEFAULT NULL,
  `no_registrasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tm_asesor`
--

INSERT INTO `tm_asesor` (`asesor_id`, `nama_asesor`, `no_registrasi`) VALUES
(1, 'Tuanmas Sinintaro', 'MET.000. 000758 2021'),
(2, 'Abdullah Alatas', 'MET.000. 000759 2021'),
(3, 'Eti Mulia Rikadiyanti', 'MET.000. 000760 2021'),
(4, 'Gusrizal', 'MET.000. 000761 2021'),
(5, 'Martino Wibowo ', 'MET.000. 000762 2021'),
(6, 'Ahmad Hermanto', 'MET.000. 000763 2021'),
(7, 'Agus Rachmadi', 'MET.000. 000765 2021'),
(8, 'Bakri', 'MET.000. 000766 2021'),
(9, 'Elan Nurhadi Purwanto', 'MET.000. 000767 2021'),
(10, 'Abdul Biya', 'MET.000. 000768 2021'),
(11, 'Ade Ananto Terminanto', 'MET.000. 000769 2021'),
(12, 'Ismanto', 'MET.000. 000961 2021'),
(13, 'Dwinda Purnamansyah Ruslan', 'MET.000. 000962 2021'),
(14, 'Agustini', 'MET.000.002124 2021'),
(15, 'Iman Yusuf', 'MET.000. 000256 2022'),
(16, 'Budi Eristijono', 'MET.000. 000257 2022'),
(17, 'Made Arya Amitaba', 'MET.000. 000258 2022'),
(18, 'Dedy Iskandar Putra', 'MET.000. 000259 2022'),
(19, 'R. Andoko Suroto', 'MET.000. 000260 2022'),
(20, 'Hari Siaga Amijarso', 'MET.000. 000261 2022'),
(21, 'Bagas Pebru Sadtriadi', 'MET.000. 000262 2022'),
(22, 'Nirwanus Halfi Andra', 'MET.000. 000263 2022'),
(23, 'Priyadi', 'MET.000. 000264 2022'),
(24, 'Lestari Widiawati', 'MET.000. 000265 2022'),
(25, 'Amal', 'MET.000. 000266 2022'),
(26, 'Cahyo Yuliarso', 'MET.000. 000267 2022'),
(27, 'Effendi Hidayat', 'MET.000. 000268 2022'),
(28, 'Eko Rahayu Hartono', 'MET.000. 000269 2022'),
(29, 'Shela Kusuma Salim', 'MET.000. 000270 2022'),
(30, 'Hiras Lumban Tobing', 'MET.000. 000271 2022'),
(31, 'Prabowo Ajie', 'MET.000. 000272 2022'),
(32, 'Supardi Santoso', 'MET.000. 000273 2022'),
(33, 'Agus Ahdiyat', 'MET.000. 000274 2022'),
(34, 'I Nyoman Sueta', 'MET.000. 000275 2022'),
(35, 'Inal Rojid Sihotang', 'MET.000. 000276 2022'),
(36, 'Imam Hanafi', 'MET.000. 000277 2022'),
(37, 'Anita Retnani', 'MET.000. 000278 2022'),
(38, 'Cut Indriani', 'MET.000. 000279 2022'),
(39, 'Agus Tri Raharjo', 'MET.000. 002412 2022'),
(40, 'Endang Sri Watiningsih', 'MET.000. 002413 2022'),
(41, 'Agung Yuendro', 'MET.000. 002414 2022'),
(43, 'Paksi Mei Penggalih', 'MET.000. 002417 2022'),
(44, 'Dedi EMS', 'MET.000. 002416 2022'),
(45, 'I GST MD Oka Wirawan', 'MET.000. 002418 2022'),
(46, 'M. Rizkan Gunawan', 'MET.000. 002419 2022'),
(47, 'Gatot Satrio', 'MET.000. 002420 2022'),
(48, 'Harno', 'MET.000. 002421 2022'),
(49, 'Agus Saptono', 'MET.000. 002422 2022'),
(50, 'Retty Retnowati', 'MET.000. 002423 2022'),
(51, 'Dadi Kusnadi', 'MET.000. 002424 2022'),
(52, 'Darnawi', 'MET.000. 002425 2022'),
(53, 'Mujiono', 'MET.000. 002426 2022'),
(54, 'Amir Syarifudin', 'MET.000. 002427 2022'),
(55, 'Toga Raja Pasaribu', 'MET.000. 002428 2022'),
(56, 'Mulyadih', 'MET.000. 002429 2022'),
(58, 'R. Srigati Santoso', 'MET.000. 002415 2022');

-- --------------------------------------------------------

--
-- Table structure for table `tm_pemegang_sertifikat`
--

CREATE TABLE `tm_pemegang_sertifikat` (
  `pemegang_sertifikat_id` int(11) NOT NULL,
  `nama_pemegang_sertifikat` varchar(100) DEFAULT NULL,
  `nama_skema` varchar(100) DEFAULT NULL,
  `nama_instansi` varchar(100) DEFAULT NULL,
  `alamat_instansi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tm_pemegang_sertifikat`
--

INSERT INTO `tm_pemegang_sertifikat` (`pemegang_sertifikat_id`, `nama_pemegang_sertifikat`, `nama_skema`, `nama_instansi`, `alamat_instansi`) VALUES
(1, 'Imam Hanafi', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(2, 'Prabowo Ajie', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(3, 'Efendi Hidayat', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(4, 'Anita Retnani', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(5, 'Eko Rahayu Hartono', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(6, 'Shela Kusuma Salim', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(7, 'Priyadi', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(8, 'Cut Indriani', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(9, 'Cahyo Yuliarso', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(10, 'Bagas Pebru Sadtriadi', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(11, 'Dedy Iskandar Putra', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(12, 'Agus Ahdiyat', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(13, 'Budi Eristijono', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(14, 'R. Andoko Suroto', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(15, 'Iman Yusuf', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(16, 'I Nyoman Sueta', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(17, 'Lestari Widiawati', 'Pelaksanaan Proses Pinjaman', 'Universitas Indonesia', 'Pondok Cina, Beji, Depok'),
(18, 'Nirwanus Halfi Andra', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(19, 'Amal', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(20, 'I GST MD Oka Wirawan', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(21, 'Gatot Satrio', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(22, 'Supardi Santoso', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(23, 'Harno', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(24, 'Agus Saptono', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(25, 'Darnawi', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(26, 'Toga Raja Pasaribu', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(27, 'Dedi Ems', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(28, 'Agung Yuendro', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(29, 'Amir Syarifudin', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(30, 'M. Rizkan Gunawan', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(31, 'Mulyadih', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(32, 'Suyanto', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(33, 'Retty Retnowati', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(34, 'Agus Tri Raharjo', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(35, 'R. Srigati Santoso', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(36, 'Endang Sri Watiningsih', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(37, 'Paksi Mei Penggalih', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(38, 'Mujiono', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(39, 'Dadi Kusnadi', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(40, 'Hari Siaga Amijarso', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(41, 'Agustini', 'Pelaksanaan Proses Pinjaman', 'STIE GICI Bussines School', 'Jl. Raya Citayam, Cipayung, Depok'),
(42, 'Imam Hanafi', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(43, 'Prabowo Ajie', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(44, 'Efendi Hidayat', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(45, 'Anita Retnani', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(46, 'Eko Rahayu Hartono', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(47, 'Shela Kusuma Salim', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(48, 'Priyadi', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(49, 'Cahyo Yuliarso', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(50, 'Bagas Pebru Sadtriadi', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(51, 'Dedy Iskandar Putra', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(52, 'Agus Ahdiyat', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(53, 'Budi Eristijono', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(54, 'R. Andoko Suroto', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(55, 'Cut Indriani', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(56, 'Amal', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(57, 'Lestari Widiawati', 'Pengelolaan Risiko Pinjaman', 'Universitas Indonesia', 'Pondok Cina, Beji, Depok'),
(58, 'Iman Yusuf', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(59, 'I Nyoman Sueta', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(60, 'Nirwanus Halfi Andra', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(61, 'I GST MD Oka Wirawan', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(62, 'Gatot Satrio', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(63, 'Supardi Santoso', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(64, 'Harno', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(65, 'Agus Saptono', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(66, 'Darnawi', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(67, 'Toga Raja Pasaribu', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(68, 'M. Rizkan Gunawan', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(69, 'Dedi Ems', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(70, 'Agung Yuendro', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(71, 'Amir Syarifudin', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(72, 'Mulyadih', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(73, 'Suyanto', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(74, 'Retty Retnowati', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(75, 'Agus Tri Raharjo', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(76, 'R. Srigati Santoso', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(77, 'Endang Sri Watiningsih', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(78, 'Paksi Mei Penggalih', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(79, 'Mujiono', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(80, 'Dadi Kusnadi', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(81, 'Hari Siaga Amijarso', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(82, 'Agustini', 'Pengelolaan Risiko Pinjaman', 'STIE GICI Bussines School', 'Jl. Raya Citayam, Cipayung, Depok'),
(83, 'Imam Hanafi', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(84, 'Prabowo Ajie', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(85, 'Efendi Hidayat', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(86, 'Anita Retnani', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(87, 'Eko Rahayu Hartono', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(88, 'Shela Kusuma Salim', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(89, 'Priyadi', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(90, 'Cahyo Yuliarso', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(91, 'Bagas Pebru Sadtriadi', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(92, 'Dedy Iskandar Putra', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(93, 'Agus Ahdiyat', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(94, 'Budi Eristijono', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(95, 'R. Andoko Suroto', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(96, 'Lestari Widiawati', ' Penyelesaian Pinjaman Bermasalah', 'Universitas Indonesia', 'Pondok Cina, Beji, Depok'),
(97, 'I Nyoman Sueta', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(98, 'Iman Yusuf', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(99, 'Cut Indriani', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(100, 'Nirwanus Halfi Andra', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(101, 'Amal', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(102, 'I GST MD Oka Wirawan', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(103, 'Gatot Satrio', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(104, 'Supardi Santoso', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(105, 'Harno', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(106, 'Agus Saptono', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(107, 'Darnawi', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(108, 'Toga Raja Pasaribu', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(109, 'Agung Yuendro', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(110, 'M. Rizkan Gunawan', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(111, 'Amir Syarifudin', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(112, 'Mulyadih', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(113, 'Suyanto', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(114, 'Retty Retnowati', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(115, 'Dedi Ems', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(116, 'Agus Tri Raharjo', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(117, 'R. Srigati Santoso', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(118, 'Endang Sri Watiningsih', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(119, 'Paksi Mei Penggalih', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(120, 'Mujiono', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(121, 'Dadi Kusnadi', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(122, 'Hari Siaga Amijarso', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(123, 'Agustini', ' Penyelesaian Pinjaman Bermasalah', 'STIE GICI Bussines School', 'Jl. Raya Citayam, Cipayung, Depok'),
(124, 'Endang Suparman', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Blok Cikadu RT.008/RW.004 Sidawangi, Sumber, Cirebon, Jawa Barat'),
(125, 'Sulami', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Dukuh V RT.011/RW.005 Dukuh, Kramatjati, Jakarta Timur'),
(126, 'Elan Nurhadi Purwanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Universitas Pertamina', 'Jl. Teuku Nyak Arief, RT.7/RW.8, Simprug, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12220'),
(127, 'Agustini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'STIE GICI Bussines School', 'Jl. Raya Citayam, Cipayung, Depok'),
(128, 'Abdul Biya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'KBMT Al Jibaal', 'Jl. Pd Cibubur No. 64 Cisalak, Depok, Jawa Barat'),
(129, 'Bakri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(130, 'Ellis Takari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Karyawan Swasta', 'Jl. Garuda No. 28 Cimanggis'),
(131, 'Gusrizal', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(132, 'I GST MD Oka Wirawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(133, 'Gatot Satrio', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(134, 'Supardi Santoso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(135, 'Harno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(136, 'Agus Saptono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(137, 'Darnawi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(138, 'Toga Raja Pasaribu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(139, 'Dedi Ems', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(140, 'Agung Yuendro', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(141, 'Amir Syarifudin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(142, 'M. Rizkan Gunawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(143, 'Mulyadih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(144, 'Suyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(145, 'Retty Retnowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(146, 'Agus Tri Raharjo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(147, 'R. Srigati Santoso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(148, 'Endang Sri Watiningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(149, 'Paksi Mei Penggalih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(150, 'Mujiono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(151, 'Dadi Kusnadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(152, 'Dedy Iskandar Putra', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(153, 'I Nyoman Sueta', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(154, 'Cahyo Yuliarso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(155, 'Hari Siaga Amijarso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(156, 'Imam Hanafi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(157, 'Anita Retnani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(158, 'Bagas Pebru Sadtriadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(159, 'Budi Eristijono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(160, 'Priyadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(161, 'Efendi Hidayat', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(162, 'Prabowo Ajie', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(163, 'Agus Ahdiyat', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(164, 'Cut Indriani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(165, 'Iman Yusuf', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(166, 'R. Andoko Suroto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(167, 'Nirwanus Halfi Andra', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(168, 'Lestari Widiawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Universitas Indonesia', 'Pondok Cina, Beji, Depok'),
(169, 'Eko Rahayu Hartono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(170, 'Shela Kusuma Salim', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(171, 'Inal Rojid Sihotang', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(172, 'Amal', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(173, 'Mochamad Muldan Nurul Yakin', 'Pelaksanaan Proses Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(174, 'Nilam Nirmala Anggraini', 'Pelaksanaan Proses Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(175, 'Amirusholihin', 'Pelaksanaan Proses Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(176, 'Gaga Prayudha', 'Pelaksanaan Proses Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(177, 'Made Arya Amitaba', 'Pelaksanaan Proses Pinjaman', 'BPR Kanti', 'Jl. Letda I Dewa Rai Hadnyana, Gianyar, Bali'),
(178, 'Zulfikar Nazara', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(179, 'Fajar Sidik Pramono', 'Pelaksanaan Proses Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(180, 'Hiras Lumban Tobing', 'Pelaksanaan Proses Pinjaman', 'BPR Bekasi Binatanjung Makmur', 'Jalan H. Juanda No.171 D-E, RT.007/RW.001, Aren Jaya, Kec. Bekasi '),
(181, 'Mochamad Muldan Nurul Yakin', 'Pengelolaan Risiko Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(182, 'Nilam Nirmala Anggraini', 'Pengelolaan Risiko Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(183, 'Amirusholihin', 'Pengelolaan Risiko Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(184, 'Gaga Prayudha', 'Pengelolaan Risiko Pinjaman', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(185, 'Made Arya Amitaba', 'Pengelolaan Risiko Pinjaman', 'BPR Kanti', 'Jl. Letda I Dewa Rai Hadnyana, Gianyar, Bali'),
(186, 'Zulfikar Nazara', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(187, 'Fajar Sidik Pramono', 'Pengelolaan Risiko Pinjaman', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(188, 'Hiras Lumban Tobing', 'Pengelolaan Risiko Pinjaman', 'BPR Bekasi Binatanjung Makmur', 'Jalan H. Juanda No.171 D-E, RT.007/RW.001, Aren Jaya, Kec. Bekasi '),
(189, 'Mochamad Muldan Nurul Yakin', ' Penyelesaian Pinjaman Bermasalah', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(190, 'Nilam Nirmala Anggraini', ' Penyelesaian Pinjaman Bermasalah', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(191, 'Amirusholihin', ' Penyelesaian Pinjaman Bermasalah', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(192, 'Gaga Prayudha', ' Penyelesaian Pinjaman Bermasalah', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(193, 'Made Arya Amitaba', ' Penyelesaian Pinjaman Bermasalah', 'BPR Kanti', 'Jl. Letda I Dewa Rai Hadnyana, Gianyar, Bali'),
(194, 'Zulfikar Nazara', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(195, 'Fajar Sidik Pramono', ' Penyelesaian Pinjaman Bermasalah', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(196, 'Hiras Lumban Tobing', ' Penyelesaian Pinjaman Bermasalah', 'BPR Bekasi Binatanjung Makmur', 'Jalan H. Juanda No.171 D-E, RT.007/RW.001, Aren Jaya, Kec. Bekasi '),
(197, 'Ma\'mun Insan Sunjaya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(198, 'Didi Marsudi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(199, 'Mochamad Muldan Nurul Yakin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(200, 'Nilam Nirmala Anggraini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(201, 'Amirusholihin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(202, 'Gaga Prayudha', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(203, 'Made Arya Amitaba', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BPR Kanti', 'Jl. Letda I Dewa Rai Hadnyana, Gianyar, Bali'),
(204, 'Zulfikar Nazara', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(205, 'Fajar Sidik Pramono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(206, 'Ade Ananto Terminanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Lembaga Pengembangan Perbankan Indonesia', 'l. Kemang Raya No.35, RT.6/RW.1, Bangka, Kec. Mampang Prpt., Kota Jakarta Selatan'),
(207, 'Ismanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(208, 'Eti Mulia Rikadiyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BRI Research Institute', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(209, 'Hiras Lumban Tobing', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'BPR Bekasi Binatanjung Makmur', 'Jalan H. Juanda No.171 D-E, RT.007/RW.001, Aren Jaya, Kec. Bekasi '),
(210, 'Abdullah Alatas', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(211, 'Edi Junaedi', 'Pelaksanaan Proses Pinjaman', ' KSP MUM Cabang  Karawang ', 'KP. Pilar RT.003/RW.002 Desa Sibanteng Kecamatan Leuwisadeng Kabupaten Bogor'),
(212, 'Aris Fitriana', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Cabang  Karawang ', 'RT.004/RW.003 Desa Benteng Kecamatan Ciampea Kabupaten Bogor Provinsi Jawa Barat'),
(213, 'Warid Hidayat', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Unit Plered', 'Dusun Tanjung Baru RT.002/RW.0003 Desa Blanakan Kecamatan Blanakan Kabupaten Subang Provinsi Jawa Barat'),
(214, 'Juju Zulaeha', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Cabang Subang', 'KP Krajan I RT.001/RW.001 Desa Muara Kecamatan Cilamaya Wetan Kabupaten Karawang Provinsi Jawa Barat'),
(215, 'Jumadi', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Cabang Subang', 'Dusun Pangkalan RT.027/RW.008 Desa Rancabango Kecamatan Patokbesi Kabupaten Subang Provinsi Jawa Barat'),
(216, 'Lutfi Hakim', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Cabang Indramayu', 'KP. Mekarsari RT.004/RW.007 Desa Leuwimekar Kecamatan Leuwiliang Kabupaten Bogor Provinsi Jawa barat'),
(217, 'Anggra Palguna Widodo', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Cabang Indramayu', 'Dusun Karang Jaya Desa Blanakan RT.003/RW.004 Kecamatan Blanakan Kabupaten Subang'),
(218, 'Aris Dwi Setyawan', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Cabang Klaten', 'Ngotet RT.002/RW.001 Desa Ngotet Kecamatan Rembang Kabupaten Rembang Provinsi Jawa Tengah'),
(219, 'Sodikin', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Cabang Rembang', 'Manggungan RT.005/RW.002 Desa Manggungan Kecamatan Trisi Kabupaten Indramayu'),
(220, 'Jumari', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Unit Jatirogo', 'Jogoyudan JT.III/1025 RT.050/RW.013 Kelurahan Gowongan Kecamatan Jetis Provinsi Daerah Istimewa Yogyakarta'),
(221, 'Sura wijaya', 'Pelaksanaan Proses Pinjaman', ' KSP MUM Cabang Pati', 'Blok Jenguk RT.001/RW.004 Desa Gabuswetan Kecamatan Gabuswetan Kabupaten Indramayu'),
(222, 'M Rafly Riaeny Adam', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Kantor Pusat Jakarta', 'KP. Sukalayu RT.002/RW.007 Desa Sukalayu Kecamatan Tamansari Kabupaten Bogor Provinsi Jawa Barat'),
(223, 'Dika Tri Rachmantia', 'Pelaksanaan Proses Pinjaman', 'BOTANI-Bogor', 'Sinarsari E-96 RT.004/RW.004 Desa Sinarmasari Kecamatan Dramaga Kabupaten Bogor'),
(224, 'Ilham Hardiman', 'Pelaksanaan Proses Pinjaman', 'BOTANI-Bogor', 'KP. Nambo RT.005/RW.003 Desa Sukajaya Kecamatan Tamansari Kabupaten Bogor Provinsi Jawa Barat'),
(225, 'Ade Marpudin', 'Pelaksanaan Proses Pinjaman', 'KSP MUM Unit Jatirogo', 'KP. Pahlawan RT.001/RW.003 Desa Gunungbunder I Kecamatan Pamijahan Kabupaten Bogor Provinsi Jawa Barat'),
(226, 'Dwi Sulistiyanti', 'Pelaksanaan Proses Pinjaman', 'BOTANI-Bogor', 'Perum Griya Utama Permai K.14 RT.005/RW.005 Desa Kabongkidul Kecamatan Rembang Kabupaten Rembang Provinsi Jawa Tengah'),
(227, 'Ari Sonjaya Purnama', 'Pelaksanaan Proses Pinjaman', 'BOTANI-Bogor', 'Dusun Sukacai RT.002/RW.010 Desa Rancah Kecamatan Rancah Kabupaten Ciamis'),
(228, 'Ani Rohimah', 'Pelaksanaan Proses Pinjaman', 'BAITUL IKHTIAR- Bogor', 'RT.001/RW.005 Desa Sulang Kecamatan Sulang Kabupaten Rembang Provinsi Jawa Tengah'),
(229, 'Dani Setiawan', 'Pelaksanaan Proses Pinjaman', 'BAITUL IKHTIAR- Bogor', 'RT.005/RW.002 Dusun Kiarapayung Desa Kiarapayung Kecamatan Rancah Kabupaten Ciamis'),
(230, 'Ayi Hilman Faizin', 'Pelaksanaan Proses Pinjaman', 'BAITUL IKHTIAR- Bogor', 'KP. Tangkil RT.001/RW.013 Desa Sukasari Kecamatan Gunung Halu Kabupaten Bandung Barat Provinsi Jawa Barat'),
(231, 'Abdul Basit', 'Pelaksanaan Proses Pinjaman', 'BAITUL IKHTIAR- Bogor', 'KP. Jabon RT.002/RW.003 Desa Girijaya Kecamatan Cidahu Kabupaten Sukabumi Provinsi Jawa Barat'),
(232, 'Erik Herikandi', 'Pelaksanaan Proses Pinjaman', ' BPR CIJ - Tasikmalaya', 'Dusun CIleungsir RT.0001/RW.0001 Desa Cileungsir Kecamatan Rancah Kabupaten Ciamis Provinsi Jawa Barat'),
(233, 'Sukamawan', 'Pelaksanaan Proses Pinjaman', 'BPR CIJ - Tasikmalaya', 'KP Karangnunggal RT.001/RW.007 Kecamatan Karangnunggal Kabupaten Tasikmalaya Provinsi Jawa Barat'),
(234, 'Mubarok', 'Pelaksanaan Proses Pinjaman', 'BPR CIJ - Tasikmalaya', 'Parung Kulon RT.004/RW.006 Kelurahan Duren Mekar Kecamatan Bojongsari'),
(235, 'Ipa Sifaul Qulub Hanan Diputra', 'Pelaksanaan Proses Pinjaman', 'BPR CIJ - Tasikmalaya', 'KP Cihateup RT.003/RW.004 Desa Sukanagalih Kecamatan Rajapolah Kabupaten Tasikmalaya Provinsi Jawa Barat'),
(236, 'Dedi Iswandi', 'Pelaksanaan Proses Pinjaman', 'BPR CIJ - Tasikmalaya', 'Jalan Gereja No.2A RT.003/RW.002 Kelurahan Paledang Kecamatan Kota Bogor Tengah Kota Bogor'),
(237, 'Tohirin', 'Pelaksanaan Proses Pinjaman', 'Koperasi BMT NAHDHATUL UMMAH - Subang', 'Dusun Krajan Timur RT.001/RW.001 Desa Ciasem Tengah kecamatan Ciasem Kabupaten Subang Provinsi Jawa Barat'),
(238, 'Kelik Tri Raharjo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngemplak RT.002/RW.011 Desa Prawatan Kecamatan Jogonalan Kabupaten Klaten Provinsi Jawa Tengah'),
(239, 'Kasmiyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kebondalem, RT 001/006 Madurejo, Prambanan'),
(240, 'Desi Ika Kurniawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dadapan, Tanjungtirto RT 4/022 Kalitirto, Berbah Kabupaten Sleman Provinsi Daerah Istimewa Yogyakarta'),
(241, 'Sofiyatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Malangan RT.001/RW.001, Ngargogondo, Kecamatan Borobudur, Kabupaten Magelang Provinsi Jawa Tengah'),
(242, 'Warni Astuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Samirono CT VI No. 267 Sleman RT.013/RW.004 Desa caturmanunggal Kecamatan Depok Kabupaten Sleman Provinsi Daerah Istimewa Yogyakarta'),
(243, 'Siti Umiyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jalan Barepan RT.002/RW.005 Desa Wanurejo Kecamatan Borobudur Kabupaten Magelang Provinsi Jawa Tengah'),
(244, 'Diah Hayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Butuh Desa Majaksingi Kecamatan Borobudor Kabupaten Magelang Provinsi Jawa Tengah'),
(245, 'Budi Heroh Haningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kanggan RT 004/014 Wringinputih, Kecamatan Borobudur Kabupaten Magelang Provinsi Jawa Tengah'),
(246, 'Rihhadatul Aisy Demytha', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tanjungsari RT.003/RW.001 Desa Tanjungsari Kecamatan Borobudur Kabupaten Magelang'),
(247, 'Ratmi Hartati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kepek RT.004/RW.015 Desa Semin Kecamatan Semin Kabupaten Gunung Kidul Provinsi Daerah Istimewa Yogyakarta'),
(248, 'Ristiana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'RT.004/RW.002 Desa Donorejo Kecamatan Kaligesing Kabupaten Purworejo'),
(249, 'Muhamad Abdul Karim', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bumen Jelapan RT.002/006 Desa Karangrejo Kecamatan Borobudur Kabupaten Magelang Provinsi Jawa Tengah'),
(250, 'Windarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Genjahan RT.003/RW.001 Desa Ngadiharjo Kecamatan Borobudur Kabupaten Magelang Provinsi Jawa Tengah'),
(251, 'Nuryanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gading, RT 005/003, Desa Giritirto, Kecamatan Purwosari, Kabupaten Gunung Kidul, Provinsi Daerah Istimewa Yogyakarta'),
(252, 'Efi Haryanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krawingan RT 001/004 Jombor, Ceper, Klaten, Jawa Tengah'),
(253, 'Novi Ruliyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Garon, RT 001/009 Tambakromo, Ponjong, Gunungkidul'),
(254, 'Surahmi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngampelombo RT 004/011 Sumbergiri, Ponjong, Gunungkidul'),
(255, 'Sri Darti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sidokerso, RT 005/002, Lemahireng, Klaten'),
(256, 'Sarjiyono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pripih RT.051/RW.014 Desa Hargomulyo Kecamatan Kokap Kabupaten Kulon Progo.'),
(257, 'Sri Astuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Babadan RT.003/RW.003 Desa Polengan Kecamata Srubung'),
(258, 'Iik Septy Saputry', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonosuku, RT 019/008, Tegalrejo, Magelang'),
(259, 'Sutarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bodrorejo, RT024/008 Gaden, Trucuk Klaten'),
(260, 'Nina Yulia Kusuma', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bogeman Wetan RT 003/002 Panjang, Magelang Tengah, Magelang'),
(261, 'Rokhimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jalan Samban Utara RT.007/RW.006 Kelurahan Gelangan Kecamatan Magelang Kota Magelang Provinsi Jawa Tengah'),
(262, 'Dahroni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Rejomulyo I RT.005/RW.009 Desa Sidoagung Kecamatan Tempuran Kabupaten Magekang Provinsi Jawa Tengah'),
(263, 'Ovitriana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Tempel, RT002/07, Ngargosoko, Srumbung, Magelang'),
(264, 'Suwignyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Samban Utara, RT 07/06, Gelangan, Kota Magelang'),
(265, 'Sadewo Anggi Prasetyo Murti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jalan Gonjen RT.002/RW.000 Desa Bantul Kecamatan Kasihan Kabupaten Bantul Provinsi Daerah Istimewa Yogyakarta'),
(266, 'Siti Ngulumiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Somoroto RT 001/002 Kalikotes, Pituruh, Purworejo'),
(267, 'Ekky Susanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kalimati RT 001/01, Kalimati, Pituruh, Purworejo'),
(268, 'Palupi Endah Sulistyowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sipetir RT 002/003 Pituruh, Purworejo'),
(269, 'Lisnawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sugengjurutengah, Bayan, Purworejo'),
(270, 'Wahidah Nurhidayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pituruh RT.001/RW.005 Desa Pituruh Kecamatan Pituruh Kabupaten Purworejo Provinsi Jawa Tengah'),
(271, 'Nurohman', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Grogol RT 005/003 Kutoanyar, Kedu, Temanggung, Jawa Tengah'),
(272, 'Sutardi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangturi Mudal RT.001/RW.004 Desa Mudal Kecamatan Boyolali Kabupaten Boyolali Provinsi Jawa Tengah'),
(273, 'Ragil Edy Dalyono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedung Banteng RT.007/RW.004 Desa Tawangsari Kecamatan Teras Kabupaten Boyolali Provinsi Jawat Tengah'),
(274, 'Suti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Randusari RT.010/RW.003 Desa Bangkok Kecamatan Karanggede Kabupaten Boyolali Provinsi Jawa Tengah'),
(275, 'Agustina Sulistyowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Simo RT.001/RW.001 Desa Simo Kecamatan Simo Kabupaten Boyolali Provinsi Jawa Tengah'),
(276, 'Sumarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bunder RT.010/RW.003 Desa Kedungwaduk Kecamatan Karangmalang Kabupaten Sragen '),
(277, 'C. Yekti Indarto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngelo RT.006 Desa Jenar Kecamatan Jenar Kabupaten Sragen'),
(278, 'Novia Wijayanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bantulan RT.004/RW.001 Desa Jembungan Kecamatan Banyudono Kabupaten Boyolali Provinsi Jawa Tengah'),
(279, 'Crubus Wahyudi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Klodran RT.006/RW.003 Desa Pulutan Kecamatan Nogosari Kabupaten Boyolali Provinsi Jawa Tengah'),
(280, 'Widya Ayu Ambarsari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dodogan Gede RT.005/RW.001 desa Salakan Kecamatan Teras Kabupaten Boyolali Provinsi Jawa tengah'),
(281, 'Fitria Hastiningrum', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Pajajaran Timur I 4A RT.005/RW.011 Kelurahan Sumber Kecamatan Banjarsari Kota Surakarta'),
(282, 'Rina Listiyana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'babadan RT.011/RW.003 desa Babadan Kecamatan Sambi Kabupaten Boyolali Provinsi Jawa Tengah'),
(283, 'Tugiyem', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kantongan RT.001/RW.004 Desa Kragilan Kecamatan Mojosongo Kabupaten Boyolali Provinsi Jawa Tengah'),
(284, 'Gunawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Turi, RT 002/008, Pucung, Eromoko, Wonogiri'),
(285, 'Dewi Saptorini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mujirejo RT 009/003 Bumiaji, Gondang, Sragen'),
(286, 'Asri Dwi Anggrahini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karanganyar RT003/003 Karangbangun, Matesih'),
(287, 'Yuliana Betty Arsanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumberejo RT.001/RW.003 Desa Kiringan Kecamatan Boyolali Kabupaten Jawa Tengah Provinsi Jawa Tengah'),
(288, 'Ela Wati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bakalan, karanganyar'),
(289, 'Muh. Ali Sholikin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngrungkap RT.004/RW.000 Desa Tempelrejo Kecamatan Mondokan'),
(290, 'Sri Murtini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Patuk Kidul RT. 001/004, Baturetno, Wonogiri'),
(291, 'Luluk Inayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Geneng, RT 001/004 Geneng, Bulukerto, Wonogiri'),
(292, 'Astati Wulandari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karanglo wetan RT 001/002, Gebangharjo, Pracimantoro, Wonogiri'),
(293, 'Tri Hartanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Maguan RT 002/004 Suci, Pracimantoro, Wonogiri'),
(294, 'Anastasia Diatri Erlindawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gandekan Kiwo No. 354 RT 001/004 jayegan Serengan'),
(295, 'Dwi Walkari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Joho Lor RT 002/011 Joho, Pracimantoro'),
(296, 'Sugiyarto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Purworejo RT.005/003, Pulutan, Nogosari, Boyolali'),
(297, 'Susanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungmulyo Blok A RT.005/RW.004 Desa Kedungmulyo Kecamatan Kemusu'),
(298, 'Eko Wahyuno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bulukerto RT 001/003, Bulurejo, Wonogiri'),
(299, 'Muhammad Akrom Edy Kurniawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kaliwuluh RT.014/RW.000 Desa Sambirembe Kecamatan Kalijambe Kabupaten Sragen Provinsi Jawa Tengah'),
(300, 'Wiji Astuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lawang RT.003/RW.004 desa Jurug Kecamatan Mojosongo Kabupaten Boyolali Provinsi Jawa Tengah'),
(301, 'Tri Rochayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngaduman RT.002/RW.008 Desa Mojosongo Kecamatan Mojosongo Kabupaten Boyolali Provinsi Jawa Tengah'),
(302, 'Yudi Hermawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jambu Wetan RT.002/RW.002 Desa Manggis Kecamatan Mojosongo Kabupaten Boyolali Provinsi Jawa tengah'),
(303, 'Hermawan Sulistyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonosaran RT.003/RW.003 Desa Kedungsari Kecamatan Bandongan Kabupaten Magelang Provinsi Jawa Tengah'),
(304, 'Dewi Muliasari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonolopo RT.002/RW. Wonolopo KecamatanTasikmadu, Kabupaten Karanganyar Provinsi Jawa tengah'),
(305, 'Kirdiyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bancar RT.002/RW.002 Desa Bancar Kecamatan Purbalingga Kabupaten Purbalingga'),
(306, 'Herti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'SindangRT.003/RW.006 Desa Sindang Kecamatan Mrebet Kabupaten Purbalingga'),
(307, 'Sarniah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Langgar RT.002/RW.003 Desa Langgar Kecamatan Kejorong Kabupaten Purbalinga'),
(308, 'Reni Prihati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tlahab Lor RT.001/RW.004 Desa Tlahab Lor Kecamatan Karangreja Kabupaten Purbalingga'),
(309, 'Dwi Prasetia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sidanegara RT.002/RW.001 Desa Sidanegara Kecamatan Kaligondong Kabupaten Purbalingga'),
(310, 'Agus Priatno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Selaganggeng RT.002/RW.002 Desa Selaganggeng Kecamatan Mrebet Kabupaten Purbalingga'),
(311, 'Apriyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Danasari RT.003/RW.003 Desa Danasari Kecamatan Karangjambu Kabupaten Purbalingga'),
(312, 'Wartinah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lamongan RT.002/RW.002 Desa Lamongan Kecamatan Kaligondong Kabupaten Purbalingga'),
(313, 'Aris Prayitno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tlaga RT.002/RW.001 Desa Tlaga Kecamatan Gumelar Kabupaten Banyumas'),
(314, 'Nurjanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungmenjangan RT.004/RW.002 Desa Kedungmenjangan Kecamatan Purbalingga Kabupaten Purbalingga'),
(315, 'Ira Yudiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karanggayam RT.001/RW.004 Desa Karanggayam Kecamatan Lumbir Kabupaten Banyumas');
INSERT INTO `tm_pemegang_sertifikat` (`pemegang_sertifikat_id`, `nama_pemegang_sertifikat`, `nama_skema`, `nama_instansi`, `alamat_instansi`) VALUES
(316, 'Jid Khoerul Mustofa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa selatan RT.003/RW.002 Desa Tunjungmuli Kecamatan Karangmoncol Kabupaten Purbalingga'),
(317, 'Elvi Sulistiani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pengadegan RT.005/RW.013 Desa Pengadegan Kecamatan Pengadegan Kabupaten Purbalingga'),
(318, 'Toyib', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tlaga RT. 001/RW.005 Desa Tlaga Kecamatan Punggelan Banjarnegara'),
(319, 'Surti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Semawung RT.005/RW.005 Desa Kaligowong Kecamatan Wadaslintang Kabupaten Wonosobo'),
(320, 'Hadmini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tidu RT.002/RW.001 Desa Tidu Kecamatan Bukateja Kabupaten Purbalingga'),
(321, 'Sugeng Ali Mustofa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Beji RT.005/RW.009 Desa Selakembang Kecamatan Kaligondang Kabupaten Purbalingga'),
(322, 'Rasono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karanggintung RT.021/RW.006 Desa Sirau Kecamatan Karangmoncol Kabupaten Purbalingga'),
(323, 'Wiyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kramat RT.005/RW.005 Desa Kramat Kecamatan Karangmoncol Kabupaten Purbalingga'),
(324, 'Ratini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Karang Mangu RT.003/RW.001 Desa Totogan Kecamatan Karangsambung Kabupaten Kebumen'),
(325, 'Susiyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Keputihan RT 004/005'),
(326, 'Nano Muhammad Farid', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Beji, RT.003/RW.002 Beji, Kedungbanteng, Banyumas'),
(327, 'Dwiro Pramono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kaligondang RT.001/RW.005 Desa Kaligondang Kecamatan Kaligondang Kabupaten Purbalingga'),
(328, 'Septi Wiyarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Watuagung RT 001/008 Tambak Banyumas'),
(329, 'Rina Astuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Budan, RT 003/003 Sapuran, Wonosobo'),
(330, 'Dewa Adhitya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jalan Kemerdekaan Barat No. 75 Desa Kesugihan Kecamatan Kesugihan Kabupaten Cilacap'),
(331, 'Sumidah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl, Sidayasa No.63 RT.010/RW.005 Desa Alangamba Kecamatan Binangun Kabupaten Cilacap'),
(332, 'Suwarno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungbenda RT 001/009  Kemangkon, Purbalingga. Jawa tengah'),
(333, 'Hasim Nawawi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kebondalem RT.004/RW. 005 Desa Talunombo Kecamatan Sapuran Kabupaten Wonosobo'),
(334, 'Sri Wahyuningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sariyoso RT.004/RW.001 Desa Sariyoso Kecamatan Wonosobo Kabupaten Wonosobo'),
(335, 'Afriono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karanganyar RT.025/RW.006 Desa Lancar Kecamatan Wadaslintang Kabupaten Wonosobo '),
(336, 'Sismono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungjati RT.002/RW.006 Desa Kedungjati Kecamatan Bukateja Kabupaten Purbalingga'),
(337, 'Burhan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonosuko RT 001/004 Wonolelo, Wonosobo'),
(338, 'Irwan Prahara', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kracak RT.003/RW.008 Desa Kracak Kecamatan Ajibarang Kabupaten Banyumas'),
(339, 'Umi Safangatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Darma RT.002/RW/001 Desa Darma Kecamatan Kertanegara Kabupaten Purbalingga'),
(340, 'Mohamad Rohmat', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jingkang RT.002/RW.008 Desa Jingkang Kecamatan Ajibarang'),
(341, 'Sutiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangtengah RT.018/RW.009 Desa Karangtengah Kecamatan Kemangkon'),
(342, 'Asid Sudrajat', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Cipicung RT.001/RW.012 Desa Madusari Kecamatan Wanareja Kabupaten Cilacap'),
(343, 'Julfi Ayutania', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ciupas RT 001/004'),
(344, 'Sukarmin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tanjungsari RT.003/RW.004 Desa Mentasan Kecamaran Kawunganten Kabupaten Cilacap'),
(345, 'Nasiyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Bendagede RT.004/RW/010 Desa Binangun Kecamatan Bantarsari'),
(346, 'Sinta Setiawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kelibening RT 002/005, Kalibening'),
(347, 'Nurul Hidayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jalan Mulyasari, Cilacap'),
(348, 'Susanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Slirap RT.001/RW.004 Desa Wonoharjo Kecamatan Rowokele Kabupaten Kebumen '),
(349, 'Sadimun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karang Sembung Dusun RT 003/004'),
(350, 'Pujiyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Grumbul Depok RT.001/RW. 002 Desa Pamulihan, Karangpucung, Cilacap'),
(351, 'Wahyu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Purbayasa RT.003/RW.001 Desa Sindangbarang Kecamatan Karangpucung Kabupaten Cilacap'),
(352, 'Wiwit Junaedi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sidadadi'),
(353, 'Didi Andriyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pasirmanggu RT.002/RW.008 Desa Bingkeng Kecamatan Dayeuhluhur Kabupaten Cilacap'),
(354, 'Kartiman', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Cilacap.RT.001/RW.005 Desa Sidanegara, Kedungreja'),
(355, 'Neno Noriza', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Purwasari RT.001/RW.007 Desa Madura Kecamatan Wanareja Kabupaten Cilacap'),
(356, 'Luluk Anisa Agustin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangjati RT.003/RW.004 Desa Karangjati Kecamatan Kemranjen Kabupaten Banyumas '),
(357, 'Tyas Irawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sibalung RT.001/RW.001 Desa Sibalung Kecamatan Kemranjen Kabupaten Banyumas'),
(358, 'Della Rifki Afriani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Alasmalang RT.003/RW.004 Desa Alasmalang Kecamatan Kemranjen Kabupaten Banyumas Provinsi Jawa Tengah'),
(359, 'Nur Maulidah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Cilongok RT.005/RW.005 Desa Cilongok Kecamatan Cilongok Kabupaten Banyumas'),
(360, 'Narso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sinduaji RT. 001/RW. 003 Sinduaji, Pandanarum,Banjarnegara'),
(361, 'Kusyanta', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pesantren RT.004/RW.001 Pesantren, Tambak, Banyumas'),
(362, 'Khodriyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kalijaran RT 002/002'),
(363, 'Semi Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangan RT/RW: 005/006, Banyumeneng, Mranggen, Demak, Jawa Tengah'),
(364, 'Ririn Indah Anggraeni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'KP. Gedong Mulyo No.39 RT.002/RW.003 Purwodinatan, Semarang Tengah, Kota Semarang, Jawa Tengah'),
(365, 'Nur Kholis', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Tegolayang RT/RW: 001/007, Tegorejo, Pegandon, Kendal, Jawa Tengah'),
(366, 'Imron Tohari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gempol Bapang RT/RW: 002/001, Brangsong, Brangsong, Kendal, Jawa Tengah'),
(367, 'Susmawi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DSN Bumen RT/RW: 006/005, Ringinarum, Ringinarum, Kendal, Jawa Tengah'),
(368, 'Muryani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'KP. Purwosari V RT.007/RW.004 Tambakrejo, Gayamsari, Kota Semarang, Jawa Tengah'),
(369, 'Dian Handayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Candi Persil No.6 RT.003/RW.003 Kaliwiru, Candisari, Semarang, Jawa Tengah'),
(370, 'Auliana Mustaniroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tambakmulyo RT.004/RW.014 Tanjung Mas, Semarang Utara, Semarang, Jawa Tengah'),
(371, 'Mufarrikah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Karang Kimpul RT.002/RW.001 Tambakrejo, Gayamsari, Kota Semarang, Jawa Tengah'),
(372, 'Dewi Puspa Noviyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL. Trengguli 1 B No. 420 RT.003/RW.004 Karangkidul, Semarang Tengah, Kota Semarang, Jawa Tengah'),
(373, 'Dwi Utami', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Peterongan Kobong 42 RT.002/RW.005, Peterongan, Semarang Selatan, Semarang, Jawa Tengah'),
(374, 'Maryatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Gondosari I RT 003/004, Gondoriyo,Ngaliyan, Semarang, Jawa Tengah'),
(375, 'Sri Jayanti Subekti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Sendangguwo Selatan RT. 001/001, Sendangguwo, Tembalang, Kota Semarang, Jawa Tengah'),
(376, 'Retno Agustini Paramita', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Badak Raya No.66 RT.001/RW.005 Pandean Lamper, Gayamsari, Kota Semarang, Jawa Tengah'),
(377, 'Muhlisin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sekutis RT/RW: 003/004 Tabet, Limbangan, Kendal, Jawa Tengah'),
(378, 'Indriyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sraten RT/RW: 001/002, Sraten, Tuntang, Kabupaten Semarang, Jawa Tengah'),
(379, 'Mohamad Abdul Ghofur', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sukolilan RT/RW: 001/002, Sukolilan, Patebon, Kendal, Jawa Tengah'),
(380, 'Rani Yanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Beku RT/RW: 001/004, Gondang, Limbangan, Kendal, Jawa Tengah'),
(381, 'Nurudin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Korowelanganyar RT/RW: 001/003, Korowelanganyar, Cepiring, Kendal, Jawa Tengah'),
(382, 'Katharina Yoepeni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Dworowati Tengah No. 7, RT/RW: 004/009, Krobokan, Semarang Barat, Semarang, Jawa Tengah '),
(383, 'Hopsoh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Blumah RT/RW: 005/003, Blumah, Plantungan, Kendal, Jawa Tengah'),
(384, 'Aprilia Megawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonorejo RT/RW: 003/005 Wonorejo, Kaliwungu, Kendal, Jawa Tengah'),
(385, 'Kasmijah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Tambi RT/RW: 002/008 Karangroto, Genuk, Kota Semarang, Jawa Tengah'),
(386, 'Arniyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Jagoan RT/RW: 001/004 Kebonagung, Sumowono, Semarang, Jawa Tengah'),
(387, 'Endang Nur Bintari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tanjungsari, RT/RW: 002/003, Tanjungsari, Rowosari, Kendal, Jawa Tengah'),
(388, 'Musrifin Faisal', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Turitempel, RT/RW: 003/001, Turitempel, Guntur, Demak, Jawa Tengah'),
(389, 'Mulyosari Noviani Trihastutik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Potrosari III No. 6A RT/RW: 005/001 Srondol Kulon, Banyumanik, Kota Semarang, Jawa Tengah '),
(390, 'Fitri Mariana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Namar RT/RW: 005/007 Lemahireng, Bawen, Semarang,  Jawa Tengah '),
(391, 'Agus Listiyaningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan RT/RW: 002/001 Kebondalem, Jambu, Kabupaten Semarang, jawa Tengah'),
(392, 'Siti Alfiyah Nuraeni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan Sari RT/RW: 002/006, Kebumen, Banyubiru, Semarang, Jawa Tengah'),
(393, 'Sri Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'KP. Cilosari Barat RT/RW004/008 Kemijen, Semarang Timur, Kota Semarang, Jawa Tengah'),
(394, 'Arini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Klepu RT/RW: 004/001 Klepu, Pringapus, Kabupaten Semarang, Jawa Tengah'),
(395, 'Zaedi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Klampoklor RT/RW: 003/002, Klampok lor, Kebonagung, Demak, Jawa Tengah'),
(396, 'Eni Utami', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl.Medoho Barat IV RT/RW: 003/006 Sambirejo, Gayamsari, Kota Semarang, Jawa Tengah'),
(397, 'Nahrowi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sidorejo RT/RW: 001/004 Sidorejo, Brangsong, Kendal, Jawa Tengah'),
(398, 'Agus Tri Wibowo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Duwet RT/RW: 005/004 Bringin, Ngaliyan, Kota Semarang, Jawa Tengah'),
(399, 'Faizur Rohman', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonoketingal RT/RW: 004/003, Wonoketingal, Karanganyar, Demak, Jawa Tengah'),
(400, 'Hasan Bachroni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mlaten RT/RW: 009/003, Mlaten, Mijen, Demak, Jawa Tengah'),
(401, 'Rifqi Ulin Nuha', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Setro Poncol RT/RW: 001/003 Purwosari, Sayung, Demak, Jawa Tengah'),
(402, 'Agus Suroso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'KP Cilosari Dalam RT/RW: 003/006 Kemijen, Semarang Timur, Kota Semarang, Jawa Tengah'),
(403, 'Andi Zaenudin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonorejo RT/RW: 002/006, Wonorejo, Kaliwungu, Kendal, Jawa Tengah'),
(404, 'Arny Rieska Iryantie', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pucang Utara RT/RW: 006/005, Tambirejo, Toroh, Grobogan, Jawa Tengah'),
(405, 'Purmini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pondok RT/RW : 001/006, Plosoharjo, Toroh, Grobogan, Jawa Tengah'),
(406, 'Marsini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Keyongan, RT/RW 001/001, Keyongan, Gabus, Jawa Tengah'),
(407, 'Sri Suhartatik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jalakan, RT/RW 010/005, Sindurejo, Toroh, Grobogan, Jawa Tengah'),
(408, 'Anna Romdhonah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Bnadung RT/RW: 002/004, Dorolegi, Godong, Grobogan, Jawa Tengah'),
(409, 'Wiwik Dwi Yuliyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Suru, RT/RW 002/007, Suru, Geyer, Grobogan, Jawa Tengah'),
(410, 'Darsi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tegal Sumur RT/RW: 003/002, Tegal Sumur, Brati, Grobogan Jawa Tengah'),
(411, 'Widarsih Wiwik Alifwiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tanggung RT/RW: 004/001, Pojok, Tawangharjo, Grobogan, Grobogan, Jawa Tengah'),
(412, 'Sri Mulyaningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Plumpungan RT/RW: 001/009, Selo, tawangharjo, Grobogan, Jawa Tengah'),
(413, 'Hartini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Geneng, RT/RW 003/001 Desa Genengadal, Toroh, Grobogan, Jawa Tengah'),
(414, 'Tirmidzi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Untung Suropati RT/RW: 004/002, Karangpaing, Penawangan, Grobogan Jawa Tengah'),
(415, 'M. Nauval Labiq', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Krajan RT/RW: 002/001, Lojo lor, Singgahan, Tuban, jawa Timur'),
(416, 'Ali Mastur', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pulo, RT/RW 010/003, Pulokulon, Pulokulon, Grobogan, Jawa Tengah'),
(417, 'Ahmat Mudakir', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kraja, RT/RW 002/003, Gedangan, Wirosari, Grobogan, Jawa Tengah'),
(418, 'Eddy Siswoyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sasak, RT/RW 002/006, Ngrandah, Toroh, Grobogan, Jawa Tengah'),
(419, 'Kholifatul Ilmiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tunggulrejo, RT/RW 003/003, Tunggulrejo, Gabus, Grobogan, Jawa Tengah'),
(420, 'Sardi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Lodran, RT/RW 005/006, Karangharjo, Pulokulon, Grobogan, Jawa Tengah'),
(421, 'Susilo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Kayen RT/RW: 002/009, Boloh, toroh, Grobogan , Jawa tengah'),
(422, 'Siti Rohmah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Blado, RT/RW 001/006, Teguhan, Grobogan, Kabupaten Grobogan, Jawa Tengah'),
(423, 'Sri Rukayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jatimas RT/RW: 001/002 Manggarmas, Godong, Grobogan, Jawa Tengah '),
(424, 'Siti Rukayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gedong, RT/RW: 001/003, Jetis, Karangrayur, Grobogan, Jawa Tengah '),
(425, 'Evi Arsul Tsani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Hasan Anwar 2 No 7, RT/RW: 003/010, Gubug, Gubug, Grobogan, Jawa Tengah'),
(426, 'Hartanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Temon, RT/RW 001/001, Temon, Brati, Grobogan, Jawa Tengah'),
(427, 'Siti Fatimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan, Jatipecaron, RT/RW 002/002, Jatipecaron, Gubug, Grobogan, Jawa Tengah '),
(428, 'Indriyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Lebak, RT/RW 005/001, Lebak, Grobogan, Kabupaten Grobogan, Jawa Tengah'),
(429, 'Sri Haryanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tunjungharjo, RT/RW 005/002, Tunjungharjo, Tegowanu, Grobogan, Jawa Tengah'),
(430, 'Riyana Santi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bugel, RT/RW 001/003, Bugel, Godong, Grobogan, Jawa Tengah'),
(431, 'Siti Nafiah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Karangjati RT/RW: 006/006, Putatsari, Grobogan, Kabupaten Grobogan, Jawa Tengah'),
(432, 'Mustanginah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pulo, RT/RW 010/003, Pulokulon, Pulokulon, Grobogan, Jawa Tengah'),
(433, 'Puji Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan, RT/RW 005/001, Jetaksari, Pulokulon, Grobogan, Jawa Tengah'),
(434, 'Eko Bambang Mulyono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sidoharjo, RT/RW 003/005, Tanggungharjo, Grobogan, Kabupaten Grobogan, Jawa Tengah'),
(435, 'Anita Ela Munfaida', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Ayani, RT/RW 003/002, Bugel, Godong, Grobogan, Jawa Tengah'),
(436, 'Mastiah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mangunsari RT/RW: 001/002, Mangunsari, Tegowanu, Grobogan, Jawa Tengah'),
(437, 'Khairus Shalihin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sukorejo, RT/RW 001/005, Sukorejo, Tegowanu, Grobogan, Jawa Tengah'),
(438, 'Asih Wigiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Medani, RT/RW 001/001, Medani, Tegowanu, Grobogan, Jawa Tengah'),
(439, 'Aning Kusrifatin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pulo, RT/RW 017/004, Karanggeneng, Godong, Grobogan, Jawa Tengah'),
(440, 'Ermawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gading RT/RW: 005/018, Kuripan, Purwodadi, Grobogan, Jawa Tengah'),
(441, 'Sri Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Batur agung, RT/RW 008/002, Batruragung, Gubug, Grobogan, Jawa Tengah'),
(442, 'Maya Shofa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ploso RT/RW: 002/001, Plosorejo, Tawangharjo, Grobogan, Jawa Tengah'),
(443, 'Erna Susanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tegalrejo, RT/RW 001/003, Rajek, Godong, Grobogan, Jawa Tengah'),
(444, 'Nur Hayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gatak, RT/RW 001/012, Sembungharjo, Pulokulon, Grobogan, Jawa Tengah'),
(445, 'Insiatu Sholihah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Batur, RT/RW 006/002, Baturagung, Gubug, Grobogan, Jawa Tengah'),
(446, 'Marni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun sarip RT/RW: 009/004, Karangasem, wirosari, Grobogan, Jawa Tengah'),
(447, 'Sarotun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Senggot, RT/RW 003/001, Jambon, Pulokulon, Grobogan, Jawa Tengah'),
(448, 'Yunita Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ngasem, RT/RW 005/001, Pelem, Gabus, Grobogan, Jawa Tengah'),
(449, 'Munasih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Lekok, RT/RW: 002/002, Penawangan, Penawangan, Grobogan, Jawa Tengah'),
(450, 'Resmi Puji Astutik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tambakan, RT/RW 002/001, Tambakan, Gubug, Grobogan, Jawa Tengah'),
(451, 'Sriyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pilang Lor RT/RW: 003/003, Gubug,  Gubug, Grobogan, Jawa Tengah'),
(452, 'Restatik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Depok Selatan, RT/RW: 004/002, Depok, Toroh, Grobogan, Jawa Tengah'),
(453, 'Zuliyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jambean, RT/RW 004/011, Sembungharjo, Pulokulon, Grobogan, Jawa Tengah'),
(454, 'Nurhidayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Mendikil, RT/RW 001/006, Grabagan, Kradenan, Grobogan, Jawa Tengah'),
(455, 'Sunandar', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Blimbing RT/RW : 003/005, dokoro, wirosari, Grobogan, jawa Tengah'),
(456, 'Jeli Puji Yarso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tahunan, RT/RW 007/003, Ngarap-Arap, Ngaringan, Grobogan, Jawa Tengah'),
(457, 'Siswati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karang Tengah, RT/RW 004/004, Tambahrejo, Wirosari, Grobogan Jawa Tengah'),
(458, 'Asmanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukoh, RT/RW 008/001, Brabo, Tanggungharjo, Grobogan, Jawa Tengah'),
(459, 'Sri Pujiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kawu, RT/RW 005/002, Tunggulrejo, Gabu, Grobogan, Jawa Tengah'),
(460, 'Sri Darwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sedayu, RT/RW 001/001, Dapurno, Wirosari, Grobogan, Jawa Tengah'),
(461, 'Liya Listiani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Taruman, RT/RW 001/002, Taruman, Klambu, Grobogan, Jawa Tengah'),
(462, 'Nurkolis', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jambe, RT/RW 005/003, Simo, Kradenan, Grobogan, Jawa Tengah'),
(463, 'Sri Sutrisnowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusub Kembang Kuning, RT/RW 003/004, Sumberagung, Ngaringan, Grobogan, Jawa Tengah'),
(464, 'Syaifudin Zuhri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Purwo RT/RW: 005/002, Lebengjumuk, Grobogan, Kabupaten Grobogan, Jawa Tengah'),
(465, 'Rani Zumaroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gluntungan, RT/RW 002/004, Banjarsari, Kradenan, Grobogan, Jawa Tengah'),
(466, 'Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Penjalinan, RT/RW: 003/007, Plosorejo, Tawagharjo, Grobogan, Jawa Tengah'),
(467, 'Suwignyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan, RT/RW 002/003, Padas, Kedungjati, Grobogan, Jawa Tengah'),
(468, 'Ririn Larasati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Lebeng, RT/RW 003/004, Lebengjumuk, Grobogan, Kabupaten Grobogan, Jawa Tengah'),
(469, 'Sri Mulyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pulorejo, RT/RW 005/001, Pulorejo, Purwodadi, Grobogan, Jawa Tengah'),
(470, 'Siti Khilyatus Sholikah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tumpuk, RT/RW 003/006, Tambakselo, Wirosari, Grobogan, Jawa Tengah'),
(471, 'Achmad Sya\'roni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kleben, RT/RW 004/001, Karanglangu, Kedungjati, Grobogan, Jawa Tengah'),
(472, 'Tiya Febriana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Dumpil, RT/RW 016/004, Kalangdosari, Ngaringan, Grobogan, Jawa Tengah'),
(473, 'Siti Masfuatun Amini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tengaran, RT/RW 002/004, Tirem, Brati, Grobogan, Jawa Tengah'),
(474, 'Ismi Safitri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Karangpucung, RT/RW 001/001, Kebonagung, Tegowanu, Grobogan, Jawa Tengah'),
(475, 'Darso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sidorejo, RT/RW 004/001, Sidorejo, Pulokulon, Grobogan, Jawa Tengah'),
(476, 'Sriyatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kuwu, RT/RW: 001/004, Kuwu, Kradenan, Grobogan, Jawa Tengah'),
(477, 'Ulfa Zeni Ihda Wulandari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kunduran RT/RW: 001/003, Kunduran, kecamatan kunduran, Blora, Jawa Tengah'),
(478, 'Sugeng', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngliron, RT/RW 002/001, Ngliron, Randublatung, Blora, Jawa Tengah'),
(479, 'Rukinah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tasikagung, RT/RW 001/001, Tasikagung, Rembang, Kabupaten Rembang, Jawa Tengah'),
(480, 'Sri Suntari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Palon RT/RW: 001/003, Palon, Jepon, Blora, Jawa Tengah'),
(481, 'Suwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Singget RT/RW: 005/001, Singget, Jati, Blora, Jawa Tengah'),
(482, 'M. Syukron Makmun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tawangrejo, RT/RW: 001/003, Tawangrejo, Kunduran, Blora, Jawa Tengah'),
(483, 'Siti Muntawaroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Bogorame, RT/RW 002/002, Bogorame, Sulang, Rembang, Jawa Tengah'),
(484, 'Ari Susanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Plosorejo, RT/RW 001/002, Ploso Rejo, Kunduran, Blora, Jawa Tengah'),
(485, 'Siti Yasaroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gedongsari RT/RW: 005/001, Gedongsari, banjarejo, Blora, Jawa Tengah'),
(486, 'Samsul Hadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bakah, RT/RW 002/006, Bakah, Kunduran, Blora, Jawa Tengah'),
(487, 'Elly Puji Safitri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngilen, RT/RW: 009/001, Ngilen, Kunduran, Blora,  Jawa Tengah'),
(488, 'Ermawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pandangan Wetan, RT/RW 012/004, Pandangan Wetan, Kragan, Rembang, Jawa Tengah'),
(489, 'Sri Luning Purniati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Gedong, RT/RW 005/005, Plosorejo, Randublatung, Blora, Jawa Tengah'),
(490, 'Setiawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Tegiri, RT/RW 010/004, Tebon, Padangan, Bojonegoro, Jawa Timur'),
(491, 'Sutarmi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Pasedan, RT/RW 001/004, Pasedan, Bulu, Rembang, Jawa Tengah'),
(492, 'Rika Retnaningtyas', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Gapuk, RT/RW 001/001, Sendangagung, Ngawen, Blora, Jawa Tengah'),
(493, 'Mochammad Arif Prabowo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Pendem, RT/RW 001/002, Tambahrejo, Tunjungan, Blora, Jawa Tengah'),
(494, 'Sri Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Ngutugan RT/RW : 003/003, Sendangrejo, Bogorejo, Blora, Jawa Tengah'),
(495, 'Nikmah Choirul Hidayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumurboto, RT/RW 003/001, Sumurboto, Jepon, Blora, Jawa Tengah'),
(496, 'Yuni Isdihanawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ds Gagaan RT/RW: 009/001, Gagaan, Kunduran, Blora, Jawa Tengah'),
(497, 'Marni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Cancangan, RT/RW 002/003, Giyanti, Sambong, Blora, Jawa Tengah'),
(498, 'Indah Dwi Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ds Gayam RT/RW: 004/002, gayam, Bogorejo, Blora, jawa Tengah'),
(499, 'Anik Mulyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tlogotunggal, RT/RW 003/004, Tlogotunggal, Sumber, Rembang, Jawa Tengah'),
(500, 'Minuk Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumberrejo RT/RW: 006/002, Sumberejo, Randublatung, Blora, Jawa Tengah'),
(501, 'Kasmiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Karangrejo DS Sukorejo, RT/RW 002/001, Sukorejo, Tunjungan, Blora, Jawa Tengah'),
(502, 'Suparjo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sempu, RT/RW 002/002, Sempu, Kunduran, Blora, Jawa Tengah'),
(503, 'Sri Rejeki', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Temulus, RT/RW 001/001, Temulus, Randublatung, Blora, Jawa Tengah'),
(504, 'Lia Fatmawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sambowangan, RT/RW 003/001, Sambowangan, Randublatung, Blora, Jawa Tengah'),
(505, 'Ani Melisa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kuncen, RT/RW 014/004, Kuncen, Padangan, Bojonegoro, Jawa Tengah'),
(506, 'Muryadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bogorejo, RT/RW 001/002, Bogorejo, Sumber, Rembang, Jawa Tengah'),
(507, 'Ah Khoirul Anom', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Sulang, RT/RW 001/005, Sulang, Sulang, Rembang, Jawa Tengah'),
(508, 'Sukarjanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Diponegoro, RT/RW 003/001 Pilang, Randublatung, Blora, Jawa Tengah'),
(509, 'Tutik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Sumberjo, RT/RW 004/002, Gempolrejo, Tunjungan, Blora, Jawa Tengah'),
(510, 'Dami', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Tinapan RT/RW: 004/001, tinapan, Todanan, Blora, jawa Tengah'),
(511, 'Kristiningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Randublatung, RT/RW 006/002, Randublatung, Randublatung, Blora, Jawa Tengah'),
(512, 'Kartono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pasar Banggi RT/RW: 002/004, Pasar banggi, rembang, Kabupaten Rembang, Jawa Tengah'),
(513, 'Karomah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gadung, RT/RW 017/006, Gapluk, Purwosari, Bojonegoro, Jawa Tengah'),
(514, 'Risky Wahyu Widiastuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL Taman Bahagia 87, RT/RW 004/008, Cepu, Cepu, Blora, Jawa Tengah'),
(515, 'Roro Puji Setiyowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Ngumbul, RT/RW 008/001, Ngumbul, Todanan, Blora, Jawa Tengah'),
(516, 'Dois Fran\'ik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Bicak, RT/RW 002/001, Bicak, Todanan, Blora, Jawa Tengah'),
(517, 'Sri Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Bedingin, RT/RW 008/001, Bedingin, Todanan, Blora, Jawa Tengah'),
(518, 'Titik Indarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karanggeneng RT/RW: 006/001, Karanggeneng, Kunduran, Blora, Jawa Tengah'),
(519, 'Peni Tri Handayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Ngetrep, RT/RW 005/004, Kacangan, Todanan, Blora, Jawa Tengah'),
(520, 'Kurnia Heru Novianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Padas, RT/RW 005/001, Todanan, Todanan, Blora, Jawa Tengah'),
(521, 'Herlina Anggraini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangboyo, RT/RW 002/001, Karangboyo, Cepu, Blora, Jawa Tengah'),
(522, 'Arif Rubiyansah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kedungwaru, RT/RW 002/002, Karangrejo, Gabus, Grobogan, Jawa Tengah'),
(523, 'Kusnanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Bedingin, RT/RW 008/002, Bedingin, Todanan, Blora, Jawa Tengah'),
(524, 'Endang Suratna Ningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Abimanyu 02 No.77, RT/RW 004/002, Slerok, Tegal Timur, Tegal, Jawa Tengah'),
(525, 'Nahropi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Negla RT.004/RW.011 Negla, Losari, Brebes, Jawa Tengah'),
(526, 'Budi Siswanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Penjalinbanyu RT.003/RW. 002 Siandong, Larangan, Brebes, Jawa Tengah'),
(527, 'Sugiarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Kedawon RT 01/08 Rengaspendawa, Larangan, Brebes, Jawa Tengah'),
(528, 'Santi Umi Solekha', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Karang Anyar, RT/RW 001/001, Prupuk Selatan, Margasari, Tegal, Jawa Tengah'),
(529, 'Widi Astuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pakulaut RT.003/RW.004 Pakulaut, Pakulaut, Margasari, Tegal, Jawa Tengah'),
(530, 'Waskinah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bangsari RT/RW 002/009 Bangsri, Bulakamba, Brebes, Jawa Tengah'),
(531, 'Tresnawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sidaharja, RT/RW 004/003, Sidaharja, Suradadi, Tegal, Jawa Tengah'),
(532, 'Berlian Noor Permadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Purwahamba, RT/RW 008/003, Purwahamba, Suradadi, Tegal, Jawa Tengah'),
(533, 'Tesah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Siramin RT/RW : 004/007, Slatri, Larangan, Brebes, Jawa Tengah'),
(534, 'Puji Astuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sokasari RT/RW: 001/002, Sokasari, Bumijawa, Tegal, Jawa Tengah'),
(535, 'Mustofa Sofyan H', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Klampok RT.006/RW.001 Klampok, Wanasari, Brebes, Jawa Tengah'),
(536, 'Sri Jumiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Margamulya, RT/RW 008/004, Margamulya, Kedungbanteng, Tegal, Jawa Tengah'),
(537, 'Sri Redjeki', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kertasari RT/RW 001/002 Kertasari, Suradadi, Tegal, Jawa Tengah'),
(538, 'Kristiyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Layang GG. Etong No. 45 Tegalsari, Kota tegal, Jawa Tengah'),
(539, 'Farchatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Suradadi RT/RW 003/012 Suradadi, Suradadi, Tegal, Jawa Tengah'),
(540, 'Yuyun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pagerkasih RT/RW: 005/001, Pagerkasih, Bumijawa, Tegal, Jawa Tengah'),
(541, 'Kamilah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Suradadi RT 003/015 No.16, Suradadi, Suradadi, Tegal, Jawa Tengah'),
(542, 'Tri Suhartini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Bangkong RT/RW 006/002 Bantarwaru, Bantarkawung, Brebes, Jawa Tengah'),
(543, 'Shofuroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Cintamanik RT/RW: 006/002 Cintamanik, Bumijawa, Tegal, Jawa Tengah'),
(544, 'Beti Apriana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jetak - Sindangwangi RT/RW 003/001 Sindangwangi, Bantarkawung, Brebes, Jawa Tengah'),
(545, 'Dasri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sindangwangi RT/RW 001/004 Sindangwangi, Bantarkawung, Brebes, Jawa Tengah'),
(546, 'Siti Azijah Ayu Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kalisalak RT/RW 001/009 Kalisalak, Margasari, Tegal, Jawa Tengah'),
(547, 'Waerah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Cipanjur RT.002/RW.005 Sindangwangi, Bantarkawung, Brebes, Jawa Tengah'),
(548, 'Wiwit Ernawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangdawa RT.002/RW.005 Karangdawa, Margasari, Tegal, Jawa Tengah'),
(549, 'Boni Herlinawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jembayat, RT/RW 001/010, Jembayat, Margasari, Tegal, Jawa Tengah'),
(550, 'Yuni Puji Astuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk. Gardu, Kutamendala, Tonjong, Brebes, Jawa Tengah'),
(551, 'Neri Armiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Cendrawasih GG. IV No 17A RT.002/RW.005 Randugunting, Tegal Selatan, Kota Tegal, Jawa Tengah'),
(552, 'Jamilah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk. Suruh Sunda, RT/RW 002/009, Sridadi, Sirampong, Brebes, Jawa Tengah'),
(553, 'Susilowati Anggriani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kramat, RT/RW 003/002, Kramat, Kramat, Tegal, Jawa Tengah'),
(554, 'Pria Apri Putriyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Harjawinangun RT/RW: 001/002, Harjawinangun, Balapulang, Tegal, Jawa tengah'),
(555, 'Yulina', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Tanjung, RT/RW 004/006, Kabunan, Dukuhwaru, Kabupaten Tegal, Jawa  Tengah'),
(556, 'Mansur', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Dewi Sartika Gg. Tulip, RT/RW 003/003, Pesurungan Kidul, Tegal Barat, Kota Tegal, Jawa Tengah'),
(557, 'Fatmawati Hely', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Randusari, RT/RW 001/006, Randusari, Pagerbarang, Tegal, Jawa Tengah'),
(558, 'Sri Yuliyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Purwojati RT/RW: 003/001, Purwojati,Purwojati, Banyumas, Jawa Tengah'),
(559, 'Sri Wina Sari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Karangsalam RT/RW: 001/008, Kalierang, Bumiayu, Brebes, Jawa Tengah'),
(560, 'Nurkholis', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wanareja RT.007/RW.003 Wanareja, Sirampog, Brebes, Jawa Tengah'),
(561, 'Wakiah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Slarang Lor, RT/RW 001/004, Slarang Lor, Dukuhwaru, Tegal, Jawa Tengah'),
(562, 'Tifani Ainun Nisa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Suradadi, RT/RW 002/011, Suradadi, Suradadi, Tegal, Jawa Tengah'),
(563, 'Tuti Ratnasari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Igirbohong RT/RW: 005/001, Mendala, sirampog, Brebes, Jawa Tengah'),
(564, 'Wiwi Hindriyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Baruamba RT/RW: 002/004, Adisana, Bumiayu, Brebes, Jawa Tengah'),
(565, 'Veny Verawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kaliwadas RT/RW 014/002, Kaliwadas, Adiwerna, Tegal, Jawa Tengah'),
(566, 'Sunarni Widiyawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Prapang Lor RT.001/RW.002 Prapag Lor, Losari, Brebes, Jawa Tengah'),
(567, 'Emi Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bogares Kidul RT/RW: 026/004, Bogares Kidul, Pangkah, Tegal, Jawa Tengah'),
(568, 'Siti Rohmawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Batumirah RT/RW: 003/003, Batumirah, Bumijawa, Tegal, Jawa Tengah'),
(569, 'Sumarto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kertayasa, RT/RW 004/002, Kertayasa, Kramat, Tegal, Jawa Tengah'),
(570, 'Hari Yuwono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Kepodang RT.007/RW.003 Janegara, Jatibarang, Brebes, Jawa Tengah'),
(571, 'Sri Handayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Payung RT.002/RW.005, Jatirokeh, Songgom, Brebes, Jawa Tengah'),
(572, 'Eka Risnawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Limbangan RT.008/RW.005 Limbangan, Kersana, Brebes, Jawa Tengah'),
(573, 'Ida Mafrikha', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Rengas Pendawa RT/RW: 008/003, Rengaspendawa, Larangan, Brebes, Jawa Tengah'),
(574, 'Dedi Arifiyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JatiBogor, RT/RW 002/012, JatiBogor, Suradadi, Tegal, Jawa Tengah'),
(575, 'Nur Laili Istiqomah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Turi, RT/002/003, Banjaragung, Warureja, Tegal, Jawa Tengah'),
(576, 'Fridayanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangdawa RT.004/RW.002 Karangdawa, Margasari, Tegal, Jawa Tengah'),
(577, 'Vida Atiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Luwungragi RT.004/RW.005 Luwungragi, Bulakamba, Brebes, Jawa Tengah'),
(578, 'Edi Supriyono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Cipelem RT.002/RW.006 Cipelem, Bulakamba, Brebes, Jawa Tengah'),
(579, 'Muslichatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Rancawuluh RT.001/RW.004 Rancawuluh, Bulakamba, Brebes, Jawa Tengah'),
(580, 'Munisah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Gembor RT.001/RW.004 Raja Wetan, Tonjong, Brebes, Jawa Tengah'),
(581, 'Nur Asiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungjati RT/RW: 001/002, Kedungjati, warureja, Tegal, Jawa Tengah'),
(582, 'Sanidah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kubangsari RT.002/RW.010 Kubangsari. Ketanggungan, Brebes, Jawa Tengah'),
(583, 'Saripin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kradenan RT/RW: 001/006, Kradenan, Kersana, Brebes, Jawa Tengah'),
(584, 'Abi Soleh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dumeling RT.006/RW.004, Dumeling, Wanasari, Brebes, Jawa Tengah'),
(585, 'Rina Trisnawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Curug RT.006/RW.002 Curug, Tirto, Pekalongan, Jawa Tengah'),
(586, 'Yuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Manggisan RT.002/RW.004 Amongrogo, Limpung, Batang, Jawa Tengah'),
(587, 'Niprosatul Hana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Krangkeng RT.004/RW.002 Tedunan, Gringsing, Batang, Jawa Tengah'),
(588, 'Nur Chotijah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun III Gintung RT.013/RW.003 Gintung, Comal, Pemalang, Jawa Tengah'),
(589, 'Trisno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Garung Kidul RT/RW: 002/001, Garungwiyoro, Kandangserang, Pekalongan, Jawa Tengah'),
(590, 'Ahmad Zidni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dawung RT/RW: 001/003, Karangdadap,Karangdadap, Pekalongan, Jawa Tengah'),
(591, 'Cardi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Pelabuhan RT.005/002, Wangkelang, Kandangserang, Pekalongan, Jawa Tengah'),
(592, 'Nur Khasanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wuluh Tengah RT003/004 Blimbingwuluh,Siwalan, pekalongan, Jawa Tengah'),
(593, 'Muchamad Yazid', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Tegalrejo RT.002/RW.006 Depok, Kandeman, Batang, Jawa Tengah'),
(594, 'Lismarlinah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pedurungan Tengah RT/RW: 004/009, Pedurungan, Taman, Pemalang, Jawa Tengah'),
(595, 'Inayatun Ma\'rifah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT.004/RW.001 Siremeng, Pulosari, Pemalang, Jawa Tengah'),
(596, 'Istiqomah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Getas RT/RW: 002/001, Wonopringgo, Pekalongan, Jawa Tengah'),
(597, 'Nanik Yulianti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ketanon RT/RW: 001/005. Ketanon Ageng, Sragi, pekalongan, Jawa Tengah'),
(598, 'Saniatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Seprih RT.004/RW.002 Juragan, Kandeman, Batang, Jawa Tengah'),
(599, 'Maria Ulfa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tegaldowo RT/RW: 001/001, Tegaldowo, Tirto, Pekalongan, Jawa Tengah'),
(600, 'Gilang Eko Budiono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk. Nyamok RT 004/002, Nyamok, Kajen, Pekalongan, Jawa Tengah'),
(601, 'Gunarso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bligo RT/RW: 004/002, Bligo, Buaran, Pekalongan, Jawa Tengah'),
(602, 'Risnawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pendowo RT.001/RW.003 Pendowo, Bodeh, Pemalang, Jawa Tengah'),
(603, 'Siti Umaeroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Kroyakan RT/RW: 013/002, Mesoyi, Talun, Pekalongan, Jawa Tengah'),
(604, 'Nanik Wiharti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tegal Suruh RT/RW: 002/004, Tegal Suruh, Sragi, Pekalongan, Jawa Tengah'),
(605, 'Istiqomah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Kunti Utara Kesambi 5 RT 003/004 Panjang Baru, Pekalongan Utara, Kota Pekalongan, Jawa Tengah'),
(606, 'Winarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jagung RT/RW: 001/004, Jagung, Kesesi, Pekalongan, Jawa Tengah'),
(607, 'Arina Amaliya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Kebonsari RT/RW: 004/004, kebonsari, Karangdadap, Pekalongan, Jawa Tengah'),
(608, 'Mujiyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Kemranggon RT/RW: 002/002, Tanjung Kulon, Kajen, Pekalongan, Jawa Tengah'),
(609, 'Wahyu Nurjanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sarangkadu RT 019/005, Longkeyang, Bodeh, Pemalang, Jawa Tengah'),
(610, 'Tika Nur Eliza M', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kalimas, RT.031/RW.003 Kalimas, Randudongkal, Pemalang, Jawa Tengah'),
(611, 'Santi Kurniasih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kesesi Kota RT/RW: 003/009, Kesesi, Kesesi, pekalongan, Jawa Tengah'),
(612, 'Elianah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Bantul RT/RW: 003/003, Kesesi, Kesesi Pekalongan, Jawa Tengah'),
(613, 'Arif Setiawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tosaran RT/RW: 001/002, Tosaran, Kedungwuni, Pekalongan, Jawa Tengah'),
(614, 'Fajar Rizqi Pradana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Curug, RT/RW 006/002, Curug, Tirto, Pekalongan, Jawa Tengah'),
(615, 'Acim Mulyana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jarakah 02, Lemahduhur, Tempuran, Karawang'),
(616, 'Juhairiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Junggrang I RT. 022/006 Patempuran, Kalisat, Jember'),
(617, 'Ediwan Ginting', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mangan Molih, Tanah Pinem, Dairi, Sumatera Utara'),
(618, 'Rika Sasmiatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Karanganyar RT 001/005, Jrahi, Gunungwungkal, Pati, Jawa Tengah'),
(619, 'Sri Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. P. Aji Iskandar RT. 15, Juata Laut, Tarakan Utara, Kalimantan Utara'),
(620, 'Sahdi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kembang Kuning, RT. 002/001, Sukadamai, Labangka, Sumbawa'),
(621, 'Siti Nurhidayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gulang RT: 003/RW: 006, Gulang, Mejobo, Kudus, Jawa Tengah'),
(622, 'Endang Yusmiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungcino RT.012/RW.004 Kedungcino, Jepara, Kabupaten Jepara, Jawa Tengah'),
(623, 'Sulimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Pucuk RT.021/RW.006 Tunahan, Keling, Kabupaten Jepara, Jawa Tengah'),
(624, 'Indasah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Kedungsari RT.005/RW.003, Clering, Donorojo, Jepara, Jawa Tengah'),
(625, 'Arie Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Ngrandu RT 005/06, Kedungsari, Gebog, Kudus, Jawa Tengah');
INSERT INTO `tm_pemegang_sertifikat` (`pemegang_sertifikat_id`, `nama_pemegang_sertifikat`, `nama_skema`, `nama_instansi`, `alamat_instansi`) VALUES
(626, 'Hikmawati Inaya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Colo, RT004/RW001, Colo, Dawe, Kudus, Jawa Tengah'),
(627, 'Yasir', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dongos, RT 003/RW003, Kedung, Jepara, Jawa Tengah'),
(628, 'Endang Sulistiyowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedung Malang RT.002/RW.003 Kedungmalang, Kedungmalang, Kedung, Kabupaten Jepara, Jawa Tengah'),
(629, 'Nor Hidayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lemah Gunung, RT004/RW002, Krandon, Kota Kudus, Kudus, Jawa Tengah'),
(630, 'Sri Utami', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Sidorejo RT.005/RW.002 Ujungwatu, Donorojo, Kabupaten Jepara, Jawa Tengah'),
(631, 'Susanto Hadi Sarwoko', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karang Malang, RT.003/RW.004 Kalipucang Wetan, Welahan, Kabupaten Jepara, Jawa Tengah'),
(632, 'Kusmiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kerso RT.001/RW.001 Kerso, Kedung, Kabupaten Jepara, Jawa Tengah'),
(633, 'Sielvy Indahyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Karanganyar RT.001/RW.006 Banyumanis, Donorojo, Kabupaten Jepara, Jawa Tengah'),
(634, 'Imron Susanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk. Pringtulis RT003/RW003, Pringtulis, Nalumsari, Jepara, Jawa Tengah'),
(635, 'Indah Dwi Utami', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Jepang RT 003/001 Jepang, Kudus, Jawa Tengah'),
(636, 'Elin Fandayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Karangwetan RT.003/RW.006 Daren, Nalumsari, kabupaten Jepara, Jawa Tengah'),
(637, 'Zuli Astutik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mindahan RT.005/RW.002 Mindahan, Batealit, Kabupaten Jepara, Jawa Tengah'),
(638, 'Sari Endah Zulaicha', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Janggalan, RT002/RW001, Janggalan, Kota Kudus, Kudus, Jawa Tengah'),
(639, 'Sri Aningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Klentengan RT: 001/RW: 001, Tanjungkarang, , Jati, Kudus, Jawa Tengah'),
(640, 'Nukhe Zulfatul Mahmudah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lau, RT/RW 007/003, Lau, Dawe, Kudus, Jawa Tengah'),
(641, 'Siti Norjanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Panjang, RT002/RW002, Panjang, Bae, Kudus, Jawa Tengah'),
(642, 'Agus Susanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan RT : 001/RW : 001, Bae, Kudus, Jawa Tengah'),
(643, 'Budi Utomo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bawu RT.036/RW.007 Bawu, Batealit, Kabupaten Jepara, Jawa Tengah'),
(644, 'Anis Sutriningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pilangrejo RT005/005, Pilangrejo, Wonosalam, Demak, Jawa Tengah'),
(645, 'Yuyun Fitriyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ketanjung RT.001/RW.002 Ketanjung, Karanganyar, Kabupaten Demak, Jawa Tengah'),
(646, 'Ninik Purwanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jetis Kapuan, RT002/RW005, Jetiskapuan, Jati, Kudus, Jawa Tengah'),
(647, 'Anik Setiyowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ujungbatu RT.015/RW.004 Ujungbatu, Jepara, Kabupaten Jepara, Jawa Tengah'),
(648, 'Siti Qomariah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Ngelo RT: 004/RW: 003, Karangrowo, Undaan, Kudus, Jawa Tengah'),
(649, 'Suci Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sekaran, RT03/RW001, Mranak, Wonosalam, Kabupaten Demak, Jawa Tengah'),
(650, 'Siti Juariyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Brangkal RTT01/RW005, Sido Mulyo, Wonosalam, Kabupaten Demak, Jawa Tengah'),
(651, 'Anis Sufa\'ah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Krajan, RT005/RW003, Sidorekso, Kaliwungu, Kudus, Jawa Tengah'),
(652, 'Ika Rondiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Dung Lamping RT.005/RW.006 Sroboyong, Mlonggo, Jepara, Jawa Tengah'),
(653, 'Heru', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Setrokalangan, RT002/RW001, Setrokalangan, Kaliwungu, Kudus, Jawa Tengah'),
(654, 'Ita Setyawati Anggraeni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kweden RT: 042/RW: 005, Karangrejo, Ngasem, Kudus, Jawa Tengah'),
(655, 'Heni Sulistiyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jambu Timur RT 031/RW007, Jambu Timur, Mlonggo, Jepara, Jawa Tengah'),
(656, 'Nurmilah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Tembiluk RT.001/RW.001 Jambu, Mlonggo, Jepara, Jawa Tengah'),
(657, 'Deni Zuliani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Krajan RT.008/RW.002 Kawak, Pakisaji, Kabupaten Jepara, Jawa Tengah'),
(658, 'Achmad Ridlo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungdowo, RT004/RW004, Kedungdowo, Kaliwungu, Kudus, Jawa Tengah'),
(659, 'Hendra Apriliya Purwanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gidangelo RT.002/RW.001 Gidangelo, Welahan, Jepara, Jawa Tengah'),
(660, 'Moh Jumal', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kalirejo RT: 001/RW: 001, Kalirejo, Undaan, Kudus, Jawa Tengah'),
(661, 'Kusmanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Krajan, RT 001/RW001, Bategede, Nalumsari, Jepara, Jawa Tengah'),
(662, 'Ahmad Sholikhin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mayong Kidul RT.002/RW.003 Mayong Kidul, Mayong Kidul, Mayong, Kabupaten Jepara, Jawa Tengah'),
(663, 'Ahmad Zakaria', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Margoyoso RT.007/RW.002 Margoyoso, Kalinyamatan, Jepara, Jawa Tengah'),
(664, 'Sholikul', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Blebak RT.033/RW.007 Sekuro, Mlonggo, Kabupaten Jepara, Jawa Tengah'),
(665, 'Syahrul Mi\'an', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Krajan, RT003/RW001, Pladen, Jekulo, Kudus, Jawa Tengah'),
(666, 'Dewi Fatimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk. Teloyo RT. 001/003, Jurang, Gebog, Kudus, Jawa Tengah'),
(667, 'Firasatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bulung Kulon, RT/RW: 003/004, Bulung Kulon, Jekulo, Kudus, Jawa Tengah'),
(668, 'Nurhaini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Menawan, RT 003/003, Menawan, Gebog, Kudus, Jawa Tengah'),
(669, 'Sugeng', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangbener RT: 004/RW: 004, Karangbener, Bae, Kudus, Jawa Tengah'),
(670, 'Moh Rudik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tergo, RT001/RW002, Tergo, Dawe, Kudus, Jawa Tengah'),
(671, 'Yeni Indarwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Damarjati RT.001/RW.004 Damarjati, Kalinyamatan, Kabupaten Jepara, Jawa Tengah'),
(672, 'Budi Utomo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kambang RT: 002/ RW: 003, Klaling, Jekulo, Kudus, Jawa Tengah'),
(673, 'Muhsin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Demangan, RT009/RW006, Mijen, Kaliwungu, Kudus, Jawa Tengah'),
(674, 'Purwanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Papringan, RT007/RW004, Papringan, Kaliwungu, Kudus, Jawa Tengah'),
(675, 'Rawis Pranoto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungwaru Lor RT007/RW001, Kedungwaru Lor, Karanganyar, Kabupaten Demak, Jawa Tengah'),
(676, 'Deni Setiawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Banget, RT001/RW001, Banget, Kaliwungu, Kudus, Jawa Tengah'),
(677, 'Triyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Blerong RT002/RW003, Blerong, Guntur, Kabupaten Demak, Jawa Tengah'),
(678, 'Tutik Amalia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mijen, RT002/RW002, Mijen, Kaliwungu, Kudus, Jawa Tengah'),
(679, 'Prastyowibowo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Plumbungan, RT002/RW002, Purworejo, Bae, Kudus, Jawa Tengah'),
(680, 'Karyumi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngerang Lor, RT001/RW003, Trimulyo, Juwana, Pati, Jawa Tengah'),
(681, 'Sri Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Maitan, RT005/RW001, Maitan, Tambakromo, Pati, Jawa Tengah'),
(682, 'Nur Idaya Suciati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Perum Griya Permata V No. 83 RT: 001/RW: 005, Winong, Pati, Jawa Tengah'),
(683, 'Hadi Siswanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'kadilangu RT 003/001, Kadilangu, Trangkil, Pati, Jawa Tengah'),
(684, 'Yuni Suharti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mojoagung, RT003/RW001, Mojoagung, Trangkil, Pati, Jawa Tengah'),
(685, 'M. Toha Ma\'sum', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Trimulyo, RT 004/003, Trimulyo, Kayen, Pati, Jawa Tengah'),
(686, 'Imam Wahyudi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'karanglegi RT: 002/001, Karanglegi, Trangkil, Pati, Jawa Tengah'),
(687, 'Siti Roikhanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kentengan RT003/RW004, Mojo, Kluwak, Kabupaten Pati, Jawa Tengah'),
(688, 'Noor Maulida', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gesengan, RT004/RW003, Gesengan, Cluwak, Pati, Jawa Tengah'),
(689, 'Dwi Hadi Susilo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Puncakwangi, Pati, Jawa Tengah'),
(690, 'Tri Indayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Beketel RT.004/RW.002 Beketel, Kayen, Pati, Jawa Tengah'),
(691, 'Yayuk Mujiwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Durensawit RT001/RW004, Kayen, Pati, Jawa Tengah'),
(692, 'Laily Nur Inayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tambakromo, RT007/RW003, Tambakromo, Tambakromo, Pati, Jawa Tengah'),
(693, 'Sugiarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Druju RT.002/RW.002 Bungasrejo, Jakenan, Pati, Jawa Tengah'),
(694, 'Indayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangawen RT.007/RW.002 Karangawen, Tambakromo, Pati, Jawa Tengah'),
(695, 'Diah Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Bibis, RT002/RW001, Margorejo, Margorejo, Pati, Jawa Tengah'),
(696, 'Erma Safitri Ademawarni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Gempol, RT004/RW001, Margomulyo, Juwana, Pati, Jawa Tengah'),
(697, 'Sri Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mangunrekso RT.003/RW.002 Mangunrekso, Tambakromo, Pati, Jawa Tengah'),
(698, 'Jumini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Salak RT004/RW002, Klakahkasihan, Gembong, Kabupaten Pati, Jawa Tengah'),
(699, 'Kasmini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gempol RT.002/RW.001 Margomulyo, Juwana, Pati, Jawa Tengah'),
(700, 'Sukarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sitirejo RT.002/RW.001, Sitirejo, Tambakromo, Pati, Jawa Tengah'),
(701, 'Siti Khalimatul Aminah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Kluwung, RT003/RW002, Tambanhagung, Tambakromo, Pati, Jawa Tengah'),
(702, 'Siti Maisaroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Plosomalang RT 002/RW001, Pantirejo, Gabus, Pati, Jawa Tengah'),
(703, 'Zumala Laili', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DS kedalingan RT.003/RW.003 Kedalingan, Ambakromo, Pati, Jawa Tengah'),
(704, 'Fahimatus Surur', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lengkong, RT 005/RW001, Lengkong, Batangan, Pati, Jawa Tengah'),
(705, 'Endang Susana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangwotan RT 008/RW002, Karangwotan, Pucakwangi, Pati, Jawa Tengah'),
(706, 'Charlina Atiek Umbarwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Raci, RT.002/RW.005 Raci, Batangan, Pati, Jawa Tengah'),
(707, 'Leni Kartika Dona', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Purworejo RT001/RW001, Purworejo, Margoyoso, Pati, Jawa Tengah '),
(708, 'Siti Aminah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Cengkalsewu, RT001/RW006, Cengkalsewu, Sukolilo, Pati, Jawa Tengah'),
(709, 'Jarwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangsumber, RT003/RW001 Karangsumber, Winong, Pati, Jawa Tengah'),
(710, 'Julikah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Klayusiwalan RT.009/RW.001 Klayusiwalan, Batangan, Pati, Jawa Tengah'),
(711, 'Endang Ismiayti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Ketri, RT009/RW002, Triguno, Pucakwangi, Pati, Jawa Tengah'),
(712, 'Endang Zuliana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Banteng, RT005/RW001, Gadu, Gunungwungkal, Pati, Jawa Tengah'),
(713, 'Arif Rangga Aditia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Angkatanlor RT.002/RW.002 Angkatanlor, Tambakromo, Pati, Jawa Tengah'),
(714, 'Indayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pasucen, RT003/RW008,  Pasucen, Trangkil, Pati, Jawa Tengah'),
(715, 'Kesmanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Mrican RT001/RW002, Purwodadi, Margoyoso, Pati, Jawa Tengah'),
(716, 'Abdus Syakur', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngemplak Kidul RT.001/RW.003 Ngemplak Kidul, Margoyoso, Pati, Jawa Tengah'),
(717, 'Sukadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DS Widorokandang, RT003/RW001, Widorokandang, Pati, Jawa Tengah'),
(718, 'Sunarto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tanjungrejo RT.020/RW.005 Tanjungrejo, Margoyoso, Pati, Jawa Tengah'),
(719, 'Ambar Sari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ds. Keben, RT005/RW003, Keben, Tambakromo, Pati, Jawa Tengah'),
(720, 'Abdul Rofiq', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Pondok, RT002/RW005, Tanjunganom, Gabus, Pati, Jawa Tengah'),
(721, 'Sunanik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Jenggolo RT001/RW003, Pakis, Tambakromo, Pati, Jawa Tengah'),
(722, 'Zaidun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tegalharjo RT.003/RW.002 Tegalharjo, Trangkil, Pati, Jawa Tengah'),
(723, 'Sri Kayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ketanen RT: 002/RW: 002, Ketanen, Trangkil, Pati, Jawa Tengah'),
(724, 'Kasminah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kpajan, RT001/RW001, Tegalombo, Dukuhseti, Pati, Jawa Tengah'),
(725, 'Asih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gadungan RT.006/RW.001 Sejomulyo, Juwana, Pati, Jawa Tengah'),
(726, 'Purwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kembang, RT005/RW003, Kembang, Dukuhseti, Pati, Jawa Tengah'),
(727, 'Sunarto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Maitan, RT004/RW004, Maitan, Tambakromo, Pati, Jawa Tengah'),
(728, 'Muflikhah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pasucen, RT007/RW004, Pasucen, Trangkil, Pati, Jawa Tengah'),
(729, 'Kiswati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan RT003/RW001, Bleber, Cluwak, Pati, Jawa Tengah'),
(730, 'Lia Umbar Sari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuhseti RT002/RW003,Dukuseti, Dukuhseti, Pati, Jawa Tengah'),
(731, 'Rahayuningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Krajan, RT007/RW001, Tegalombo, Dukuhseti, Pati, Jawa Tengah'),
(732, 'Ika Purwanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jambu RT002/RW001, Bakalan, Dukuhseti, Pati, Jawa Tengah'),
(733, 'Amir Abdul Majid', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Warangan RT001/RW001, Jepalo, Gunungwungkal, Pati, Jawa Tengah'),
(734, 'Sya`roni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sekarjalak RT002/RW002, Sekarjalak, Margoyoso, Pati, Jawa Tengah'),
(735, 'Rusmiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Gulangpongge, RT004/RW001, Gulangpongge, Gunungwungkal, Pati, Jawa Tengah'),
(736, 'Setia Kustanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK Lemahabang RT.003/RW.005 Sinomwibowo, Tambakromo, Pati, Jawa Tengah'),
(737, 'Sri Puji Rahayuningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Purwokerto, RT002/RW002, Purwokerto, Kayen, Pati, Jawa Tengah'),
(738, 'Kusni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Maitan, RT001/RW003, Maitan, Tambakromo, Pati, Jawa Tengah'),
(739, 'Darmawinsyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DK. Bangleyan, RT001/RW003, Tambahmulyo, Jakenan, Pati, Jawa Tengah'),
(740, 'Eri Subekti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Tambakromo, RT002/RW001, Tambakromo, Tambakromo, Pati, Jawa Tengah'),
(741, 'Novita Prasetyowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'KP. Saliyan RT009/RW002, Pati Lor, Pati, Kabupaten Pati, Jawa Tengah'),
(742, 'Abdul Aziz', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Beketel, RT002/RW003, Beketel, Kayen, Pati, Jawa Tengah'),
(743, 'Gerald Saputra', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(744, 'Satrio Legowo', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(745, 'Erin Febri Wiyani', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(746, 'Puput Hadi Putra', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(747, 'Gandung Agus Suwito', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(748, 'Eddy Suyanto', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(749, 'Dwi Hendro Prasetyo', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(750, 'Eko Hadi Purwanto', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(751, 'Muhammad Ainuropiq', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(752, 'Saputra Satriya', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(753, 'Dedi Armunanto', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(754, 'Alex Franico', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(755, 'Agus Nur Pujiyanto', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(756, 'Choirul Amal', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(757, 'Irawati', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(758, 'Sucita Rendra Sari', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(759, 'Wahju Budijono', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(760, 'Danny Wienianto Nugroho', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(761, 'Dwi Yuni Budianto', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(762, 'Wahyudhi Hadiwibowo', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(763, 'Choirudin', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(764, 'Agus Doni Prianto', 'Pelaksanaan Proses Pinjaman', 'KSP GDC Nusantara ', 'Jl. Soekarno - Hatta No.02, Babatan, Kepuhkembeng, Kec. Peterongan, Kabupaten Jombang, Jawa Timur 61413'),
(765, 'Akhmad Rudy Andivia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bambe, RT010/RW003, Bambe, Driyorejo, Gresik, Jawa Timur'),
(766, 'Devi Mahardianingtyas', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kalitengah Utara RT.001/RW.001 Kalitengah, Tanggulangin, Sidoarjo, Jawa Timur'),
(767, 'Dewi Joharmunica', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sidodadi Sambongan 16 RT. 001/RW.004 Sidodadi, Simokerto, Kota Surabaya, Jawa Timur'),
(768, 'Dwi Rachmawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Warugunung RT: 003/RW: 001, Warugunung, Karangpilang, Surabaya, Jawa Timur'),
(769, 'Edy Suprapto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sememi Jaya - 5 Utara BLK 4/19 RT.002/ RW.001 Sememi, Benowo, Kota Surabaya, Jawa Timur'),
(770, 'Ellen Junyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tengger Kandangan - 19/8 RT.002/RW.005 Kandangan, Benowo, Kota Surabaya, Jawa Timur'),
(771, 'Erni Musmawatin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Budengan, RT002/RW002, Mulyodadi, Wonoayu, Sidoarjo, Jawa Timur'),
(772, 'Herfiya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngepung, RT001/RW001, Ngepung, Kedamean, Gresik, Jawa Timur'),
(773, 'Ina Suryani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Perumahan Griya Asri Blok I F no.3 RT03/RW07, Kalitengah, Tanggulangin, Kabupaten Sidoarjo, Jawa Timur'),
(774, 'Laili Nur Hidayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kloposepuluh, RT010/RW002, Keloposepuluh, Sukodono, Sidoarjo, Jawa Timur'),
(775, 'Lina Wijayanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Keboansikep RT003/RW003, Keboansikep, Gedangan, Kabupaten Sidoarjo, Jawa Timur'),
(776, 'Lisa Faruki', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tlanak, RT004/RW005, Sembung, Wringinanom, Gresok, Jawa Timur'),
(777, 'Luluk Istiqomah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukun Pakis 3.A/19 RT05/RW02, Dukuh Pakis, Dukuh Pakis, Kota Surabaya, Jawa Timur'),
(778, 'Marini Ariliandari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'pacarkelinh 8/29 RT.003/RW.006 Pacar Keling, Tambak Sari, Kota Surabaya, Jawa Timur'),
(779, 'MH. Kusno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Simo Pomahan Baru Sawah 1/72 RT: 010/RW: 005, Simomulyo Baru, Sukomanunggal, Surabaya, Jawa Timur'),
(780, 'Miftakhul Jannah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kaliwungu, RT010/RW003, Banjarwungu, Tarik, Sidoarjo, Jawa Timur'),
(781, 'Mohammad Badri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonocolo RT.014/RW.005 Wonocolo, Taman, Sidoarjo, Jawa Timur'),
(782, 'Munisih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Petiken, RT013/RW006, Petiken, Driyorejo, Gresik, Jawa Timur'),
(783, 'Nanik Tri Ismiwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Simojawar gg. 2 No. 95-D RT: 002/RW: 001, Simomulyo Baru, Sukomanunggal, Surabaya, Jawa Timur'),
(784, 'Nur Ahmad Soleh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Paras, RT013/RW007, Mulung, Driyorejo, Gresik, Jawa Timur'),
(785, 'Nurul Mahmudah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumberjambe, RT004/RW005, Sidoharjo, Kedamean, Gresik, Jawa Timur'),
(786, 'Petrus Slamet Rahardjo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gubeng jaya tengah 4 RT: 002/RW: 002, Gubeng, Surabaya, Jawa Timur'),
(787, 'Ratih Kurniawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Menanggal 05/12 RT:002/RW: 003, Menanggal, Gayungan, Surabaya, Jawa Timur'),
(788, 'Rika Dwi Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kemuning, RT023/RW004, Kemuning, Tarik, Sidoarjo, Jawa Timur'),
(789, 'Siti Mariliyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sudimoro, RT003/001, Jeruklegi, Balongbendo, Sidoarjo, Jawa Timur'),
(790, 'Sulistari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Setro Rawasan 6-A/10, RT001/RW002, Dukuh Setro, Tambak Sari, Kota Surabaya, Jawa Timur'),
(791, 'Suprihatin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pekarungan, RT011/RW004, Sukodono, Sidoarjo, Jawa Timur'),
(792, 'Yayuk Sri Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonokitri, RT033/RW005, Sumokembangsri, Balongbendo, Sidoarjo, Jawa Timur'),
(793, 'Yulia Indrawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pilang Bangu, RT008/RW003, Kemangsen, Balongbendo, Sidoarjo, Jawa Timur'),
(794, 'Maimunah Tuzzehroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Timur, RT001/RW003, Nyalabu Daya, Pamekasan, Kabupaten Pamekasan, Jawa Timur'),
(795, 'Mayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn patapan Tengah RT. 000/RW. Patapan, Torjun, Sampang, Jawa Timur'),
(796, 'Mahrus Ali', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Olor, RT.003/RW.001 Sokobanah Laok, Sokobanah, Sampang, Jawa Timur'),
(797, 'Dewi Sulfianika', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Bangoy RT.001/RW.001 Buker, Jrengik, Sampang, Jawa Timur'),
(798, 'Manipah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Batu nudung RT.000/RW.000 Karang Penang Onjur, Karang Penang, Sampang, jawa Timur'),
(799, 'Hasanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Durbugan, Rabasan, Camplong, Sampang, Jawa Timur.'),
(800, 'Sulastri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Keleyan, RT02/RW03, Keleyan, Socah, Kabupaten Bangkalan, Jawa Timur'),
(801, 'Suhartono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Asem nunggal RT: 002/RW: 002, kalianget barat, kalianget, Sumenep, Jawa Timur'),
(802, 'Insiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Kemuning RT003/RW004, Pejagan, Bangkalan, Kabupaten Bangkalan, Jawa Timur'),
(803, 'Sufia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Barat, Gro Om, Proppo, Pamekasan, Jawa Timur'),
(804, 'Suhartatik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Timur, RT001/RW003, Nyalabu Daya, Pamekasa, Kabupaten Pamekasan, Jawa Timur'),
(805, 'Wahyudi Dimyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl KH Agus Salim, RT003/RW001, Kolpajung, Pamekasan, Kabupaten Pamekasan, Jawa Timur'),
(806, 'Triandani Umiyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Trunojoyo VII A / 69, Rt/Rw. 01/02, Pejagan, Bangkalan, Kabupaten Bangkalan, Jawa Timur'),
(807, 'Mohammad Sirajuddin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Glugur II, RT004/RW006, Palengaan Laok, Palengaan, Pamekasan, Jawa Timur'),
(808, 'Halimatus Zahroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Glugur I, RT00/RW00, Palengaan Laok, Palengaan, Pamekasan, Jawa Timur'),
(809, 'Busiri Yanto Putra', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Torbalangan, RT001/RW003, Larangan Slampar, Pamekasan, Jawa Timur'),
(810, 'Junaedi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Bere Sabe RT.000/RW.000 Torjunan, Robatal, Sampang, jawa Timur'),
(811, 'Ach Faisol Rahman', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Gunung eleh RT.000/RW.000 Gunung Eleh, Kedungdung, Sampang, Jawa Timur'),
(812, 'Umriyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kmp.Morangan Lebak, RT00/RW00, Gebang, Bangkalan, Kabupaten Bangkalan, Jawa Timur'),
(813, 'Moh Hilal', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Manggeran RT: 015/RW: 005, Legung barat, Batang batang, Sumenep, Jawa Timur'),
(814, 'Anisa Fajrin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sangsang RT.000/RW.000 Omben, Omben, Sampang, Jawa Timur'),
(815, 'Sri Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tengah, RT02/RW02, Semaan, Dasuk, Kabupaten Sumenep'),
(816, 'Kurniawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Aengnyeor RT19/RW04, Lobuk, Bluto, Sumenep, Jawa Timur'),
(817, 'Miftakhul Jannah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sumberwaru, Rt/Rw. 03/01, Palrejo, Sumobito, Kabupaten Jombang, Jawa Timur'),
(818, 'Nila Rostiana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Talunongko RT.003/RW.006 Jolotundo, Jetis, Mojokerto, Jawa Timur'),
(819, 'Sumarni Dwi Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karanglo, Rt/Rw. 05/05, Karanglo, Mojowarno, Kabupaten Jombang, Jawa Timur'),
(820, 'Iswati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Ngingas RT.004/RW.001 Ngastemi, Bangsal, Mojokerto, Jawa Timur.'),
(821, 'Devina Prabawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Banggle, RT003/RW002, Sukorejo, Jombang, Jawa Timur'),
(822, 'Siti Nurzaroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Trowulan RT: 003/RW: 001, Trowulan, Mojokerto, Jawa Timur'),
(823, 'Lilik Idayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Belor RT: 006/RW: 002, Kembangbelor, Pacet, Mojokerto, Jawa Timur'),
(824, 'Vera Hanifah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Kutoporong RT.005/RW.001 Kutoporong, Bangsal, Mojokerto, jawa Timur'),
(825, 'Iska Maiyasaroh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Bogorame, RT016/RW008, Kedungbogo, Ngusikan, Jombang, Jawa Timur'),
(826, 'Fitrianah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Ngembeh RT. 002/RW.002 Ngembeh, Dlanggu, Mojokerto, Jawa Timur.'),
(827, 'Supriono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Mojodadi Rt/Rw.01/01, Plemahan, Sumobito, Kabupaten Jombang'),
(828, 'Dewi Hindun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Gampang RT.004/RW.002 Sumbertebu, Bangsal, Mojokerto'),
(829, 'Moh. Imam Nur Kholis', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Sugihwaras, RT008/RW001, Sugihwaras, Ngoro, Jombang, Jawa Timur'),
(830, 'Ma\'arif', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Mangilan, Rt/Rw. 03/02, Mangilan, Mojoagung, Kabupaten Jombang, Jawa Timur'),
(831, 'Yulia Eka Nuryanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kudubanjar, RT019/RW008, Kudubanjar, Kudu, Jombang, Jawa Timur'),
(832, 'Al Laili', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gedangan Rt/Rw. 04/02, Gedangan, Sumobito, Kabupaten Jombang'),
(833, 'Emawatiningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn. Pudaksari RT.016/RW.006 Puloniti, Bangsal, Mojokerto, Jawa Timur'),
(834, 'Eka Yuliasari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungbetik, Rt/Rw. 03/01, Kedungbetik, Kesamben, Kabupaten Jombang, Jawa Timur'),
(835, 'Yunani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Bangun, RT.006/002 Bangun, Mojokerto'),
(836, 'Ressa Indra Agus Handoyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Sambisari RT: 005/RW: 001, Beloh, Trowulan, Mojokerto, Jawa Timur'),
(837, 'Rukmiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Banjarsari RT.003/RW.002 Banjarsari, Jetis, Mojokerto, Jawa Timur'),
(838, 'Siswati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pandan toyo RT: 009/RW: 005, Kemlagi, Mojokerto, Jawa Timur'),
(839, 'Ririn Oktianah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Mindi, RT001/RW001, Mundusewu, Bareng, Jombang, Jawa Timur'),
(840, 'Dewi Nur Fitriyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn.Kalikijing, Rt/Rw.02/04, Kedungdowo, Ploso, Kabupaten Jombang Jawa Timur'),
(841, 'Afandi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Badu, RT001/RW007, Wanar, Pucuk, Lamongan, Jawa Timur'),
(842, 'Ainur Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jetis RT: 001/RW: 003, Duduk Lor, glagah, Lamongan, Jawa Timur'),
(843, 'Alek Setiawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Majenang, RT001/RW007, Majenang, Kedungpring, Lamongan, Jawa Tengah'),
(844, 'Anik Shofiah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kadung RT.002/RW.005 Kedungrembung, Sukodadi, Lamongan, Jawa Timur'),
(845, 'Cholifah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Glugu RT: 003/RW: 005, Dlanggu, Deket, Lamongan, Jawa Timur'),
(846, 'Darwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Siwalan RT.003/RW.001 Siwalanrejo, Sukodadi, Lamongan'),
(847, 'Duwi Nugreni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tanjung Kulon RT. 005/RW. 002 Munungrejo, Ngimbang, Lamongan, Jawa Timur'),
(848, 'Dwi Rahmaning Tyas', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pengangsalan RT: 001/RW: 001, Pengangsalan, Kalitengah, Lamongan, Jawa Timur'),
(849, 'Endah Nurfalida', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tlanak Rt/Rw. 03.04, Tlanak, Kedungpring, Kabupaten Lamongan'),
(850, 'Endang Purwanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Balong RT.002/RW.007 Sendangrejo, Ngimbang, Lamongan, Jawa Timur'),
(851, 'Faiqotul Hikmah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Drajat, RT001/RW001, Drajat, Paciran, Lamongan, Jawa Timur'),
(852, 'Fidya Ike', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lawak RT.004/RW.001 Lawak, Ngimbang, Lamongan, Jawa Timur'),
(853, 'Iin Indriati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Mayjed Sungkono RT. 003/003 Gresik'),
(854, 'Ika Dwi Rahmawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Warukulon, RT001/RW003, Warukulon, Pucuk, Lamongan, Jawa Timur'),
(855, 'Imam Syafii', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sungelebak Rt/Rw. 012/04, Sungelebak, Karanggeneng, Kabupaten Lamongan'),
(856, 'Istriana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kendalkemlagi Rt/Rw. 01/01, Kendalkemlagi, Karanggeneng, Kabupaten Lamongan'),
(857, 'Kuzaimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pasi RT: 003/RW:001, Pasi, Glagah, Lamongan, Jawa Timur'),
(858, 'Lambang', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumberdadi, RT002/RW002, Sumberdadi, Mantup, Lamongan, Jawa Timur'),
(859, 'M. Usfur Firdaus', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mayongwetan. RT: 003/RW: 0075, Lamongan , Jawa Barat'),
(860, 'Maslahah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mojosari, RT001/RW002, Mojosari, Mantup, Lamongan, Jawa Timur'),
(861, 'Moh Nur Qomari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Landeyan RT.001/RW.002 Kedungwaras, Modo, Lamongan, Jawa Timur'),
(862, 'Moh. Muji', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Nataan, RT016/RW008, Gedongboyountung, Turi, Lamongan, Jawa Timur'),
(863, 'Mu\'imah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngembet Rt/Rw.02/07, Ngembet, Banjarmadu, Kabupaten Lamongan'),
(864, 'Ninik Purwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Banan Rt/Rw. 01/06, Gunungrejo, Kedungpring, Kabupaten Lamongan'),
(865, 'Nur Amanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Badan RT 001/004 Lamongan'),
(866, 'Puji Wilujeng', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bluluk RT: 003/RW: 001, Bluluk, Lamongan, Jawa Timur'),
(867, 'Rohmatul Fitriyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Agus Salim Rt/Rw. 07/02, Latukan, Karanggeneng, Kabupaten Lamongan'),
(868, 'Sisningwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jelak RT: 003/RW: 004, Jelakcatur, Kalitengah, Lamongan, Jawa Timur'),
(869, 'Siti Maimunah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Siman RT: 001/RW: 004, Jatirenggo, Glagah, Lamongan, jawa Timur'),
(870, 'Sukardi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kembangan RT 002/001 Gresik'),
(871, 'Sulistyawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Talun, RT.002/RW.002 Sidogembul, Sukodadi, lamongan, Jawa Timur'),
(872, 'Suliswati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karang Tinggil, RT002/RW002, Karang Tinggil, Pucuk, Lamongan, Jawa Timur'),
(873, 'Suparlik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Baadu, RT001/RW001, Badurame, Turi, Lamongan, Jawa Timur'),
(874, 'Sutiani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kendal RT.008/RW. 002 Nogojatisari, Sambeng, Lamongan, Jawa Timur'),
(875, 'Suwatik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kendayaan RT.003/RW.002 Wedoro, Sukorame, Lamongan, Jawa Timur'),
(876, 'Waras', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Glagah Kulon RT: 002/RW: 001, Glagah, Lamongan, Jawa Timur'),
(877, 'Widiantoro', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Windu, RT: 001/RW: 001, Windu, Karangbinangun, Lamongan, Jawa barat'),
(878, 'Yepie Wacixa Ferdiansyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sedah Rt/Rw. 03/07, Pule, Modo, Kabupaten Lamongan'),
(879, 'Yulianti Puspita Dewi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Keputran RT: 001/RW: 001, Dinoyo, Deket, Lamongan, Jawa Timur'),
(880, 'Zuwana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mulyorejo, RT004/RW007, Dalegan, Panceng, Gresik, Jawa Tengah'),
(881, 'Anas Sachrial', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Rawasan, RT01/RW02, Rawasan, Jenu, Kabupaten Tuban, Jawa Timur'),
(882, 'Andi Apsah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Sendang P.Trembini, RT014/RW003, Sobontoro, Balen, Bojonegoro, Jawa Timur'),
(883, 'Anevi Dina Susilawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jari, RT005/RW002, Jari, Gondang, Bojonegoro, Jawa Timur'),
(884, 'Aninda Gita Vefbyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kepohkrajan, RT006/RW002, Kepohkidul, Kedungadem, Bojonegoro, Jawa Timur'),
(885, 'Anita Dewi Handayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DSN Dolok RT.003/RW.001 Parangbatu, Parengan, Ruban, Jawa Timur'),
(886, 'Asnan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Airlangga No.130, RT003/RW001, Sugihwaras, Kepohbaru, Bojonegoro, Jawa Timur'),
(887, 'Binti Galih Sariningrum', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ds Bulu, RT003/RW001, Bulu, Sugihwaras, Bojonegoro, Jawa Timur'),
(888, 'Candra Putri Utami', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pagerwesi RT05/RW02, Pagerwesi, Trucuk, Kabupaten Bojonegoro, Jawa Timur'),
(889, 'Devi Illuh Wahyuningrum', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Alasagung, RT14/RW05, Alasagung, Sugihwaras, Kabupaten Bojonegoro, Jawa Timur'),
(890, 'Dirman', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Margorejo, RT011/RW005, Ngringinrejo, Kalitidu, Bojonegoro, Jawa Timur'),
(891, 'Diyah Kunariati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ngepon, RT01/RW03, Ngepon Jatirogo, Kabupaten Tuban, Jawa Timur'),
(892, 'Happy Linda Christanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Batu rejo RT.001/RW.003 Ngawun, Parengan, Tuban, Jawa Timur'),
(893, 'Haris Afandi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Nggampeng, RT008/RW001, Banjarejo, Sumberrejo, Bojonegoro, Jawa Timur'),
(894, 'Ika Nur Cahyanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan, RT14/RW05, Talang Kembar, Montong, Kabupaten Tuban, Jawa Timur'),
(895, 'Ine Dwi Indrayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungdowo, RT006/RW002, Kedungdowo, Sugihwaras, Bojonegoro, Jawa Timur'),
(896, 'Intan Nur Aisyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Balongrejo, RT18/RW06, Balongrejo, Sugihwaras, Kabupaten Bojonegoro, Jawa Timur'),
(897, 'Ita Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Blimbing, RT007/RW002, Trenggulunan, Ngasem, Bojonegoro, Jawa Timur'),
(898, 'Junaidi Jaya Kusuma', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kadutan, RT01/RW05, Mlangi, Widang, Kabupaten Tuban, Provinsi Jawa Timur'),
(899, 'Khoirul Muklisin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kebonturi RT: 016/RW: 005, Katur, Gayam, Bojonegoro, Jawa Timur'),
(900, 'Kuntiah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Clebung, RT: 007/RW: 002, Clebung, Bubulan, Bojonegoro, Jawa Timur'),
(901, 'Lia Romawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karangsono RT: 009/RW: 004, Karangsono, Dander, Bojonegoro, Jawa Timur'),
(902, 'Lina Jumiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bareng, RT022/RW007, Bareng, Sugihwaras, Bojonegoro, Jawa Timur'),
(903, 'Lucy Octavia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan RT01/RW01, Sugihwaras, Sugihwaras, Kabupaten Bojonegoro, Jawa Timur'),
(904, 'Lugianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sitiaji RT 11/RW01, Sitiaji, Sukosewu, Bojonegoro, Jawa Timur'),
(905, 'M Zaenal Arifin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Dukuhan RT.002/RW.004 Gununganyar, Soko, Tuban, Jawa Timur'),
(906, 'Ma\'arif Choirul Mahdi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Nganti, RT009/RW003, Nganti, Ngraho, Bojonegoro, Jawa Timur'),
(907, 'Moh Ismail', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Gebalan, RT.003/RW.003 Wukirharjo, Parengan, Tuban, Jawa Timur'),
(908, 'Muti\'ah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sitiaji RT 023/RW002, Sitiaji, Sukosewu, Bojonegoro, Jawa Timur'),
(909, 'Nashrulloh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sukosewu RT 011/01, Sukosewu, Sokosewu, Bojonegoro, Jawa Timur'),
(910, 'Nurul Qomariyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. A. Yani RT: 006/RW: 002, Kemamang, Balen, Bojonegoro, Jawa Timur'),
(911, 'Nurul Yunikmah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Manukan RT: 001/RW: 001, Manukan, Gayam, Bojonegoro, Jawa Timur'),
(912, 'Nyamiran', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngrejeng RT: 004/RW: 001, Ngrejeng, Purwosari, Bojonegoro, Jawa Timur'),
(913, 'Reni Umilah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngunut RT: 013/RW: 003, Ngunut, Dander, Bojonegoro, Jawa Timur'),
(914, 'Risma Windyastutik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Alasagung, RT04/RW02, Alasagung, Sugihwaras, Kabupaten Bojonegoro, Jawa Timur'),
(915, 'Samsudin Hasan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Malo, RT001/RW001, Malo, Malo, Bojonegoro, Jawa Timur'),
(916, 'Setyo Ninik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kalipang, RT011/RW003, Leran, Kalitidu, Bojonegoro, Jawa Timur'),
(917, 'Siti Fatimah Nurjanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Kesamben Timur RT.006/RW.001 Kesamben, Plumpang, Tuban, Jawa Timur'),
(918, 'Siti Nur Jannah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumbergirang, RT031/RW009, Jamberejo, Kedungadem, Bojonegoro, Jawa Timur'),
(919, 'Siti Zulaikah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun dureg RT: 021/RW: 002, Sidobandung, Balen, Bojonegoro, Jawa Timur'),
(920, 'Slamet', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedungsari RT09/RW03, Kedungsari, Temayang, Kabupaten Bojonegoro, Jawa Timur'),
(921, 'Sri Nuryani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wedoro, RT004/RW001, Wedoro, Sugihwaras, Bojonegoro, Jawa Timur'),
(922, 'Sri Nyamini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Barek RT: 005/RW: 001, Ngadiluhur, Balen, Bojonegoro, Jawa Timur'),
(923, 'Sujoko', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun sosko, RT04/RW01, Soko, Temayang, Kabupaten Bojonegoro, Jawa Timur'),
(924, 'Sulistiyo Ningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jatiblimbing RT: 011/RW: 003, Jatiblimbing, Dander, Bojonegoro, Jawa Timur'),
(925, 'Suminto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'DSN Krajan RT.002/RW.001 Sembung, Parengan, Tuban, Jawa Timur'),
(926, 'Sunarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT11/RW02, Montongsekar, Montong, Kabupaten Tuban, Jawa Timur'),
(927, 'Tanti Asih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dander RT: 037/RW: 004, Dander, Dander, Bojonegoro, Jawa Timur'),
(928, 'Triyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tanggir, RT03/RW02, Patihan, Widang, Kabupaten Bojonegoro, Provinsi Jawa Tiimur'),
(929, 'Tuminah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Dikir RT.006/RW.003 Dikir, Tambakboyo, Tuban, Jawa Timur'),
(930, 'Wiwin Hariyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Mlinjeng, RT013/RW004, Mlinjeng, Sumberrejo, Bojonegoro, Jawa Timur'),
(931, 'Zainal Abidin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Sutowijoyo RT: 006/RW: 001, Lengkong, Balen, Bojonegoro, Jawa Timur'),
(932, 'Zubaidi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Templek RT 009/001, Pulanggede, Balen, Bojonegoro, Jawa Timur'),
(933, 'Tismil Khotijah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Badal, RT001/RW001, Badal, Ngadiluwih, Kediri, Jawa Timur'),
(934, 'Septi Ningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Nambaan Rt: 001/RW: 016, Sambirejo, Pare, Kediri, Jawa Timur'),
(935, 'Febiana Efitri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tegalrejo, RT001/RW002, Wonorejo, Ngadiluwih, Kediri, Jawa Timur');
INSERT INTO `tm_pemegang_sertifikat` (`pemegang_sertifikat_id`, `nama_pemegang_sertifikat`, `nama_skema`, `nama_instansi`, `alamat_instansi`) VALUES
(936, 'Sulastri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Mitiran, RT002/RW007, Rembang, Ngadiluwih, Kediri, Jawa Timur'),
(937, 'Ida Riana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Depok RT: 011/RW: 004, Karanganyar, Gandusari, Trenggalek, Jawa Timur'),
(938, 'Trini Widiarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Pucung, RT001/RW002, Jambean, Kras, Kediri, Jawa Timur'),
(939, 'Reni Anjarwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Krajan RT: 018/RW: 004, Kerjo, Karangan, Trenggalek, Jawa Timur'),
(940, 'Ida Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Ngampel RT: 002/RW: 001, Bukur, Sumbergempol, Tulungagung, Jawa Timur'),
(941, 'Tri Wulan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Sanggar RT: 009/RW: 003, Besuki, panggul, Trenggalek, Jawa Timur'),
(942, 'Tantik Windarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Sine RT: 005/RW: 001, Kalibatur, Kalidawir, Tulungagung, Jawa Timur'),
(943, 'Henny Mas\'ulin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karang Tengah Rt/Rw. 05/07, Pikatan, Wonodadi, Kabupaten Blitar, Jawa Timur'),
(944, 'Suliyati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Rowobangun, Dsn Berjel RT: 001/RW: 008, Jantok, Purwoasri, Kediri, Jawa Timur'),
(945, 'Kartina', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jeruk Rt/Rw. 03/05, Mandesan, Selopuro, Kabupaten Blitar, Jawa Timur'),
(946, 'Ika Cahyani Putri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Kemuning, RT028/RW007, Tiru Kidul, Gurah, Kediri, Jawa Timur'),
(947, 'Ike Janatul Firulah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT: 008/RW: 002, Segawe, Pagerwojo, Tulungagung, Jawa Timur'),
(948, 'Fendra Praditya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Gulut Rt: 004/RW: 006, Wates, Campurdarat, Tulungagung, Jawa Timur'),
(949, 'Anwar Sahdat', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Mawar, RT001/RW001, Panjer, Plosoklaten, Kediri, Jawa Timur'),
(950, 'Mansur', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Grompol, RT003/RW002, Ngebrak, Gampengrejo, Kediri, Jawa Timur'),
(951, 'Gapur', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Joho, RT002/RW003, Joho, Semen, Kediri, Jawa Timur'),
(952, 'Rika Fitaloka', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun. Birowo Rt/Rw.02/04, Birowo, Binangun, Kabupaten Blitar, Jawa Timur'),
(953, 'Hayati Abd. Razak', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Bukit Jabal Rahma III no. 99 Rt/Rw. 02/08, Talise, Mantikulore, Kota Palu, Sulawesi Tengah'),
(954, 'Isna Andriani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Slorok Rt/Rw. 02/03, Slorok, Garum, Kabupaten Blitar, Jawa Timur'),
(955, 'Rita Elvi Nuryanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingkungan Kromasan Rt/Rw. 04/07, Beru, Wlingi, Kabupaten Blitar, Jawa Timur'),
(956, 'Awallina Sendi Kusnia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sidodadi Rt/Rw. 03/03, Sidodadi, Garum, Kabupaten Blitar, Jawa Timur'),
(957, 'Liliana Benny', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jajajr Rt/Rw. 04/01, Jajar, Talun, Kabupaten Blitar, Jawa Timur'),
(958, 'Musini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kedawung Rt/Rw. 01/02, Umbuldamar, Binangun, Kabupaten Blitar, Jawa Timur'),
(959, 'Indah Malisa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tememnggungan Rt/Rw. 03/03, Temenggungan, Udanuwu, Kabupaten Blitar, JawanTImur'),
(960, 'Mamik Oktapiya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Jatisari RT: 003/RW: 001, Kates, Kauman, Tulungagung, Jawa Timur'),
(961, 'Sutikno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gading RT: 001/RW: 005, Samar, Pagerwojo, Tulungagung, Jawa Timur'),
(962, 'Aji Ari Wibowo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karangrejo Rt/Rw. 02/03, Karangrejo, Garum, Kabupaten Blitar, Jawa Timur'),
(963, 'Siti Nuryanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Bringin RT: 001/RW: 007, Mulyosari, Pagerwojo, Tulungagung, Jawa Timur'),
(964, 'Agus Santoso', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumberjo Rt/Rw. 01/15, Karangrejo, Garum, Kabupaten Blitar Jawa TImur'),
(965, 'Andik Rianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Jeruk RT: 002/RW: 003, Wonorejo, Pagerwojo, Tulungagung, Jawa Timur'),
(966, 'Elysa Vorentina', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kebonsari RT: 004/RW: 001, Pagerwojo, Tulungagung, Jawa Timur'),
(967, 'Tri Sulistyaningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Lekso no.9 Rt/Rw. 02/04, Pakuden, Sukorejo, Kabupaten Blitar, Jawa Timur'),
(968, 'Ety Sri Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kedungniru Rt/Rw. 03/01, Kalitengah, Panggungrejo, Kabupaten Blitar, Jawa Timur'),
(969, 'Rahayu Siswi Purnama', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Bromo Dalam Rt/Rw. 02/01, Babadan, Wlimgi, Kanupaten Blitar, Jawa Timur'),
(970, 'Julia Puspa Ningrum', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Panceran, RT003/RW001, Ngancar, Ngancar, Kediri, Jawa Timur'),
(971, 'Yuda Lilis Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Selogiri RT: 003/RW: 004, Penjor, Pagerwojo, Tulungagung, Jawa Timur'),
(972, 'Siswaningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Sumberkepuh, RT022/RW005, Butuh, Kras, Kediri, Jawa Timur'),
(973, 'Kristian Ningrum', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Judeg, RT001/RW001, Babadan, Ngancar, Kediri, Jawa Timur'),
(974, 'Indah Sutanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Tenggerlor RT: 002/RW: 002, tenggerlor, Kunjang, Kediri, Jawa Timur'),
(975, 'Sunarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Satak Rt: 001/RW: 001, Satak, Puncu, Kediri, Jawa Timur'),
(976, 'Arbin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Semut RT: 001/RW: 002, Jambu, Kayen Kidul, Kediri, Jawa Timur'),
(977, 'Dewi Nur Kholiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kendal Doyong, RT001/RW002, Banjarejo, Ngandiluwih, Kediri, Jawa Timur'),
(978, 'Anis Hidayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Wonorejo, RT: 004/RT: 001, Semanding, Pagu, Kediri, Jawa Timur'),
(979, 'Rizqi Amandalia', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Dedean, RT014/RW005, Jemekan, Ringinrejo, Kediri, Jawa Timur'),
(980, 'Siti Konik Atul Muflikah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kandangan RT: 002/RW: 001, Pagu, Kediri, Jawa Timur'),
(981, 'Siti Zulaikah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Oro-Oro Ombo, RT001/RW004, Pagung, Semen, Kediri, Jawa Timur'),
(982, 'Siti Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Dawung, RT001/RW003, Bedug, Ngadiluwih, Kediri, Jawa Timur'),
(983, 'Sri Handayani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingkungan Kresek, RT006/RW002, Tempurejo, Pesantren, Kediri, Jawa Timur'),
(984, 'Yuliana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Bunga, RT016/RW003, Ngampel, Mojoroto, Kota Kediri, Jawa Timur'),
(985, 'Binti Shoimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingkungan Centong, RT003/RW007, Bawang, Pesantren, Kota Kediri, Jawa Timur'),
(986, 'Ari Junaidi Anwar', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Cangak, RT003/RW006, Krandang, Kras, Kediri, Jawa Timur'),
(987, 'Agus Prasetyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Jeruk Kidul RT: 002/RW: 007, Mabung, Baron, Nganjuk, Jawa Timur'),
(988, 'Anik Sri Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Balongrejo RT: 029/RW: 010, Balonggebang, Gondang, Nganjuk, Jawa Timur'),
(989, 'Anita Parwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jatirejo RT: 002/RW: 007, Senggowar, Gondang, Nganjuk, Jawa Timur'),
(990, 'Aries Setiawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Jegong Ds Wilangan, RT004/RW002, Wilangan, Wilangan, Nganjuk, Jawa Timur'),
(991, 'Ayu Hermeining Tias', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Perning RT: 002/RW: 001 Perning, Jatikalen, Nganjuk, Jawa Timur'),
(992, 'Darwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Yos Sudarso, RT002/RW002, Sidokare, Rejoso, Nganjuk, Jawa Timur'),
(993, 'Dewi Marsiana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kurungrejo, RT003/RW001, Kurungrejo, Prambon, Nganjuk, Jawa Timur'),
(994, 'Dwi Astutik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Nglinggo RT: 002/RW: 001, Nglinggo, Gondang, Nganjuk, Jawa Timur'),
(995, 'Dwi Yulianti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ds Jetis, RT: 003/RW: 005, Jetis, Pace, Nganjuk, Jawa Timur'),
(996, 'Edy Purwanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Depok RT: 005/ RW 003, Sumberjo, Gondang, Nganjuk, Jawa Timur'),
(997, 'Eko Wahyu Diono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Wilis Rt/Rw. 17/09, Tanjung, Kertosono, Kabupaten Nganjuk, Jawa Timur'),
(998, 'Endah Asri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Jati, RT003/RW002, Jatirejo, Rejoso, Nganjuk, Jawa Timur'),
(999, 'Fiky Marinda Dwi Sasminto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tiripan, RT002/RW002, Tiripan, Brebek, Nganjuk, Jawa Timur'),
(1000, 'Fitri Diana Nurhayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ngrandu Rt/Rw.03/01, Putren, Sukomoro, Kabupaten Nganjuk, Jawa Timur'),
(1001, 'Fitri Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Ngrombot RT: 006/RW: 004, Selorejo, Bagor, Nganjuk, Jawa Timur'),
(1002, 'Frandy Deka Aringga', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kedungdowo Rt/Rw. 02/04, Kedungdowo, Nganjuk, Kabupaten Nganjuk, Jawa Timur'),
(1003, 'Gunadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sumberejo, RT001/RW001, Banjaranyar, Tanjunganom, Nganjuk, Jawa Timur'),
(1004, 'Imaniyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kembang Rt/Rw. 03/02, Rombasan, Pragaan, Kabupaten Sumenep, Jawa Timur'),
(1005, 'Indah Minarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ds Sanggrahan RT: 002/RW: 003, Sanggrahan, Gondang, Nganjuk, Jawa Timur'),
(1006, 'Jaitun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk. Mruntus Rt: 022/RW: 007, Salamrojo, Berbek, Nganjuk, Jawa Timur'),
(1007, 'Jumiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ds Sukorejo RT: 002/RW: 009, Campur, Gondang, Nganjuk, Jawa Timur'),
(1008, 'Juni Fitriah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Diponegoro, RT001/RW003, Mungkung, Rejoso, Nganjuk, Jawa Timur'),
(1009, 'Kristin Marsela Nur Isya\'i', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gimbal, RT002/RW006, Ngaliman, Sawahan, Nganjuk, Jawa Timur'),
(1010, 'Kukuh Setyawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Dawuhan, RT004/RW002, Mangon, Wilangan, Nganjuk, Jawa Timur'),
(1011, 'Lasmono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dk Geneng Ds Bareng, RT002/RW002, Bareng, Sawahan, Nganjuk, Jawa Timur'),
(1012, 'Mami Rahmawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sonoageng, RT013/RW003, Sonoageng, Prambon, Nganjuk, Jawa Timur'),
(1013, 'Mariyono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingk Pengkol, RT001/RW004, Warujayeng, Tanjunganom, Nganjuk, Jawa Timur'),
(1014, 'Mochamad Purwanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Barengan Rt/Rw. 03/04, Kaloran, Ngronggot, Kabupaten Nganjuk, Jawa Timur'),
(1015, 'Mohamad Thoher', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jatirejo Rt/Rw. 06/03, Mojoduwur, Ngetos, Kabupaten Nganjuk, Jawa Timur'),
(1016, 'Mohammad Amirudin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kelutan Rt/Rw. 02/01, Kelutan, Ngronggot, Kabupaten Nganjuk, Jawa Timur'),
(1017, 'Muhamad Amin Andriansah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL. Mayjen Supeno, RT002/RW003, Sengkut, Berbek, Nganjuk, Jawa Timur'),
(1018, 'Mumpuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Anggrek no 25 Rt/Rw. 01/07, Banaran, Kertonoso, Kabupaten Nganjuk, Jawa Timur'),
(1019, 'Nofia Puspitasari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Ngepung Rt/Rw. 01/03, Ngepung, Patianrowo, Kabupaten Nganjuk, Jawa Timur'),
(1020, 'Purwati Wahyu Citra Rini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gemenggeng, RT003/RW001, Gemenggeng, Bagor, Nganjuk, Jawa Timur'),
(1021, 'Rochmad Pujianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Krajan RT: 001/RW: 002, Mlilir, Berbek, Nganjuk, Jawa Timur'),
(1022, 'Rosa. S. P. Agustina', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Dukuh, RT002/RW011, Sugihwaras, Prambon, Nganjuk, Jawa Timur'),
(1023, 'Rositah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sentanan Rt/Rw. 01/02, Ngrombot, Patianrowo, Kabupaten Nganjuk, Jawa Timur'),
(1024, 'Rukini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Brawijaya, RT001/RW006, Mungkung, Rejoso, Nganjuk, Jawa Timur'),
(1025, 'Siti Khoiriyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Grogol, RT003/RW001, Mojorembun, Rejoso, Nganjuk, Jawa Timur'),
(1026, 'Siti Marpuah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Rejoso, RT002/RW003, Rejoso, Rejoso, Nganjuk, Jawa Timur'),
(1027, 'Siti Rodiyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karang Lo Rt/Rw. 16/07, Patihan, Loceret, Kabupaten Nganjuk, Jawa Timur'),
(1028, 'Siti Zainab', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sugihwaras Rt/Rw. 21/06, Babadan, Patianrowo, Kabupaten Nganjuk, Jawa Timur'),
(1029, 'Sri Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Sumberkepuh Rt/Rw. 01/01, Sumberkepuh, Lengkong, Kabupaten Nganjuk, Jawa Timur'),
(1030, 'Suhermanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun. Jabon Rt/Rw. 01/05, Drenges, Kertosono, Kabupaten Nganjuk, Jawa Timur'),
(1031, 'Sumiyem', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dorogeneng Rt/Rw. 02/01, Pehserut, Sukomoro, Kabupaten Nganjuk, Jawa Timur'),
(1032, 'Supardi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Urip Sumoharjo Rt/Rw. 04/01, Kudu, Kertonoso, Kabupaten Nganjuk, Jawa Timur'),
(1033, 'Suwarni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl RA Kartini, RT001/006, Mlorah, Rejoso, Nganjuk, Jawa Timur'),
(1034, 'Suwarno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pengkol Rt/Rw. 11/05, Ngrami, Sukomoro, Kabupaten Nganjuk, Jawa Timur'),
(1035, 'Taufiqurrohman', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Kedung Tunggak RT: 006/RW: 009, Jatikalen, Nganjuk, Jawa Timur'),
(1036, 'Titik Kusrini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Banggle Rt/Rw.02/01, Banggle, Lengkong, Kabupaten Nganjuk, Jawa Timur'),
(1037, 'Titin Nurhidayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kedunglawe Rt/Rw.16/05, Tirtobinangun, Patianrowo, Kabupaten Nganjuk, Jawa Timur'),
(1038, 'Tri Wulandari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Karang Semi RT: 013/RW: 007, Karangsemi, Gondang, Nganjuk, Jawa Timur'),
(1039, 'Verasasti Peni Dwi Artaty', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Tanggungan, RT002/RW001, Balongrejo, Berbek, Nganjuk, Jawa Timur'),
(1040, 'Wahyuning Prihatin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tunggul, RT011/RW004, Klagen, Rejoso, Nganjuk, Jawa Timur'),
(1041, 'Yeni Rianik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ngudikan, RT001/RW001, Ngudikan, Wilangan, Nganjuk, Jawa Timur'),
(1042, 'Yetik Purnamasari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tawangrejo Rt/Rw. 04/05, Kepel, Ngetos, Kabupaten Nganjuk, Jawa Timur'),
(1043, 'Yunanik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sambiroto RT: 001/RW: 001, Sambiroto, Baron, Nganjuk, Jawa Timur'),
(1044, 'Darti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karangan Rt/Rw.01/01, Plosojenar, Kauman, Kabupaten Ponorogo, Jawa Timur'),
(1045, 'Sri Nur Fiah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kanung RT: 002/ RW: 002, kanung, Sawahan, Madiun, Jawa Timur'),
(1046, 'Susi Fitria Nurmawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedondong Rt: 029/RW: 010, Kedondong, Kebonsari, Madiun, Jawa Timur'),
(1047, 'Ambarwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Sobrah RT : 012/RW: 003. Sobrah, Wungu, Madiun, Jawa Timur'),
(1048, 'Tumini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tladan RT: 016/RW: 002, Tladan, Kawedanan, Magetan, Jawa Timur'),
(1049, 'Darsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Prayungan, RT001/RW001, Cancakan, Kasreman, Ngawi, Jawa Timur'),
(1050, 'Sriyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Semen, RT003/RW005, Semen, Paron, Ngawi, Jawa Timur'),
(1051, 'Suparni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jenak, RT010/RW002, Banyubiru, Widodaren, Ngawi, Jawa Timur'),
(1052, 'Patemi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan, RT017/RW001, Kedungputri, Paron, Ngawi, Jawa Timur'),
(1053, 'Westik Jamain', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Krajan Rt/Rw.02/03, Banaran, Pulung, Kabupaten Ponorogo, Jawa Timur'),
(1054, 'Winarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Berjing, RT002/RW005, Cepoko, Ngrambe, Ngawi, Jawa Timur'),
(1055, 'Muji Tri Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pungon II, RT003/RW002, Ringinanom, Karangjati, Ngawi, Jawa Timur'),
(1056, 'Luluk Idawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krebet RT: 005/RW: 001, Krebet, Pilangkenceng, Madiun, Jawa Timur'),
(1057, 'Imam Muhtar Rojabi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Gadel Rt/Rw. 02/01, Sidorejo, Sukorejo, Kaabupaten Ponorogo, Jawa Timur'),
(1058, 'Wahyu Kristiyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Balong RT: 031/RW: 004, Sidorejo, Wungu, Madiun, Jawa Timur'),
(1059, 'Maryoto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. A. Yani Rt/Rw.02/03, Somoroto, Kauman, Kabupaten Ponorogo, Jawa Timur'),
(1060, 'Didit Agung Purnama', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Bedagan Rt/Rw.02/02, Pulung, Pulung, Kabupaten Ponorogo, Jawa Timur'),
(1061, 'Dwi Prasetyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Krajan Rt/Rw.02/01, Plunturan, Pulung, Kabupaten Ponorogo, JawaTimur'),
(1062, 'Munawir Hadi Prayitno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Bakalan Rt/Rw.03/01, Gundik, Slahung, Kabupaten Ponorogo, Jawa Timur'),
(1063, 'Ninik Widyastuti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Nglodo Rt/Rw.03/01, Bancar, Bungkal, Kabupaten Ponorogo, Jawa Timur'),
(1064, 'Tukinem', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Banyuasin Barat, RT001/RW003, Karang Anyar, Karang Anyar, Ngawi, Jawa Timur'),
(1065, 'Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Banyuasin Barat, RT004/RW003, Karang Anyar, Karang Anyar, Ngawi, Jawa Timur'),
(1066, 'Sulis', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krebet RT: 002/RW: 001, Krebet, Pilangkenceng, Madiun, Jawa Timur'),
(1067, 'Mohayin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Guyangan Rt/Rw. 02/01, TugUREJO, Slahung, Kabupaten Ponorogo, Jawa Timur'),
(1068, 'Solikah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun 02 RT: 002/RW: 001, Bibrik, Jiwan, Madiun, Jawa Timur'),
(1069, 'Sukarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Purworejo, RT: 038/RW: 005, Tulung, Saradan, Madiun, Jawa Timur'),
(1070, 'T. Indro Susanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Blaran RT: 014/RW: 004, Blaran, Barat, Magetan, Jawa Timur'),
(1071, 'Widiyasworo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Selo Indah RT: 019/RW: 006, Manjung, Barat, Magetan, Jawa Timur'),
(1072, 'Subari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingk. Sale RT: 033/RW: 006, Plaosan, Magetan, Jawa Timur'),
(1073, 'Umi Kalsum', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Desa Bantengan RT: 025/Rw: 011, Bantengan, Wungu, Madiun, Jawa Timur'),
(1074, 'Erna', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dukuh Toro Rt/Rw. 02/01, Pudak Kulon, Pudak, Kabupaten Ponorogo, Jawa Timur'),
(1075, 'Dyah Tri Wahyuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Angudu Boga RT: 017/Rw: 007, Pilangkenceng, Madiun, Jawa Timur'),
(1076, 'Mart Candra Kartikasari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bulu RT: 009/RW: 002, Bulu, Pilangkenceng, Madiun, Jawa Timur'),
(1077, 'Nurwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingk. Singolangu RT: 017/RW: 003, Sarangan, Plaosan, Magetan, Jawa Timur'),
(1078, 'Sarmiatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karanganyar RT: 011/RW: 004, Nglanduk, Wungu, Madiun, jawa Timur'),
(1079, 'Aan Ruslan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Purworejo Rt: 004/RW: 002, Purworejo, Pilangkenceng, Madiun, Jawa Timur'),
(1080, 'Sri Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. MJ Sungkono GG. Bulu I No 15 RT: 059/RW: 014, Nembanagan lor, Manguharjo, Madiun, Jawa Timur'),
(1081, 'Nunik Jarwati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tulung Rt: 002/RW: 004, Tulung, Kawedanan, Magetan, Jawa Timur'),
(1082, 'Sriani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Recobanteng, RT003/RW002, Wonorejo, Kedunggalar, Ngawi, Jawa Timur'),
(1083, 'Suntoro', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gunung Kendil'),
(1084, 'Ach Qusyairi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT : 005/RW: 001, Jebung Kidul, Tlogosari, Bondowoso, Jawa Timur'),
(1085, 'Ach. Nawawi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kp. Karang Sari Rt/Rw.03/02, Kilensari, Panarukan, Kabupaten Situbondo, Jawa TImur'),
(1086, 'Agung Febrianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tegal, RT003/RW008, Keslilir, Wuluhan, Jember, Jawa Timur'),
(1087, 'Agustin Windy Rahayu', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sokasari, RT001/RW001, Jatisari, Jenggawah, Jember, Jawa Tengah'),
(1088, 'Ahmad Irianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Haji Mohdar Lingk Krajan, RT003/RW003, Antiroho, Sumbersari, Jember, Jawa Timur'),
(1089, 'Ahmad Taufiqi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan II, RT004/RW004, Patemon, Tanggul, Jember, Jawa Timur'),
(1090, 'Aimatus Syuro\'yah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pekauman RT: 007/RW: 002, Pekauman, Grujugan, Bondowoso, Jawa Timur'),
(1091, 'Amnayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sukowiryo RT: 008/RW: 002, Sukowiryo, Bondowoso, Jawa Timur'),
(1092, 'Any Rufaidah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT.03/RW.02, Gladag, Rogojampi, Banyuwangi, Jawa Timur'),
(1093, 'Asifatul Mussofah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL. Teratai VIII/168 RT:002/RW:006 Kaliwates, Kabupaten Jember, Jawa Timur'),
(1094, 'Asrul Sani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Pasar Alas, RT002/RW021, Garahan, Silo, Jember, Jawa Timur'),
(1095, 'Bahrullah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Plalangan, RT002/RW005, Plalangan, Kalisat, Jember, Jawa Timur'),
(1096, 'Bissamawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tempuran RT:004/RW:003 Cakru, Kencong, Kabupaten Jember, Jawa Timur'),
(1097, 'Dedi Prayitno', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT.03/RW.04, Kertosarai, Pakusari, Kabupaten Jember, Jawa Timur'),
(1098, 'Desi Sariyanto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Krajan III RT: 002/RW: 001, Sumber Wringin, Bondowoso, Jawa Timur'),
(1099, 'Dina Elya Rizka', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Grujugan Kidul RT: 019/RW: 003, Grujugan Kidul, Grujugan Kidul, Grujugan, Bondowoso, Jawa Timur'),
(1100, 'Dodik Ashari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sukmoilang, RT002/RW024, Pace, Silo, Jember, Jawa Timur'),
(1101, 'Dony Febrian BW', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan RT:002/RW:019 Mojomulyo, Puger, Kabupaten Jember, Jawa Timur'),
(1102, 'Dwi Putri Santi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. KH. Agus Salim 23 Dusun Krajan B, RT002/RW001, Balangsari, Balangsari, Jember, Jawa Timur'),
(1103, 'Eko Iswianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kedungsari RT.01/RW02, Gintangan, Banyuwangi'),
(1104, 'Eliana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Tutul, RT002/RW023, Tegalsari, Ambulu, Jember, Jawa Timur'),
(1105, 'Erfan Abd. Hadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Rowotengu, RT004/RW005, Sidomulyo, Semboro, Jember, Jawa Timur'),
(1106, 'Eti Ratna Sari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Pandak RT: 002/RW: 001, Pandak, Klabang, Bondowoso, Jawa Timur'),
(1107, 'Evi Dian Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajani RT:002/RW:006 Ngampelrejo, Jombang, Kabupaten Jember, Jawa Timur'),
(1108, 'Evitiningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kedung Sumur, RT002/RW005, Bagon, Puger, Jember, Jawa Timur'),
(1109, 'Fauzan Khoiri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Darungan, RT001/RW011, Lembengan, Ledokombo, Jember, Jawa Timur'),
(1110, 'Fauzi Aji Prasasta', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Soklak Rt: 006/RW: 002, Wonokusumo, Tapen, Bondowoso, Jawa Timur'),
(1111, 'Fian Iryanti Suprapto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT.02/RW.02, Cumedak, Sumberjambe, Kbupaten Jember Jawa Timur'),
(1112, 'Fifin Comariah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL. Raden Patah II/137 RT:003/RW:025 Kepatihan, Kaliwates Kabupaten Jember, Jawa Timur'),
(1113, 'Firman Aufar', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Kertabumi 3/1 Lingk. Telengsari, Jemberkidul, Kaliwates, Jember, Jawa Timur'),
(1114, 'Gunawan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karang Anyar, RT003/RW017, Sumber Salak, Ledokombo, Jember, Jawa Timur'),
(1115, 'H. Abdul Halim', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Klampokan RT: 005/RW: 002, Klampokan, Klabang, Bondowoso, Jawa Timur'),
(1116, 'Hadidik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingk. Porong RT.01/RW.01, Boyolangu,, Giri, Banyuwangi, Jawa Timur'),
(1117, 'Haerul Hanafi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan I RT : 005/RW: 002, Mangli Wetan, Tapen, Bondowoso, Jawa Timur'),
(1118, 'Halik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kebun RT/RW. 04/08, Suger Kidul, Jelbuk, Kabupaten Jember Jawa Timur'),
(1119, 'Harmianto', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT: 012/RW: 004, Tangsil Wetan, Wonosari, Bondowoso, Jawa Timur'),
(1120, 'Henik Mariatul Hemzeh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kidul Kali RT: 008/RW: 003, Sumber Anyar, Jambe sari darus sholah, Bondowoso, Jawa Timur'),
(1121, 'Ida Lutfiana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Plalangan RT:004/RW:003 Sukamakmur, Ajung, Kabupaten Jember, Jawa Timur'),
(1122, 'Ida Mustofa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT.02/RW.01, Sumberarum, Songgon, Banyuwangi, Jawa Timur'),
(1123, 'Imam Mahmudi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Curah Wungkal, RT002/RW013, Pace, Silo, Jember, Jawa Timur'),
(1124, 'Imam Syafii', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kejawan RT: 003/RW: 001, Kejawan, Grujugan, Bondowoso, Jawa Timur'),
(1125, 'Imatul Hasanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Parebalan, RT005/002, Karangharjo, Silo, Jember, Jawa Timur'),
(1126, 'Indrayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kp.Samaudin Rt/Rw.03/01, Jangkar, Jangkar, Kabupaten Situbondo, Jawa Timur'),
(1127, 'Irma Wulandari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kebun Langsep, RT001/RW004, Silo, Silo, Jember, Jawa Timur'),
(1128, 'Iswari Chandra Lestari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Ikan Cumi Cumi No.56, RT.03/RW.01, Sobo, Banyuwangi, Kabupaten Banyuwangi, Jawa Timur'),
(1129, 'Ita Kusmiati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL. Letjen Sutoyo Lingk. Kramat RT:002/RW:008 Kranjingan, Sumbersari Kabupaten Jember, Jawa Timur'),
(1130, 'Ita Purnamasari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Andongsari, RT002/RW012, Tugusari, Bangsalsari, Jember, Jawa Timur'),
(1131, 'Juminah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Lingkaran. Krajan RT.03/RW.03, Kertosari, Banyuwangi, Banyuwangi, Jawa Timur'),
(1132, 'Kustiana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumber Bendo RT: 010/RW: 003, Pakuniran, Maesan, Bondowoso, Jawa Timur'),
(1133, 'Lailatul Ulya', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan, RT003/RW008, Karang Duren, Balung, Jember, Jawa Timur'),
(1134, 'Lusi Setyowati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT/RW. 08/04, Klampokarum, Tekung, Kabupaten Lumajang, Jawa Timur'),
(1135, 'Lustriyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kp.Karang Tengah Rt/Rw.01/02, Jetis, Besuki, Kabupaten Situbondo, Jawa Timur'),
(1136, 'Mar\'atus Sholihah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Plalangan, RT007/RW001, Sukamakmur, Ajung, Jember, Jawa Timur'),
(1137, 'Marsa Marsiyeh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL.Menco Dusun Krajan RT:001/RW:033 Wringin Agung, Jombang, Kabupaten Jember, Jawa Timur'),
(1138, 'Marwa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tegal mijin RT: 012/RW: 003, Tegal Mijin, Grujugan, Bondowoso, Jawa Timur'),
(1139, 'Mega Pratiwi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT. 002/RW. 006 Pakusari, Pakusari, Jember'),
(1140, 'Misbahul Munir', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Moch. Seruji, Dusun Gambirono, Kulon RT.002/RW.008, Gambirono, Bangsalsari, Kabupaten Jember, Jawa Timur'),
(1141, 'Misnawi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT:001/RW:010 Gugut, Rambipuji, Kabupaten Jember Jawa Timur'),
(1142, 'Misyono', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Bercak RT: 018/RW: -, Bercak, Cermee, Bondowoso, Jawa Timur'),
(1143, 'Mochammad Rizal Yuliasmara', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL. Urip Sumoharjo Krajan RT:002/RW:011 Tanggul Wetan, Tanggul, Kabupaten Jember, Jawa Timur'),
(1144, 'Moh Rio Irwandani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Tenggarang RT: 023/RW: 008, Tenggarang, Tenggarang, Bondowoso, Jawa Timur'),
(1145, 'Muammar', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Mujan RT:002/RW:013 Klungkung, Sukorambi, Kabupaten Jember, Jawa Timur'),
(1146, 'Muhammad Daniel', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jumbatan, RT008/RW012, Darungan, Tanggul, Jember, Jawa Timur'),
(1147, 'Muhammad Ilham Nasrullah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kampung Haji Rt: 003/RW: 001, Bataan, Tenggarang, Bondowoso, Jawa Timur'),
(1148, 'Muhammadul Fadli', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sudung Barat RT.004/RW.005 Sukowiryo, Jelbuk, Jember'),
(1149, 'Musriatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Gondosari RT:001/RW:008 Tamansari, Wuluhan, Kabupaten Jember, Jawa Timur'),
(1150, 'Musrifa Ning Tiyas', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT:003/RW:009 Tanggul Wetan, Tanggul, Kabupaten Jember, Jawa Timur'),
(1151, 'Muther', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sumber Gadung RT:001/RW:018 Slateng, Ledokombo, Kabupaten Jember, Jawa Timur'),
(1152, 'Nur Azizah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ragang Barat, RT003/RW004, Sukowono, Sukowono, Jember, Jawa Timur'),
(1153, 'Nur Hayati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Semboro Kidul RT.002/RW.008 Semboro, Semboro, Jember'),
(1154, 'Nur Sima', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Ikan Paus, RT003/RW004, Karangrejo, Banywangi, Banyuwangi, Jawa Timur'),
(1155, 'Nur Wati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'JL. PB Sudirman Dusun Krajan A RT:002/RW:020 Gambirono Bangsalsari, Kabupaten Jember, Jawa Timur'),
(1156, 'Qoriatun Jannah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Serma Moch Ahdar Lingk Krajan, RT002/RW003, Antirogo, Sumbersari, Jember, Jawa Timur'),
(1157, 'Raharno Hasan', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kampung.Widuri RT/RW. 02/07, Buduan, Suboh, Kabupaten Situbondo, Jawa Timur'),
(1158, 'Ririn Fatmawati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan Rt/Rw.01/01, Kaliwungu, Tempeh, Kabupaten Lumajang, Jawa Timur'),
(1159, 'Rizki Yogie Pratama', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sido Rukun Rt/Rw. 07/03, Jeruk, Gucialit, Kabupaten Lumajang, Jawa Timur'),
(1160, 'Rofiq Qomarul Huda', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Curahjati RT.04/RW.02, Grajagan, Purwoharjo, Banyuwangi, Jawa Timur'),
(1161, 'Saiful Bahri', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan Kidul, RT006/RW002, Curahlele, Balung, Jember, Jawa Timur'),
(1162, 'Saiful Bahrudin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karang Anyar, RT002/RW002, Balung Lor, Balung, Jember, Jawa Timur'),
(1163, 'Saiful Ishaq', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kertonegoro Tengah, RT006/010, Kertonegoro, Jenggawah, Jember, Jawa Timur'),
(1164, 'Sakdatun Nihayah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kebonan Rt/Rw.09/09, Yosowilangun Kidul, Yosowilangun, Kabupaten Lumajang, Jawa Timur'),
(1165, 'Septiana Antika', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kramat Rt: 002/RW: 001, Jetis, Curahdami, Bondowoso, Jawa Timur'),
(1166, 'Sideh', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Ragang, RT039/RW009, Plerean, Sumberjambe, Jember, Jawa Timur'),
(1167, 'Sigit Winulyo', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Bregoh RT:002/RW:033 Sumberrejo, Ambulu, Kabupaten Jember, Jawa Timur'),
(1168, 'Siti Aminah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Cangkring Baru, RT003/RW015, Cangkring, Jenggawah, Jember, Jawa Timur'),
(1169, 'Siti Aminah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. KH Abdul Aziz RT.002/RW.009, Sumberkejayan, Mayang, Kabupaten Jember Jawa Timur'),
(1170, 'Siti Hawa', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gayam Sude RT; 003/RW: 009, Gayam, Botolinggo, Bondowoso, Jawa Timur'),
(1171, 'Siti Istifadah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Wolter Monginsidi RT.02/RW.03, Kranjingan, Sumbersari, Jember, Jawa Timur'),
(1172, 'Siti Khusnul Khotimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jurang Dawir Rt/Rw. 22/04, Mojosari, Sumbersoko, Kabupaten Lumajang, Jawa Timur'),
(1173, 'Siti Nurhasanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumbersari RT.01/RW.12, Mayangan, Gungmukmas, Kabupaten Jember, Jawa Timur'),
(1174, 'Siti Nurkholifah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Wringinsari RT:001/RW:012 Padomasan, Jombang, Kabupaten Jember, Jawa Timur'),
(1175, 'Siti Romla', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Langsepan, RT001/RW008, Rowo Indah, Ajum, Jember, Jawa Timur'),
(1176, 'Sodikin', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kraton, RT001/001, Wonosaro, Tempurejo, Jember, Jawa Timur'),
(1177, 'Sofiatul Jannah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Klayu, RT001/RW012, Mayang, Mayang, Jember, Jawa Timur'),
(1178, 'Sri Hartatik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Karang Sari, RT001/RW004, Gumuksari, Kalisat, Jember, Jawa Timur'),
(1179, 'Sri Yati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT/RW. 01/01, Kesilir, Wuluhan Kabupaten Jember, Jawa Timur'),
(1180, 'Sukron', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Jumbatan RT.08/RW.12, Darungan, Tanggul, Kabupaten Jember, Jawa Timur'),
(1181, 'Sulis Setioningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sanggar RT.03/RW01, Subo, Pakusari, Kabupaten Jember Jawa Timur'),
(1182, 'Supartini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Watu Kebo, RT002/011, Andongsari, Ambulu, Jember, Jawa Timur'),
(1183, 'Supriatun', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jambewungu RT: 009/RW: 006, Jambewungu, Wringin, Bondowoso, Jawa Timur'),
(1184, 'Susyani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Baledan RT: 010/RW: -, Suling Wetan, Cermee, Bondowoso, Jawa Timur'),
(1185, 'Sutila Afivatur Rohmah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Utara II, RT003/025, Kalisat, Kalisat, Jember, Jawa Timur'),
(1186, 'Suwarti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan RT:007/RW:002 Kesilir, Wuluhan, Kabupaten Jember, Jawa Timur'),
(1187, 'Swardi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Lumbung RT.002/RW.001 Rowosari, Sumberjambe, jember'),
(1188, 'Syarifudin Mukit', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Babatan RT.03/RW.14, Sidomekar, Semboro, Kabupaten Jember Jaw Timur'),
(1189, 'Titik Halimatus Sa Diyah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl Agus Salim Gg. Kali Serang Lingk Krajan Barat, RT003/RW003, Tegal Besar, Kaliwates, Jember, Jawa Timur'),
(1190, 'Tohimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Kembang RT/RW.01/07 ,Sentul, Sumbersuko, Kabupaten Lumajang, Jawa Timur'),
(1191, 'Uswatun Hasanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Sumber Pandan, Rt: 010/RW: 004, Sumber Pandan, Grujugan, Bondowoso, Jawa Timur'),
(1192, 'Wati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Rowo I, RT016/RW006, Gambiran, Kalisat, Jember, Jawa Timur'),
(1193, 'Winda Sari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sumber Bulu II RT:003/RW:013 Sumberbulus, Ledokombo, Kabupaten Jember, Jawa Timur'),
(1194, 'Wiwin Sri Hartini', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan I RT: 003/RW: 001, Gambangan, maesan, Bondowoso, Jawa Timur'),
(1195, 'Yeni Indah Sari', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Candika RT.01/RW.04, Sempusari, Kaliwates, Jember, Jawa Timur'),
(1196, 'Yeti Andriani', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan Telp Rt/Rw. 01/03, Sarikemuning, Senduro, Kabupaten Lumajang, Jawa Timur'),
(1197, 'Yon Hariyadi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kampung. Krajan RT/RW. 03/01, Cemara, Suboh, Kabupaten Situbondo, Jawa Timur'),
(1198, 'Yuliana', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Pabrik Es Laban Rt/Rw. 02/04, Labruk Lor, Lumajang, Kabupaten Lumajang, Jawa Timur'),
(1199, 'Yuyun Mufaida', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sumberjo RT:002/RW:015 Umbulsari, Kabupaten Jember, Jawa Timur'),
(1200, 'Yuyun Winarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan, RT006/RW002, Kepanjen, Gumuk Mas, Jember, Jawa Timur'),
(1201, 'Yuyus', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Umbaran RT/RW. 05/03, Cemara, Suboh, Kabupaten Situbondo, Jawa Timur'),
(1202, 'Zalifah Nyly Zalsabila', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan I Rt: 003/Rw: 001, Gambangan, Maesan, Bondowoso, Jawa Timur'),
(1203, 'Sania', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Rangkang Timur, RT006/RW002, Rangkang, Kraksaan, Probolinggo, Jawa Timur'),
(1204, 'Purlina Wati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Gondang Timur RT/RW. 06/07, Randu Agung, Singosari, Kabupaten Malang, Jawa Timur'),
(1205, 'Siti Fatmiatun Soleha', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan, RT009/RW003, Kalikajar Wetan, Paiton, Probolinggi, Jawa Timur'),
(1206, 'Yuniati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sumber, RT003/RW001, Sumber, Sumber, Probolinggo, Jawa Timur'),
(1207, 'Yesi Kristiningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'jL. Hamid Rusdi Timur VI/19 RT/RW.01/016, Bunulrejo, Blimbing, Kota Malang, Jawa Timur'),
(1208, 'Sri Anik Mumpuni', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Raya Jeru RT/RW. 01/03, Jeru, Tumpang, Kabupaten Malang, Jawa Timur'),
(1209, 'Eni Istanti', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Saung II, RT.06/RW.02, Tumpukrenteng, Turen, Malang, Jawa Timur'),
(1210, 'Anna Agustina Wati', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Jl. Kapten Piere Tendean, RT/RW. 01/010, Turen, Turen, Kabupaten Malang, Jawa Timur'),
(1211, 'Winarsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dsn Candi RT: 001/RW: 005, Tunggulwulung, Pandaan, Pasuruan, Jawa Timur'),
(1212, 'Siti Fatimah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Sidomuro Selatan RT/RW. 023/06, Sudimoro, Bululawang, Kabupaten Malang, Jawa Timur'),
(1213, 'Nunuk Kusuma Ningsih', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Link Macanan RT: 002/RW: 008, Petungasri, Pandaan Pasuruan, Jawa Timur'),
(1214, 'Abd Nur Muhammad', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Kedung Banteng RT/RW. 030/07, Kedung Banteng, Sumber Manjing Wetan, Kabupaten Malang, Jawa Timur'),
(1215, 'Sukardi', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Rambaan RT.015/RW.004 Randugading, Tajinan, Kabupaten Malang'),
(1216, 'Riyanah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun. Druju RT/RW. 034/09, Tlogorejo, Pagak, Kabupaten Malang, Jawa Timur'),
(1217, 'Anik', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Dusun Krajan, RT: 003/RW: 004, Cowek, Purwodadi, Pasuruan, Jawa Timur'),
(1218, 'Mahbubillah', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', 'Wiraswasta', 'Krajan RT: 001/RW: 001, Kalisat, Rembang, Pasuruan, Jawa Timur'),
(1219, 'Bakri', 'Penilaian Kesehatan Koperasi', 'PT Bank Rakyat Indonesia Tbk', 'Gedung BRI Jl. Jenderal Sudirman Kav.44-46. Jakarta 10210'),
(1220, 'Agustini ', 'Penilaian Kesehatan Koperasi', 'STIE GICI Bussines School', 'Jl. Raya Citayam, Cipayung, Depok'),
(1221, 'Elan Nurhadi Purwanto', 'Penilaian Kesehatan Koperasi', 'Universitas Pertamina', 'Jl. Teuku Nyak Arief, RT.7/RW.8, Simprug, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12220'),
(1222, 'A. Awaluddin', 'Penilaian Kesehatan Koperasi', 'Dinas Koperasi UKM Prov Sulsel', 'Jl. Persatuan Raya No. 14 RT.001/RW.002 Balangnipa, Sinjai Utara, Sinjai'),
(1223, 'Abd Kahar Kamal', 'Penilaian Kesehatan Koperasi', 'Puskopal Armatim Makasar', 'BTN Minasa UPA Blok B6 No. 9 RT.003/RW.004 Minasa Upa, Rappocini'),
(1224, 'Agus Salim', 'Penilaian Kesehatan Koperasi', 'Dinas Koperasi UKM Prov Sulsel', 'BTN Pesona Mustika Blok B No.3 RT.005/RW.003 Tamarunang, Somba Opu, Gowa'),
(1225, 'Ahmad. S', 'Penilaian Kesehatan Koperasi', 'KSP AL-Azhar', 'Perumnas Blok C-46 RT.002/RW.002, Benteng Sawitto, Paletaeng, Pinrang'),
(1226, 'A Risnawati', 'Penilaian Kesehatan Koperasi', 'Dinas Koperasi UKM Prov Sulsel', 'Jl. Baji Pangasseng No.27 RT.004/RW.004, Sambung Jawa, Mamajang, Makassar'),
(1227, 'Bahrul Ulum Ilham', 'Penilaian Kesehatan Koperasi', 'Dekopinwil', 'Jl. Monginsidi Baru Blok AB.4 No.7 RT.002/RW.005 Ballaparang, Rappocini'),
(1228, 'Muh. Hasyim', 'Penilaian Kesehatan Koperasi', 'Dinas Koperasi UKM Prov Sulsel', 'Bumi Bosowa Permai BLK B.0/20 Minasa Upa RT.004/RW.026 Gunung Sari, Rappocini, Makassar'),
(1229, 'Muhammad Idris Mone', 'Penilaian Kesehatan Koperasi', 'KPRI Sehat', 'BTN Tamarunang Indah Blok G2/11 RT.014/RW.005 Tamarunang, Somba Opu, Gowa, Sulawesi Selatan'),
(1230, 'Nur Yanti Hayong', 'Penilaian Kesehatan Koperasi', 'Puskopal Armatim Makasar', 'Jl. Andalas Komp TNI-AL Dewa Ruci Blok B 2 No. 28, RT002/RW008, Melayu, Wajo, Makassar'),
(1231, 'Salman Sahmad', 'Penilaian Kesehatan Koperasi', 'Dekopinwil', 'BTN Makkio Baji Blok E.6/10 RT.006/RW.005, Bangkala, Manggala, Makassar'),
(1232, 'Zulfiana Buchaeri', 'Penilaian Kesehatan Koperasi', 'KPN Nur Afiah RSUP DR. Wahidin Sudirohusodo', 'Permata Sudiang Raya Blok I. 11/10 RT.012/RW.011 Laikang, Biringkanaya');

-- --------------------------------------------------------

--
-- Table structure for table `tm_tuk`
--

CREATE TABLE `tm_tuk` (
  `kode` varchar(255) DEFAULT NULL,
  `nama_tuk` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tm_tuk`
--

INSERT INTO `tm_tuk` (`kode`, `nama_tuk`, `alamat`) VALUES
('TUK-S.001', 'LSP Microfinance Indonesia', 'Gedung BRI II Lt. 29, Jl. Jend Sudirman Kav 44-46 Jakarta Pusat'),
('TUK-S.002', 'BPR Sukawati Pancakanti', 'Jl. Letda I Dewa Rai Hadnyana, Gianyar'),
('TUK-S.003', 'BRI Yogyakarta', 'Jl. Laksda Adisucipto No. 59 Godokusuman Yogyakarta'),
('TUK-S.004', 'BRI Solo', 'Jl. Slamet Riyadi No. 236, Surakarta, Jawa Tengah'),
('TUK-S.005', 'BRI Purbalingga', 'Jend. Sudirman No. 214 A, Purbalingga Purbalingga, Jawa Tengah'),
('TUK-S.006', 'BRI Semarang', 'Jl. Dokter Cipto No. 76A, Sarirejo, Kec. Semarang, Jawa Tengah'),
('TUK-S.007', 'BRI Purwodadi', 'Jl. KS Tubun No. 1, Brambangan, Purwodadi'),
('TUK-S.008', 'BRI Blora', 'Jl. Pemuda No.2, Mlangsen, Kec. Blora, Kabupaten Blora, Jawa Tengah'),
('TUK-S.009', 'BRI Tegal', 'Jl. Pancasila No. 42 Kota Tegal'),
('TUK-S.010', 'BRI Pekalongan', 'Jl. W.R. Supratman No. 6, Pekalongan'),
('TUK-S.011', 'BRI Kudus', 'Jl. Jend. Sudirman No.66, Nganguk, Kramat, Kec. Kota Kudus, Kabupaten Kudus, Jawa Tengah 59311'),
('TUK-S.012', 'BRI Pati', 'Jl. Jenderal Sudirman No.154, Pati Kidul, Kec. Pati, Kabupaten Pati, Jawa Tengah 59114'),
('TUK-S.013', 'BRI Sendik Surabaya', 'Jl. Siwalankerto Utara II No.39, Siwalankerto, Kec. Wonocolo, Kota SBY, Jawa Timur 60236'),
('TUK-S.014', 'BRI Bangkalan', 'Jl. Letnan Singosastro No.1, RW.007, Rw. 07, Keraton, Kec. Bangkalan, Madura, Jawa Timur 69119'),
('TUK-S.015', 'BRI Mojokerto', 'Mojopahit No. 378, Mojokerto, Jawa Timur - 61361'),
('TUK-S.016', 'BRI Lamongan', 'Basuki Rachmat No. 86, Lamongan, Jawa Timur - 62214'),
('TUK-S.017', 'BRI Bojonegoro', 'D.I. Panjaitan No. 6, Bojonegoro, Jawa Timur - 62111'),
('TUK-S.018', 'BRI Kediri', 'Jl. KDP Slamet No.37A, Bandar Lor, Kec. Mojoroto, Kediri, Jawa Timur 64100'),
('TUK-S.019', 'BRI Nganjuk', 'Jl. Gatot Subroto No.19, Kauman, Kec. Nganjuk, Kabupaten Nganjuk, Jawa Timur 64411'),
('TUK-S.020', 'BRI Madiun', 'Jl. Pahlawan No.50, Kartoharjo, Kec. Manguharjo, Kota Madiun, Jawa Timur 63122'),
('TUK-S.021', 'BRI Jember', 'Jl. Jendral Ahmad Yani No.1, Kp. Using, Jemberlor, Kec. Patrang, Kabupaten Jember, Jawa Timur 68131'),
('TUK-S.022', 'BRI Malang', 'Jl. Laksamana Martadinata No.80, Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65142'),
('TUK-S.023', 'KSP GDC Nusantara', 'Jl. KH. Hasyim Asy\\\'ari No.66, Diwek, Balong Besuk, Kec. Diwek, Kabupaten Jombang, Jawa Timur 61471'),
('TUK-S.024', 'STIE AMKOP, Makassar', 'Yayasan Pendidikan Bajiminasa Makassar, Jl. Meranti No.1, Pandang, Kec. Panakkukang, Kota Makassar, Sulawesi Selatan 90231');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(10) UNSIGNED NOT NULL,
  `userFullName` varchar(255) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userPassword` varchar(40) DEFAULT NULL,
  `userSaved` timestamp NOT NULL DEFAULT current_timestamp(),
  `userStatus` tinyint(4) NOT NULL DEFAULT 1,
  `userAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `userAdminAccess` tinyint(1) NOT NULL DEFAULT 0,
  `alamat` varchar(500) NOT NULL,
  `asal_instansi` varchar(500) NOT NULL,
  `skema` varchar(500) NOT NULL,
  `no_whatsapp` varchar(500) NOT NULL,
  `agambar_ijazah` varchar(500) NOT NULL,
  `agambar_pasfoto` varchar(500) NOT NULL,
  `agambar_ktpkk` varchar(500) NOT NULL,
  `agambar_pengalaman` varchar(500) NOT NULL,
  `agambar_porto` varchar(500) NOT NULL,
  `agambar_bktibayar` varchar(500) NOT NULL,
  `agambar_ttd` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userFullName`, `userEmail`, `userPassword`, `userSaved`, `userStatus`, `userAdmin`, `userAdminAccess`, `alamat`, `asal_instansi`, `skema`, `no_whatsapp`, `agambar_ijazah`, `agambar_pasfoto`, `agambar_ktpkk`, `agambar_pengalaman`, `agambar_porto`, `agambar_bktibayar`, `agambar_ttd`) VALUES
(1, 'Administrator', 'super@bmc.or.id', '3608a6d1a05aba23ea390e5f3b48203dbb7241f7', '2019-11-20 06:11:31', 1, 1, 1, '', '', '', '', '', '', '', '', '', '', ''),
(6, 'Administrator', 'super@lspmicrofinanceindonesia.co.id', '3608a6d1a05aba23ea390e5f3b48203dbb7241f7', '2019-11-20 06:11:31', 1, 1, 1, '', '', '', '', '', '', '', '', '', '', ''),
(99, 'Hexun', 'admin@hexun.id', 'c3284d0f94606de1fd2af172aba15bf3', '2019-11-20 06:11:31', 1, 1, 1, '', '', '', '', '', '', '', '', '', '', ''),
(101, 'Adrian Nathanael', 'Adrian@hexun.id', '2f141d56c55f55fca54b156b5bb9deca', '2024-06-14 18:24:56', 1, 3, 0, 'Adrian ', 'Adrian ', 'Pendampingan dan Pengelolaan Pinjaman Ultra Mikro', '01234', '1718389496_9fbbb8c214f10d31bdf5.png', '1718389496_c97ad5fe754ad46297ba.png', '1718389496_125b0dc2adee0386ad77.png', '1718389496_69ec962ab009c2cd1672.png', '1718389496_4ea8f652a90b34fcd162.png', '1718389496_def257feef2a84aa5f5b.png', ''),
(102, 'antonius', 'antonius@hexun.id', 'b7a5c3bf2f5837cecdf7c77d609c4432', '2024-06-14 18:34:54', 1, 3, 0, 'antonius', 'antonius', 'Penilaian Kesehatan Koperasi', '423423423', '1718390094_b391ac15a718f6934015.jpg', '1718390094_34f42bc8e88bba064874.jpg', '1718390094_987017a9babc2614b40d.jpg', '1718390094_7bec7d58028ac1271391.png', '1718390094_4b6889470abda9ecc528.jpeg', '1718390094_b0cab7e3b6484504125d.png', '1718390094_7ab20c89c96c66bb54de.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip_images`
--
ALTER TABLE `arsip_images`
  ADD PRIMARY KEY (`arimId`),
  ADD KEY `arsip_images_user_idx` (`arimUserIdSaved`);

--
-- Indexes for table `content_about_bri`
--
ALTER TABLE `content_about_bri`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_about_lsp`
--
ALTER TABLE `content_about_lsp`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_anggota`
--
ALTER TABLE `content_anggota`
  ADD PRIMARY KEY (`anggotaId`);

--
-- Indexes for table `content_anggota_images`
--
ALTER TABLE `content_anggota_images`
  ADD PRIMARY KEY (`anggimId`);

--
-- Indexes for table `content_empowerment`
--
ALTER TABLE `content_empowerment`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_network_client`
--
ALTER TABLE `content_network_client`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_network_community`
--
ALTER TABLE `content_network_community`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_product_consultancy`
--
ALTER TABLE `content_product_consultancy`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_product_research`
--
ALTER TABLE `content_product_research`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_product_technical`
--
ALTER TABLE `content_product_technical`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_study_customize`
--
ALTER TABLE `content_study_customize`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_study_overseas`
--
ALTER TABLE `content_study_overseas`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_study_regular`
--
ALTER TABLE `content_study_regular`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `content_visi_lsp`
--
ALTER TABLE `content_visi_lsp`
  ADD PRIMARY KEY (`contentId`);

--
-- Indexes for table `converence`
--
ALTER TABLE `converence`
  ADD PRIMARY KEY (`convId`);

--
-- Indexes for table `converence_images`
--
ALTER TABLE `converence_images`
  ADD PRIMARY KEY (`coimId`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoId`);

--
-- Indexes for table `foto_image`
--
ALTER TABLE `foto_image`
  ADD PRIMARY KEY (`ftimId`);

--
-- Indexes for table `headline`
--
ALTER TABLE `headline`
  ADD PRIMARY KEY (`headId`);

--
-- Indexes for table `live_stream`
--
ALTER TABLE `live_stream`
  ADD PRIMARY KEY (`lvstId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `news_images`
--
ALTER TABLE `news_images`
  ADD PRIMARY KEY (`neimId`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sldrId`);

--
-- Indexes for table `tm_asesor`
--
ALTER TABLE `tm_asesor`
  ADD PRIMARY KEY (`asesor_id`) USING BTREE;

--
-- Indexes for table `tm_pemegang_sertifikat`
--
ALTER TABLE `tm_pemegang_sertifikat`
  ADD PRIMARY KEY (`pemegang_sertifikat_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail_UNIQUE` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsip_images`
--
ALTER TABLE `arsip_images`
  MODIFY `arimId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `content_about_bri`
--
ALTER TABLE `content_about_bri`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_about_lsp`
--
ALTER TABLE `content_about_lsp`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_anggota`
--
ALTER TABLE `content_anggota`
  MODIFY `anggotaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `content_anggota_images`
--
ALTER TABLE `content_anggota_images`
  MODIFY `anggimId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `content_empowerment`
--
ALTER TABLE `content_empowerment`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_network_client`
--
ALTER TABLE `content_network_client`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_network_community`
--
ALTER TABLE `content_network_community`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_product_consultancy`
--
ALTER TABLE `content_product_consultancy`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_product_research`
--
ALTER TABLE `content_product_research`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_product_technical`
--
ALTER TABLE `content_product_technical`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_study_customize`
--
ALTER TABLE `content_study_customize`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_study_overseas`
--
ALTER TABLE `content_study_overseas`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_study_regular`
--
ALTER TABLE `content_study_regular`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_visi_lsp`
--
ALTER TABLE `content_visi_lsp`
  MODIFY `contentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `converence`
--
ALTER TABLE `converence`
  MODIFY `convId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `converence_images`
--
ALTER TABLE `converence_images`
  MODIFY `coimId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foto_image`
--
ALTER TABLE `foto_image`
  MODIFY `ftimId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headline`
--
ALTER TABLE `headline`
  MODIFY `headId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_stream`
--
ALTER TABLE `live_stream`
  MODIFY `lvstId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `news_images`
--
ALTER TABLE `news_images`
  MODIFY `neimId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `sldrId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
