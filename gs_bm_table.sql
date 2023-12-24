-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-12-24 18:37:48
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` text NOT NULL,
  `comments` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comments`, `date`) VALUES
(1, 'test', 'test', 'test', '2023-12-10 00:11:59'),
(3, '聖書', 'https://www.bible.or.jp/', 'バイブル', '2023-12-24 14:36:53'),
(4, 'サラバ', 'https://www.amazon.co.jp/%E3%82%B5%E3%83%A9%E3%83%90-%E4%B8%8A-%E8%A5%BF-%E5%8A%A0%E5%A5%88%E5%AD%90/dp/409386392X', '西加奈子が書いた本', '2023-12-24 14:38:47'),
(5, '地球の歩き方', 'https://www.arukikata.co.jp/', '地球の歩き方が紹介されている', '2023-12-24 14:46:15'),
(6, 'db_connのテスト', 'db_connのテスト', 'db_connのテスト', '2023-12-24 15:06:23'),
(7, 'サラバ', 'https://www.amazon.co.jp/%E3%82%B5%E3%83%A9%E3%83%90-%E4%B8%8A-%E8%A5%BF-%E5%8A%A0%E5%A5%88%E5%AD%90/dp/409386392X', '西加奈子が書いた本\"', '2023-12-24 18:25:50');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
