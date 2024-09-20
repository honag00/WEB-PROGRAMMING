-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 30, 2023 at 09:13 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2023_itec_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`post_id`) REFERENCES `posts`(`id`),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_text`, `post_id`, `user_id`, `date_created`) VALUES
(1, 'This is a test comment', 6, 1, '2023-06-06 13:50:24'),
(2, 'Test poster sucks!', 6, 2, '2023-06-06 13:50:24'),
(3, 'This post sucks', 8, 2, '2023-06-06 13:51:02'),
(4, 'Jello WOlrd!', 8, 1, '2023-06-06 13:51:02'),
(5, 'This post sucks', 8, 2, '2023-06-06 13:51:21'),
(6, 'Annyeong WOlrd!', 7, 1, '2023-06-06 13:51:21'),
(7, 'This post awesome', 8, 2, '2023-06-06 13:51:38'),
(8, 'Konichi my kimchi WOlrd!', 7, 1, '2023-06-06 13:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_author` int NOT NULL,
  `tags` int DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`post_author`) REFERENCES `user`(`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `title`, `img_url`, `post_author`, `tags`, `date_updated`, `date_created`) VALUES
(1, 'world', 'hello', 'image/ex.jpg', 1, NULL, NULL, '2023-05-26 15:58:06'),
(2, 'bwewb', 'vewvew', 'images/69880_itec_gintama.jpg', 1, NULL, NULL, '2023-05-26 16:02:30'),
(3, 'rberbhr', 'vewgergre', 'images/82513_itec_gintama.jpg', 1, NULL, NULL, '2023-05-26 16:09:00'),
(4, 'vewvew', 'vswevew', 'images/18465_itec_gintama.jpg', 1, NULL, NULL, '2023-05-26 16:09:21'),
(5, 'g232g', 'f3g24', 'images/29065_itec_gintama.jpg', 1, NULL, NULL, '2023-05-26 16:10:35'),
(6, 'Hello everyone', 'Xin Chao World', 'images/12491_itec_download.jpg', 1, NULL, NULL, '2023-05-26 16:26:17'),
(7, 'dasdadasdac', 'tienngu', 'images/default.jpg', 1, NULL, NULL, '2023-06-23 14:36:26'),
(8, 'Its is 5am rightnow .\r\nWe are now wstand at the zoo in hoang house ', 'Welcome to the jungle!!!', 'images/default.jpg', 2, NULL, NULL, '2023-06-30 13:49:19'),
(9, 'asdasda', 'asdasd', 'images/default.jpg', 2, NULL, NULL, '2023-06-30 13:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
  
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_role`, `user_img`, `user_password`, `date_updated`, `date_created`) VALUES
(1, 'admin', '1', NULL, '$2y$10$4L8JS6etyFccTkcB7D/azedjhqIs0YqRE83i3N94FLLYDcDr35zeq', NULL, '2023-05-26 17:14:03'),
(2, 'quangdungbl03', '2', NULL, '$2y$10$9g6wVLYNCgLfxXPKdHCz6uNUcqW0TKLgo7FCvjzB.SpMk1C9R0QrC', NULL, '2023-06-27 14:47:55'),
(3, 'quangdung', '2', NULL, '$2y$10$GZo2tV2tXiUYcJQ7a5A1P.oT1N3kRXMxeQIh8CLUrbhPLbZBjY/7C', NULL, '2023-06-30 13:29:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
