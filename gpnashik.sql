-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 08:33 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gpnashik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `_id` int(50) NOT NULL,
  `username` varchar(265) NOT NULL,
  `email` int(11) NOT NULL,
  `email_verified_at` varchar(265) DEFAULT NULL,
  `password` varchar(265) NOT NULL,
  `department` varchar(265) NOT NULL,
  `ph_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2021_03_26_193223_create_response_m_s_table', 1),
(5, '2021_04_05_152723_create_dept_m_s_table', 1),
(6, '2021_04_05_164045_create_m_students_table', 1),
(7, '2021_04_08_164621_create_mdb_specificats_table', 1),
(8, '2021_04_08_171046_create_m_db_exams_table', 1),
(9, '2021_04_26_163625_create_m_ques_table', 2),
(10, '2021_04_27_133024_create_m_qs_table', 3),
(11, '2021_04_28_135919_create_mongo_ques_table', 4),
(12, '2021_04_28_163620_create_mongo_specifis_table', 5),
(13, '2021_04_28_165946_create_mongo_exams_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mongo_exams`
--

CREATE TABLE `mongo_exams` (
  `_id` int(10) UNSIGNED NOT NULL,
  `sub_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_sub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `no_of_que` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mongo_ques`
--

CREATE TABLE `mongo_ques` (
  `_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_ans` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_que_1` int(11) NOT NULL,
  `unit_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mongo_specifis`
--

CREATE TABLE `mongo_specifis` (
  `_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `unit_no` int(11) NOT NULL,
  `unit_weightage` int(11) NOT NULL,
  `mark1` int(11) NOT NULL,
  `mark2` int(11) NOT NULL,
  `mark4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_depts`
--

CREATE TABLE `m_depts` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_responses`
--

CREATE TABLE `m_responses` (
  `stu_id` int(11) NOT NULL,
  `stu_roll` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yes_ans` int(11) NOT NULL,
  `no_ans` int(11) NOT NULL,
  `result_json` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `m_students`
--

CREATE TABLE `m_students` (
  `exam_id` int(11) NOT NULL,
  `stu_roll` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_done_or_not` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mongo_exams`
--
ALTER TABLE `mongo_exams`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `mongo_ques`
--
ALTER TABLE `mongo_ques`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mongo_exams`
--
ALTER TABLE `mongo_exams`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mongo_ques`
--
ALTER TABLE `mongo_ques`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
