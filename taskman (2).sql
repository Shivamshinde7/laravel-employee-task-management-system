-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2025 at 03:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskman`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `login_time` time DEFAULT NULL,
  `logout_time` time DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `date`, `login_time`, `logout_time`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, '2025-08-16', '14:00:39', NULL, '', '2025-08-16 08:30:39', '2025-08-16 08:30:39'),
(4, 1, '2025-08-16', '16:40:29', NULL, 'late', '2025-08-16 11:10:29', '2025-08-16 11:10:29'),
(8, 2, '2025-08-17', '11:51:03', NULL, 'late', '2025-08-17 06:21:03', '2025-08-17 06:21:03'),
(9, 1, '2025-08-17', '11:52:29', NULL, 'late', '2025-08-17 06:22:29', '2025-08-17 06:22:29'),
(10, 1, '2025-08-22', '21:56:33', NULL, 'late', '2025-08-22 16:26:33', '2025-08-22 16:26:33'),
(11, 2, '2025-08-22', '21:57:07', NULL, 'late', '2025-08-22 16:27:07', '2025-08-22 16:27:07'),
(12, 2, '2025-10-19', '13:32:12', NULL, 'late', '2025-10-19 08:02:12', '2025-10-19 08:02:12'),
(13, 1, '2025-10-19', '13:32:22', NULL, 'present', '2025-10-19 08:02:22', '2025-10-19 08:02:22'),
(14, 1, '2025-10-20', '17:07:15', NULL, 'late', '2025-10-20 11:37:15', '2025-10-20 11:37:15'),
(15, 2, '2025-10-20', '18:49:38', NULL, 'late', '2025-10-20 13:19:38', '2025-10-20 13:19:38'),
(16, 2, '2025-10-21', '10:40:23', NULL, 'present', '2025-10-21 05:10:23', '2025-10-21 05:10:23'),
(17, 1, '2025-10-21', '10:40:36', NULL, 'present', '2025-10-21 05:10:36', '2025-10-21 05:10:36'),
(18, 1, '2025-10-22', '10:09:55', NULL, 'present', '2025-10-22 04:39:55', '2025-10-22 04:39:55'),
(19, 2, '2025-10-22', '11:15:48', NULL, 'late', '2025-10-22 05:45:48', '2025-10-22 05:45:48'),
(20, 3, '2025-10-22', '21:03:04', NULL, 'late', '2025-10-22 15:33:04', '2025-10-22 15:33:04'),
(21, 2, '2025-10-24', '16:49:23', NULL, 'late', '2025-10-24 11:19:23', '2025-10-24 11:19:23'),
(22, 1, '2025-10-24', '16:50:54', NULL, 'late', '2025-10-24 11:20:54', '2025-10-24 11:20:54'),
(23, 3, '2025-10-24', '17:02:06', NULL, 'late', '2025-10-24 11:32:06', '2025-10-24 11:32:06');

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
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `is_private` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channel_user`
--

CREATE TABLE `channel_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"6ef72c08-c269-4016-9146-dc36d87369b8\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:20;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761111970,\"delay\":null}', 0, NULL, 1761111970, 1761111970),
(2, 'default', '{\"uuid\":\"b9a12f18-2e93-461a-be07-d359ccf5efbd\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:21;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761112001,\"delay\":null}', 0, NULL, 1761112001, 1761112001),
(3, 'default', '{\"uuid\":\"1d73c50f-cc50-4a2b-b063-07ede7e31134\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761112277,\"delay\":null}', 0, NULL, 1761112277, 1761112277),
(4, 'default', '{\"uuid\":\"b57d76a4-c030-4cc5-9902-27b7b986f3ad\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":2:{s:7:\\\"message\\\";O:18:\\\"App\\\\Models\\\\Message\\\":33:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"messages\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:5:\\\"hello\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:25:59\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:25:59\\\";s:2:\\\"id\\\";i:23;}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:5:\\\"hello\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:25:59\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:25:59\\\";s:2:\\\"id\\\";i:23;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000previous\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:27:\\\"\\u0000*\\u0000relationAutoloadCallback\\\";N;s:26:\\\"\\u0000*\\u0000relationAutoloadContext\\\";N;s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";i:2;s:11:\\\"receiver_id\\\";i:3;s:7:\\\"content\\\";i:4;s:10:\\\"attachment\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761112559,\"delay\":null}', 0, NULL, 1761112559, 1761112559),
(5, 'default', '{\"uuid\":\"b095546f-cafa-4f0d-ac94-1ac3124babb6\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":2:{s:7:\\\"message\\\";O:18:\\\"App\\\\Models\\\\Message\\\":33:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"messages\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:5:\\\"hello\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:26:06\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:26:06\\\";s:2:\\\"id\\\";i:24;}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:5:\\\"hello\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:26:06\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:26:06\\\";s:2:\\\"id\\\";i:24;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000previous\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:27:\\\"\\u0000*\\u0000relationAutoloadCallback\\\";N;s:26:\\\"\\u0000*\\u0000relationAutoloadContext\\\";N;s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";i:2;s:11:\\\"receiver_id\\\";i:3;s:7:\\\"content\\\";i:4;s:10:\\\"attachment\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761112566,\"delay\":null}', 0, NULL, 1761112566, 1761112566),
(6, 'default', '{\"uuid\":\"bba38017-38a0-432f-8a72-65f279df2142\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":2:{s:7:\\\"message\\\";O:18:\\\"App\\\\Models\\\\Message\\\":33:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"messages\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:12:\\\"test message\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:29:34\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:29:34\\\";s:2:\\\"id\\\";i:25;}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:12:\\\"test message\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:29:34\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:29:34\\\";s:2:\\\"id\\\";i:25;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000previous\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:27:\\\"\\u0000*\\u0000relationAutoloadCallback\\\";N;s:26:\\\"\\u0000*\\u0000relationAutoloadContext\\\";N;s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";i:2;s:11:\\\"receiver_id\\\";i:3;s:7:\\\"content\\\";i:4;s:10:\\\"attachment\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761112774,\"delay\":null}', 0, NULL, 1761112774, 1761112774),
(7, 'default', '{\"uuid\":\"d716ea90-4827-4480-b059-8974979de6c2\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":2:{s:7:\\\"message\\\";O:18:\\\"App\\\\Models\\\\Message\\\":33:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:8:\\\"messages\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:12:\\\"test message\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:29:38\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:29:38\\\";s:2:\\\"id\\\";i:26;}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";N;s:11:\\\"receiver_id\\\";s:1:\\\"2\\\";s:7:\\\"content\\\";s:12:\\\"test message\\\";s:10:\\\"attachment\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2025-10-22 11:29:38\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-10-22 11:29:38\\\";s:2:\\\"id\\\";i:26;}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:11:\\\"\\u0000*\\u0000previous\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:27:\\\"\\u0000*\\u0000relationAutoloadCallback\\\";N;s:26:\\\"\\u0000*\\u0000relationAutoloadContext\\\";N;s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:7:\\\"user_id\\\";i:1;s:10:\\\"channel_id\\\";i:2;s:11:\\\"receiver_id\\\";i:3;s:7:\\\"content\\\";i:4;s:10:\\\"attachment\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761112778,\"delay\":null}', 0, NULL, 1761112778, 1761112778),
(8, 'default', '{\"uuid\":\"fbed74f8-fdd3-47fe-8b0c-e8504349d6db\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:34;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761113950,\"delay\":null}', 0, NULL, 1761113950, 1761113950),
(9, 'default', '{\"uuid\":\"b0415a45-61f5-4dfd-8fdd-87179ab02501\",\"displayName\":\"App\\\\Events\\\\MessageSent\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":16:{s:5:\\\"event\\\";O:22:\\\"App\\\\Events\\\\MessageSent\\\":1:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Message\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"},\"createdAt\":1761113984,\"delay\":null}', 0, NULL, 1761113984, 1761113984);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `channel_id`, `receiver_id`, `content`, `attachment`, `created_at`, `updated_at`) VALUES
(62, 2, NULL, 1, 'hey', NULL, '2025-10-24 11:19:49', '2025-10-24 11:19:49'),
(63, 2, NULL, 1, 'websocket test', NULL, '2025-10-24 11:21:33', '2025-10-24 11:21:33'),
(64, 1, NULL, 2, 'test socket', NULL, '2025-10-24 11:23:02', '2025-10-24 11:23:02'),
(65, 2, NULL, 1, 'success socket', NULL, '2025-10-24 11:23:13', '2025-10-24 11:23:13'),
(66, 2, NULL, 3, 'hey user_one welcome', NULL, '2025-10-24 11:35:21', '2025-10-24 11:35:21'),
(67, 1, NULL, 3, NULL, '1761305772_2630.jpg', '2025-10-24 11:36:13', '2025-10-24 11:36:13'),
(68, 2, NULL, 3, NULL, '1761305820_4236.png', '2025-10-24 11:37:01', '2025-10-24 11:37:01'),
(69, 2, NULL, 3, NULL, '1761305825_6629.png', '2025-10-24 11:37:05', '2025-10-24 11:37:05'),
(70, 2, NULL, 3, NULL, '1761305870_4067.jpg', '2025-10-24 11:37:50', '2025-10-24 11:37:50'),
(71, 3, NULL, 2, 'thank you', NULL, '2025-10-24 11:39:22', '2025-10-24 11:39:22'),
(72, 2, NULL, 3, 'welcome', NULL, '2025-10-24 11:39:37', '2025-10-24 11:39:37'),
(73, 1, NULL, 3, 'image', NULL, '2025-10-24 11:42:49', '2025-10-24 11:42:49'),
(74, 3, NULL, 2, NULL, '1761306186_4744.jpg', '2025-10-24 11:43:06', '2025-10-24 11:43:06'),
(75, 3, NULL, 1, NULL, '1761306227_3784.jpg', '2025-10-24 11:43:47', '2025-10-24 11:43:47'),
(76, 2, NULL, 3, NULL, '1761306386_3578.pdf', '2025-10-24 11:46:26', '2025-10-24 11:46:26'),
(77, 2, NULL, 3, 'hello', NULL, '2025-10-24 13:31:16', '2025-10-24 13:31:16'),
(78, 3, NULL, 2, 'test', NULL, '2025-10-24 13:47:31', '2025-10-24 13:47:31');

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
(13, '2025_07_05_153844_create_personal_access_tokens_table', 1),
(14, '2025_07_05_164529_create_personal_access_tokens_table', 2),
(15, '0001_01_01_000000_create_users_table', 3),
(16, '0001_01_01_000001_create_cache_table', 3),
(17, '0001_01_01_000002_create_jobs_table', 3),
(18, '2025_07_06_072327_create_chaneels_table', 3),
(19, '2025_07_06_072346_create_messages_table', 3),
(20, '2025_07_06_072537_create_channels_table', 3),
(21, '2025_07_06_072614_create_messages_table', 4),
(22, '2025_07_06_101108_create_channel_user_table', 4),
(23, '2025_08_16_124230_create_attendances_table', 5);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('esGqCElUz4zt4so8nwH210RJr7Encj6cOg6EGkLK', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYlgycEwxS05GbnVkVkF6MkRKSnJrRXhmOFBrUmpiYmNWdmxCelo3bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kbS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1761147228),
('JYcFNW65j0VFOjDomnGKFXgw7GxJdZjFeq8tQSZP', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidUx1RWhYVVBWTmx6NEMybGVJa2xPcE4zZkM3c3A2M3FFdkhxRjExWSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZG0vMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1761147655),
('p1zVSI2502LtgygQ56HsAG4lhY1VQ8Y2upkuDNF7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWEtNa1ZBSm1WdWF3RlQ5dTdnYXp6VFdZb0dJRUpURGh1UERPN1hyZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9teXRhc2tzbGlzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1761312541),
('tbLJ8soktzv1WRsXXuCwwWD5INz4WmYIS8X13vM4', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMkxiSncyaTNWVVY1ejAxQ3R1MmFNRzVSTnpkQ1RjSGlJVmNSSDdqQiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZG0vMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1761313656),
('tEAi0pwgT27s2X6Zeslcdne46AosnXqEDXyrtiJj', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVkZlYjZoWmd2YzMyd1NSRmd4QjVhZmliR0NnQlJXWFNvdmEyejVjdCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZG0vMyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1761147238),
('VjxbByjbHZLuNj1xixWSsDxHbKftiMTI1nmMmxdx', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVTlHRm50UWpQYU1xSXpLVEFJWDc1bmhsQUtVeVhYNEFTRWNVM3pJcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kbS8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1761313656);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `deadline_date` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `channel_id`, `user_id`, `assigned_user_id`, `status`, `priority`, `deadline_date`, `updated_at`, `created_at`) VALUES
(5, 'Test Task', 'Test Task', NULL, 1, 2, 'In Progress', 'Medium', '2025-10-22', '2025-10-21 05:34:15', '2025-10-21 05:31:30'),
(6, 'shivam task', 'shivam task description', NULL, 2, 1, 'In Progress', 'Medium', '2025-10-23', '2025-10-21 05:33:26', '2025-10-21 05:32:44'),
(7, 'test title', 'test task description', NULL, 1, 2, 'Pending', 'Medium', '2025-10-23', '2025-10-21 05:33:58', '2025-10-21 05:33:58'),
(8, 'shivam task 2', 'self shivam task', NULL, 1, 1, 'Completed', 'High', '2025-10-23', '2025-10-24 11:26:37', '2025-10-21 12:06:02'),
(9, 'Self Task Assgined', 'Self Task Assgined', NULL, 3, 3, 'Pending', 'Low', '2025-10-24', '2025-10-24 11:32:36', '2025-10-24 11:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `Username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shivam', 'shivam007', 'shivam@gmail.com', NULL, '$2y$12$/aCxWaAvE66ZptGFv8asPO6NWaSC1IHU9z9kAhksEdVOAGPCbfIKy', NULL, '2025-07-13 10:01:18', '2025-08-15 03:44:10'),
(2, 'Test', 'Test', 'test@message.com', NULL, '$2y$12$EPwBnfJXSzPjd5UEJydZbOteW2LeG3csXU5L7MXrqAiqq0mZ0qVCe', NULL, '2025-07-13 10:05:14', '2025-07-13 10:05:14'),
(3, 'user_one', 'user_one', 'user_one@mail.com', NULL, '$2y$12$OSMnmvxkGJqfefxMfn1h9.6Uu9Gi7Uc4o/UiEA9HdzBmZIqm0E1Na', NULL, '2025-10-22 15:32:50', '2025-10-22 15:32:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
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
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_user`
--
ALTER TABLE `channel_user`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `channel_user`
--
ALTER TABLE `channel_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `channel_user`
--
ALTER TABLE `channel_user`
  ADD CONSTRAINT `channel_user_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
