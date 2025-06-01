-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 10:55 PM
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
-- Database: `blog`
--

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tech News', 'tech-news', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(2, 'Tutorials', 'tutorials', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(3, 'Web Design', 'web-design', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(4, 'Programming', 'programming', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(5, 'Startups', 'startups', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(6, 'Productivity', 'productivity', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(7, 'AI & Machine Learning', 'ai-machine-learning', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(8, 'Freelancing', 'freelancing', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(9, 'Career Advice', 'career-advice', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(11, 'Mobile Development', 'mobile-development', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(12, 'Cybersecurity', 'cybersecurity', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(13, 'Cloud Computing', 'cloud-computing', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(14, 'DevOps', 'devops', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(15, 'Software Reviews', 'software-reviews', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(17, 'E-commerce', 'e-commerce', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(18, 'UI/UX Design', 'ui-ux-design', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(19, 'Backend Development', 'backend-development', '2025-06-01 16:25:07', '2025-06-01 16:25:07'),
(20, 'Frontend Development', 'frontend-development', '2025-06-01 16:25:07', '2025-06-01 16:25:07');

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
(4, '2025_06_01_160138_create_categories_table', 1),
(5, '2025_06_01_160138_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `content`, `image`, `created_at`, `updated_at`) VALUES
(43, 3, 1, 'Modern Web Design Principles', 'modern-web-design-principles', 'Design smarter, cleaner, and more accessible websites.', 'image/ashim-d-silva-JHUgc_HJN5Q-unsplash.jpg', '2025-06-01 16:27:30', '2025-06-01 15:03:33'),
(44, 3, 1, 'Mastering PHP in 30 Days', 'mastering-php-in-30-days', 'A practical roadmap for learning PHP as a backend dev.', 'image/ishan-ansari-orM8s8cpoU4-unsplash.jpg', '2025-06-01 16:27:30', '2025-06-01 15:03:49'),
(45, 5, 1, 'Startup Funding Basics', 'startup-funding-basics', 'Everything you need to know about raising your first round.', 'image/pexels-rahul-pandit-17070406.jpg', '2025-06-01 16:27:30', '2025-06-01 15:04:05'),
(46, 6, 1, '10 Tools to Boost Productivity', '10-tools-to-boost-productivity', 'Top tools every developer should use to save time.', 'image/ravi-n-jha-aU9yXmIwfkw-unsplash.jpg', '2025-06-01 16:27:30', '2025-06-01 15:04:19'),
(47, 7, 1, 'Getting Started with Machine Learning', 'getting-started-with-machine-learning', 'A beginner-friendly guide to ML and AI concepts.', 'image/shifaaz-shamoon-qtbV_8P_Ksk-unsplash.jpg', '2025-06-01 16:27:30', '2025-06-01 15:04:34'),
(48, 8, 1, 'Freelancing Tips for Developers', 'freelancing-tips-for-developers', 'How to price, pitch, and profit as a freelance dev.', 'image/varun-pyasi-AZ4y6Bc3qeI-unsplash.jpg', '2025-06-01 16:27:30', '2025-06-01 15:04:50'),
(49, 9, 1, 'Tech Resume Writing Tips', 'tech-resume-writing-tips', 'Write resumes that land interviews at top tech companies.', 'image/2b84d5c0c4a6352c20942b0121c27331.jpg', '2025-06-01 16:27:30', '2025-06-01 15:05:07'),
(51, 11, 1, 'Build Your First Mobile App', 'build-your-first-mobile-app', 'Create a simple mobile app with Flutter.', 'image/{{SEO_ogTitle}}.jpeg', '2025-06-01 16:27:30', '2025-06-01 15:05:20'),
(52, 12, 1, 'Protecting Your App from Hackers', 'protecting-your-app-from-hackers', 'Learn the basics of app security.', 'image/1aeedac59c195be2f2291784505129c7.jpg', '2025-06-01 16:27:30', '2025-06-01 15:05:39'),
(53, 13, 1, 'What is Cloud Computing?', 'what-is-cloud-computing', 'An introduction to AWS, Azure, and cloud architecture.', 'image/4a77ae4ac6b792a8615dc56f4495e905.jpg', '2025-06-01 16:27:30', '2025-06-01 15:06:06'),
(54, 14, 1, 'CI/CD for Beginners', 'cicd-for-beginners', 'Automate your deployments like a pro.', 'image/9fbf0596-73df-48ad-b2ff-8482000270a2.png', '2025-06-01 16:27:30', '2025-06-01 15:06:31'),
(55, 15, 1, 'Best Software for Developers in 2025', 'best-software-for-developers-in-2025', 'Editor picks for dev tools and platforms.', 'image/1649a41e529e0d6ba1d50f40b5b79d7b.jpg', '2025-06-01 16:27:30', '2025-06-01 15:06:46'),
(57, 17, 1, 'How to Build an Online Store with Laravel', 'how-to-build-an-online-store-with-laravel', 'E-commerce made easy with Laravel & MySQL.', 'image/9ea224c6-169c-4b49-8e77-9c4c6e349d7d.jpeg', '2025-06-01 16:27:30', '2025-06-01 15:06:59'),
(58, 18, 1, 'UX Tips That Actually Work', 'ux-tips-that-actually-work', 'Design experiences that convert.', 'image/8f1bca2c-6b4f-4b46-9dbe-bde44923699e.jpeg', '2025-06-01 16:27:30', '2025-06-01 15:07:14'),
(59, 19, 1, 'Building RESTful APIs with Laravel', 'building-restful-apis-with-laravel', 'Create scalable APIs using Laravel Resource Controllers.', 'image/30fe5eda314a8abb94e0a20fe900f3e4.jpg', '2025-06-01 16:27:30', '2025-06-01 15:07:30'),
(60, 20, 1, 'React vs Vue for Frontend Devs', 'react-vs-vue-for-frontend-devs', 'Comparing two popular frontend frameworks.', 'image/52f6fe0bd1c007b973ae9fc41f39d57d.jpg', '2025-06-01 16:27:30', '2025-06-01 15:07:49'),
(61, 1, 1, 'Chat gpt new model', 'chat-gpt-new-model', 'new model of chatgpt', 'image/162146_adapted_720x1520.jpg', '2025-06-01 11:44:38', '2025-06-01 15:08:03');

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
('wDWbRTI7HTHSfrv44qa7ggZx7Q3OHw3A4gHP7I91', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNlRpNUl1MkgyV2RPa2lUd3pHazg1alJkeVVKaXo0ZFkzbEQ4QkZxNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyX2Rhc2hib3JlZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToibG9naW4iO3M6NDoidHJ1ZSI7czo0OiJuYW1lIjtzOjQ6ImFubnUiO30=', 1748810711);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', '2025-06-01 16:27:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa2Ro2Z7kqf35lZ5nJq5a7elXeW', NULL, '2025-06-01 16:27:01', '2025-06-01 16:27:01'),
(2, 'yash sharma', 'yash@gmail.com', NULL, '$2y$12$czDnMeSKDB/dVgYfEd10suIzHhT8JNCAQ8Po/kc6CDyparndAyKJe', NULL, '2025-06-01 13:02:19', '2025-06-01 13:02:19'),
(3, 'annu', 'annu@gmail.com', NULL, '$2y$12$4juSUOK9Wmm46BeimFaTsOUUxOeoe5g7Z/TM7JA0vVJxkaMMoSY7q', NULL, '2025-06-01 13:20:22', '2025-06-01 13:20:22'),
(4, 'bobby', 'bobby@gmail.com', NULL, '$2y$12$F030b4axTY/X/.FkVmdq8.mTADerq2g4u3Nae6uXJ6szUfYZzGDva', NULL, '2025-06-01 14:52:06', '2025-06-01 14:52:06'),
(5, 'abc', 'abc@gmail.ocm', NULL, '$2y$12$VF9U0ZC4elCtTQxlPDli6uYbdHvYdwrYl4cCdwbuMgg8DST4CiNb2', NULL, '2025-06-01 14:59:32', '2025-06-01 14:59:32'),
(6, 'hhj', 'ghghg@gfg.con', NULL, '$2y$12$PZvKV/.pzU8XddrUKS6Br.j1jEM8mdd8cmSCLsFhF.Fr6rlcyGhFm', NULL, '2025-06-01 15:14:15', '2025-06-01 15:14:15');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
