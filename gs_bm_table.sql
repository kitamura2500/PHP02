-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018 年 5 朁E31 日 10:35
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `book_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `book_url` text COLLATE utf8_unicode_ci NOT NULL,
  `book_comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `book_name`, `book_url`, `book_comment`, `indate`) VALUES
(1, 'aaa', 'a', 'a', '2018-05-29 23:26:49'),
(2, 'Javascript本格入門', 'https://www.amazon.co.jp/%E6%94%B9%E8%A8%82%E6%96%B0%E7%89%88JavaScript%E6%9C%AC%E6%A0%BC%E5%85%A5%E9%96%80-%E3%83%A2%E3%83%80%E3%83%B3%E3%82%B9%E3%82%BF%E3%82%A4%E3%83%AB%E3%81%AB%E3%82%88%E3%82%8B%E5%9F%BA%E7%A4%8E%E3%81%8B%E3%82%89%E7%8F%BE%E5%A0%B4%E3%81%A7%E3%81%AE%E5%BF%9C%E7%94%A8%E3%81%BE%E3%81%A7-%E5%B1%B1%E7%94%B0-%E7%A5%A5%E5%AF%9B/dp/477418411X/ref=sr_1_1?ie=UTF8&qid=1527603285&sr=8-1&keywords=javascript%E6%9C%AC%E6%A0%BC%E5%85%A5%E9%96%80', 'サーバサイドの人はマストバイな良書。', '2018-05-29 23:28:11'),
(3, '風の又三郎', 'https://matasaburo.com', 'おもしろい。', '2018-05-30 02:04:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
