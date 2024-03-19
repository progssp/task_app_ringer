-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_ringer_task_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `pages` int(11) NOT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`notes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `year`, `title`, `handle`, `publisher`, `isbn`, `pages`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1974, 'Carrie', 'carrie', 'Doubleday', '978-0-385-08695-0', 199, '[\"\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(2, 1975, 'Salem\'s Lot', 'salem-s-lot', 'Doubleday', '978-0-385-00751-1', 439, '[\"Nominee, World Fantasy Award, 1976[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(3, 1977, 'The Shining', 'the-shining', 'Doubleday', '978-0-385-12167-5', 447, '[\"Runner-up (4th place), Locus Award for Best Fantasy Novel, 1978[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(4, 1977, 'Rage', 'rage', 'Signet Books', '978-0-451-07645-8', 211, '[\"Published under pseudonym Richard Bachman\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(5, 1978, 'The Stand', 'the-stand', 'Doubleday', '978-0-385-12168-2', 823, '[\"Nominee, World Fantasy Award, 1979\",\"Runner-up (15th place), Locus Award, 1979[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(6, 1979, 'The Long Walk', 'the-long-walk', 'Signet Books', '978-0-451-08754-6', 384, '[\"Published under pseudonym Richard Bachman\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(7, 1979, 'The Dead Zone', 'the-dead-zone', 'Viking Press', '978-0-670-26077-5', 428, '[\"Runner-up (2nd place), Locus Award for Best Fantasy Novel, 1980[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(8, 1980, 'Firestarter', 'firestarter', 'Viking Press', '978-0-670-31541-3', 426, '[\"Nominee, British Fantasy Award\\u2019s August Derleth Award, 1981\",\"Runner-up (8th place), Locus Award for Best Science Fiction Novel, 1981[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(9, 1981, 'Roadwork', 'roadwork', 'Signet Books', '978-0-451-09668-5', 274, '[\"Published under pseudonym Richard Bachman\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(10, 1981, 'Cujo', 'cujo', 'Viking Press', '978-0-670-45193-7', 319, '[\"Winner, British Fantasy Award\\u2019s August Derleth Award, 1982\",\"Runner-up (21st place), Locus Award for Best Fantasy Novel, 1982[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(11, 1982, 'The Running Man', 'the-running-man', 'Signet Books', '978-0-451-11508-9', 219, '[\"Published under pseudonym Richard Bachman\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(12, 1982, 'The Dark Tower: The Gunslinger', 'the-dark-tower-the-gunslinger', 'Grant', '978-0-937986-50-9', 224, '[\"\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(13, 1983, 'Christine', 'christine', 'Viking', '978-0-670-22026-7', 526, '[\"Runner-up (6th place), Locus Award for Best Fantasy Novel, 1984[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(14, 1983, 'Pet Sematary', 'pet-sematary', 'Doubleday', '978-0-385-18244-7', 374, '[\"Nominee, World Fantasy Award, 1984\",\"Runner-up (7th place), Locus Award for Best Fantasy Novel, 1984[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(15, 1983, 'Cycle of the Werewolf', 'cycle-of-the-werewolf', 'Land of Enchantment', '978-0-960-38282-8', 127, '[\"Illustrated by Bernie Wrightson\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(16, 1984, 'The Talisman', 'the-talisman', 'Viking', '978-0-670-69199-9', 646, '[\"Written with Peter Straub\",\"Nominee, World Fantasy Award, 1985\",\"Runner-up (4th place), Locus Award for Best Fantasy Novel, 1985[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(17, 1984, 'The Eyes of the Dragon', 'the-eyes-of-the-dragon', 'Philtrum Press (1984)Viking (1987)', '978-0-670-81458-9', 326, '[\"First published as a limited edition in 1984, then for the mass market in 1987\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(18, 1984, 'Thinner', 'thinner', 'NAL', '978-0-453-00468-8', 309, '[\"Published under pseudonym Richard Bachman\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(19, 1986, 'It', 'it', 'Viking', '978-0-670-81302-5', 1138, '[\"Winner, British Fantasy Award\\u2019s August Derleth Award, 1987\",\"Nominee, World Fantasy Award, 1987\",\"Runner-up (3rd place), Locus Award for Best Fantasy Novel, 1987[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(20, 1987, 'The Dark Tower II: The Drawing of the Three', 'the-dark-tower-ii-the-drawing-of-the-three', 'Grant', '978-0-937986-90-5', 400, '[\"Runner-up (16th place), Locus Award for Best Fantasy Novel, 1988[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(21, 1987, 'Misery', 'misery', 'Viking', '978-0-670-81364-3', 310, '[\"Winner, Bram Stoker Award, 1988\",\"Nominee, World Fantasy Award, 1988[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(22, 1987, 'The Tommyknockers', 'the-tommyknockers', 'Putnam', '978-0-399-13314-5', 558, '[\"Runner-up (16th place), Locus Award for Best Science Fiction Novel, 1988[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(23, 1989, 'The Dark Half', 'the-dark-half', 'Viking', '978-0-670-82982-8', 431, '[\"Runner-up (2nd place), Locus Award for Best Horror Novel, 1990[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(24, 1990, 'The Stand Uncut', 'the-stand-uncut', 'Doubleday', '978-0-385-19957-5', 1152, '[\"The Complete & Uncut Edition\",\"Runner-up (2nd place), Locus Award\'s Best Horror\\/Dark Fantasy Novel, 1991[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(25, 1991, 'The Dark Tower III: The Waste Lands', 'the-dark-tower-iii-the-waste-lands', 'Grant', '978-0-937986-17-2', 512, '[\"Nominee, Bram Stoker Award, 1992\",\"Runner-up (3rd place), Locus Award for Best Horror\\/Dark Fantasy Novel, 1992[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(26, 1991, 'Needful Things', 'needful-things', 'Viking', '978-0-670-83953-7', 690, '[\"Nominee, Bram Stoker Award, 1992\",\"Runner-up (13th place), Locus Award for Best Horror\\/Dark Fantasy Novel, 1992[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(27, 1992, 'Gerald\'s Game', 'gerald-s-game', 'Viking', '978-0-670-84650-4', 352, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(28, 1992, 'Dolores Claiborne', 'dolores-claiborne', 'Viking', '978-0-670-84452-4', 305, '[\"Runner-up (14th place), Locus Award for Best Horror\\/Dark Fantasy Novel, 1993[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(29, 1994, 'Insomnia', 'insomnia', 'Viking', '978-0-670-85503-2', 787, '[\"Nominee, Bram Stoker Award, 1995\",\"Runner-up (3rd place), Locus Award for Best Fantasy\\/Horror Novel, 1995[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(30, 1995, 'Rose Madder', 'rose-madder', 'Viking', '978-0-670-85869-9', 420, '[\"Runner-up (3rd place), Locus Award for Best Horror\\/Dark Fantasy Novel, 1995[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(31, 1996, 'The Green Mile', 'the-green-mile', 'Signet Books', '978-0-451-19049-9978-0-451-19052-9978-0-451-19054-3978-0-451-19055-0978-0-451-19056-7978-0-451-19057-4', 400, '[\"Winner, Bram Stoker Award, 1997\",\"Runner-up (8th place), Locus Award for Best Horror\\/Dark Fantasy Novel, 1997[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(32, 1996, 'Desperation', 'desperation', 'Viking', '978-0-670-86836-0', 704, '[\"Twin novel of The Regulators\",\"Winner, Locus Award for Best Horror\\/Dark Fantasy Novel, 1997[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(33, 1996, 'The Regulators', 'the-regulators', 'Dutton', '978-0-525-94190-3', 480, '[\"Published under pseudonym Richard Bachman\",\"Twin novel of Desperation\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(34, 1997, 'The Dark Tower IV: Wizard and Glass', 'the-dark-tower-iv-wizard-and-glass', 'Grant', '978-1-880418-38-3', 787, '[\"Runner-up (4th place), Locus Award for Best Fantasy Novel, 1998\",\"Runner-up (6th place), Locus Award for Best Art Book, 1998[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(35, 1998, 'Bag of Bones', 'bag-of-bones', 'Scribner', '978-0-684-85350-5', 529, '[\"Winner, Bram Stoker Award, 1999\",\"Winner, British Fantasy Award\\u2019s August Derleth Award, 1999\",\"Winner, Locus Award for Best Dark Fantasy\\/Horror Novel, 1999[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(36, 1999, 'The Girl Who Loved Tom Gordon', 'the-girl-who-loved-tom-gordon', 'Scribner', '978-0-684-86762-5', 224, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(37, 2001, 'Dreamcatcher', 'dreamcatcher', 'Scribner', '978-0-743-21138-3', 620, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(38, 2001, 'Black House', 'black-house', 'Random House', '978-0-375-50439-6', 625, '[\"Sequel to The Talisman\",\"Written with Peter Straub\",\"Nominee, Bram Stoker Award, 2002\",\"Runner-up (7th place), Locus Award for Best Fantasy Novel, 2002[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(39, 2002, 'From a Buick 8', 'from-a-buick-8', 'Scribner', '978-0-743-21137-6', 368, '[\"Nominee, Bram Stoker Award, 2003\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(40, 2003, 'The Dark Tower V: Wolves of the Calla', 'the-dark-tower-v-wolves-of-the-calla', 'Grant', '978-1-880-41856-7', 714, '[\"Nominee, Bram Stoker Award, 2004\",\"Runner-up (4th place), Locus Award for Best Fantasy Novel, 2004[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(41, 2004, 'The Dark Tower VI: Song of Susannah', 'the-dark-tower-vi-song-of-susannah', 'Grant', '978-1-880-41859-8', 432, '[\"Runner-up (4th place), Locus Award for Best Fantasy Novel, 2005\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(42, 2004, 'The Dark Tower VII: The Dark Tower', 'the-dark-tower-vii-the-dark-tower', '978-1-880-41862-8', 'Grant', 845, '[\"Winner, British Fantasy Award\'s August Derleth Award, 2005\",\"Nominee, Bram Stoker Award, 2005[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(43, 2005, 'The Colorado Kid', 'the-colorado-kid', 'Hard Case Crime', '978-0-843-95584-2', 184, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(44, 2006, 'Cell', 'cell', 'Scribner', '978-0-743-29233-7', 351, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(45, 2006, 'Lisey\'s Story', 'lisey-s-story', 'Scribner', '978-0-743-28941-2', 528, '[\"Winner, Bram Stoker Award, 2007\",\"Nominee, World Fantasy Award, 2007\",\"Runner-up (10th place), Locus Award for Best Fantasy Novel, 2007[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(46, 2007, 'Blaze', 'blaze', 'Scribner', '978-1-416-55484-4', 304, '[\"Published under pseudonym Richard Bachman\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(47, 2008, 'Duma Key', 'duma-key', 'Scribner', '978-1-416-55251-2', 607, '[\"Winner, Bram Stoker Award,  2009[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(48, 2009, 'Under the Dome', 'under-the-dome', 'Scribner', '978-1-439-14850-1', 1074, '[\"Nominee, British Fantasy Award\'s August Derleth Award, 2010\",\"Runner-up (7th place), Locus Award for Best Science Fiction Novel, 2010[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(49, 2011, '11/22/63', '11-22-63', 'Scribner', '978-1-451-62728-2', 849, '[\"Nominee, British Fantasy Award, 2012\",\"Nominee, World Fantasy Award, 2012\",\"Runner-up (2nd place), Locus Award for Best Science Fiction Novel, 2012[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(50, 2012, 'The Dark Tower: The Wind Through the Keyhole', 'the-dark-tower-the-wind-through-the-keyhole', 'Grant', '978-1-880-41876-5', 336, '[\"The eighth Dark Tower novel, but chronologically set between the fourth and fifth volumes.\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(51, 2013, 'Joyland', 'joyland', 'Hard Case Crime', '978-1-781-16264-4', 288, '[\"Nominee, Edgar Award for Best Paperback Original, 2014[3]\",\"Runner-up (11th place), Locus Award for Best Fantasy Novel, 2014[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(52, 2013, 'Doctor Sleep', 'doctor-sleep', 'Scribner', '978-1-476-72765-3', 531, '[\"Sequel to The Shining\",\"Winner, Bram Stoker Award, 2014\",\"Runner-up (5th place), Locus Award for Best Fantasy Novel, 2014[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(53, 2014, 'Mr. Mercedes', 'mr-mercedes', 'Scribner', '978-1-476-75445-1', 436, '[\"First novel in the Bill Hodges Trilogy\",\"Winner, Edgar Award for Best Novel, 2015[3]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(54, 2014, 'Revival', 'revival', 'Scribner', '978-1-476-77038-3', 403, '[\"Runner-up (8th place), Locus Award for Best Fantasy Novel, 2015[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(55, 2015, 'Finders Keepers', 'finders-keepers', 'Scribner', '978-1-501-10007-9', 434, '[\"Second novel in the Bill Hodges Trilogy.\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(56, 2016, 'End of Watch', 'end-of-watch', 'Scribner', '978-1-501-12974-2', 496, '[\"Third novel in the Bill Hodges Trilogy.\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(57, 2017, 'Gwendy\'s Button Box', 'gwendy-s-button-box', 'Cemetery Dance Publications', '978-1-58767-610-9', 175, '[\"Written with Richard Chizmar\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(58, 2017, 'Sleeping Beauties', 'sleeping-beauties', 'Scribner', '978-1-50116-340-1', 702, '[\"Written with Owen King\",\"Nominee, Bram Stoker Award, 2018[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(59, 2018, 'The Outsider', 'the-outsider', 'Scribner', '978-1-50118-098-9', 576, '[\"First novel in the Holly Gibney Series\",\"Runner-up (2nd place), Locus Award for Best Horror Novel, 2019[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(60, 2018, 'Elevation', 'elevation', 'Scribner', '978-1-98210-231-9', 144, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(61, 2019, 'The Institute', 'the-institute', 'Scribner', '978-1-98211-056-7', 576, '[\"Nominee, British Fantasy Award\'s August Derleth Award, 2020\",\"Runner-up (3rd place), Locus Award for Best Horror Novel, 2020[2]\"]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(62, 2021, 'Later', 'later', 'Hard Case Crime', '978-1-78909-649-1', 256, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16'),
(63, 2021, 'Billy Summers', 'billy-summers', 'Scribner', '978-1-982-17361-6', 528, '[]', '2024-03-19 06:44:16', '2024-03-19 06:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_19_050216_create_roles_table', 1),
(5, '2024_03_19_050311_create_role_user_table', 2),
(6, '2024_03_19_113524_create_books_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2024-03-19 05:15:46', '2024-03-19 05:15:46'),
(2, 'User', '2024-03-19 05:15:46', '2024-03-19 05:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-03-19 05:16:47', '2024-03-19 05:16:47'),
(2, 2, 2, '2024-03-19 05:16:47', '2024-03-19 05:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('HyCIQZGF1DZw1soOEpair9DSpxLLr9Cm6tk3rBUt', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo0OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJJYURRV1RDN1g0R3NCdldDNXZhUFdxV1A1ZmJ6cEFDRjV4dkxTeDZYIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1710833935);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.org', '$2y$12$sPl4d3S8VgTvZnZ87qeMq.XV.IAdLAvbAUFV5o46rf2AZWvz8ZvHm', '2024-03-18 23:42:21', '2024-03-18 23:42:21'),
(2, 'Prof. Valentina Bayer', 'roman@example.net', '$2y$12$sPl4d3S8VgTvZnZ87qeMq.XV.IAdLAvbAUFV5o46rf2AZWvz8ZvHm', '2024-03-18 23:42:21', '2024-03-18 23:42:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
