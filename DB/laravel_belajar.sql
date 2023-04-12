-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2023 at 01:56 PM
-- Server version: 5.7.33
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_belajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, '1A', NULL, '2023-03-30 19:13:03', '2023-03-30 19:13:03'),
(2, '1B', NULL, '2023-03-30 19:13:03', '2023-03-30 19:13:03'),
(3, '1C', NULL, '2023-03-30 19:13:03', '2023-03-30 19:13:03'),
(4, '1D', NULL, '2023-03-30 19:13:03', '2023-03-30 19:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `extracurriculars`
--

CREATE TABLE `extracurriculars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_31_124301_create_students_table', 1),
(6, '2023_01_31_141544_create_class_table', 1),
(7, '2023_01_31_142126_add_class_id_column_to_students_table', 1),
(8, '2023_02_01_143941_add_unique_rule_in_class_table', 1),
(9, '2023_03_13_005210_create_extracurriculars_table', 1),
(10, '2023_03_13_015328_create_student_extracurricular_table', 1),
(11, '2023_03_13_030753_create_teachers_table', 1),
(12, '2023_03_13_035510_add_teacher_id_column_to_class_table', 1),
(13, '2023_03_20_033124_add_soft_delete_column_to_students_table', 1),
(14, '2023_03_23_072447_add_image_column_to_students_table', 1),
(15, '2023_03_31_014725_create_roles_table', 1),
(16, '2023_03_31_021709_add_role_id_column_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-03-30 19:13:45', '2023-03-30 19:13:45'),
(2, 'Teacher', '2023-03-30 19:13:45', '2023-03-30 19:13:45'),
(3, 'Student', '2023-03-30 19:13:45', '2023-03-30 19:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Suci Lestari', 'Perempuan', '4524617', 3, NULL, '2023-03-30 19:13:05', '2023-03-30 19:13:05', NULL),
(2, 'Vicky Tami Aryani', 'Perempuan', '4581313', 4, NULL, '2023-03-30 19:13:05', '2023-03-30 19:13:05', NULL),
(3, 'Dian Jelita Andriani', 'Perempuan', '5022169', 4, NULL, '2023-03-30 19:13:05', '2023-03-30 19:13:05', NULL),
(4, 'Aisyah Maria Rahayu M.Kom.', 'Laki-laki', '6951002', 1, NULL, '2023-03-30 19:13:05', '2023-03-30 19:13:05', NULL),
(5, 'Sabar Artanto Adriansyah S.Pt', 'Laki-laki', '7185438', 1, NULL, '2023-03-30 19:13:05', '2023-03-30 19:13:05', NULL),
(6, 'Galih Sinaga', 'Perempuan', '7961507', 4, NULL, '2023-03-30 19:13:05', '2023-03-30 19:13:05', NULL),
(7, 'Violet Mulyani', 'Perempuan', '3527087', 1, NULL, '2023-03-30 19:13:05', '2023-03-30 19:13:05', NULL),
(8, 'Ciaobella Michelle Susanti', 'Perempuan', '1691810', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(9, 'Elisa Purnawati', 'Perempuan', '2095647', 4, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(10, 'Ihsan Rajata', 'Laki-laki', '1721702', 4, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(11, 'Caket Rajata S.H.', 'Perempuan', '3694799', 1, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(12, 'Restu Tami Lestari', 'Perempuan', '6866695', 3, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(13, 'Rangga Erik Gunawan S.E.I', 'Laki-laki', '275500', 4, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(14, 'Amalia Permata', 'Perempuan', '6248687', 1, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(15, 'Widya Agustina S.T.', 'Perempuan', '7845234', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(16, 'Qori Nasyiah S.Sos', 'Perempuan', '5767141', 3, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(17, 'Gangsa Darman Rajasa S.Kom', 'Laki-laki', '987730', 4, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(18, 'Usyi Sudiati', 'Perempuan', '1963009', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(19, 'Siti Fujiati', 'Laki-laki', '316915', 1, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(20, 'Silvia Yance Aryani', 'Perempuan', '9311680', 4, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(21, 'Lintang Puspita', 'Perempuan', '323456', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(22, 'Kadir Tampubolon', 'Perempuan', '5556122', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(23, 'Hasim Maheswara', 'Perempuan', '4503938', 3, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(24, 'Wani Rahimah', 'Laki-laki', '5805225', 4, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(25, 'Ivan Maheswara', 'Perempuan', '163920', 3, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(26, 'Padmi Zizi Nuraini S.H.', 'Perempuan', '8457005', 3, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(27, 'Hasta Marbun', 'Perempuan', '628337', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(28, 'Gilda Ratih Mayasari S.Psi', 'Laki-laki', '6889072', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(29, 'Sarah Pudjiastuti', 'Laki-laki', '7090716', 1, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(30, 'Rahmi Pudjiastuti', 'Perempuan', '6347182', 4, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(31, 'Lega Marbun', 'Perempuan', '9744349', 3, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(32, 'Betania Wastuti', 'Perempuan', '4805138', 2, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(33, 'Natalia Namaga', 'Laki-laki', '5018684', 3, NULL, '2023-03-30 19:13:06', '2023-03-30 19:13:06', NULL),
(34, 'Aditya Sihotang', 'Perempuan', '7892053', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(35, 'Prabu Rajasa', 'Perempuan', '1784728', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(36, 'Cager Ibrahim Wibowo', 'Perempuan', '272500', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(37, 'Adiarja Anggriawan M.M.', 'Laki-laki', '4024841', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(38, 'Uli Janet Lestari', 'Perempuan', '6444092', 1, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(39, 'Mulyono Kuswoyo', 'Laki-laki', '6356719', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(40, 'Mutia Haryanti', 'Perempuan', '9912188', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(41, 'Rudi Prasasta M.Kom.', 'Laki-laki', '9449510', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(42, 'Cahya Mahmud Ardianto', 'Perempuan', '8628782', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(43, 'Jabal Kamal Hutapea', 'Laki-laki', '293748', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(44, 'Wardaya Damanik', 'Laki-laki', '8302122', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(45, 'Syahrini Nasyiah', 'Laki-laki', '8421059', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(46, 'Imam Waluyo Lazuardi M.TI.', 'Perempuan', '525692', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(47, 'Harjasa Samsul Hardiansyah', 'Perempuan', '5665584', 2, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(48, 'Uli Yuniar', 'Laki-laki', '3357327', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(49, 'Kezia Dinda Andriani S.Kom', 'Perempuan', '3447518', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(50, 'Rahayu Zulaika', 'Perempuan', '5442151', 1, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(51, 'Artawan Nasrullah Hutapea S.Gz', 'Laki-laki', '5228085', 1, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(52, 'Liman Kamidin Maulana S.E.I', 'Perempuan', '7769127', 2, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(53, 'Eka Irma Mulyani S.Farm', 'Laki-laki', '287347', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(54, 'Hasna Clara Oktaviani', 'Perempuan', '7487978', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(55, 'Nurul Hassanah', 'Laki-laki', '496614', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(56, 'Radit Hidayat', 'Laki-laki', '3156730', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(57, 'Hafshah Diah Maryati', 'Laki-laki', '7021369', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(58, 'Gilang Galiono Uwais', 'Perempuan', '8458057', 4, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(59, 'Sadina Lailasari', 'Perempuan', '4483168', 3, NULL, '2023-03-30 19:13:07', '2023-03-30 19:13:07', NULL),
(60, 'Emas Bakda Marpaung S.Gz', 'Perempuan', '5700732', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(61, 'Ani Yunita Nurdiyanti', 'Laki-laki', '9272871', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(62, 'Raisa Hani Puspita S.T.', 'Perempuan', '9223448', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(63, 'Nurul Hartati', 'Perempuan', '6162977', 1, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(64, 'Sarah Cindy Purwanti S.IP', 'Perempuan', '2780537', 2, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(65, 'Farah Maimunah Mardhiyah', 'Perempuan', '587683', 1, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(66, 'Makara Tamba', 'Laki-laki', '8204431', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(67, 'Nardi Harjaya Narpati', 'Perempuan', '7117283', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(68, 'Rahmi Zulaika M.Farm', 'Perempuan', '6285797', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(69, 'Niyaga Samosir', 'Perempuan', '222632', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(70, 'Luhung Raden Tarihoran S.Ked', 'Perempuan', '7309066', 2, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(71, 'Rangga Lasmanto Dongoran', 'Laki-laki', '6151533', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(72, 'Qori Mandasari', 'Laki-laki', '6929721', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(73, 'Kadir Tri Saefullah S.I.Kom', 'Laki-laki', '9121433', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(74, 'Salwa Salsabila Widiastuti S.IP', 'Perempuan', '8718539', 2, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(75, 'Jagaraga Budiman', 'Perempuan', '3305255', 3, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(76, 'Ciaobella Astuti', 'Perempuan', '7150492', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(77, 'Banawa Firmansyah', 'Perempuan', '5377170', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(78, 'Padma Handayani', 'Laki-laki', '9625018', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(79, 'Titin Ghaliyati Suryatmi', 'Perempuan', '4109360', 2, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(80, 'Nadia Najwa Safitri', 'Laki-laki', '4059517', 2, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(81, 'Upik Salahudin S.Gz', 'Perempuan', '1037520', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(82, 'Yuni Michelle Puspasari M.TI.', 'Perempuan', '7918686', 2, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(83, 'Zamira Suartini S.Pt', 'Perempuan', '888931', 4, NULL, '2023-03-30 19:13:08', '2023-03-30 19:13:08', NULL),
(84, 'Puji Pratiwi', 'Laki-laki', '4352425', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(85, 'Zulfa Mayasari', 'Laki-laki', '449541', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(86, 'Kani Genta Andriani', 'Laki-laki', '4516132', 4, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(87, 'Icha Elvina Sudiati S.Farm', 'Laki-laki', '7805166', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(88, 'Jarwi Cayadi Budiyanto', 'Laki-laki', '1023917', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(89, 'Kezia Uyainah S.Pd', 'Perempuan', '5399026', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(90, 'Juli Haryanti S.I.Kom', 'Laki-laki', '6412288', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(91, 'Elvina Laksita', 'Laki-laki', '3340954', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(92, 'Lalita Oktaviani', 'Laki-laki', '7994717', 4, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(93, 'Melinda Zulaika S.Farm', 'Perempuan', '3501977', 1, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(94, 'Maria Hariyah', 'Perempuan', '3299138', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(95, 'Tami Keisha Anggraini', 'Perempuan', '1262872', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(96, 'Gantar Nardi Samosir S.E.', 'Perempuan', '1697465', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(97, 'Ella Nuraini S.Gz', 'Laki-laki', '1131623', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(98, 'Kayla Yulia Yuliarti S.Sos', 'Perempuan', '8309897', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(99, 'Prabu Saragih M.M.', 'Laki-laki', '496684', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(100, 'Karen Anggraini', 'Perempuan', '5734991', 1, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(101, 'Dewi Sudiati', 'Perempuan', '7348191', 4, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(102, 'Tira Uchita Melani', 'Perempuan', '1688232', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(103, 'Talia Hassanah', 'Perempuan', '7982136', 1, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(104, 'Darijan Halim', 'Laki-laki', '1795219', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(105, 'Maryadi Halim', 'Perempuan', '9576421', 1, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(106, 'Gangsa Cecep Nainggolan', 'Perempuan', '4724849', 2, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(107, 'Shakila Laksmiwati', 'Perempuan', '3790709', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(108, 'Gina Winarsih', 'Perempuan', '8975488', 1, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(109, 'Bakda Maulana S.Sos', 'Perempuan', '403683', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(110, 'Rusman Suryono', 'Perempuan', '2890527', 3, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(111, 'Hairyanto Wibisono', 'Perempuan', '447830', 4, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(112, 'Vero Hutagalung', 'Laki-laki', '506769', 1, NULL, '2023-03-30 19:13:09', '2023-03-30 19:13:09', NULL),
(113, 'Nilam Zaenab Hassanah S.E.', 'Perempuan', '4321509', 3, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(114, 'Amalia Rahmawati', 'Laki-laki', '2750083', 4, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(115, 'Shania Novitasari', 'Perempuan', '7916053', 4, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(116, 'Puti Yolanda', 'Laki-laki', '4743913', 1, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(117, 'Galar Mahesa Megantara', 'Laki-laki', '3963892', 4, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(118, 'Rama Widodo', 'Perempuan', '6065830', 2, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(119, 'Prabowo Situmorang', 'Perempuan', '8285482', 2, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(120, 'Emil Irawan', 'Laki-laki', '7812504', 2, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(121, 'Usman Waluyo', 'Laki-laki', '2634136', 1, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(122, 'Kadir Januar S.H.', 'Perempuan', '7668571', 3, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(123, 'Mutia Hassanah', 'Perempuan', '4458713', 1, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(124, 'Candra Nainggolan', 'Laki-laki', '1739852', 4, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(125, 'Vivi Yance Usamah', 'Laki-laki', '6590378', 3, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(126, 'Ajimat Halim S.Ked', 'Laki-laki', '1028924', 2, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(127, 'Lulut Winarno M.Farm', 'Perempuan', '5916841', 1, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(128, 'Usyi Jasmin Fujiati S.IP', 'Laki-laki', '8071683', 4, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(129, 'Aisyah Oliva Nasyidah S.Farm', 'Laki-laki', '925747', 4, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(130, 'Almira Rahayu', 'Laki-laki', '414530', 3, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(131, 'Candra Mulya Marbun S.T.', 'Perempuan', '3085090', 1, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(132, 'Dodo Najmudin', 'Perempuan', '9994757', 3, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(133, 'Ika Hastuti', 'Laki-laki', '4353258', 4, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(134, 'Prabawa Hardana Saptono', 'Perempuan', '601038', 2, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(135, 'Ana Fitriani Farida M.Kom.', 'Perempuan', '9905124', 3, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(136, 'Winda Endah Wastuti S.Pt', 'Perempuan', '8720153', 2, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(137, 'Hasna Rahayu', 'Laki-laki', '9845807', 2, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(138, 'Agus Hakim M.Farm', 'Laki-laki', '6454248', 3, NULL, '2023-03-30 19:13:10', '2023-03-30 19:13:10', NULL),
(139, 'Jaga Marbun S.Gz', 'Perempuan', '3949206', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(140, 'Betania Widya Padmasari', 'Perempuan', '1957441', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(141, 'Teguh Dodo Wahyudin S.IP', 'Laki-laki', '6085620', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(142, 'Gandi Sirait S.Sos', 'Laki-laki', '5637839', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(143, 'Okta Latupono', 'Laki-laki', '1318363', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(144, 'Nrima Jaeman Maulana M.TI.', 'Laki-laki', '3810937', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(145, 'Salimah Genta Rahayu', 'Perempuan', '7613468', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(146, 'Purwadi Adriansyah', 'Laki-laki', '4780015', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(147, 'Hilda Ratih Kuswandari', 'Laki-laki', '4820633', 2, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(148, 'Danu Firmansyah', 'Perempuan', '1816677', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(149, 'Vino Prabowo', 'Laki-laki', '3132817', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(150, 'Padma Suartini', 'Perempuan', '6934173', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(151, 'Sakti Dongoran', 'Laki-laki', '7882454', 2, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(152, 'Talia Astuti', 'Laki-laki', '2741557', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(153, 'Nilam Yuniar', 'Laki-laki', '7768078', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(154, 'Tirtayasa Hardiansyah', 'Perempuan', '5663383', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(155, 'Bakidin Tomi Tampubolon S.I.Kom', 'Perempuan', '903206', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(156, 'Jais Yosef Tamba', 'Laki-laki', '6473139', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(157, 'Estiono Mahendra', 'Perempuan', '7440131', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(158, 'Gasti Latika Wijayanti M.M.', 'Laki-laki', '7893675', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(159, 'Perkasa Endra Suryono S.E.I', 'Laki-laki', '5681092', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(160, 'Suci Hastuti', 'Laki-laki', '3611109', 1, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(161, 'Alika Ami Nasyidah', 'Perempuan', '6339238', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(162, 'Rachel Suartini', 'Laki-laki', '4187850', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(163, 'Baktiono Iswahyudi', 'Perempuan', '4015521', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(164, 'Candrakanta Napitupulu', 'Perempuan', '6842290', 4, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(165, 'Kamaria Maryati', 'Laki-laki', '3267969', 3, NULL, '2023-03-30 19:13:11', '2023-03-30 19:13:11', NULL),
(166, 'Dirja Prabowo', 'Laki-laki', '409183', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(167, 'Jamal Wacana', 'Laki-laki', '2115630', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(168, 'Melinda Titin Nasyidah', 'Perempuan', '9661867', 2, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(169, 'Belinda Purnawati S.Kom', 'Perempuan', '4284521', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(170, 'Darmana Gunawan', 'Perempuan', '5355979', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(171, 'Eja Kusumo', 'Laki-laki', '1690676', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(172, 'Puji Gasti Yulianti', 'Perempuan', '7280819', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(173, 'Warsa Adriansyah', 'Laki-laki', '5856940', 1, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(174, 'Rusman Santoso', 'Perempuan', '5879682', 1, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(175, 'Perkasa Emong Prasetya', 'Laki-laki', '9944131', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(176, 'Pardi Ian Utama S.Gz', 'Laki-laki', '1397700', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(177, 'Prayogo Wibowo', 'Laki-laki', '6671818', 2, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(178, 'Jaya Narpati', 'Laki-laki', '9099012', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(179, 'Ihsan Raharja Siregar S.Pt', 'Perempuan', '3511538', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(180, 'Okto Kenari Suwarno', 'Laki-laki', '6082689', 2, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(181, 'Sabrina Gasti Agustina S.Gz', 'Laki-laki', '3956467', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(182, 'Karta Adriansyah S.Pt', 'Laki-laki', '5431980', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(183, 'Chelsea Agustina', 'Laki-laki', '7922503', 1, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(184, 'Shakila Sari Susanti', 'Perempuan', '8641551', 1, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(185, 'Kajen Pratama M.TI.', 'Perempuan', '8534079', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(186, 'Lasmono Mansur', 'Perempuan', '3143249', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(187, 'Winda Lestari', 'Perempuan', '7314272', 3, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(188, 'Zamira Lailasari', 'Laki-laki', '402364', 1, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(189, 'Kuncara Dongoran', 'Laki-laki', '9155453', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(190, 'Okta Wibowo', 'Laki-laki', '8082577', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(191, 'Puti Mandasari', 'Laki-laki', '5124535', 4, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(192, 'Shania Mandasari S.Ked', 'Laki-laki', '158016', 2, NULL, '2023-03-30 19:13:12', '2023-03-30 19:13:12', NULL),
(193, 'Reksa Sihotang', 'Laki-laki', '4569633', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(194, 'Nalar Jayadi Marbun', 'Laki-laki', '8043336', 4, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(195, 'Wasis Zulkarnain', 'Laki-laki', '7041430', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(196, 'Lega Aslijan Rajata', 'Laki-laki', '5283552', 4, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(197, 'Endah Ella Rahimah M.Farm', 'Perempuan', '5534591', 2, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(198, 'Purwa Kuswoyo', 'Perempuan', '2679369', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(199, 'Ozy Ghani Setiawan', 'Perempuan', '8832647', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(200, 'Wira Raden Firgantoro', 'Perempuan', '3539712', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(201, 'Maya Hartati', 'Perempuan', '956511', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(202, 'Icha Wahyuni', 'Laki-laki', '3907024', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(203, 'Cayadi Viman Siregar', 'Perempuan', '1828527', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(204, 'Taufan Halim', 'Laki-laki', '430201', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(205, 'Gadang Slamet Saefullah S.Kom', 'Laki-laki', '8953413', 4, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(206, 'Dina Agustina', 'Laki-laki', '163315', 2, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(207, 'Laila Wulandari', 'Perempuan', '3719511', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(208, 'Prabowo Sitorus S.IP', 'Laki-laki', '7673415', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(209, 'Okta Megantara', 'Perempuan', '8686530', 4, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(210, 'Prayoga Cemplunk Sinaga S.Sos', 'Laki-laki', '6047712', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(211, 'Clara Latika Nasyiah S.Sos', 'Laki-laki', '1036525', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(212, 'Adhiarja Hutapea', 'Laki-laki', '8553911', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(213, 'Juli Wulandari', 'Laki-laki', '3552690', 2, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(214, 'Adinata Nababan', 'Laki-laki', '7170295', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(215, 'Reksa Adiarja Sirait', 'Laki-laki', '3201231', 1, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(216, 'Wakiman Kunthara Budiyanto', 'Laki-laki', '1165478', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(217, 'Asmuni Galang Putra M.Pd', 'Laki-laki', '9070296', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(218, 'Nalar Wahyudin S.Gz', 'Laki-laki', '1889547', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(219, 'Clara Syahrini Winarsih', 'Laki-laki', '1880030', 3, NULL, '2023-03-30 19:13:13', '2023-03-30 19:13:13', NULL),
(220, 'Karma Uwais', 'Perempuan', '749015', 2, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(221, 'Nurul Yuliarti', 'Laki-laki', '3170803', 3, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(222, 'Michelle Hartati', 'Laki-laki', '9587115', 1, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(223, 'Lidya Hartati M.Ak', 'Perempuan', '9872920', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(224, 'Kasusra Utama S.IP', 'Perempuan', '7452661', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(225, 'Kartika Wahyuni', 'Laki-laki', '7816043', 3, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(226, 'Kusuma Siregar', 'Perempuan', '163917', 1, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(227, 'Adhiarja Rajasa M.Kom.', 'Perempuan', '2485892', 1, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(228, 'Karna Napitupulu S.Psi', 'Perempuan', '1127628', 3, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(229, 'Yunita Mulyani', 'Laki-laki', '4501985', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(230, 'Alika Hariyah M.Farm', 'Laki-laki', '3651649', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(231, 'Argono Pangestu', 'Laki-laki', '9029393', 2, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(232, 'Perkasa Paiman Putra S.Pd', 'Perempuan', '8619958', 3, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(233, 'Clara Wastuti', 'Laki-laki', '9583358', 2, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(234, 'Darimin Radika Halim S.Sos', 'Perempuan', '9973202', 3, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(235, 'Pangeran Sinaga', 'Perempuan', '5902007', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(236, 'Ivan Narpati', 'Perempuan', '1963117', 1, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(237, 'Abyasa Kairav Sihombing', 'Perempuan', '9824125', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(238, 'Ira Amalia Rahayu M.Pd', 'Laki-laki', '7773434', 2, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(239, 'Harja Cemani Utama', 'Perempuan', '9982807', 3, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(240, 'Vanya Winarsih', 'Perempuan', '226039', 3, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(241, 'Heryanto Maryadi S.E.I', 'Perempuan', '3315531', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(242, 'Rafi Adikara Winarno', 'Laki-laki', '2259584', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(243, 'Dasa Ardianto', 'Perempuan', '6392398', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(244, 'Marwata Danang Saefullah M.Kom.', 'Perempuan', '1936528', 4, NULL, '2023-03-30 19:13:14', '2023-03-30 19:13:14', NULL),
(245, 'Elon Lanjar Mangunsong', 'Perempuan', '9319961', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(246, 'Ira Devi Winarsih M.Ak', 'Laki-laki', '2896739', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(247, 'Malika Andriani', 'Perempuan', '9584901', 3, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(248, 'Luhung Rajata', 'Perempuan', '7997439', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(249, 'Siska Icha Laksmiwati', 'Perempuan', '6350619', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(250, 'Vicky Yuliarti', 'Perempuan', '7089405', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(251, 'Putu Asirwada Hidayanto', 'Laki-laki', '7726075', 3, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(252, 'Bagya Edward Sirait', 'Perempuan', '7616779', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(253, 'Oni Nurdiyanti S.Sos', 'Perempuan', '8951532', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(254, 'Bahuwirya Paiman Dongoran S.Sos', 'Perempuan', '429439', 1, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(255, 'Keisha Widiastuti', 'Laki-laki', '1629548', 3, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(256, 'Aurora Fujiati M.TI.', 'Laki-laki', '9152004', 3, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(257, 'Najam Thamrin', 'Perempuan', '730571', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(258, 'Najwa Anggraini', 'Perempuan', '5544263', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(259, 'Lalita Widiastuti', 'Perempuan', '5408033', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(260, 'Kala Cahya Sihotang S.Farm', 'Laki-laki', '3033119', 3, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(261, 'Parman Hartaka Pratama', 'Perempuan', '4996073', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(262, 'Maya Diana Usamah', 'Perempuan', '1484881', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(263, 'Jayeng Sitorus S.Kom', 'Laki-laki', '133948', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(264, 'Bancar Warsa Pradipta S.E.I', 'Laki-laki', '8231399', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(265, 'Narji Wibisono', 'Perempuan', '9765351', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(266, 'Gambira Narpati M.M.', 'Perempuan', '5028720', 3, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(267, 'Mutia Nadia Wijayanti', 'Perempuan', '9965410', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(268, 'Danu Damanik', 'Perempuan', '1745267', 3, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(269, 'Emas Waskita', 'Perempuan', '7181982', 4, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(270, 'Adikara Maheswara', 'Laki-laki', '1872567', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(271, 'Mutia Widiastuti', 'Laki-laki', '737606', 1, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(272, 'Padma Yuliarti', 'Laki-laki', '1041676', 2, NULL, '2023-03-30 19:13:15', '2023-03-30 19:13:15', NULL),
(273, 'Dwi Kasusra Suryono', 'Perempuan', '5523660', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(274, 'Luluh Prasasta', 'Perempuan', '7199886', 3, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(275, 'Gawati Puspita', 'Laki-laki', '6031599', 3, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(276, 'Usman Anggriawan', 'Perempuan', '8755194', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(277, 'Violet Agustina M.Ak', 'Perempuan', '8156670', 4, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(278, 'Hasna Fujiati S.Psi', 'Laki-laki', '938841', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(279, 'Zahra Jasmin Purnawati S.E.I', 'Perempuan', '610954', 4, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(280, 'Ani Nasyidah', 'Laki-laki', '7467332', 1, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(281, 'Agus Halim M.TI.', 'Perempuan', '1463923', 3, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(282, 'Tugiman Enteng Maryadi', 'Perempuan', '9606479', 3, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(283, 'Gilda Ratih Usada M.Pd', 'Laki-laki', '1934858', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(284, 'Daniswara Ade Putra', 'Laki-laki', '4126471', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(285, 'Laila Uyainah', 'Perempuan', '2376961', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(286, 'Tira Pertiwi', 'Perempuan', '7790910', 3, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(287, 'Catur Pardi Narpati', 'Laki-laki', '396408', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(288, 'Atmaja Prasetya Situmorang', 'Laki-laki', '284366', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(289, 'Wasis Estiono Thamrin M.TI.', 'Laki-laki', '4914594', 1, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(290, 'Salwa Rahayu', 'Perempuan', '4305256', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(291, 'Jamalia Paris Laksita', 'Laki-laki', '8671572', 1, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(292, 'Candra Pradana', 'Laki-laki', '6307838', 4, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(293, 'Hesti Rahmawati', 'Perempuan', '49563', 2, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(294, 'Iriana Melani', 'Laki-laki', '9316887', 4, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(295, 'Faizah Pertiwi S.E.I', 'Laki-laki', '6678300', 3, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(296, 'Mutia Pertiwi', 'Laki-laki', '4716138', 1, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(297, 'Harjaya Nashiruddin S.T.', 'Laki-laki', '8523596', 1, NULL, '2023-03-30 19:13:16', '2023-03-30 19:13:16', NULL),
(298, 'Jamal Utama S.E.I', 'Perempuan', '3015035', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(299, 'Gantar Kurniawan', 'Laki-laki', '8243536', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(300, 'Tina Chelsea Padmasari S.IP', 'Perempuan', '7143229', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(301, 'Shania Hasanah M.Ak', 'Perempuan', '6188172', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(302, 'Okta Hidayanto', 'Perempuan', '6629573', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(303, 'Jayadi Wibowo', 'Perempuan', '1942822', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(304, 'Estiawan Zulkarnain', 'Perempuan', '3538319', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(305, 'Eluh Saputra', 'Perempuan', '4060600', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(306, 'Salwa Melani', 'Laki-laki', '9284068', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(307, 'Ajeng Purnawati', 'Perempuan', '7682940', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(308, 'Genta Padmi Agustina S.Gz', 'Laki-laki', '2377120', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(309, 'Kardi Najmudin M.Farm', 'Perempuan', '1407141', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(310, 'Mulya Anggriawan', 'Laki-laki', '3237943', 2, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(311, 'Tira Siti Zulaika S.Kom', 'Laki-laki', '6935212', 2, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(312, 'Maya Mardhiyah', 'Laki-laki', '8373509', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(313, 'Kusuma Taufan Budiyanto M.M.', 'Laki-laki', '1683001', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(314, 'Cahyo Dimas Wacana S.Pt', 'Perempuan', '2669304', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(315, 'Latif Salahudin', 'Perempuan', '3871726', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(316, 'Hafshah Purnawati', 'Laki-laki', '4114948', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(317, 'Galang Siregar', 'Perempuan', '2787299', 2, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(318, 'Hafshah Nuraini S.Pd', 'Laki-laki', '7728778', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(319, 'Gabriella Permata S.Sos', 'Perempuan', '5849074', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(320, 'Jindra Cakrajiya Saefullah S.I.Kom', 'Laki-laki', '44543', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(321, 'Latika Ghaliyati Hassanah S.Ked', 'Perempuan', '3334806', 2, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(322, 'Faizah Andriani', 'Perempuan', '725032', 1, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(323, 'Rahayu Sakura Winarsih', 'Laki-laki', '5416566', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(324, 'Septi Lidya Padmasari S.Farm', 'Perempuan', '634448', 3, NULL, '2023-03-30 19:13:17', '2023-03-30 19:13:17', NULL),
(325, 'Ira Usamah', 'Perempuan', '9902055', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(326, 'Ghani Pratama', 'Perempuan', '7930949', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(327, 'Belinda Wastuti', 'Perempuan', '2956852', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(328, 'Saiful Saragih', 'Perempuan', '6105749', 3, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(329, 'Tira Pudjiastuti', 'Laki-laki', '1896287', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(330, 'Among Edi Saputra S.Sos', 'Perempuan', '2405373', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(331, 'Almira Usyi Hasanah', 'Laki-laki', '8102491', 4, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(332, 'Asmadi Putu Pradana', 'Laki-laki', '4235178', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(333, 'Warsa Nashiruddin S.T.', 'Laki-laki', '168215', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(334, 'Raden Prasetya S.E.I', 'Laki-laki', '3701483', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(335, 'Janet Dewi Kusmawati S.E.I', 'Laki-laki', '4129326', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(336, 'Prabu Sihotang', 'Laki-laki', '2389598', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(337, 'Saiful Wibowo', 'Perempuan', '982975', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(338, 'Maryanto Lantar Halim S.Kom', 'Perempuan', '1000029', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(339, 'Betania Utami', 'Laki-laki', '7150144', 4, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(340, 'Nadia Laksita', 'Laki-laki', '3783278', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(341, 'Kairav Napitupulu', 'Perempuan', '363929', 4, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(342, 'Nabila Ira Mardhiyah', 'Perempuan', '8768849', 3, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(343, 'Malika Maryati', 'Perempuan', '5363289', 3, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(344, 'Jono Sihombing S.Farm', 'Perempuan', '4627191', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(345, 'Prayogo Mahendra S.E.I', 'Perempuan', '2553939', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(346, 'Tri Hutagalung', 'Perempuan', '8983213', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(347, 'Koko Hutapea M.Pd', 'Perempuan', '2849156', 3, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(348, 'Kacung Manullang', 'Perempuan', '5345650', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(349, 'Paulin Rahimah', 'Perempuan', '9955374', 3, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(350, 'Eluh Umar Winarno M.Farm', 'Laki-laki', '8622238', 2, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(351, 'Yani Sudiati M.Pd', 'Laki-laki', '3292988', 4, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(352, 'Rahmi Hasanah', 'Perempuan', '9698142', 1, NULL, '2023-03-30 19:13:18', '2023-03-30 19:13:18', NULL),
(353, 'Elma Riyanti S.Gz', 'Laki-laki', '9194215', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(354, 'Dodo Napitupulu', 'Perempuan', '76737', 4, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(355, 'Elon Jayeng Nashiruddin S.Pt', 'Laki-laki', '3717729', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(356, 'Eko Samsul Saputra S.Ked', 'Laki-laki', '3328945', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(357, 'Puti Cinthia Sudiati', 'Perempuan', '1094965', 4, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(358, 'Salimah Kusmawati', 'Laki-laki', '8639659', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(359, 'Jarwa Wacana', 'Laki-laki', '130389', 3, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(360, 'Alambana Adriansyah', 'Laki-laki', '3224258', 3, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(361, 'Taufan Saadat Utama', 'Laki-laki', '6185983', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(362, 'Niyaga Napitupulu', 'Laki-laki', '7155875', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(363, 'Dalima Titin Mayasari S.T.', 'Laki-laki', '6030670', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(364, 'Jaswadi Eka Wijaya S.Kom', 'Laki-laki', '3858286', 4, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(365, 'Lantar Sihombing M.TI.', 'Perempuan', '7344833', 4, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(366, 'Ghaliyati Keisha Laksmiwati M.Pd', 'Perempuan', '6246615', 4, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(367, 'Rini Usada', 'Laki-laki', '2166940', 2, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(368, 'Upik Budiyanto', 'Laki-laki', '804896', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(369, 'Dipa Nugroho', 'Laki-laki', '2122965', 3, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(370, 'Aditya Gunawan', 'Laki-laki', '2895446', 2, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(371, 'Jefri Tomi Prasetyo S.Pt', 'Laki-laki', '9757061', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(372, 'Empluk Maryadi Hutagalung', 'Perempuan', '1567379', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(373, 'Devi Yulianti', 'Laki-laki', '9442059', 2, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(374, 'Darmanto Anggriawan S.Kom', 'Perempuan', '2226240', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(375, 'Zamira Yolanda', 'Laki-laki', '736060', 4, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(376, 'Respati Nainggolan', 'Perempuan', '3705379', 2, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(377, 'Lembah Langgeng Suryono', 'Laki-laki', '801769', 3, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(378, 'Vega Sihombing S.T.', 'Laki-laki', '3714460', 3, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(379, 'Rusman Kusumo', 'Perempuan', '6615067', 2, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(380, 'Simon Hardiansyah', 'Laki-laki', '6422992', 1, NULL, '2023-03-30 19:13:19', '2023-03-30 19:13:19', NULL),
(381, 'Irma Shakila Rahmawati', 'Laki-laki', '3205202', 2, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(382, 'Ida Tantri Uyainah', 'Perempuan', '1549179', 4, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(383, 'Bagiya Firmansyah S.E.', 'Laki-laki', '1445446', 1, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(384, 'Balidin Sihotang S.Pt', 'Laki-laki', '3302785', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(385, 'Mahdi Kurniawan', 'Perempuan', '7181662', 4, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(386, 'Atmaja Emin Iswahyudi', 'Perempuan', '6806181', 2, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(387, 'Puti Pertiwi S.E.', 'Laki-laki', '1134895', 2, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(388, 'Labuh Simanjuntak', 'Laki-laki', '72641', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(389, 'Karimah Yuniar', 'Perempuan', '6304502', 4, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(390, 'Tiara Zulaika', 'Perempuan', '776696', 1, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(391, 'Gara Hardiansyah S.Kom', 'Laki-laki', '9658432', 2, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(392, 'Safina Yulianti', 'Perempuan', '5105947', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(393, 'Hendri Latupono', 'Perempuan', '977910', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(394, 'Ajeng Agustina', 'Perempuan', '9158546', 4, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(395, 'Dewi Yuliana Lailasari', 'Laki-laki', '5348481', 2, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(396, 'Tiara Aryani', 'Perempuan', '9172395', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(397, 'Dian Maryati', 'Laki-laki', '7545618', 2, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(398, 'Dono Suwarno M.Kom.', 'Perempuan', '7382742', 4, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(399, 'Empluk Wahyudin S.E.I', 'Perempuan', '8888344', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(400, 'Galur Cakrajiya Manullang', 'Laki-laki', '5566833', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(401, 'Mustofa Emas Winarno M.TI.', 'Laki-laki', '1215764', 1, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(402, 'Wulan Suartini', 'Perempuan', '2308022', 3, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(403, 'Ayu Dina Yuliarti S.Pd', 'Laki-laki', '3602668', 4, NULL, '2023-03-30 19:13:20', '2023-03-30 19:13:20', NULL),
(404, 'Yani Gabriella Yolanda', 'Perempuan', '3757193', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(405, 'Sabar Maulana', 'Perempuan', '1177705', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(406, 'Sakura Lailasari', 'Perempuan', '6540721', 4, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(407, 'Putri Riyanti', 'Laki-laki', '7008390', 4, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(408, 'Johan Simanjuntak', 'Perempuan', '4379377', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(409, 'Rahayu Oktaviani', 'Perempuan', '2689467', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(410, 'Hasan Prasetya Nugroho', 'Perempuan', '6083428', 4, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(411, 'Unggul Tamba S.Sos', 'Laki-laki', '9274639', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(412, 'Arta Pangestu', 'Perempuan', '6283627', 4, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(413, 'Alika Hasanah M.Farm', 'Perempuan', '8967544', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(414, 'Kayla Kayla Yolanda S.E.', 'Perempuan', '3828969', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(415, 'Warsa Rama Narpati', 'Perempuan', '3041861', 2, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(416, 'Kenes Vinsen Damanik', 'Laki-laki', '4167282', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(417, 'Saadat Santoso', 'Laki-laki', '4577205', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(418, 'Tantri Lestari', 'Laki-laki', '7702234', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(419, 'Lidya Pudjiastuti M.Kom.', 'Laki-laki', '8009200', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(420, 'Eli Nurdiyanti', 'Perempuan', '80776', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(421, 'Daryani Mulyanto Gunarto', 'Perempuan', '3029277', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(422, 'Daru Wibowo', 'Laki-laki', '4108884', 4, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(423, 'Nrima Haryanto M.Ak', 'Laki-laki', '2287621', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(424, 'Jatmiko Kuncara Jailani', 'Laki-laki', '5935860', 2, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(425, 'Purwadi Situmorang S.T.', 'Perempuan', '4137992', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(426, 'Aswani Wadi Saputra S.T.', 'Laki-laki', '5508346', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(427, 'Ian Wahyudin S.Psi', 'Laki-laki', '9886816', 4, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(428, 'Najwa Tari Lailasari S.Farm', 'Laki-laki', '9142137', 1, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(429, 'Galar Lutfan Ardianto', 'Laki-laki', '4949729', 4, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(430, 'Calista Riyanti', 'Perempuan', '6990577', 3, NULL, '2023-03-30 19:13:21', '2023-03-30 19:13:21', NULL),
(431, 'Oman Jefri Prasetya', 'Laki-laki', '4702991', 1, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(432, 'Cinthia Hariyah', 'Laki-laki', '8534835', 1, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(433, 'Daliono Wibowo', 'Laki-laki', '8479721', 3, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(434, 'Hasta Panji Widodo', 'Laki-laki', '6800229', 3, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(435, 'Cayadi Hidayanto', 'Perempuan', '9684549', 2, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(436, 'Vivi Rahimah', 'Laki-laki', '3370803', 1, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(437, 'Irma Anggraini', 'Laki-laki', '5133956', 1, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(438, 'Icha Mayasari S.Pd', 'Perempuan', '6700182', 1, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(439, 'Omar Tamba', 'Laki-laki', '441344', 2, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(440, 'Wahyu Jaswadi Sitompul S.E.I', 'Perempuan', '4069599', 4, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(441, 'Tina Astuti S.Psi', 'Laki-laki', '8541892', 2, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(442, 'Purwanto Damanik', 'Perempuan', '9561992', 4, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(443, 'Jagaraga Dalimin Wibisono S.Farm', 'Laki-laki', '339269', 4, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(444, 'Tari Hariyah', 'Laki-laki', '2761442', 3, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(445, 'Tantri Elma Pratiwi', 'Laki-laki', '4263216', 4, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL);
INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(446, 'Dacin Prabowo S.Pd', 'Laki-laki', '1692552', 4, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(447, 'Vera Wastuti', 'Perempuan', '2645111', 1, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(448, 'Dagel Firmansyah', 'Laki-laki', '8154512', 3, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(449, 'Anita Purnawati', 'Perempuan', '7851297', 3, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(450, 'Tiara Laksmiwati', 'Laki-laki', '7813120', 4, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(451, 'Nurul Andriani M.M.', 'Perempuan', '9188626', 4, NULL, '2023-03-30 19:13:22', '2023-03-30 19:13:22', NULL),
(452, 'Tania Ratih Purwanti', 'Laki-laki', '9319927', 1, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(453, 'Eja Warsita Suryono M.Kom.', 'Laki-laki', '2137865', 1, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(454, 'Cayadi Dongoran', 'Perempuan', '6249391', 2, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(455, 'Rahmi Dian Sudiati', 'Perempuan', '9786395', 3, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(456, 'Irma Utami S.Sos', 'Perempuan', '3553447', 1, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(457, 'Capa Ajimat Saefullah', 'Laki-laki', '2997379', 2, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(458, 'Lili Oktaviani S.Psi', 'Perempuan', '5800867', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(459, 'Daryani Saragih', 'Laki-laki', '9067949', 2, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(460, 'Titin Haryanti', 'Laki-laki', '3141659', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(461, 'Jagaraga Zulkarnain S.E.I', 'Perempuan', '3747786', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(462, 'Irwan Saragih', 'Laki-laki', '7181490', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(463, 'Irma Oktaviani', 'Perempuan', '5504670', 3, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(464, 'Cinta Hariyah', 'Laki-laki', '2960562', 3, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(465, 'Endra Dabukke', 'Laki-laki', '4834744', 3, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(466, 'Anastasia Mutia Nasyiah', 'Laki-laki', '7094203', 1, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(467, 'Marwata Ghani Prasetya', 'Laki-laki', '9887850', 2, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(468, 'Harsaya Hidayanto', 'Laki-laki', '681363', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(469, 'Paulin Lintang Pertiwi S.Ked', 'Laki-laki', '178903', 2, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(470, 'Diah Kamila Novitasari S.E.I', 'Laki-laki', '2441464', 2, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(471, 'Parman Nainggolan', 'Laki-laki', '5048883', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(472, 'Ella Betania Laksmiwati', 'Perempuan', '2790777', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(473, 'Darmana Caturangga Prayoga', 'Laki-laki', '1679663', 3, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(474, 'Maryadi Wijaya S.Ked', 'Laki-laki', '3302964', 1, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(475, 'Ibun Winarno', 'Laki-laki', '2998629', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(476, 'Tedi Wasita S.Psi', 'Perempuan', '1887895', 4, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(477, 'Lalita Gina Widiastuti M.TI.', 'Laki-laki', '5745826', 2, NULL, '2023-03-30 19:13:23', '2023-03-30 19:13:23', NULL),
(478, 'Hairyanto Galiono Tamba', 'Perempuan', '7671702', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(479, 'Kasiyah Wahyuni', 'Laki-laki', '4319395', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(480, 'Raditya Lantar Megantara', 'Laki-laki', '4557848', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(481, 'Dinda Usada', 'Laki-laki', '2278294', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(482, 'Salwa Laila Wulandari', 'Laki-laki', '9085315', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(483, 'Jelita Safitri S.Farm', 'Laki-laki', '1047905', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(484, 'Ulva Wastuti', 'Laki-laki', '767555', 1, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(485, 'Jumari Mandala', 'Perempuan', '6120319', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(486, 'Ani Winarsih S.I.Kom', 'Perempuan', '7021078', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(487, 'Liman Teddy Napitupulu S.H.', 'Laki-laki', '4234157', 1, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(488, 'Nilam Tina Agustina S.E.', 'Laki-laki', '3142037', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(489, 'Kambali Gunarto', 'Perempuan', '9175813', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(490, 'Kania Suci Hariyah', 'Perempuan', '830334', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(491, 'Safina Ulva Suartini M.Farm', 'Laki-laki', '5701948', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(492, 'Ibun Purwanto Hakim', 'Perempuan', '3500804', 2, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(493, 'Safina Hassanah', 'Perempuan', '3184407', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(494, 'Banara Rahmat Siregar', 'Perempuan', '5714967', 2, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(495, 'Tiara Laksita', 'Laki-laki', '5960046', 1, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(496, 'Hasan Nugroho S.H.', 'Perempuan', '4533505', 3, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(497, 'Satya Warsita Marbun', 'Perempuan', '921152', 2, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(498, 'Dian Anggraini', 'Laki-laki', '8577330', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(499, 'Prayogo Permadi', 'Perempuan', '1259330', 2, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(500, 'Yahya Cakrajiya Marpaung', 'Perempuan', '2492508', 1, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(501, 'Yulia Melani', 'Laki-laki', '2966308', 1, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(502, 'Nadia Lili Pratiwi M.Ak', 'Laki-laki', '1570153', 4, NULL, '2023-03-30 19:13:24', '2023-03-30 19:13:24', NULL),
(503, 'Clara Mulyani', 'Laki-laki', '2638849', 2, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(504, 'Uda Wahyudin', 'Laki-laki', '8274096', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(505, 'Bahuwarna Wasita', 'Perempuan', '5492899', 3, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(506, 'Rina Padmasari', 'Perempuan', '5225255', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(507, 'Winda Zulaika', 'Laki-laki', '4858663', 3, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(508, 'Julia Padmasari', 'Laki-laki', '3063984', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(509, 'Diana Laksmiwati M.M.', 'Perempuan', '6308753', 2, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(510, 'Hartana Latif Siregar S.Pd', 'Perempuan', '2475763', 3, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(511, 'Novi Prastuti', 'Laki-laki', '5791207', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(512, 'Yoga Mansur', 'Perempuan', '5110122', 3, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(513, 'Cakrajiya Hardiansyah', 'Perempuan', '3508573', 3, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(514, 'Harsana Simanjuntak S.T.', 'Perempuan', '5535121', 2, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(515, 'Jayeng Prasasta', 'Laki-laki', '5674163', 2, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(516, 'Oni Laksita', 'Laki-laki', '4760633', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(517, 'Legawa Rajata', 'Perempuan', '8714029', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(518, 'Bella Usada', 'Laki-laki', '6554073', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(519, 'Laksana Hutagalung S.E.', 'Laki-laki', '3314169', 2, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(520, 'Elma Widya Utami M.Ak', 'Laki-laki', '8290869', 2, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(521, 'Lukman Pradipta', 'Laki-laki', '9531171', 1, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(522, 'Malika Maryati', 'Perempuan', '1604136', 1, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(523, 'Upik Widodo', 'Perempuan', '8025290', 2, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(524, 'Pangestu Panca Uwais', 'Laki-laki', '5652932', 3, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(525, 'Hadi Johan Prasetyo M.Ak', 'Laki-laki', '7365486', 1, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(526, 'Qori Gasti Permata', 'Perempuan', '4888711', 3, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(527, 'Salimah Mayasari', 'Laki-laki', '4823372', 4, NULL, '2023-03-30 19:13:25', '2023-03-30 19:13:25', NULL),
(528, 'Hani Yuni Laksita S.Psi', 'Perempuan', '1929431', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(529, 'Lili Mulyani', 'Perempuan', '4540172', 4, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(530, 'Atma Lamar Wibisono', 'Laki-laki', '8406222', 2, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(531, 'Bakianto Hidayat S.IP', 'Laki-laki', '5787930', 2, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(532, 'Prima Gatot Saptono', 'Laki-laki', '1749474', 4, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(533, 'Among Kawaya Haryanto', 'Laki-laki', '3162615', 4, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(534, 'Harjasa Iswahyudi', 'Laki-laki', '7175712', 2, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(535, 'Lala Salsabila Mayasari S.Pd', 'Laki-laki', '1756036', 1, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(536, 'Hendra Saragih S.Sos', 'Perempuan', '507376', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(537, 'Raina Aurora Pudjiastuti', 'Laki-laki', '7344997', 1, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(538, 'Tomi Adinata Santoso', 'Perempuan', '6717633', 2, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(539, 'Arta Siregar', 'Laki-laki', '9049961', 2, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(540, 'Cemani Prasasta', 'Laki-laki', '309481', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(541, 'Diah Laksita', 'Laki-laki', '3078608', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(542, 'Damu Sitompul M.TI.', 'Laki-laki', '3191027', 4, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(543, 'Ilsa Ellis Suartini', 'Laki-laki', '7340157', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(544, 'Ade Sihombing', 'Perempuan', '3732052', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(545, 'Uchita Yulianti', 'Perempuan', '6643876', 2, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(546, 'Wahyu Prabawa Natsir S.Sos', 'Perempuan', '9213536', 2, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(547, 'Rangga Kambali Ramadan M.Ak', 'Laki-laki', '1808627', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(548, 'Almira Puji Safitri S.Gz', 'Perempuan', '379096', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(549, 'Jaeman Saputra S.Gz', 'Laki-laki', '328434', 1, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(550, 'Wakiman Narpati S.Ked', 'Laki-laki', '8347305', 3, NULL, '2023-03-30 19:13:26', '2023-03-30 19:13:26', NULL),
(551, 'Dwi Maheswara', 'Laki-laki', '8828731', 4, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(552, 'Samiah Padmi Nurdiyanti M.Farm', 'Perempuan', '4115666', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(553, 'Edison Balidin Wahyudin M.Farm', 'Perempuan', '5673614', 3, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(554, 'Luluh Salahudin', 'Perempuan', '2414375', 1, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(555, 'Febi Haryanti', 'Perempuan', '6255938', 1, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(556, 'Okta Yusuf Tampubolon', 'Perempuan', '2191782', 1, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(557, 'Lembah Harto Hutapea', 'Laki-laki', '1104595', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(558, 'Warsita Siregar M.Ak', 'Perempuan', '4651701', 3, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(559, 'Uli Mandasari', 'Laki-laki', '4693790', 1, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(560, 'Devi Purnawati', 'Laki-laki', '1894002', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(561, 'Prayitna Setiawan', 'Laki-laki', '1883634', 4, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(562, 'Tira Tari Haryanti', 'Perempuan', '3301506', 1, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(563, 'Mila Puspasari', 'Perempuan', '1235371', 4, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(564, 'Kurnia Nyoman Jailani S.E.', 'Perempuan', '4240700', 1, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(565, 'Ami Permata', 'Perempuan', '6789860', 4, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(566, 'Chelsea Maryati', 'Perempuan', '7266484', 4, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(567, 'Digdaya Simon Januar', 'Laki-laki', '6598700', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(568, 'Sadina Winarsih', 'Perempuan', '3646599', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(569, 'Martani Marbun M.Kom.', 'Laki-laki', '6490158', 3, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(570, 'Kuncara Maryadi', 'Laki-laki', '8450510', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(571, 'Eko Bajragin Hutapea', 'Perempuan', '4567716', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(572, 'Zelda Maryati', 'Perempuan', '176', 3, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(573, 'Karimah Hariyah', 'Laki-laki', '3817289', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(574, 'Karimah Usamah S.Pt', 'Laki-laki', '7656676', 4, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(575, 'Lili Hassanah', 'Perempuan', '4140587', 2, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(576, 'Endah Riyanti', 'Perempuan', '6398530', 1, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(577, 'Sari Ulva Lailasari', 'Perempuan', '4558250', 4, NULL, '2023-03-30 19:13:27', '2023-03-30 19:13:27', NULL),
(578, 'Ajimat Najmudin M.M.', 'Laki-laki', '4518385', 4, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(579, 'Caket Wasita M.Kom.', 'Perempuan', '2860471', 4, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(580, 'Kasiran Marpaung', 'Perempuan', '619902', 4, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(581, 'Oliva Permata', 'Perempuan', '1348680', 4, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(582, 'Julia Nuraini', 'Laki-laki', '768230', 1, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(583, 'Faizah Ani Anggraini', 'Laki-laki', '5342297', 4, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(584, 'Hendra Waluyo', 'Laki-laki', '6640141', 1, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(585, 'Dirja Sihotang', 'Perempuan', '1493030', 2, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(586, 'Kartika Pertiwi', 'Perempuan', '6908527', 1, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(587, 'Bala Mansur S.Psi', 'Perempuan', '2199818', 3, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(588, 'Artanto Gandi Jailani S.IP', 'Perempuan', '6668006', 1, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(589, 'Jessica Endah Hasanah', 'Perempuan', '456298', 2, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(590, 'Tania Laksmiwati', 'Laki-laki', '1922798', 2, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(591, 'Rahmat Raditya Sitompul', 'Perempuan', '6523937', 2, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(592, 'Harimurti Zulkarnain', 'Laki-laki', '2977049', 3, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(593, 'Ana Anastasia Rahmawati S.Pt', 'Perempuan', '5662802', 1, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(594, 'Humaira Hassanah S.Pd', 'Perempuan', '5381515', 1, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(595, 'Tania Rahayu', 'Laki-laki', '3313792', 2, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(596, 'Puti Winda Nasyiah', 'Perempuan', '7704285', 1, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(597, 'Hasna Nurdiyanti', 'Perempuan', '2219048', 4, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(598, 'Ganjaran Saptono', 'Perempuan', '2901754', 4, NULL, '2023-03-30 19:13:28', '2023-03-30 19:13:28', NULL),
(599, 'Daru Raditya Mansur', 'Perempuan', '1084580', 1, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(600, 'Bala Sihombing', 'Perempuan', '717577', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(601, 'Hasan Firgantoro', 'Perempuan', '848202', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(602, 'Bakiman Ramadan', 'Laki-laki', '2559949', 1, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(603, 'Raisa Fujiati', 'Laki-laki', '1387409', 2, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(604, 'Hardana Eko Sinaga', 'Laki-laki', '8460501', 1, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(605, 'Melinda Haryanti', 'Laki-laki', '2975509', 2, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(606, 'Dariati Kairav Napitupulu S.Ked', 'Perempuan', '1044525', 2, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(607, 'Cakrabirawa Napitupulu', 'Perempuan', '8176487', 1, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(608, 'Fitria Mulyani', 'Perempuan', '2603656', 2, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(609, 'Keisha Rahmawati S.Pt', 'Laki-laki', '909792', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(610, 'Aris Prabowo', 'Laki-laki', '6301557', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(611, 'Dina Melani', 'Laki-laki', '9395386', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(612, 'Vanya Pratiwi', 'Laki-laki', '4014305', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(613, 'Uda Gunawan S.I.Kom', 'Perempuan', '3546713', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(614, 'Panji Capa Kurniawan', 'Laki-laki', '1539312', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(615, 'Kasiyah Fujiati', 'Laki-laki', '7173006', 3, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(616, 'Hasna Mulyani', 'Perempuan', '3391313', 1, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(617, 'Clara Maryati S.Ked', 'Laki-laki', '3326638', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(618, 'Jessica Farida', 'Perempuan', '2247649', 1, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(619, 'Alambana Simanjuntak', 'Laki-laki', '6712167', 2, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(620, 'Banara Mandala', 'Laki-laki', '6018928', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(621, 'Zaenab Rika Laksmiwati S.Ked', 'Laki-laki', '7213965', 2, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(622, 'Zahra Maryati', 'Laki-laki', '1004039', 3, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(623, 'Viktor Nyana Ardianto S.Farm', 'Perempuan', '5097359', 4, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(624, 'Paiman Paiman Nababan S.H.', 'Perempuan', '6019367', 3, NULL, '2023-03-30 19:13:29', '2023-03-30 19:13:29', NULL),
(625, 'Raditya Waskita', 'Laki-laki', '1451344', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(626, 'Bella Kuswandari', 'Perempuan', '7383279', 2, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(627, 'Jane Usada', 'Perempuan', '5038881', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(628, 'Paramita Kusmawati', 'Perempuan', '3777890', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(629, 'Paris Yuniar', 'Perempuan', '3814015', 2, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(630, 'Kawaya Firgantoro S.IP', 'Laki-laki', '2021097', 3, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(631, 'Belinda Siska Anggraini', 'Laki-laki', '6799312', 3, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(632, 'Ulya Suartini M.Ak', 'Perempuan', '7376911', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(633, 'Sabri Suwarno M.Ak', 'Perempuan', '8220328', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(634, 'Adinata Waskita', 'Laki-laki', '6150499', 3, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(635, 'Lasmanto Mulya Thamrin S.Ked', 'Laki-laki', '7274473', 3, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(636, 'Hamima Purnawati', 'Laki-laki', '1236539', 3, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(637, 'Latika Betania Sudiati', 'Perempuan', '7372667', 3, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(638, 'Mursita Aditya Hutapea S.Psi', 'Perempuan', '6370967', 2, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(639, 'Laras Nuraini', 'Laki-laki', '5497091', 1, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(640, 'Asmuni Santoso', 'Perempuan', '2681932', 1, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(641, 'Tami Cinta Yolanda M.TI.', 'Perempuan', '5960961', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(642, 'Hartana Prasasta S.Pd', 'Laki-laki', '8759109', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(643, 'Bella Hassanah', 'Perempuan', '4299905', 2, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(644, 'Nasrullah Prasasta S.Gz', 'Perempuan', '8828090', 2, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(645, 'Farhunnisa Laksita', 'Laki-laki', '210177', 1, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(646, 'Devi Puspita', 'Perempuan', '5863991', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(647, 'Ella Suartini', 'Perempuan', '3111947', 2, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(648, 'Luwar Cagak Sinaga', 'Laki-laki', '5191121', 4, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(649, 'Nasab Mangunsong M.Farm', 'Perempuan', '2731443', 1, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(650, 'Iriana Shakila Astuti S.Gz', 'Perempuan', '9725098', 2, NULL, '2023-03-30 19:13:30', '2023-03-30 19:13:30', NULL),
(651, 'Endah Hastuti', 'Laki-laki', '3402237', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(652, 'Ulva Rahimah', 'Perempuan', '8536614', 1, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(653, 'Puji Agustina S.Kom', 'Laki-laki', '8308417', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(654, 'Kunthara Nainggolan', 'Perempuan', '751707', 1, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(655, 'Azalea Maryati', 'Perempuan', '8638050', 4, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(656, 'Diana Rahayu', 'Laki-laki', '3531065', 2, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(657, 'Latika Hassanah S.T.', 'Perempuan', '3832415', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(658, 'Asirwanda Jayeng Wijaya S.Kom', 'Laki-laki', '1263309', 4, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(659, 'Maida Oktaviani', 'Perempuan', '297953', 2, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(660, 'Argono Dalimin Waluyo', 'Laki-laki', '2447556', 1, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(661, 'Diah Maryati', 'Perempuan', '5530735', 2, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(662, 'Anita Farida S.Gz', 'Perempuan', '2587805', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(663, 'Ulya Ana Fujiati M.Ak', 'Laki-laki', '7796730', 2, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(664, 'Bagas Firmansyah', 'Perempuan', '3925102', 4, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(665, 'Kadir Jailani', 'Laki-laki', '5297703', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(666, 'Kajen Pradipta', 'Laki-laki', '7556547', 1, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(667, 'Rafi Uwais', 'Laki-laki', '2162986', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(668, 'Harja Uda Lazuardi', 'Perempuan', '4031495', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(669, 'Bakiman Lazuardi', 'Perempuan', '8374398', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(670, 'Suci Natalia Kusmawati', 'Perempuan', '5496687', 4, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(671, 'Bajragin Prasetyo', 'Laki-laki', '1934393', 1, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(672, 'Cager Tamba M.M.', 'Perempuan', '7175289', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(673, 'Eka Hutapea', 'Perempuan', '7600426', 3, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(674, 'Yuni Tari Puspasari S.I.Kom', 'Laki-laki', '884863', 1, NULL, '2023-03-30 19:13:31', '2023-03-30 19:13:31', NULL),
(675, 'Faizah Pratiwi', 'Perempuan', '8386929', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(676, 'Edi Pradipta S.T.', 'Laki-laki', '5351206', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(677, 'Hasta Napitupulu', 'Perempuan', '9640289', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(678, 'Tari Kusmawati', 'Laki-laki', '6147949', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(679, 'Kuncara Saefullah', 'Perempuan', '9614881', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(680, 'Irma Nasyiah', 'Laki-laki', '7869068', 1, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(681, 'Wirda Astuti', 'Perempuan', '8783423', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(682, 'Ulva Keisha Usada', 'Perempuan', '9206787', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(683, 'Kala Samsul Hidayanto M.Farm', 'Perempuan', '1837112', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(684, 'Violet Lestari S.E.', 'Perempuan', '7264702', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(685, 'Nyana Cahyo Mustofa', 'Laki-laki', '1645994', 1, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(686, 'Intan Widiastuti', 'Perempuan', '9227111', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(687, 'Kusuma Pradana', 'Perempuan', '5663110', 1, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(688, 'Jagaraga Artawan Natsir', 'Perempuan', '3726141', 1, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(689, 'Ellis Nuraini', 'Laki-laki', '1834881', 1, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(690, 'Zulaikha Tiara Nurdiyanti M.M.', 'Perempuan', '4717064', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(691, 'Eka Tarihoran', 'Perempuan', '5817609', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(692, 'Michelle Michelle Haryanti', 'Laki-laki', '3601129', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(693, 'Rudi Kemba Rajata M.Ak', 'Laki-laki', '4009120', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(694, 'Kasusra Marpaung', 'Perempuan', '4510520', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(695, 'Sakti Siregar', 'Perempuan', '3278439', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(696, 'Hasna Hariyah S.Pd', 'Laki-laki', '2085481', 4, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(697, 'Wadi Prabawa Kuswoyo', 'Perempuan', '6736243', 4, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(698, 'Ayu Astuti', 'Perempuan', '8061127', 3, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(699, 'Cindy Pratiwi', 'Perempuan', '859882', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(700, 'Elvin Mahendra M.M.', 'Perempuan', '5231475', 1, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(701, 'Ibun Reksa Sinaga', 'Laki-laki', '5170304', 2, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(702, 'Ulya Utami S.Sos', 'Perempuan', '5707263', 4, NULL, '2023-03-30 19:13:32', '2023-03-30 19:13:32', NULL),
(703, 'Koko Mahendra', 'Perempuan', '5259614', 3, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(704, 'Jelita Tami Yuniar M.Kom.', 'Perempuan', '7166649', 3, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(705, 'Estiono Januar', 'Perempuan', '9727448', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(706, 'Wage Prima Habibi', 'Laki-laki', '5067606', 3, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(707, 'Karimah Aryani', 'Laki-laki', '6736178', 1, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(708, 'Galang Hutasoit', 'Perempuan', '5956643', 4, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(709, 'Praba Hardiansyah', 'Laki-laki', '7855159', 3, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(710, 'Devi Palastri', 'Perempuan', '2010059', 4, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(711, 'Hasta Ade Simanjuntak M.TI.', 'Laki-laki', '4770919', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(712, 'Samsul Nainggolan', 'Laki-laki', '6812701', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(713, 'Kasiyah Nasyidah', 'Perempuan', '3201788', 4, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(714, 'Najib Edison Tampubolon S.Farm', 'Perempuan', '8832056', 4, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(715, 'Kardi Putra S.I.Kom', 'Perempuan', '2714218', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(716, 'Maida Namaga S.Pd', 'Laki-laki', '9550606', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(717, 'Rahmi Tania Novitasari S.Farm', 'Laki-laki', '6294274', 1, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(718, 'Murti Balijan Napitupulu', 'Laki-laki', '4035204', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(719, 'Restu Nasyiah', 'Perempuan', '4322849', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(720, 'Nova Wijayanti', 'Laki-laki', '6046562', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(721, 'Vega Limar Setiawan M.Pd', 'Perempuan', '8105804', 3, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(722, 'Kania Kamaria Farida', 'Laki-laki', '3369699', 1, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(723, 'Harsaya Habibi', 'Laki-laki', '9696404', 3, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(724, 'Samsul Pratama', 'Perempuan', '8494889', 1, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(725, 'Victoria Utami', 'Perempuan', '1853658', 1, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(726, 'Yuni Yance Prastuti', 'Laki-laki', '89500', 4, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(727, 'Mujur Bakiono Pratama S.T.', 'Laki-laki', '1960725', 2, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(728, 'Tami Yuniar', 'Laki-laki', '5080133', 1, NULL, '2023-03-30 19:13:33', '2023-03-30 19:13:33', NULL),
(729, 'Tina Yulianti', 'Laki-laki', '8440500', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(730, 'Lili Pertiwi M.Farm', 'Perempuan', '5910911', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(731, 'Titin Hariyah', 'Perempuan', '4607795', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(732, 'Hesti Safitri', 'Perempuan', '4010473', 2, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(733, 'Hardi Sihombing', 'Perempuan', '5252130', 4, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(734, 'Bagiya Kajen Sihotang S.T.', 'Perempuan', '7437270', 4, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(735, 'Langgeng Damanik', 'Laki-laki', '2176949', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(736, 'Sakura Mayasari', 'Perempuan', '8997429', 2, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(737, 'Siti Winda Aryani', 'Perempuan', '1043426', 1, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(738, 'Hafshah Usamah', 'Laki-laki', '4592035', 2, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(739, 'Puti Susanti S.Farm', 'Perempuan', '4635744', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(740, 'Ade Suryono', 'Perempuan', '2838263', 1, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(741, 'Halima Nurdiyanti', 'Perempuan', '2938283', 4, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(742, 'Samiah Keisha Oktaviani M.TI.', 'Laki-laki', '5761039', 1, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(743, 'Bambang Harjasa Prakasa M.Farm', 'Perempuan', '4318152', 2, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(744, 'Jarwa Hendri Mustofa', 'Laki-laki', '8041335', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(745, 'Kamaria Uyainah', 'Laki-laki', '9270556', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(746, 'Paiman Setya Hidayat S.Ked', 'Laki-laki', '6634760', 4, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(747, 'Karya Daryani Tamba M.Pd', 'Perempuan', '9039230', 2, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(748, 'Keisha Usada', 'Laki-laki', '1153906', 1, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(749, 'Alika Hastuti', 'Laki-laki', '7981227', 4, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(750, 'Ani Halima Purnawati S.T.', 'Perempuan', '3592673', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(751, 'Cici Kuswandari', 'Perempuan', '5580', 4, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(752, 'Tirta Cahyono Saefullah', 'Laki-laki', '3532069', 3, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(753, 'Hartana Prima Budiman S.Pt', 'Laki-laki', '5398069', 2, NULL, '2023-03-30 19:13:34', '2023-03-30 19:13:34', NULL),
(754, 'Mariadi Megantara', 'Laki-laki', '9524896', 3, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(755, 'Septi Kusmawati', 'Laki-laki', '7358161', 3, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(756, 'Chelsea Ifa Andriani M.Ak', 'Perempuan', '3269164', 3, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(757, 'Ami Winarsih', 'Laki-laki', '5962929', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(758, 'Kariman Prakasa S.E.', 'Perempuan', '6059259', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(759, 'Sabri Candra Wasita', 'Perempuan', '5906706', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(760, 'Gangsa Uwais', 'Laki-laki', '8829510', 2, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(761, 'Dinda Pratiwi', 'Laki-laki', '8640376', 1, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(762, 'Laswi Rajasa S.E.', 'Perempuan', '1500782', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(763, 'Kasiyah Utami', 'Perempuan', '9870913', 3, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(764, 'Ajiman Prabowo', 'Laki-laki', '3595563', 1, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(765, 'Betania Purwanti', 'Perempuan', '9083709', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(766, 'Manah Sinaga M.Ak', 'Laki-laki', '2460300', 1, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(767, 'Zalindra Lalita Sudiati', 'Laki-laki', '3426464', 3, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(768, 'Bagiya Bakiadi Winarno S.Psi', 'Perempuan', '3349184', 3, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(769, 'Amalia Hamima Winarsih', 'Perempuan', '893422', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(770, 'Wira Wibowo', 'Perempuan', '5796137', 2, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(771, 'Ida Padmasari', 'Laki-laki', '7478516', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(772, 'Kamaria Zizi Hariyah', 'Perempuan', '9711334', 1, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(773, 'Jasmin Haryanti M.Pd', 'Laki-laki', '5235290', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(774, 'Salimah Palastri', 'Laki-laki', '382965', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(775, 'Zelda Prastuti S.Gz', 'Laki-laki', '2485190', 1, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(776, 'Rahayu Yolanda', 'Perempuan', '7994112', 4, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(777, 'Tasnim Kuswoyo', 'Perempuan', '7586530', 2, NULL, '2023-03-30 19:13:35', '2023-03-30 19:13:35', NULL),
(778, 'Cemplunk Prabowo Hidayat S.Pt', 'Laki-laki', '9372863', 3, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(779, 'Jaiman Firmansyah', 'Perempuan', '4306802', 2, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(780, 'Bahuwarna Ganjaran Halim S.Sos', 'Laki-laki', '9852485', 2, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(781, 'Eli Halima Nasyidah M.Ak', 'Laki-laki', '6022850', 2, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(782, 'Gandi Waluyo S.Ked', 'Perempuan', '8692541', 3, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(783, 'Ivan Cakrawala Marpaung S.Pd', 'Perempuan', '3909004', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(784, 'Silvia Puspita', 'Perempuan', '5896042', 3, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(785, 'Leo Prasetya', 'Perempuan', '9848584', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(786, 'Empluk Wibowo M.M.', 'Laki-laki', '5256252', 3, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(787, 'Novi Safitri', 'Perempuan', '3509088', 2, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(788, 'Elisa Wulandari', 'Perempuan', '7588875', 1, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(789, 'Ilsa Zulaika M.Pd', 'Perempuan', '3468758', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(790, 'Cahya Sinaga', 'Perempuan', '9614422', 2, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(791, 'Gading Mangunsong', 'Perempuan', '9615013', 2, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(792, 'Kenes Saefullah M.M.', 'Perempuan', '5763164', 3, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(793, 'Kairav Marpaung S.Pd', 'Laki-laki', '9364473', 3, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(794, 'Raisa Utami', 'Perempuan', '4905066', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(795, 'Gading Sirait', 'Perempuan', '7201908', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(796, 'Emil Lurhur Saragih', 'Laki-laki', '6955387', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(797, 'Salsabila Dalima Suryatmi', 'Perempuan', '4075446', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(798, 'Novi Uyainah', 'Perempuan', '2557971', 3, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(799, 'Zelaya Usamah', 'Perempuan', '8646436', 4, NULL, '2023-03-30 19:13:36', '2023-03-30 19:13:36', NULL),
(800, 'Pia Kusmawati', 'Laki-laki', '1633686', 4, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(801, 'Martana Siregar', 'Perempuan', '2814508', 2, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(802, 'Narji Wage Uwais', 'Perempuan', '3019285', 2, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(803, 'Farhunnisa Maryati', 'Perempuan', '5969935', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(804, 'Manah Damanik', 'Laki-laki', '5089073', 3, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(805, 'Daliono Nashiruddin', 'Laki-laki', '4309611', 4, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(806, 'Artanto Jailani', 'Laki-laki', '3691999', 4, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(807, 'Daruna Wibisono', 'Perempuan', '8963043', 3, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(808, 'Dalimin Wibisono S.Ked', 'Perempuan', '1152884', 4, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(809, 'Ciaobella Tantri Pertiwi', 'Laki-laki', '1766598', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(810, 'Chelsea Halimah', 'Laki-laki', '1916446', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(811, 'Gina Ika Zulaika M.Farm', 'Laki-laki', '1771257', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(812, 'Kamaria Mandasari', 'Laki-laki', '2811274', 3, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(813, 'Langgeng Banawi Saragih', 'Laki-laki', '2281128', 2, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(814, 'Umar Siregar', 'Laki-laki', '85105', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(815, 'Prakosa Anggriawan S.E.I', 'Perempuan', '9535059', 2, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(816, 'Hafshah Halimah', 'Laki-laki', '6857681', 2, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(817, 'Bakiono Salahudin S.Pt', 'Perempuan', '2950026', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(818, 'Michelle Fujiati', 'Perempuan', '2320740', 4, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(819, 'Genta Mandasari S.T.', 'Laki-laki', '6873323', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(820, 'Wadi Perkasa Prakasa', 'Perempuan', '8593100', 2, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(821, 'Wani Rahimah', 'Perempuan', '2015275', 2, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(822, 'Dimas Tampubolon M.TI.', 'Perempuan', '5287094', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(823, 'Julia Usamah S.E.I', 'Laki-laki', '5747947', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(824, 'Tasdik Najmudin', 'Laki-laki', '7827553', 1, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(825, 'Gasti Usyi Yulianti M.Farm', 'Laki-laki', '6892232', 4, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(826, 'Zulaikha Pudjiastuti', 'Laki-laki', '1859046', 3, NULL, '2023-03-30 19:13:37', '2023-03-30 19:13:37', NULL),
(827, 'Muni Mitra Simbolon S.Psi', 'Laki-laki', '3354124', 3, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(828, 'Baktianto Karma Dongoran', 'Perempuan', '4297549', 1, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(829, 'Ina Hassanah', 'Laki-laki', '8911803', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(830, 'Padma Rahmawati S.I.Kom', 'Laki-laki', '3845872', 1, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(831, 'Jelita Suryatmi', 'Perempuan', '4802436', 4, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(832, 'Vanesa Hassanah S.T.', 'Perempuan', '4691303', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(833, 'Hana Humaira Anggraini', 'Perempuan', '906873', 4, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(834, 'Ivan Arsipatra Wasita M.Farm', 'Laki-laki', '8017042', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(835, 'Belinda Palastri S.Kom', 'Perempuan', '4420059', 1, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(836, 'Raharja Jindra Megantara M.Ak', 'Perempuan', '4380886', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(837, 'Langgeng Wahyudin', 'Perempuan', '1536772', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(838, 'Taswir Megantara', 'Perempuan', '103531', 3, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(839, 'Zelda Carla Puspasari', 'Perempuan', '1742437', 1, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(840, 'Kusuma Budiman M.M.', 'Perempuan', '9715152', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(841, 'Eli Hartati M.Ak', 'Perempuan', '309735', 1, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(842, 'Puspa Wirda Safitri', 'Laki-laki', '9716669', 4, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(843, 'Putu Sabar Pangestu S.Pd', 'Laki-laki', '751230', 4, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(844, 'Prakosa Vero Pranowo S.I.Kom', 'Laki-laki', '825797', 4, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(845, 'Jabal Prasetyo', 'Perempuan', '7880198', 1, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(846, 'Olga Pranowo', 'Perempuan', '7038288', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(847, 'Jagaraga Upik Zulkarnain S.Sos', 'Perempuan', '4653848', 4, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(848, 'Maria Laksita S.Pt', 'Perempuan', '3503871', 2, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(849, 'Lega Ramadan', 'Perempuan', '5349890', 3, NULL, '2023-03-30 19:13:38', '2023-03-30 19:13:38', NULL),
(850, 'Mustofa Harjasa Prasetyo', 'Laki-laki', '6435844', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(851, 'Cagak Utama', 'Laki-laki', '2014120', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(852, 'Cindy Purnawati', 'Laki-laki', '9746886', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(853, 'Cengkir Wasita', 'Perempuan', '4352300', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(854, 'Lukman Pranowo', 'Perempuan', '5654266', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(855, 'Halima Hartati', 'Laki-laki', '5989664', 2, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(856, 'Adhiarja Wibowo', 'Perempuan', '7196715', 2, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(857, 'Jaga Jayeng Pratama', 'Perempuan', '465235', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(858, 'Lembah Simbolon M.M.', 'Perempuan', '6789935', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(859, 'Jabal Nababan', 'Perempuan', '2712310', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(860, 'Hendri Marbun', 'Laki-laki', '6820334', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(861, 'Kajen Salahudin', 'Laki-laki', '571707', 2, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(862, 'Ibrani Pranowo', 'Laki-laki', '9906459', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(863, 'Heru Siregar', 'Laki-laki', '7798900', 2, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(864, 'Karna Prima Suryono', 'Laki-laki', '9199409', 4, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(865, 'Kairav Alambana Sinaga', 'Perempuan', '1138051', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(866, 'Vanya Wulandari', 'Perempuan', '3915548', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(867, 'Zalindra Hariyah', 'Laki-laki', '5163673', 2, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(868, 'Putri Fujiati', 'Laki-laki', '4302734', 2, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(869, 'Daruna Kemal Uwais S.Ked', 'Perempuan', '3188893', 2, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(870, 'Umay Parman Ardianto S.Pt', 'Perempuan', '337648', 4, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(871, 'Lembah Santoso', 'Laki-laki', '9363690', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(872, 'Asmianto Natsir', 'Perempuan', '514741', 4, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(873, 'Gamanto Rendy Nashiruddin', 'Laki-laki', '436690', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(874, 'Dian Hastuti', 'Laki-laki', '2384510', 3, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(875, 'Kayla Oktaviani', 'Perempuan', '1910905', 1, NULL, '2023-03-30 19:13:39', '2023-03-30 19:13:39', NULL),
(876, 'Rizki Marbun S.Sos', 'Laki-laki', '1671127', 3, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(877, 'Gamani Hutagalung', 'Perempuan', '4586476', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(878, 'Karimah Eva Yulianti S.Gz', 'Perempuan', '578415', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(879, 'Tirta Wasita', 'Perempuan', '7904656', 2, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(880, 'Lala Halimah', 'Laki-laki', '6347588', 3, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(881, 'Baktiono Mustofa S.I.Kom', 'Laki-laki', '8956387', 3, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(882, 'Maria Rachel Fujiati S.T.', 'Laki-laki', '6474450', 4, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(883, 'Wadi Ramadan', 'Perempuan', '9353467', 4, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(884, 'Ira Mulyani S.Ked', 'Perempuan', '3361711', 4, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(885, 'Nova Susanti M.Farm', 'Laki-laki', '2208737', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(886, 'Faizah Widiastuti', 'Perempuan', '642108', 2, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(887, 'Praba Nugroho S.Psi', 'Laki-laki', '1420982', 4, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(888, 'Galang Daruna Marbun', 'Perempuan', '6516645', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(889, 'Yani Mandasari', 'Laki-laki', '7641831', 3, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(890, 'Elma Yolanda S.Psi', 'Laki-laki', '9500224', 2, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL);
INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(891, 'Umi Nasyidah', 'Perempuan', '750847', 2, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(892, 'Kasim Dimaz Pradipta S.E.', 'Perempuan', '7909170', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(893, 'Cemplunk Wasita', 'Laki-laki', '1762007', 3, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(894, 'Cakrawangsa Tarihoran S.T.', 'Perempuan', '5974421', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(895, 'Rafi Natsir', 'Perempuan', '5449', 4, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(896, 'Hartana Arsipatra Marbun', 'Perempuan', '9914765', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(897, 'Gina Uyainah', 'Perempuan', '7593236', 2, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(898, 'Galih Paiman Waskita', 'Laki-laki', '5657757', 2, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(899, 'Kenzie Bagas Tarihoran', 'Perempuan', '6468315', 4, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(900, 'Johan Halim S.Pt', 'Perempuan', '72164', 2, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(901, 'Darman Januar', 'Perempuan', '5378095', 1, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(902, 'Janet Dinda Usamah S.IP', 'Perempuan', '792906', 4, NULL, '2023-03-30 19:13:40', '2023-03-30 19:13:40', NULL),
(903, 'Parman Nashiruddin', 'Laki-laki', '1767107', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(904, 'Zaenab Lestari', 'Perempuan', '4519278', 4, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(905, 'Karman Budiman', 'Perempuan', '888005', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(906, 'Elisa Wahyuni S.Ked', 'Laki-laki', '6148462', 1, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(907, 'Luwar Bambang Winarno', 'Laki-laki', '8208985', 4, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(908, 'Ciaobella Oktaviani', 'Perempuan', '3390069', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(909, 'Lili Puji Susanti S.T.', 'Perempuan', '5946665', 1, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(910, 'Yosef Salahudin', 'Perempuan', '1857409', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(911, 'Cornelia Usada', 'Perempuan', '5205253', 1, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(912, 'Novi Astuti', 'Laki-laki', '2463852', 1, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(913, 'Ganda Kuswoyo S.T.', 'Laki-laki', '9295034', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(914, 'Ajiono Mangunsong S.E.', 'Laki-laki', '1422013', 1, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(915, 'Melinda Puspita', 'Perempuan', '3137928', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(916, 'Hasim Jayeng Hutapea', 'Laki-laki', '881532', 4, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(917, 'Warji Prayoga', 'Laki-laki', '1329098', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(918, 'Galih Mahendra S.T.', 'Perempuan', '8085643', 4, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(919, 'Kacung Pratama S.E.', 'Perempuan', '4116760', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(920, 'Wirda Puspasari', 'Laki-laki', '7710318', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(921, 'Novi Nasyidah', 'Perempuan', '5942597', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(922, 'Gangsa Adriansyah S.Pt', 'Laki-laki', '4117558', 4, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(923, 'Ganep Gunarto S.Ked', 'Perempuan', '4340245', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(924, 'Dalima Agustina S.Pd', 'Perempuan', '9973830', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(925, 'Raden Prasetya', 'Laki-laki', '1902059', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(926, 'Marsito Budiyanto', 'Laki-laki', '3445432', 4, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(927, 'Saka Elon Jailani', 'Perempuan', '961819', 3, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(928, 'Dimaz Mahfud Marpaung M.Kom.', 'Laki-laki', '698704', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(929, 'Bella Safitri S.Farm', 'Laki-laki', '4649835', 4, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(930, 'Taswir Firmansyah', 'Perempuan', '5056174', 2, NULL, '2023-03-30 19:13:41', '2023-03-30 19:13:41', NULL),
(931, 'Jagaraga Sitompul', 'Laki-laki', '6811733', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(932, 'Johan Santoso', 'Perempuan', '156638', 1, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(933, 'Caket Simbolon S.Kom', 'Perempuan', '9774814', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(934, 'Galih Dongoran', 'Laki-laki', '3028958', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(935, 'Rini Putri Yulianti', 'Perempuan', '1925760', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(936, 'Bakti Saefullah', 'Laki-laki', '8176628', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(937, 'Diana Lili Puspasari', 'Laki-laki', '171212', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(938, 'Jatmiko Saputra', 'Laki-laki', '2385340', 1, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(939, 'Yuni Suryatmi', 'Perempuan', '2636530', 3, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(940, 'Darijan Marpaung', 'Perempuan', '9622304', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(941, 'Adika Bakiadi Winarno S.H.', 'Laki-laki', '1744930', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(942, 'Reksa Sitompul S.H.', 'Perempuan', '6563050', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(943, 'Safina Widya Laksmiwati S.Kom', 'Laki-laki', '87065', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(944, 'Tantri Kusmawati S.Gz', 'Perempuan', '1360415', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(945, 'Nurul Jelita Novitasari', 'Laki-laki', '5762703', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(946, 'Hana Irma Anggraini', 'Perempuan', '4112338', 3, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(947, 'Daruna Manullang S.Gz', 'Laki-laki', '2407981', 1, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(948, 'Latika Wijayanti', 'Laki-laki', '8246924', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(949, 'Gadang Dalimin Simanjuntak', 'Laki-laki', '8889120', 3, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(950, 'Nabila Hasanah', 'Laki-laki', '3350891', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(951, 'Abyasa Limar Nainggolan', 'Perempuan', '1072188', 1, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(952, 'Tiara Andriani', 'Laki-laki', '9224561', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(953, 'Balidin Capa Ramadan S.IP', 'Perempuan', '3326855', 3, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(954, 'Zulaikha Kuswandari', 'Laki-laki', '3197132', 3, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(955, 'Laila Hastuti', 'Laki-laki', '7560854', 4, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(956, 'Virman Mangunsong', 'Perempuan', '4903672', 2, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(957, 'Ina Sari Nuraini M.Farm', 'Perempuan', '5586948', 3, NULL, '2023-03-30 19:13:42', '2023-03-30 19:13:42', NULL),
(958, 'Cahyono Budiman', 'Laki-laki', '4628316', 3, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(959, 'Kani Keisha Purwanti', 'Laki-laki', '3699740', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(960, 'Kania Ajeng Pudjiastuti', 'Perempuan', '3039130', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(961, 'Artanto Cakrabuana Adriansyah S.Sos', 'Perempuan', '9539416', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(962, 'Danang Halim', 'Perempuan', '8942278', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(963, 'Lukita Anggriawan S.T.', 'Perempuan', '909038', 3, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(964, 'Siska Mandasari', 'Perempuan', '938091', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(965, 'Almira Handayani S.E.I', 'Perempuan', '138253', 3, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(966, 'Oni Pudjiastuti', 'Laki-laki', '6643409', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(967, 'Keisha Mayasari', 'Perempuan', '1900508', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(968, 'Karen Haryanti', 'Laki-laki', '8706811', 3, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(969, 'Ibrahim Manullang', 'Laki-laki', '7434180', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(970, 'Clara Ade Susanti', 'Perempuan', '1006730', 3, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(971, 'Widya Handayani S.Kom', 'Laki-laki', '3611843', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(972, 'Kamal Mahmud Pradipta', 'Laki-laki', '8919022', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(973, 'Alambana Hardiansyah', 'Laki-laki', '301385', 3, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(974, 'Adhiarja Manullang', 'Laki-laki', '8652951', 2, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(975, 'Zelaya Lailasari', 'Laki-laki', '2559874', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(976, 'Dewi Pratiwi', 'Perempuan', '1881232', 3, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(977, 'Zamira Namaga', 'Perempuan', '4268046', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(978, 'Eja Budiman', 'Laki-laki', '3013802', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(979, 'Setya Lazuardi', 'Laki-laki', '8534632', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(980, 'Paramita Lestari S.Pt', 'Laki-laki', '3547311', 1, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(981, 'Suci Rachel Pudjiastuti M.Ak', 'Perempuan', '1898559', 4, NULL, '2023-03-30 19:13:43', '2023-03-30 19:13:43', NULL),
(982, 'Asmadi Najmudin S.H.', 'Perempuan', '4733463', 1, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(983, 'Nasab Permadi', 'Laki-laki', '7700646', 4, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(984, 'Gantar Uwais', 'Laki-laki', '1810701', 1, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(985, 'Yosef Siregar', 'Perempuan', '3083075', 3, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(986, 'Hasim Saragih S.Sos', 'Perempuan', '8400296', 3, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(987, 'Jabal Gunarto S.Pt', 'Laki-laki', '3092148', 2, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(988, 'Padma Pertiwi', 'Laki-laki', '8984139', 4, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(989, 'Kalim Wahyudin', 'Perempuan', '2349660', 3, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(990, 'Padma Sudiati', 'Laki-laki', '8331206', 1, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(991, 'Jagaraga Wijaya', 'Perempuan', '1765131', 4, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(992, 'Halima Sudiati', 'Perempuan', '2969364', 1, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(993, 'Lalita Ciaobella Usada', 'Laki-laki', '7674282', 4, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(994, 'Jabal Sihombing', 'Laki-laki', '9473858', 2, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(995, 'Siti Padmi Mayasari M.Ak', 'Perempuan', '7089110', 4, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(996, 'Mulya Bagas Suwarno', 'Laki-laki', '6329937', 2, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(997, 'Zizi Winda Fujiati S.Farm', 'Laki-laki', '2710934', 4, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(998, 'Rahmi Yulianti', 'Perempuan', '7350634', 2, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(999, 'Capa Ardianto', 'Perempuan', '7601157', 1, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL),
(1000, 'Waluyo Gunarto', 'Perempuan', '5676293', 4, NULL, '2023-03-30 19:13:44', '2023-03-30 19:13:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_extracurricular`
--

CREATE TABLE `student_extracurricular` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `extracurricular_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@email.com', 1, NULL, '$2y$10$srv1AreikExOXA53MqzHJ.u5yUSW4b4O/I4X63/sQji5yfVAnmMlm', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name_unique` (`name`),
  ADD KEY `class_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `extracurriculars`
--
ALTER TABLE `extracurriculars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Indexes for table `student_extracurricular`
--
ALTER TABLE `student_extracurricular`
  ADD KEY `student_extracurricular_student_id_foreign` (`student_id`),
  ADD KEY `student_extracurricular_extracurricular_id_foreign` (`extracurricular_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extracurriculars`
--
ALTER TABLE `extracurriculars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);

--
-- Constraints for table `student_extracurricular`
--
ALTER TABLE `student_extracurricular`
  ADD CONSTRAINT `student_extracurricular_extracurricular_id_foreign` FOREIGN KEY (`extracurricular_id`) REFERENCES `extracurriculars` (`id`),
  ADD CONSTRAINT `student_extracurricular_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
