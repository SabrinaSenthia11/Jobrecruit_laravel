-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 07:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobhunt_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'senthia', 'senthia@gmail.com', '$2y$10$kSZBlf0OfMVYXJymxZSapuvaO32z87wFsV7rKD79liyrolFLBhLui', 'admin.jpg', '', '2023-06-25 04:31:12', '2023-06-25 04:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_listing_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_listing_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_listing_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_listing_ad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_listing_ad_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_listing_ad_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `job_listing_ad`, `job_listing_ad_url`, `job_listing_ad_status`, `company_listing_ad`, `company_listing_ad_url`, `company_listing_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'job_listing_ad.jpg', 'https://www.google.com', 'Hide', 'company_listing_ad.jpg', 'https://www.yahoo.com', 'Hide', NULL, '2023-07-04 01:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_job_listing` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_job_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_job_categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_company_listing` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_company_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_pricing` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_blog` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_post` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_faq` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_signup` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_forget_password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_company_panel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_candidate_panel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_job_listing`, `banner_job_detail`, `banner_job_categories`, `banner_company_listing`, `banner_company_detail`, `banner_pricing`, `banner_blog`, `banner_post`, `banner_faq`, `banner_contact`, `banner_terms`, `banner_privacy`, `banner_signup`, `banner_login`, `banner_forget_password`, `banner_company_panel`, `banner_candidate_panel`, `created_at`, `updated_at`) VALUES
(1, 'banner_job_listing.jpg', 'banner_job_detail.jpg', 'banner_job_categories.jpg', 'banner_company_listing.jpg', 'banner_company_detail.jpg', 'banner_pricing.jpg', 'banner_blog.jpg', 'banner_post.jpg', 'banner_faq.jpg', 'banner_contact.jpg', 'banner_terms.jpg', 'banner_privacy.jpg', 'banner_signup.jpg', 'banner_login.jpg', 'banner_forget_password.jpg', 'banner_company_panel.jpg', 'banner_candidate_panel.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `designation`, `username`, `email`, `password`, `token`, `photo`, `biography`, `phone`, `country`, `address`, `state`, `city`, `zip_code`, `gender`, `marital_status`, `date_of_birth`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, 'senthia', 'PHP Developer', 'senthia', 'senthia@gmail.com', '$2y$10$LpfVvaPXRjGTBKtdiZoCze82qWjU2RzAJnspOLbFVFNR2WurWuTrW', '', 'candidate_photo_1687509166.jpg', '<p><span style=\"color: #212529; font-family: Rubik, sans-serif; font-size: 15.5px; letter-spacing: 1px; text-align: justify; background-color: #ffffff;\">We practice reducing the impact of potential risks by developing a plan to manage, eliminate, or limit setbacks as much as possible.</span></p>', '01500000', 'Bangldesh', 'Gazipur', 'Gazipur', 'Gazipur', NULL, 'Female', 'Unmarried', '2000-11-11', NULL, 1, '2023-01-08 05:22:32', '2023-07-13 12:56:07'),
(2, 'Adif Hasan', 'PHP Developer', 'adif', 'adif@gmail.com', '$2y$10$N0HtrzblaZ/CmUgAgrN96uwvFlX9pp1Zt5Z7cfKJquwYuIFlW7TWm', '', 'candidate_photo_1687691153.jpg', '<p>Lorem ipsum dolor sit amet, sapientem repudiare no est, vidit ipsum honestatis te eam, dicam nonumy vituperata ne per. Qui augue quidam liberavisse ne, ut duo impedit blandit. Ceteros dolores in vix. Dicat veniam habemus ius ex. Tation detraxit concludaturque ne est, probo conceptam et mea, sea ubique eligendi suscipit ea.</p>\r\n<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>', '017000000', 'Dhaka', 'Tongi', NULL, 'Tongi', NULL, 'Male', 'Unmarried', '2000-12-26', NULL, 1, '2023-01-16 03:04:49', '2023-06-25 05:05:53'),
(3, 'Puja Saha', 'PHP Developer', 'puja', 'puja@gmail.com', '$2y$10$rVMLzvjKCoXEJg0hnBNDae0W4TxIt4i2EiN.GWoCLgPh3afLbILnW', '', NULL, NULL, '140000', 'Bangladesh', 'Dhaka', 'Uttara', 'Uttara', '1230', 'Female', 'Unmarried', '2000-12-30', NULL, 1, '2023-06-25 05:10:02', '2023-06-25 05:10:02'),
(26, 'Razi Shah', 'MD', 'razi', 'razi22@gmail.com', '$2y$10$ojtVbdR.oc5TsICjKOxG8uUBGo2ZDmaEwHoKjPK8rK0yFa.cxpppm', '', '', '', '01660000000', 'Bangladesh', 'Uttara', '', 'Dhaka', '', '', '', '', '', 1, '2023-07-22 00:53:47', '2023-07-22 00:53:47'),
(30, 'sonchita paul', 'Web Developer', 'sonchi', 'sonchi@gmail.com', '$2y$10$4b/17qhUxMnEWOnVQjnMQOdj/OpdezXnDVJv7T1tDHk6DdEfBclpy', '88d574a893eb3ffccad57abf1abe2f860cc8b905e083bbad94fc9e3c498685bd', NULL, NULL, '0160606006', 'Bangladesh', 'Uttara', NULL, 'Dhaka', NULL, 'Female', 'Unmarried', '2000-02-09', NULL, 1, '2023-07-24 01:15:25', '2023-07-30 05:07:23'),
(31, 'Durjoy', 'Account Manager', 'durjoy', 'durjoy@gmail.com', '$2y$10$gmHhIhJ9iRzbbi/hyaK58uXUfydmHGvtp.qKj/atgIbFikL4ekfcy', 'deffded61a0e68b33f5dc196cbc94b7c8d513fe4eea62a69556fa4182b016668', NULL, '<p>Hard working,passionate</p>', '01314050505', 'Bangladesh', 'Dhaka', 'Gazipur', 'Gazipur', NULL, 'Male', 'Unmarried', '2000-03-15', NULL, 1, '2023-07-24 01:17:50', '2023-07-26 02:28:40'),
(32, 'Mithila Hasan', 'Admin', 'mithila', 'mithila@gmail.com', '$2y$10$7xHlAfOAl3MG9o8GYxOyau9kmEJzNt77UizN/ccdA/rLWRVKIsXGK', '0164ecc7f7fe1eb18a2ff6bdd8294b85df529cf2d419f9b8f4a40b06fa1a073b', NULL, '<p>hard working</p>', '0103040443', 'Bangladesh', 'Bogra', 'Bogra', 'Amtoli', NULL, 'Female', 'Unmarried', '2000-07-13', NULL, 1, '2023-07-24 09:51:00', '2023-07-28 09:41:29'),
(33, 'Neha Ahmed', 'SQA', 'Neha', 'neha@gmail.com', '$2y$10$q0e1NqnVzP7AjQ7U97W4tuvF4hg9zy/jDxFaGr.tsSoE46XV5p2Xy', '8dcbd441c9022df3f03f4f617f617d40ad3cee56bc5662ab5efc085dda2a1cb7', NULL, NULL, '0103040443', 'Bangladesh', 'Barishal', 'Barishal', NULL, NULL, 'Female', 'Married', NULL, NULL, 1, '2023-08-14 12:11:14', '2023-08-14 12:13:44'),
(34, 'Naas Ldt', NULL, 'niloy', 'niloy@gmail.com', '$2y$10$AzTicHnS1XBUZi8qA/PbY.Eo0QqgFBXyltcQf5EKgR6A/Kil5G/8S', '8f453c705f060cc0ce5b11c3db6f523d5836fdefadeb9a59a2b82186d3d3f5c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-14 12:15:25', '2023-08-14 12:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_applications`
--

CREATE TABLE `candidate_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_applications`
--

INSERT INTO `candidate_applications` (`id`, `candidate_id`, `job_id`, `cover_letter`, `status`, `created_at`, `updated_at`) VALUES
(17, 1, 2, 'Hi,\r\nThis is sabrina ,wants to be an employee in your office .', 'Applied', '2023-07-05 14:09:18', '2023-07-05 14:09:18'),
(20, 2, 2, 'Hi there ,This is Adif \r\nI have the qualities as you mentioned in the', 'Applied', '2023-07-06 12:48:29', '2023-07-06 12:48:29'),
(25, 1, 31, 'hi there', 'Applied', '2023-07-22 01:00:23', '2023-07-22 01:00:23'),
(26, 31, 30, 'Hi ,\r\nthis is durjoy ,want to be a part of your company.', 'Applied', '2023-07-26 02:41:07', '2023-07-26 02:41:07'),
(29, 32, 31, 'hi', 'Applied', '2023-07-28 10:02:58', '2023-07-28 10:02:58'),
(30, 30, 29, 'Hi there this is sonchita\r\nNeeded a job.', 'Approved', '2023-08-02 08:50:36', '2023-08-12 22:15:03'),
(31, 30, 33, 'This is me ,want a job in this company', 'Applied', '2023-08-02 09:13:15', '2023-08-02 09:13:15'),
(32, 1, 27, 'wrwerwet', 'Applied', '2023-08-19 00:41:47', '2023-08-19 00:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_awards`
--

CREATE TABLE `candidate_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_awards`
--

INSERT INTO `candidate_awards` (`id`, `candidate_id`, `title`, `description`, `date`, `created_at`, `updated_at`) VALUES
(2, 1, 'Hackerrank', 'Python', '2.8.2022', '2023-01-14 13:34:50', '2023-07-04 04:46:29'),
(5, 31, 'Book Reading', 'English speaking,Writting,Listening.', '2.8.2022', '2023-07-26 02:37:54', '2023-07-26 02:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_bookmarks`
--

CREATE TABLE `candidate_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_bookmarks`
--

INSERT INTO `candidate_bookmarks` (`id`, `candidate_id`, `job_id`, `created_at`, `updated_at`) VALUES
(13, 31, 31, '2023-08-15 02:19:59', '2023-08-15 02:19:59'),
(14, 1, 27, '2023-08-18 06:29:53', '2023-08-18 06:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education`
--

CREATE TABLE `candidate_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `level` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `passing_year` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_education`
--

INSERT INTO `candidate_education` (`id`, `candidate_id`, `level`, `institute`, `degree`, `passing_year`, `created_at`, `updated_at`) VALUES
(1, 1, 'Secondary', 'BARI', 'S.S.C.', '2016', '2023-06-25 11:03:39', '2023-07-13 13:12:59'),
(2, 1, 'Higher Secondary', 'GGMC', 'H.S.C.', '2018', '2023-06-25 11:03:39', '2023-07-13 13:12:47'),
(5, 3, 'School', 'Bagherhat girls school', 'SSC', '2015', '2023-06-25 05:21:25', '2023-06-25 05:21:25'),
(6, 31, 'School', 'Rani Bilash Moni Got. School', 'SSC', '2018', '2023-07-26 02:31:59', '2023-07-26 02:31:59'),
(7, 31, 'Collage', 'UHSC', 'HSC', '2020', '2023-07-26 02:32:52', '2023-07-26 02:32:52'),
(8, 31, 'University', 'x', 'BBA', '2023', '2023-07-26 02:34:22', '2023-07-26 02:34:22'),
(9, 32, 'School', 'ABC', 'SSC', '2015', '2023-07-28 09:43:03', '2023-07-28 09:43:03'),
(10, 32, 'Collage', 'DEF', 'HSC', '2018', '2023-07-28 09:43:34', '2023-07-28 09:43:34'),
(11, 32, 'University', 'GHI', 'BBA', '2023', '2023-07-28 09:43:59', '2023-07-28 09:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_experiences`
--

CREATE TABLE `candidate_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_experiences`
--

INSERT INTO `candidate_experiences` (`id`, `candidate_id`, `company`, `designation`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(3, 1, 'Carriastic', 'Intern', 'Jan 2023', 'May 2023', '2023-01-14 12:25:46', '2023-07-04 04:47:35'),
(6, 31, 'abc', 'Account Manager Intern', 'Jan 2023', 'May 2023', '2023-07-26 02:36:37', '2023-07-26 02:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_resumes`
--

INSERT INTO `candidate_resumes` (`id`, `candidate_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'CV', 'resume_1688467753.pdf', '2023-01-14 14:20:26', '2023-07-04 04:49:13'),
(2, 1, 'Experience Certificate 1', 'resume_1688467798.pdf', '2023-01-14 14:22:09', '2023-07-04 04:49:58'),
(5, 1, 'certificates in css', 'resume_1687508826.pdf', '2023-06-23 02:27:06', '2023-06-23 02:27:06'),
(6, 2, 'CV', 'resume_1688455151.pdf', '2023-07-04 01:19:11', '2023-07-04 01:19:11'),
(7, 31, 'CV', 'resume_1690360745.pdf', '2023-07-26 02:39:05', '2023-07-26 02:39:05'),
(8, 32, 'Resume', 'resume_1690558926.pdf', '2023-07-28 09:42:06', '2023-07-28 09:42:06'),
(9, 30, 'Resume', 'resume_1690715274.pdf', '2023-07-30 05:07:54', '2023-07-30 05:07:54'),
(10, 26, 'cv', 'resume_1690716183.pdf', '2023-07-30 05:23:03', '2023-07-30 05:23:03'),
(11, 30, 'CV', 'resume_1690987926.pdf', '2023-08-02 08:52:06', '2023-08-02 08:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_skills`
--

CREATE TABLE `candidate_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_skills`
--

INSERT INTO `candidate_skills` (`id`, `candidate_id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(2, 1, 'HTML', '88', '2023-01-14 11:46:13', '2023-07-04 04:48:41'),
(3, 1, 'Laravel', '30', '2023-01-14 11:46:31', '2023-07-04 04:48:05'),
(4, 1, 'Javascript', '75', '2023-01-14 11:46:44', '2023-01-14 11:46:44'),
(5, 1, 'Ajax', '30', '2023-01-14 11:46:53', '2023-07-04 04:48:15'),
(8, 1, 'css', '70', '2023-06-25 04:09:20', '2023-07-04 04:48:27'),
(9, 3, 'CSS', '60', '2023-06-25 05:21:43', '2023-06-25 05:21:43'),
(10, 3, 'Figma', '60', '2023-06-25 05:21:57', '2023-06-25 05:21:57'),
(11, 31, 'Team lead', '60', '2023-07-26 02:29:24', '2023-07-26 02:29:24'),
(12, 31, 'Account management', '70', '2023-07-26 02:29:50', '2023-07-26 02:29:50'),
(13, 32, 'Management', '70', '2023-07-28 09:44:28', '2023-07-28 09:44:28'),
(14, 32, 'Team lead', '30', '2023-07-28 09:44:48', '2023-07-28 09:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_location_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `founded_on` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_mon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_tue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_wed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_thu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_fri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_sat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oh_sun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `company_industry_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `person_name`, `username`, `email`, `password`, `token`, `logo`, `phone`, `address`, `company_location_id`, `company_size_id`, `founded_on`, `website`, `description`, `oh_mon`, `oh_tue`, `oh_wed`, `oh_thu`, `oh_fri`, `oh_sat`, `oh_sun`, `map_code`, `facebook`, `twitter`, `linkedin`, `instagram`, `status`, `company_industry_id`, `created_at`, `updated_at`) VALUES
(6, 'Strategy One', 'David Williams', 'william', 'william@gmail.com', '$2y$10$aYcE67fGXzchbCxreEMgKuTrXya7wuWvQMitxq8MPmwC3P1IGG8zS', '', '', '01315000503', 'Dhaka', 3, 4, '2010', 'https://www.strategyone.com', '<p>Vel possit epicuri an, quando phaedrum persequeris ex pri. Ne quem veniam interpretaris qui, et prima signiferumque nam, eum an persius dissentiet. Qui nibh tempor abhorreant an, ne paulo veniam scriptorem his, vel ne fabulas legendos. Vivendo perfecto est eu, malorum interesset et vix. Ad pertinax efficiendi qui, mea soluta consectetuer definitionem id. Eu vix purto debet adversarium, ne cum iusto civibus intellegat. No nam aperiam sanctus omittam.</p>\r\n<p>At eos mutat tritani indoctum. Ut est augue fuisset legendos, novum accusam ad has, ius habemus docendi cu. Ex falli iuvaret repudiandae vim, eos stet iriure eu. Ad molestie luptatum eloquentiam sea. Liber altera eos ea. Te impetus atomorum sententiae sea, ad pro quidam eirmod.</p>', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', '9:00 AM to 5:00 PM', 'Off Day', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3152.9375101445244!2d-122.41098868538252!3d37.79150421897117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c5afe7f79%3A0xdbf78a9033336b23!2sPowell%20Place!5e0!3m2!1sen!2sbd!4v1673853962833!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '#', '#', '#', '#', 1, 3, '2023-01-16 01:13:54', '2023-01-16 02:01:14'),
(14, 'Apex', 'Senthia', 'jabin', 'senthia@gmail.com', '$2y$10$RPhDosFT3.EjBFrgfxc0ZuI.F.nQb1IPaonX95hRnoAsXyqxzM3mu', '', '', '012323232', 'Sylhet', 4, 5, '2009', 'www.apex.com', 'ddekdjwlekjwej', '10-5pm', '10-5pm', '10-5pm', '10-5pm', '10-5pm', '10-5pm', 'offday', '', '#', '#', '#', '#', 1, 1, '2023-06-22 00:36:24', '2023-06-22 00:36:24'),
(15, 'Codetree', 'Sabrina', 'Sabrina', 'sabrina@gmail.com', '$2y$10$hmwE8oHkn/RFRosowU2yC.8pjWZVYowAHKSdJgFO9MeFVqyL9cTo2', '', NULL, '012123123123', 'Uttara', 1, 2, '2019', 'www.codetree.com', 'hello there', '11am-5pm', '11am-5pm', '11am-5pm', '11am-5pm', 'offday', 'offday', '11am-5pm', NULL, '#', '#', '#', '#', 1, 3, '2023-07-07 13:28:29', '2023-07-07 13:28:29'),
(16, 'Dhaka Bank', 'Razi Shah', 'razi', 'razi@gmail.com', '$2y$10$RCUQSNWKm98CWEr5aCuPjOd6ujkb/nZk7stXJ3E/6zZWl32mmA/J6', '', '', '0120340404', 'Dhaka', 1, 5, '2000', 'www.dhakabank.com', 'Bank information', '10-3pm', '10-3pm', '10-3pm', '10-3pm', 'offday', 'offday', '10-3pm', '', '#', '#', '#', '#', 1, 7, '2023-07-19 03:59:28', '2023-07-19 03:59:28'),
(17, 'SoftBD', 'Krishna Das', 'krishna', 'krishna@gmail.com', '$2y$10$VeffW4OFJCZzy3fDBQqo3e.gOyks.QwwhGwjXXVh7mv.SKUKzy/Z.', 'bc9cc9361b23d0caf7f54652f4bb64d3adece5603778de360f516a4e839db6ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-24 01:21:27', '2023-07-24 01:21:27'),
(18, 'Therap BD', 'Fahim', 'Fahim', 'fahim@gmail.com', '$2y$10$akEnGYnPKvIbR96tlz6kAOeEp37dQFq24vNVi4.N5NhXzXQE7UKJO', '0ab756e8a2d098e02eb469a764c34090b0e1bf312fc3bdbcdcf237c5264b6842', NULL, '0160606065', 'Tongi', 1, 5, '1900', NULL, NULL, '9am-5pm', '9am-5pm', '9am-5pm', '9am-5pm', 'Offday', 'Offday', '9am-5pm', NULL, NULL, NULL, NULL, NULL, 1, 3, '2023-07-27 03:30:59', '2023-08-04 12:07:46'),
(19, 'ACI Ltd', 'Mahazabin', 'mahazabin', 'mahazabin@gmail.com', '$2y$10$U6qGI9Z0cf5fABbVpcmnv.0pztS2pkTXWnoFEbeoXqDmEac47M5UK', 'e9b02340f2d5b3940208de0ed1b4f0412ea15f6bebf49b548d18104edbbf9f51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-27 03:33:01', '2023-07-27 03:33:01'),
(20, 'Nagad', 'Rana sir', 'rana', 'rana@gmail.com', '$2y$10$oOAksuIQavmNzEJ4j1de9O3FYczK5fKOOefs1eF/6lCU3dHkVMAAi', 'ea6be0e0f18fc6491a1b5b6b025f94272e1faa4f64e1bef47d20249bf4419610', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-27 03:35:17', '2023-07-27 03:35:17'),
(21, 'genex', 'Puja', 'puja', 'puja@gmail.com', '$2y$10$vF27wdfDUfrLQB8jRXUqfuhoBy7bihmdJGhK77SVwl1vGUbmLy1Bu', 'b8e5a03a65e4600c9c016d893880a83fddac431403a58b0d8321adc4826e44ce', 'company_logo_1690452653.jpg', '013030330', 'Khilket', 1, 6, '2009', 'www.genex.com', '<p><span style=\"color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Leading IT company trusted by global brands</span></p>', '9am-5pm', '9am-5pm', '9am-5pm', '9am-5pm', 'Offday', 'Offday', '9am-5pm', NULL, '#', '#', '#', '#', 1, 3, '2023-07-27 04:06:08', '2023-07-27 04:11:27'),
(22, 'Bjit', 'Chayon Sir', 'chayon', 'chayon@gmail.ccom', '$2y$10$2NomJauoFC9Zvz26vA.h1OEq7zT6x6/vFz3ZQhqU1aOGhW3geYvw.', '45863644e8ddef6f2664b883bec091bb4d8e4d8ab9aee88c76e8e4b6893eb19d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-28 08:37:21', '2023-07-28 08:37:21'),
(23, 'ARCED', 'Adif', 'adif', 'adif@gmail.com', '$2y$10$9ab0/stuuoD9v8ELRexvZe622tVMM3sPeZGE9PwfKT6AfxTupdEX2', '95bf5c876bdd50b5575cc46e569b186a54069bd09b33c7eb7cc14fba5b86687c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-28 08:40:42', '2023-07-28 08:40:42'),
(24, 'Banglalink', 'Niloy sir', 'niloy', 'niloy@gmail.com', '$2y$10$cwgoMo0O6vn8A91TgwtjBu0GquYdrMMPwf4Y/LPSLP7dXTwic8zxm', 'd3a7b64dc81e34419401377ad80d4f21fbf7311c6af9d66fc39b92f83df99df6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-07-28 09:26:00', '2023-07-28 09:26:00'),
(25, 'NextGen Ltd', 'Shaheen', 'Shaheen', 'shaheen@gmail.com', '$2y$10$3VF2S16zsPeeNbod1T8U9u6nVVgAeuROqaEl85ekXoXfUikIB8ib6', '9f8c7b1e6fad65f91a67404b1fe087a7d1399e92ac324fd604c253e28e629625', NULL, '01514040404', 'Uttara', 5, 4, '1900', NULL, NULL, '9am-5pm', '9am-5pm', '9am-5pm', '9am-5pm', 'Offday', 'Offday', '9am-5pm', NULL, NULL, NULL, NULL, NULL, 1, 1, '2023-08-14 11:45:46', '2023-08-14 12:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `company_industries`
--

CREATE TABLE `company_industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_industries`
--

INSERT INTO `company_industries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Accounting Firm', '2023-01-12 03:32:15', '2023-01-12 03:32:15'),
(2, 'Software Company', '2023-01-12 03:32:27', '2023-01-12 03:32:27'),
(3, 'IT Company', '2023-01-12 03:32:34', '2023-01-12 03:32:34'),
(4, 'Real Estate Company', '2023-01-12 03:32:43', '2023-01-12 03:32:43'),
(5, 'IT and Communication', '2023-01-12 03:32:53', '2023-07-04 11:03:27'),
(6, 'Footwear company', '2023-07-07 13:36:51', '2023-07-07 13:36:51'),
(7, 'Bank', '2023-07-19 04:04:51', '2023-07-19 04:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `company_locations`
--

CREATE TABLE `company_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_locations`
--

INSERT INTO `company_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2023-01-12 02:59:29', '2023-06-25 04:47:46'),
(2, 'Khulna', '2023-01-12 02:59:38', '2023-06-25 04:47:56'),
(3, 'Joshor', '2023-01-12 02:59:45', '2023-06-25 04:48:06'),
(4, 'Sylhet', '2023-01-12 02:59:51', '2023-06-25 04:48:31'),
(5, 'Barisal', '2023-01-12 02:59:57', '2023-06-25 04:48:47'),
(6, 'Khulna', '2023-01-12 03:00:11', '2023-06-25 04:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_photos`
--

CREATE TABLE `company_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_sizes`
--

CREATE TABLE `company_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_sizes`
--

INSERT INTO `company_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2-5 Persons', '2023-07-05 03:53:03', '2023-07-05 03:53:03'),
(2, '5-10 Persons', '2023-07-05 03:53:56', '2023-07-05 03:53:56'),
(3, '10-20 Persons', '2023-07-05 03:54:34', '2023-07-05 03:54:34'),
(4, '20-50 Persons', '2023-07-05 03:56:16', '2023-07-05 03:56:16'),
(5, '50-100 Persons', '2023-07-06 03:58:12', '2023-07-06 03:58:12'),
(6, '100+ Persons', '2023-01-12 03:54:21', '2023-01-12 03:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `company_videos`
--

CREATE TABLE `company_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `video_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet qui gubergren?', '<p>Lorem ipsum dolor sit amet, qui gubergren assueverit definitiones ad. Cu solet delenit signiferumque est, nam impetus persequeris at. Quo te dignissim expetendis, mea tation soleat ea. Rebum oratio ius te, ut eum percipit delicatissimi.</p>', '2023-01-05 07:48:10', '2023-01-05 07:48:10'),
(2, 'Id quo habeo virtute evertitur pro dicta fabulas no?', '<p>Id quo habeo virtute evertitur, pro dicta fabulas no. Diceret alterum consectetuer eum an, ridens hendrerit ea vim, eam wisi viderer periculis eu. Est ad alii concludaturque, quas consetetur mel at. Dicunt evertitur omittantur no est. Cu mea suas bonorum imperdiet, sea graeci mediocritatem at.</p>', '2023-01-05 07:48:59', '2023-01-05 07:48:59'),
(3, 'Eum alii delectus adversarium ne id vim purto?', '<p>Eum alii delectus adversarium ne, id vim purto partiendo intellegat, mei illum doming cu. Ius at adhuc facilisis, quas ullum dissentiunt mel te. Id sanctus hendrerit gloriatur eum, sale malis assum ex pri, aliquid argumentum ut usu. Scripta appetere assentior ius id, ea suas purto eius eam. Vis platonem deseruisse persequeris ut, sit ne doctus accusam, mea ea nisl alienum. Pro nulla quando in, nam purto exerci ea.</p>\r\n<p>In vitae tollit iisque vel, odio laboramus neglegentur eum at. Eam eu simul quando definitionem. An vide adhuc sit, eu quo falli tritani. His viris aperiam ullamcorper ex, est adhuc ridens labores id. Ut vis saepe laudem eripuit, suscipit pericula percipitur eos ad. Unum epicurei ei nam.</p>', '2023-01-05 07:49:30', '2023-01-05 07:49:30'),
(4, 'Pri te errem recteque quo ne apeirian assueverit?', '<p>Pri te errem recteque. Quo ne apeirian assueverit philosophia, etiam debet ad duo. Nam an error paulo definitionem, an mandamus mediocrem mea, postea copiosae dissentiunt per at. Ut mea aliquando forensibus, modus nostrud torquatos ea ius.</p>', '2023-01-05 07:49:52', '2023-01-05 08:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancy` int(11) NOT NULL,
  `job_category_id` int(11) NOT NULL,
  `job_location_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `job_experience_id` int(11) NOT NULL,
  `job_gender_id` int(11) NOT NULL,
  `job_salary_range_id` int(11) NOT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL,
  `is_urgent` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `responsibility`, `skill`, `education`, `benefit`, `deadline`, `vacancy`, `job_category_id`, `job_location_id`, `job_type_id`, `job_experience_id`, `job_gender_id`, `job_salary_range_id`, `map_code`, `is_featured`, `is_urgent`, `created_at`, `updated_at`) VALUES
(27, 15, 'Software Develpoer (Backend)', '<p><span style=\"color: #bdc1c6; font-family: \'Google Sans\', arial, sans-serif; font-size: 16px; background-color: #202124;\">&nbsp;</span><span style=\"background-color: rgba(66, 133, 244, 0.3); color: #e2eeff; font-family: \'Google Sans\', arial, sans-serif; font-size: 16px;\">a statement that tells you how something or someone looks, sounds, etc</span><span style=\"color: #bdc1c6; font-family: \'Google Sans\', arial, sans-serif; font-size: 16px; background-color: #202124;\">. : words that describe something or someone. [count] Reporters called the scene &ldquo;a disaster area,&rdquo; and I think that was an accurate description. I applied for the position after reading the job description.</span></p>', '<p>erere</p>', '<p>werwere</p>', '<p>BSC&nbsp;</p>', '<p>lunch</p>', '2023-09-28', 6, 1, 1, 1, 1, 2, 1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.5277055629904!2d90.39750307506944!3d23.870899278588357!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c43b23589ec9%3A0x3f71bf01a9cd40de!2sBNS%20Center!5e0!3m2!1sen!2sbd!4v1688832837303!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 1, '2023-07-08 10:14:15', '2023-07-29 22:19:22'),
(29, 15, 'UX/UI Designer', '<p>Experts in design,have working experiences</p>', '<p>Banner ,poster desing</p>', '<p>ux/ui</p>\r\n<p>adobe photoshop</p>', '<p>BSCE</p>', '<p>Lunch,snacks,tae,coffee</p>', '2023-09-06', 3, 4, 4, 1, 2, 3, 2, NULL, 0, 0, '2023-07-19 02:27:06', '2023-07-19 02:27:06'),
(30, 16, 'Accounts Manager', '<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">We are looking for a full time Finance Officer to take charge of the financial health of the company by administering accounting operations to meet legal requirements.</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">You should be familiar with withholding tax, VAT, audits, invoices and budget preparations. Our ideal candidate demonstrates interest in managing accounting activities, including bank reconciliations, accounts payable and accounts receivable. You should also have excellent organizational skills and be able to handle time-sensitive tasks.</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">Ultimately, you&rsquo;ll be responsible for the day-to-day management of our financial transactions and procedures.</p>', '<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">1. Full treasury management including daily cash handling and bank</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">2. Daily cash book and bank book maintenance</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">3. Vendor bill management and payment</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">4. Engage in online banking activities for paperless transactions including vendor and salary payments</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">5. Withholding tax deduction and VDS cut from bills and payrolls including treasury deposit through challans, mushak 6.3 and 6.6</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">6. Assist in withholding tax reporting and monthly VAT return to the tax authority</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">7. Assist in quarterly FDI reporting</p>', '<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">Experience using financial software (specially QuickBooks Online Plus)</p>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">Advanced MS Excel skills</p>', '<p>BBA</p>', NULL, '2023-08-31', 3, 3, 3, 1, 4, 3, 4, NULL, 1, 0, '2023-07-19 04:30:24', '2023-07-19 04:30:24'),
(31, 16, 'HR (Human Resources)', '<p><span style=\"color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">This is a full-time position required to help the Finance team of Augmedix to effectively manage various accounting processes and reporting.</span></p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;</span></p>', '<ul style=\"box-sizing: inherit; margin-left: 1.6rem; padding-left: 18px; border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Management of Accounts Payable (A/P) and maintenance of A/P aging</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Assist in payroll processing and maintain effective communication with internal stakeholders</li>\r\n</ul>', '<ul style=\"box-sizing: inherit; margin-left: 1.6rem; padding-left: 18px; border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Proficiency in Microsoft Office Suite (MS Excel, MS Word)</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Ability to work in a flat organization</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Ability to communicate with external/internal stakeholders without supervision</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Meticulous attention to detail and accuracy</li>\r\n</ul>', '<ul style=\"box-sizing: inherit; margin-left: 1.6rem; padding-left: 18px; border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Graduate in Finance/Accounting major will be an added advantage</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Partial completion of Professional qualification from member bodies of IFAC</li>\r\n</ul>', '<ul style=\"box-sizing: inherit; margin-left: 1.6rem; padding-left: 18px; border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Health Insurance</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Gratuity benefit</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">Fully Subsidized meals and snacks</li>\r\n</ul>', '2023-09-01', 1, 15, 1, 3, 3, 3, 4, NULL, 1, 1, '2023-07-19 04:43:29', '2023-07-19 04:43:29'),
(32, 16, 'Techniccal Analyst', '<p>Anythig better</p>', '<p>Hardworking etc</p>', '<p>Prothom Alo</p>', '<p>BSCE,BEEE</p>', '<p>Lunch</p>', '2023-09-13', 1, 17, 4, 1, 3, 3, 2, NULL, 1, 0, '2023-07-22 01:10:29', '2023-07-22 01:10:29'),
(33, 15, 'Full Stack Developer', '<p>ddhjdh</p>', '<p>sdsds</p>', '<p>Website</p>', '<p>BSCSE</p>', '<p>Lunch</p>', '2023-08-03', 1, 1, 1, 3, 2, 1, 3, NULL, 0, 0, '2023-08-02 08:39:39', '2023-08-02 09:11:28'),
(34, 18, 'Android Developer', '<p><span style=\"color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">we\'re making world class apps for the local people. If you love challenges, working in a fast paced environment, making apps to be used by millions, we\'d like to welcome you on board.</span></p>', '<ul style=\"box-sizing: inherit; margin-left: 1.6rem; padding-left: 18px; border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline);\">\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline);\">At least 2 years of professional experience in Android development</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline);\">Comfortable in writing efficient, well structured and maintainable code</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline);\">Excellent understanding of Java/Kotlin Data Structure, Algorithms etc.</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline);\">Familiar with Android Jetpack Components, Retrofit2, Room, MVVM, Firebase, Clean architecture etc</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline);\">Good understanding of Git</li>\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline);\">Good understanding of relational databases</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: var(--artdeco-reset-base-margin-zero); padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--font-size-small); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); font-weight: var(--artdeco-reset-typography-font-weight-normal); --artdeco-reset-typography_getfontsize: 1.6rem; --artdeco-reset-typography_getlineheight: 1.5; line-height: var(--artdeco-reset-typography_getLineHeight); color: var(--color-text);\">&nbsp;</p>', '<p>Linkedin</p>', '<ul style=\"box-sizing: inherit; margin-left: 1.6rem; padding-left: 18px; border: var(--artdeco-reset-base-border-zero); font-size: 14px; vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background-color: #ffffff; color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', \'Fira Sans\', Ubuntu, Oxygen, \'Oxygen Sans\', Cantarell, \'Droid Sans\', \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Lucida Grande\', Helvetica, Arial, sans-serif;\">\r\n<li style=\"box-sizing: inherit; margin-left: 1.6rem; padding: var(--artdeco-reset-base-padding-zero); border: var(--artdeco-reset-base-border-zero); font-size: var(--artdeco-reset-base-font-size-hundred-percent); vertical-align: var(--artdeco-reset-base-vertical-align-baseline); background: var(--artdeco-reset-base-background-transparent);\">B.Sc. in Computer Science or related field</li>\r\n</ul>', NULL, '2023-08-06', 1, 17, 1, 1, 10, 1, 3, NULL, 0, 0, '2023-08-04 12:23:09', '2023-08-04 12:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Engineering', 'fas fa-magic', '2023-07-01 05:58:26', '2023-07-01 05:58:26'),
(3, 'Accounting', 'fas fa-landmark', '2023-07-01 06:02:18', '2023-07-01 06:02:18'),
(4, 'Graphics Designer', 'fas fa-share-alt', '2023-07-01 06:04:06', '2023-07-01 06:04:06'),
(5, 'Marketing', 'fas fa-bullhorn', '2023-07-01 06:05:37', '2023-07-01 06:02:37'),
(6, 'Production', 'fas fa-sitemap', '2023-01-02 04:19:08', '2023-01-02 04:19:08'),
(7, 'Web Developer', 'fas fa-users', '2023-07-03 06:07:44', '2023-07-03 06:07:44'),
(8, 'Education', 'fas fa-user-graduate', '2023-01-02 04:20:22', '2023-01-02 04:20:22'),
(11, 'Security', 'fas fa-lock', '2023-01-02 21:25:02', '2023-01-02 21:25:02'),
(12, 'Telecommunication', 'fas fa-vector-square', '2023-01-02 21:25:26', '2023-01-02 21:25:26'),
(13, 'Commercial', 'fas fa-suitcase', '2023-01-02 21:25:54', '2023-01-02 21:25:54'),
(15, 'HR', 'fas fa-suitcase', '2023-07-03 05:58:26', '2023-07-03 05:58:26'),
(16, 'Teacher', 'fas fa-suitcase', '2023-07-03 06:10:13', '2023-07-03 06:10:13'),
(17, 'IT and Communication', 'fas fa-magic', '2023-07-03 06:13:13', '2023-07-03 06:15:38'),
(18, 'NGO', 'fas fa-suitcase', '2023-07-28 08:51:40', '2023-07-28 08:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fresher', '2023-06-30 20:07:54', '2023-06-30 20:07:54'),
(2, '1 Year', '2023-01-11 04:35:32', '2023-01-11 04:35:32'),
(3, '2 Years', '2023-01-11 04:35:40', '2023-01-11 04:35:40'),
(4, '3 Years', '2023-01-11 04:35:47', '2023-01-11 04:35:47'),
(10, '3.5 years', '2023-07-04 12:02:23', '2023-07-04 12:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `job_genders`
--

CREATE TABLE `job_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_genders`
--

INSERT INTO `job_genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '2023-06-29 09:51:59', '2023-06-29 09:51:59'),
(2, 'Female', '2023-06-29 09:52:09', '2023-06-29 09:52:09'),
(3, 'Not Specified', '2023-06-29 09:52:23', '2023-06-29 09:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_locations`
--

INSERT INTO `job_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2023-01-10 22:54:44', '2023-06-25 04:38:06'),
(2, 'Sylhet', '2023-01-10 22:54:52', '2023-06-25 04:38:21'),
(3, 'Chittagong', '2023-01-10 22:54:58', '2023-06-25 04:39:23'),
(4, 'Barisal', '2023-01-10 22:55:07', '2023-06-25 04:39:33'),
(5, 'Rajshahi', '2023-01-10 22:55:13', '2023-06-25 04:39:52'),
(8, 'Khulna', '2023-06-25 04:40:14', '2023-06-25 04:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `job_salary_ranges`
--

CREATE TABLE `job_salary_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_salary_ranges`
--

INSERT INTO `job_salary_ranges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tk 15,000-20,000', '2023-01-12 00:16:08', '2023-07-28 09:08:55'),
(2, 'Tk 20,000-30,000', '2023-01-12 00:16:34', '2023-07-28 09:08:33'),
(3, 'Tk 35,000-40,000', '2023-01-12 00:16:46', '2023-07-28 09:08:15'),
(4, 'Tk 40,000-50,000', '2023-01-12 00:17:04', '2023-07-28 09:08:01'),
(5, 'Tk 50,000-60,000', '2023-01-12 00:17:22', '2023-07-28 09:05:34'),
(6, 'Tk 70,000-80,000', '2023-01-12 00:17:44', '2023-07-28 09:06:17'),
(7, 'Tk 80,000-90,000', '2023-01-12 00:17:56', '2023-07-28 09:07:02'),
(8, 'Tk 90,000-95,000', '2023-01-12 00:18:19', '2023-07-28 09:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Full Time', '2023-01-11 02:30:43', '2023-01-11 02:30:43'),
(2, 'Part Time', '2023-01-11 02:30:51', '2023-01-11 02:30:51'),
(3, 'Contractual', '2023-01-11 02:30:58', '2023-01-11 02:30:58'),
(4, 'Internship', '2023-01-11 02:31:11', '2023-01-11 02:31:11'),
(5, 'Freelance', '2023-01-11 02:31:21', '2023-01-11 02:31:21');

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
(5, '2022_02_18_035205_create_admins_table', 1),
(7, '2022_12_28_080549_create_page_home_items_table', 2),
(8, '2023_01_02_021122_create_job_categories_table', 3),
(9, '2023_01_03_084406_create_why_choose_items_table', 4),
(10, '2023_01_04_105324_create_testimonials_table', 5),
(11, '2023_01_05_065028_create_posts_table', 6),
(12, '2023_01_05_134141_create_faqs_table', 7),
(13, '2023_01_05_185142_create_page_faq_items_table', 8),
(14, '2023_01_06_035704_create_page_blog_items_table', 9),
(15, '2023_01_06_050415_create_page_term_items_table', 10),
(16, '2023_01_06_055951_create_page_privacy_items_table', 11),
(17, '2023_01_06_101905_create_page_contact_items_table', 12),
(18, '2023_01_07_025746_create_page_job_category_items_table', 13),
(19, '2023_01_07_064308_create_packages_table', 14),
(20, '2023_01_07_155714_create_page_pricing_items_table', 15),
(21, '2023_01_08_023955_create_page_other_items_table', 16),
(22, '2023_01_08_062413_create_companies_table', 17),
(23, '2023_01_08_104809_create_candidates_table', 18),
(24, '2023_01_10_055139_create_orders_table', 19),
(25, '2023_01_11_043448_create_job_locations_table', 20),
(26, '2023_06_24_081552_create_job_types_table', 21),
(27, '2023_01_11_102006_create_job_experiences_table', 22),
(28, '2023_01_11_104905_create_job_genders_table', 23),
(29, '2023_01_11_161512_create_job_salary_ranges_table', 24),
(30, '2023_01_12_082123_create_company_locations_table', 25),
(31, '2023_01_12_091915_create_company_industries_table', 26),
(32, '2023_01_12_094209_create_company_sizes_table', 27),
(33, '2023_01_12_165520_create_company_photos_table', 28),
(34, '2023_01_12_185742_create_company_videos_table', 29),
(35, '2023_01_13_051447_create_jobs_table', 30),
(36, '2023_01_14_132659_create_candidate_education_table', 31),
(37, '2023_01_14_173836_create_candidate_skills_table', 32),
(38, '2023_01_14_181556_create_candidate_experiences_table', 33),
(39, '2023_01_14_192647_create_candidate_awards_table', 34),
(40, '2023_01_14_201037_create_candidate_resumes_table', 35),
(41, '2023_01_17_080918_create_candidate_bookmarks_table', 36),
(42, '2023_01_17_123810_create_candidate_applications_table', 37),
(43, '2023_01_18_021823_create_advertisements_table', 38),
(44, '2023_01_18_040010_create_banners_table', 39),
(45, '2023_01_18_112645_create_subscribers_table', 40),
(46, '2023_01_19_053258_create_settings_table', 41);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currently_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `company_id`, `package_id`, `order_no`, `paid_amount`, `payment_method`, `start_date`, `expire_date`, `currently_active`, `created_at`, `updated_at`) VALUES
(2, 25, 3, '1', '', '', '', '', 0, '2023-08-15 17:59:20', '2023-08-15 17:59:20'),
(9, 6, 1, '1673870737', '19', 'PayPal', '2023-01-16', '2023-08-23', 1, '2023-01-16 06:05:37', '2023-01-16 06:05:37'),
(17, 15, 2, '1674120072', '4000', 'bKash', '2023-07-08', '2023-09-08', 1, '2023-07-07 20:58:26', '2023-07-07 19:57:06'),
(18, 16, 3, '1674120078', '8000', 'bKash', '2023-07-19 16:20:51', '2023-09-19 16:20:51', 0, '2023-07-19 10:20:51', '2023-08-18 05:28:07'),
(19, 18, 3, '1', '', 'Nagad', '2023-08-05', '2023-09-05', 1, '2023-08-04 18:09:08', '2023-08-04 18:09:08'),
(20, 25, 3, '2', '8000', 'Nagad', '2023-08-15 ', '2023-09-15 ', 1, '2023-08-14 18:01:43', '2023-08-14 18:01:43'),
(23, 25, 2, '4', '4000', 'Nagad', '2023-08-15 ', '2023-10-15 ', 1, '2023-08-14 18:05:30', '2023-08-14 18:05:30'),
(24, 16, 1, '1692357969', '30', 'PayPal', '2023-08-18', '2023-08-25', 0, '2023-08-18 05:26:09', '2023-08-18 05:28:07'),
(25, 16, 2, '1692358087', '40', 'PayPal', '2023-08-18', '2023-09-17', 1, '2023-08-18 05:28:07', '2023-08-18 05:28:07'),
(26, 17, 1, '1692360565', '30', 'Stripe', '2023-08-18', '2023-08-25', 0, '2023-08-18 06:09:25', '2023-08-18 06:11:04'),
(27, 17, 2, '1692360664', '40', 'PayPal', '2023-08-18', '2023-09-17', 1, '2023-08-18 06:11:04', '2023-08-18 06:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` smallint(6) NOT NULL,
  `package_days` smallint(6) NOT NULL,
  `package_display_time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_allowed_jobs` tinyint(4) NOT NULL,
  `total_allowed_featured_jobs` tinyint(4) NOT NULL,
  `total_allowed_photos` tinyint(4) NOT NULL,
  `total_allowed_videos` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_price`, `package_days`, `package_display_time`, `total_allowed_jobs`, `total_allowed_featured_jobs`, `total_allowed_photos`, `total_allowed_videos`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 30, 7, '1 Week', 3, 0, 0, 0, '2023-06-07 05:47:31', '2023-06-13 13:34:39'),
(2, 'Standard', 40, 30, '1 Month', 4, 2, 2, 2, '2023-01-07 05:48:43', '2023-07-03 06:28:13'),
(3, 'Gold', 80, 90, '3 Months', 8, 15, 10, 10, '2023-01-07 05:49:36', '2023-07-19 04:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 'Blog', 'Blog', NULL, '2023-01-05 22:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `heading`, `map_code`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14594.193475879694!2d90.395924!3d23.870166!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c43c8cbbd0b1%3A0x4f462768a10fb1d5!2sCODETREE!5e0!3m2!1sen!2sbd!4v1690446040765!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Contact', 'Contact', NULL, '2023-07-27 02:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Freequently Asked Questions (FAQ)', 'FAQ', 'FAQ', NULL, '2023-01-05 13:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `search` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_category_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_choose_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_choose_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_choose_background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `why_choose_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_jobs_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_jobs_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_jobs_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_background` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `heading`, `text`, `job_title`, `job_category`, `job_location`, `search`, `background`, `job_category_heading`, `job_category_subheading`, `job_category_status`, `why_choose_heading`, `why_choose_subheading`, `why_choose_background`, `why_choose_status`, `featured_jobs_heading`, `featured_jobs_subheading`, `featured_jobs_status`, `testimonial_heading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Find Job- Make Your Path Easy To Catch Your Dream', NULL, 'Job Title', 'Job Category', 'Job Location', 'Search', '', 'Job Categories', 'sub tittle', 'Show', 'Why Choose Us', 'Our Methods to help you build your career in future', 'why_choose_home_background.jpg', 'Show', 'Featured Jobs', 'Find the awesome jobs that matches your skill', 'Show', 'Job Holder', 'testimonial_home_background.jpg', 'Show', 'Latest News', 'Check our latest news from the following section', 'Show', 'Find Job- Make Your Path Easy To Catch Your Dream', 'Find Job- Make Your Path Easy To Catch Your Dream', NULL, '2023-07-04 11:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `page_job_category_items`
--

CREATE TABLE `page_job_category_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_job_category_items`
--

INSERT INTO `page_job_category_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Job Categories', 'Job Categories', 'Job Categories', NULL, '2023-01-06 21:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_page_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_page_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_page_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_page_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_password_page_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_page_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_listing_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_listing_page_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_listing_page_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_listing_page_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_listing_page_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_listing_page_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `login_page_heading`, `login_page_title`, `login_page_meta_description`, `signup_page_heading`, `signup_page_title`, `signup_page_meta_description`, `forget_password_page_heading`, `forget_password_page_title`, `forget_password_page_meta_description`, `job_listing_page_heading`, `job_listing_page_title`, `job_listing_page_meta_description`, `company_listing_page_heading`, `company_listing_page_title`, `company_listing_page_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Login', 'Login', 'Login', 'Create Account', 'Signup', 'Signup', 'Forget Password', 'Forget Password', 'Forget Password', 'Job Listing', 'Job Listing', 'Job Listing', 'Company Listing', 'Company Listing', 'Company Listing', NULL, '2023-01-18 21:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `page_pricing_items`
--

CREATE TABLE `page_pricing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_pricing_items`
--

INSERT INTO `page_pricing_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Primiume', 'Primiume Rate', 'Primiume', NULL, '2023-07-11 11:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>Ea pri harum eleifend, mel quodsi mentitum reformidans te. Tibique placerat luptatum eam ut, usu vocent prompta no. No agam verterem temporibus vis. Officiis scripserit sed no, eum ne quas accumsan efficiantur, in usu quas cetero sapientem. Ut appetere facilisi appellantur est, mei dolor corpora ne. Autem numquam atomorum ne mel.</p>\r\n<p>Altera noster appellantur nam cu, ponderum adversarium an eos. Alia ignota mediocrem nam et. Est quodsi inermis adversarium eu, sed atomorum mandamus intellegam id. Usu at insolens recteque.</p>\r\n<p>Nec prima laudem eu, in tale utroque incorrupte ius. Falli disputationi reprehendunt cum ea, te nec minim albucius neglegentur. Eos an ferri aperiam conceptam, ne qui legere cetero consequat. Quod adipiscing eos ad, ut quo quis principes torquatos. Laoreet sapientem cum ne. Pri simul impedit interesset ex.</p>\r\n<p>Mei eripuit interpretaris ut. Te quo numquam gloriatur, decore timeam per et. Ad sit amet hinc vulputate, ea habeo impedit torquatos pri, at semper facilis salutandi quo. Et brute recusabo adipiscing vim, eos viderer iudicabit no, ne mea fierent omnesque. In facete insolens expetenda quo, in labore impetus sea.</p>\r\n<p>Id sit aliquam praesent adolescens, cu eros mucius latine usu. Cu falli harum pertinacia his, vel placerat similique necessitatibus ea, labores graecis at mea. Te mel utamur impedit ponderum, pro ei tantas commune, accusam cotidieque ne mea. Aeterno graecis per ne, mei ut probatus patrioque. Mea suas nonumes no, dolorem invenire cu pri. Nam sumo democritum te, modo nostro iudicabit est in.</p>\r\n<p>Ea per quas electram similique, te posse sententiae pro. Eum no nostrud alterum epicuri, eum ea imperdiet posidonium inciderint. Eos albucius forensibus honestatis cu, volutpat hendrerit duo te, paulo everti nam ad. Ei eleifend percipitur disputationi cum, ea sint putent salutatus per, vix tibique maluisset argumentum an.</p>\r\n<p>Ex ius dicam alienum deterruisset. Ei sea sint ignota euripidis. Usu nonumes iracundia ne. Ad sint civibus per, eum iisque dissentias in, sea te rationibus elaboraret. Cibo luptatum no sed, recusabo maiestatis incorrupte te eam. Maluisset percipitur pro ex.</p>\r\n<p>Qui at definiebas eloquentiam adversarium, mel ferri inani laoreet ei. Ius ea habeo discere meliore. Soluta tempor efficiendi nec ei, sit ea electram signiferumque. Prompta insolens ad eum.</p>', 'Privacy Policy', 'Privacy Policy', NULL, '2023-01-06 03:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Use', '<p>Lorem ipsum dolor sit amet, vis ne aeterno regione, sea dicta vituperatoribus et. Ad offendit praesent nec. Ex tritani fuisset qui. Vero probo persecuti ex quo. Eum dico insolens ad, cu eam modo erant corrumpit, et vel quis probatus.</p>\r\n<p>Ei facilis menandri euripidis nam, eam eruditi repudiandae no. Has verterem scribentur ea, sea movet equidem cu. Sonet comprehensam mea te, in pri noluisse liberavisse, ius te placerat partiendo. Consequat forensibus usu at.</p>\r\n<p>Ei clita nemore has, facilisis vulputate usu eu. Facer everti ius id, mollis electram et per, his at error iusto. Eros consectetuer ut qui, ut eos nominavi scaevola honestatis. Ex quo porro indoctum volutpat, eos illum veritus ponderum ut. Viris indoctum tractatos at has.</p>\r\n<p>Sit vidisse fabulas neglegentur ad, sed te simul feugait luptatum. Et mei duis soleat, ne movet scaevola elaboraret qui. Saepe atomorum usu cu, tollit adipiscing has te. Vis ridens quodsi te, meis graecis ad eos, suas hinc nostro duo ut.</p>\r\n<p>Cibo alienum qui id. Tale partem appellantur te pri, ad animal neglegentur nam. Mundi alterum aliquando est no, ne mei saepe salutatus sadipscing. No mea utroque mandamus deseruisse, natum appareat pri ei. Cum an vocibus theophrastus, vis causae interesset an, in noster sapientem inciderint cum.</p>\r\n<p>Minim laudem nusquam in has, quo te veniam nominavi oporteat. Ius ut velit volutpat, eam scripta atomorum in. Eu labore nostro est. Sed ei odio convenire, oportere deseruisse eos ei.</p>\r\n<p>Ceteros suavitate scribentur no nam, ut feugiat assueverit est. Usu facete offendit gubergren ei. Pro impetus labitur veritus eu, ne ius omittam albucius. Eum an nullam regione facilis, ei impetus imperdiet instructior vim. Ad mei dicit nostrum recusabo. Purto dicat graeco eu vix.</p>\r\n<p>Nonumy veritus consetetur ei sit, possit gubergren ei per, affert salutandi et eos. Omnes animal facilis an cum, ex solum primis inciderint sea. Facilisi singulis definitionem ut nec. No mucius placerat evertitur est, per intellegat expetendis no. Ei ius rebum numquam, velit iuvaret repudiandae nec id. Ne everti impetus per.</p>', 'Terms of Use', 'Terms of Use', NULL, '2023-01-05 23:35:01');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `heading`, `slug`, `short_description`, `description`, `total_view`, `photo`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 'Job Circular', 'hello', 'got yea', '<p>hi there</p>', '5', 'post_1689272611.jpg', NULL, NULL, '2023-07-13 12:23:31', '2023-07-28 10:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_bar_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_bar_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `footer_phone`, `footer_email`, `footer_address`, `facebook`, `twitter`, `pinterest`, `linkedin`, `instagram`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', '', '015000000', 'senthia@gmail.com', '015000000', 'senthia@gmail.com', 'Gazipur,DHaka', '#', '#', '#', '#', '#', '@Copyright 2023, Senthia. All Rights Reserved.', '2023-06-28 00:29:00', '2023-06-28 00:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'testing1@gmail.com', '', 1, '2023-01-18 05:41:36', '2023-01-18 05:43:31'),
(4, 'testing3@gmail.com', '', 1, '2023-01-18 09:39:32', '2023-01-18 09:39:51'),
(5, 'senthiaaa@gmail.com', 'fe8d5b40c94bb870dffe022ac955b50ba8d8cf19e9ab17ecdca70c627d062390', 0, '2023-06-25 04:50:00', '2023-06-25 04:50:00'),
(6, 'senthiaaa@gmail.com', '0f38baed705daa1cf361c07d3ad4e18f6f4cca6c88dab114fbf4a7ceca85ffc7', 0, '2023-06-25 04:50:05', '2023-06-25 04:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Sabrina Mahazabin Senthia', 'Software Engineer', 'BlaBlablabla', 'testimonial_1689271327.jpg', '2023-01-04 05:28:02', '2023-07-13 12:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_items`
--

CREATE TABLE `why_choose_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_items`
--

INSERT INTO `why_choose_items` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-briefcase', 'Quick Apply', 'You can just create your account in our website and apply for desired job very quickly.', '2023-01-03 03:48:54', '2023-01-03 09:21:55'),
(2, 'fas fa-search', 'Search Tool', 'We provide a perfect and advanced search tool for job seekers, employers or companies.', '2023-01-03 03:50:11', '2023-01-03 03:50:11'),
(3, 'fas fa-share-alt', 'Best Companies', 'The best and reputed worldwide companies registered here and so you will get the quality jobs.', '2023-01-03 03:50:35', '2023-01-03 03:50:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_education`
--
ALTER TABLE `candidate_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_industries`
--
ALTER TABLE `company_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_locations`
--
ALTER TABLE `company_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_photos`
--
ALTER TABLE `company_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sizes`
--
ALTER TABLE `company_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_videos`
--
ALTER TABLE `company_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_genders`
--
ALTER TABLE `job_genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `candidate_education`
--
ALTER TABLE `candidate_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `company_industries`
--
ALTER TABLE `company_industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company_locations`
--
ALTER TABLE `company_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_photos`
--
ALTER TABLE `company_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_sizes`
--
ALTER TABLE `company_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_videos`
--
ALTER TABLE `company_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_genders`
--
ALTER TABLE `job_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_locations`
--
ALTER TABLE `job_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_choose_items`
--
ALTER TABLE `why_choose_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
