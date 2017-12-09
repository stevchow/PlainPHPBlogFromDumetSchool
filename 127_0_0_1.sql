-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2017 at 09:32 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dumet_blog`
--
CREATE DATABASE IF NOT EXISTS `dumet_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dumet_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'dumet', '7516c3b35580b3490248629cff5e498c'),
(3, 'abcdee', '3dbe00a167653a1aaee01d93e77e730e'),
(4, 'aaaaaaaaakbb', '3ad5001a10236a886672d753c354c11e');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `icon`) VALUES
(1, 'Musik', 'glyphicon glyphicon-headphones'),
(2, 'Kesehatan', 'glyphicon glyphicon-heart-empty'),
(3, 'Teknologi', 'glyphicon glyphicon-globe'),
(4, 'Travel', 'glyphicon glyphicon-plane'),
(5, 'Olahraga', 'glyphicon glyphicon-hand-up'),
(7, 'Top Post', 'glyphicon glyphicon-flag');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `name`, `reply`, `status`, `date`) VALUES
(5, 15, 'Abcs efsd', 'Manyy desktop publishing packagesManyy desktop publishing packagesManyy desktop publishing packages', 0, '2017-04-20 00:00:00'),
(6, 15, 'lalal', 'Manyy desktop publishing packagesManyy desktop publishing packagesManyy desktop publishing packages', 1, '2017-04-20 00:00:00'),
(7, 14, 'lalaland', 'aku laku kamu lakuk kita laku', 0, '2017-04-20 00:00:00'),
(9, 15, 'AUTEA', 'Artikel yang keren', 1, '2017-04-20 11:31:11'),
(10, 15, 'LOgon', 'mantap sekali', 1, '2017-04-20 11:33:51'),
(12, 5, 'melamun', 'bang sms', 1, '2017-04-21 06:24:16'),
(13, 6, 'neroHASIL', 'HASILmantaps', 1, '2017-04-21 06:24:34'),
(14, 10, 'gaaktif', 'gaaktif bro', 1, '2017-04-21 06:24:57'),
(15, 15, 'cacing', 'merah', 0, '2017-04-21 06:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `category_id`, `title`, `description`, `image`, `date`) VALUES
(1, 1, 'lamelamun', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_1.jpg', '2017-03-24 10:25:00'),
(2, 2, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_2.jpg', '2017-03-24 10:25:00'),
(3, 4, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_3.jpg', '2017-03-24 11:06:01'),
(4, 3, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_4.jpg', '2017-03-24 11:07:47'),
(5, 5, 'lamelamun', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_5.jpg', '2017-03-24 11:08:27'),
(6, 1, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_2.jpg', '2017-03-24 11:09:00'),
(7, 2, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_2.jpg', '2017-03-24 11:09:28'),
(8, 1, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_4.jpg', '2017-03-24 11:09:50'),
(9, 4, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_5.jpg', '2017-03-24 11:10:11'),
(10, 2, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_4.jpg', '2017-03-24 11:10:46'),
(11, 5, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_5.jpg', '2017-03-24 00:00:00'),
(12, 3, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_3.jpg', '2017-03-24 11:11:55'),
(14, 4, 'tablet', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...\"', 'image_5.jpg', '2017-03-24 11:14:15'),
(15, 4, 'agar agar', 'sehat banyak serat', 'image_2.jpg', '2017-03-24 11:12:21'),
(17, 2, 'kesehatan', 'kesehatan', '', '2017-04-20 11:26:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;--
-- Database: `latihan_crud`
--
CREATE DATABASE IF NOT EXISTS `latihan_crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `latihancrud`
--

CREATE TABLE `latihancrud` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `paket_kursus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latihancrud`
--

INSERT INTO `latihancrud` (`id`, `nama`, `alamat`, `no_telp`, `paket_kursus`) VALUES
(1, 'lala', 'jl. kemerdekaan timur raya no. 242 V\r\nJakarta Tenggara', '086612345678', 'web design'),
(2, 'Pokoro', 'Jl. Salju Panas no. 98\r\nAfrika selatan', '087634586743', 'marketing'),
(5, 'CHAOSV111', 'MARS2111', '-00000052111', 'asdasds111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `latihancrud`
--
ALTER TABLE `latihancrud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `latihancrud`
--
ALTER TABLE `latihancrud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"zerotype\",\"table\":\"admin\"},{\"db\":\"zerotype\",\"table\":\"feedback\"},{\"db\":\"zerotype\",\"table\":\"comment\"},{\"db\":\"zerotype\",\"table\":\"post\"},{\"db\":\"zerotype\",\"table\":\"author\"},{\"db\":\"dumet_blog\",\"table\":\"post\"},{\"db\":\"dumet_blog\",\"table\":\"comment\"},{\"db\":\"dumet_blog\",\"table\":\"category\"},{\"db\":\"dumet_blog\",\"table\":\"admin\"},{\"db\":\"latihan_crud\",\"table\":\"latihancrud\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dumet_blog', 'comment', '{\"sorted_col\":\"`comment`.`status` ASC\"}', '2017-04-21 03:54:11'),
('root', 'zerotype', 'post', '[]', '2017-05-14 11:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-03-23 03:49:54', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `webmaster`
--
CREATE DATABASE IF NOT EXISTS `webmaster` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `webmaster`;

-- --------------------------------------------------------

--
-- Table structure for table `stephenc_kursus`
--

CREATE TABLE `stephenc_kursus` (
  `id` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stephenc_kursus`
--

INSERT INTO `stephenc_kursus` (`id`, `nama_paket`) VALUES
(2, 'web y'),
(3, 'digital marketing'),
(4, 'cms master'),
(5, 'webmaster'),
(7, 'cms master4'),
(9, 'web coding'),
(10, 'comeon'),
(13, 'web ysad');

-- --------------------------------------------------------

--
-- Table structure for table `stephenc_murid`
--

CREATE TABLE `stephenc_murid` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `paket_kursus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stephenc_murid`
--

INSERT INTO `stephenc_murid` (`id`, `nama`, `alamat`, `paket_kursus_id`) VALUES
(1, 'Abc', 'jkt', 1),
(2, 'Abadc', 'xzddast', 2),
(3, 'Abafcc', 'assdt', 3),
(4, 'Abasdasc', 'gkt', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stephenc_kursus`
--
ALTER TABLE `stephenc_kursus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stephenc_murid`
--
ALTER TABLE `stephenc_murid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stephenc_kursus`
--
ALTER TABLE `stephenc_kursus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `stephenc_murid`
--
ALTER TABLE `stephenc_murid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
-- Database: `zerotype`
--
CREATE DATABASE IF NOT EXISTS `zerotype` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `zerotype`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'gokil ', 'fde93aaeb2fd5ea3673b9a0d6c1ab4cd'),
(3, 'dumetschool', '7516c3b35580b3490248629cff5e498c');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `author_name`) VALUES
(1, 'Lalaland'),
(2, 'Elon Musk'),
(3, 'Lenova'),
(4, 'Pineapple'),
(5, 'Goku Saiya');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `name`, `reply`, `status`, `date`) VALUES
(1, 15, 'Blablabla', 'Sudah merupakan fakta bahwa seorang pembaca akan terpengaruh oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya', 1, '2017-05-15 18:28:29'),
(2, 15, 'Lona', ' oleh isi tulisan dari sebuah halaman saat ia melihat tata letaknya', 1, '2017-05-15 18:30:23'),
(3, 14, 'Komida', 'Sudah merupakh isi tulisan dari sebuah halaman saat ia melihat tata letaknya', 0, '2017-05-15 18:30:23'),
(4, 14, 'Huiyare', 'Sudah merupakh isi tulisan dari sebuah halaman saat ia melihat tata letaknya', 1, '2017-05-15 18:31:03'),
(5, 15, 'Lomou', 'text with your own text.Want an easier solution for a Free Website? Head straight to Wix and imme', 1, '2017-05-15 19:17:37'),
(6, 15, 'Jilaya', 'Naluto saluke             ', 1, '2017-05-15 19:18:31'),
(7, 15, 'AUTEA', 'bingung juga', 1, '2017-05-15 19:19:00'),
(8, 15, 'Podomor', 'Amaliuo sdofje askndbdsvoad             ', 1, '2017-05-15 19:22:58'),
(9, 15, 'kokeki', 'hoimalya            ', 0, '2017-05-15 19:23:53'),
(10, 15, 'Iunyo', 'asdfasdf', 0, '2017-05-15 15:59:09'),
(11, 17, 'dvsd', '            sdvsdv', 1, '2017-05-15 21:07:38'),
(12, 15, 'hoho', 'okokkko       ', 1, '2017-05-16 14:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `feed` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feed`, `date`) VALUES
(1, 'asdas', 'asdasd', 'dsfsdf', 'dfgdfg', '2017-05-15 22:12:09'),
(2, 'asdasd', 'asdasd', 'asdasdas', 'asdasdsad', '2017-05-15 22:15:53'),
(3, 'Anonymouus', 'anon@anon.com', 'anon juga', 'anonymous berarti tanpa identitas. Anonymous biasanya  digunakan oleh orang orang yang tidak ingin diketahui identitasnya. Ada grup Hacker terkenal di dunia ini dengan nama tersebut. Mereka bisa saja  white ataupun bllackk hacker', '2017-05-16 13:05:56'),
(4, 'pppp', 'a@gmail.com', 'test', 'test', '2017-05-16 15:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `author_id`, `title`, `description`, `date`) VALUES
(1, 2, 'ZEROtypo bro', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 18:50:36'),
(2, 3, 'ketikan kosong', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 17:41:19'),
(3, 1, 'Apaaja judul', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:15:04'),
(4, 4, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:15:57'),
(5, 2, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:16'),
(6, 1, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:35'),
(7, 2, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(8, 4, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(9, 3, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(10, 3, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(11, 1, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(12, 1, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(13, 4, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(14, 3, 'Zeroooo sadfs adsdas', 'You can replace all this text with your own text.Want an easier solution for a Free Website? Head straight to Wix and immediately start', '2017-05-14 20:16:52'),
(15, 3, 'asdasf', 'asdfdvgsdvf', '2017-05-14 20:16:52'),
(17, 5, 'sacxa', 'sac', '2017-05-15 15:54:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
