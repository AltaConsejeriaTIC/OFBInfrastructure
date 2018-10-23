-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-10-2018 a las 13:00:11
-- Versión del servidor: 5.6.40
-- Versión de PHP: 5.6.30
USE filarmon_webfilar

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `filarmon_webfilar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wofilarbp_term_taxonomy`
--

CREATE TABLE `wofilarbp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wofilarbp_term_taxonomy`
--

INSERT INTO `wofilarbp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'category', '', 0, 27),
(7, 7, 'category', '', 0, 77),
(8, 8, 'category', '', 0, 60),
(9, 9, 'category', '', 0, 195),
(10, 10, 'category', '', 0, 58),
(11, 11, 'category', '', 0, 3),
(12, 12, 'category', '', 0, 51),
(13, 13, 'category', '', 0, 26),
(14, 14, 'category', '', 0, 33),
(15, 15, 'category', '', 0, 45),
(16, 16, 'category', '', 0, 56),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'post_tag', '', 0, 1),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'nav_menu', '', 0, 57),
(23, 23, 'nav_menu', '', 0, 8),
(24, 24, 'nav_menu', '', 0, 8),
(25, 25, 'mec_category', '', 0, 734),
(26, 26, 'mec_location', '', 0, 47),
(27, 27, 'mec_location', '', 0, 53),
(28, 28, 'mec_location', '', 0, 9),
(29, 29, 'mec_category', '', 0, 19),
(30, 30, 'mec_location', '', 0, 73),
(31, 31, 'mec_location', '', 0, 2),
(32, 32, 'mec_location', '', 0, 16),
(33, 33, 'mec_location', '', 0, 0),
(34, 34, 'mec_location', '', 0, 1),
(35, 35, 'mec_location', '', 0, 1),
(36, 36, 'mec_location', '', 0, 5),
(37, 37, 'mec_location', '', 0, 2),
(38, 38, 'mec_location', '', 0, 1),
(39, 39, 'mec_location', '', 0, 3),
(40, 40, 'mec_location', '', 0, 29),
(41, 41, 'mec_location', '', 0, 1),
(42, 42, 'mec_location', '', 0, 3),
(43, 43, 'mec_location', '', 0, 1),
(44, 44, 'mec_location', '', 0, 8),
(45, 45, 'mec_location', '', 0, 1),
(46, 46, 'mec_location', '', 0, 1),
(47, 47, 'mec_location', '', 0, 4),
(48, 48, 'mec_location', '', 0, 1),
(49, 49, 'mec_location', '', 0, 1),
(50, 50, 'mec_location', '', 0, 4),
(51, 51, 'mec_location', '', 0, 20),
(52, 52, 'mec_location', '', 0, 1),
(53, 53, 'mec_location', '', 0, 2),
(54, 54, 'mec_location', '', 0, 1),
(55, 55, 'mec_location', '', 0, 4),
(56, 56, 'mec_location', '', 0, 1),
(57, 57, 'mec_location', '', 0, 2),
(58, 58, 'mec_location', '', 0, 0),
(59, 59, 'mec_location', '', 0, 15),
(60, 60, 'mec_location', '', 0, 1),
(61, 61, 'mec_location', '', 0, 5),
(62, 62, 'mec_location', '', 0, 1),
(63, 63, 'mec_location', '', 0, 2),
(64, 64, 'mec_location', '', 0, 5),
(65, 65, 'nav_menu', '', 0, 7),
(66, 66, 'mec_location', '', 0, 3),
(67, 67, 'mec_location', '', 0, 1),
(68, 68, 'mec_location', '', 0, 4),
(69, 69, 'mec_location', '', 0, 2),
(70, 70, 'category', '', 0, 29),
(71, 71, 'mec_location', '', 0, 21),
(72, 72, 'mec_location', '', 0, 7),
(73, 73, 'mec_location', '', 0, 12),
(74, 74, 'mec_location', '', 0, 2),
(75, 75, 'mec_location', '', 0, 1),
(76, 76, 'mec_location', '', 0, 6),
(77, 77, 'mec_location', '', 0, 2),
(78, 78, 'mec_location', '', 0, 2),
(79, 79, 'mec_location', '', 0, 18),
(80, 80, 'mec_location', '', 0, 5),
(81, 81, 'mec_location', '', 0, 9),
(82, 82, 'mec_location', '', 0, 4),
(83, 83, 'mec_location', '', 0, 1),
(84, 84, 'mec_location', '', 0, 0),
(85, 85, 'mec_location', '', 0, 1),
(86, 86, 'mec_location', '', 0, 7),
(87, 87, 'mec_location', '', 0, 2),
(88, 88, 'mec_location', '', 0, 7),
(89, 89, 'mec_location', '', 0, 1),
(90, 90, 'mec_location', '', 0, 2),
(91, 91, 'mec_location', '', 0, 1),
(92, 92, 'mec_location', '', 0, 1),
(93, 93, 'mec_location', '', 0, 2),
(94, 94, 'mec_location', '', 0, 2),
(95, 95, 'mec_location', '', 0, 2),
(96, 96, 'mec_location', '', 0, 1),
(97, 97, 'mec_location', '', 0, 1),
(98, 98, 'mec_location', '', 0, 2),
(99, 99, 'mec_location', '', 0, 1),
(100, 100, 'mec_location', '', 0, 2),
(101, 101, 'mec_location', '', 0, 7),
(102, 102, 'mec_location', '', 0, 1),
(103, 103, 'mec_location', '', 0, 1),
(104, 104, 'mec_location', '', 0, 1),
(105, 105, 'mec_location', '', 0, 1),
(106, 106, 'mec_location', '', 0, 4),
(107, 107, 'mec_location', '', 0, 1),
(108, 108, 'mec_location', '', 0, 3),
(109, 109, 'mec_location', '', 0, 1),
(110, 110, 'mec_location', '', 0, 2),
(111, 111, 'mec_location', '', 0, 1),
(112, 112, 'mec_location', '', 0, 1),
(113, 113, 'mec_location', '', 0, 13),
(114, 114, 'mec_location', '', 0, 5),
(115, 115, 'mec_location', '', 0, 1),
(116, 116, 'mec_location', '', 0, 2),
(117, 117, 'mec_location', '', 0, 1),
(118, 118, 'mec_location', '', 0, 3),
(119, 119, 'mec_location', '', 0, 1),
(120, 120, 'mec_location', '', 0, 8),
(121, 121, 'mec_location', '', 0, 1),
(122, 122, 'mec_location', '', 0, 1),
(123, 123, 'mec_location', '', 0, 2),
(124, 124, 'mec_location', '', 0, 2),
(125, 125, 'mec_location', '', 0, 1),
(126, 126, 'mec_location', '', 0, 1),
(127, 127, 'mec_location', '', 0, 3),
(128, 128, 'mec_location', '', 0, 1),
(129, 129, 'mec_location', '', 0, 2),
(130, 130, 'mec_location', '', 0, 1),
(131, 131, 'mec_location', '', 0, 2),
(132, 132, 'mec_location', '', 0, 1),
(133, 133, 'mec_location', '', 0, 2),
(134, 134, 'mec_location', '', 0, 1),
(135, 135, 'mec_location', '', 0, 1),
(136, 136, 'mec_location', '', 0, 1),
(137, 137, 'mec_location', '', 0, 5),
(138, 138, 'mec_location', '', 0, 1),
(139, 139, 'mec_location', '', 0, 1),
(140, 140, 'mec_location', '', 0, 1),
(141, 141, 'mec_location', '', 0, 0),
(142, 142, 'mec_location', '', 0, 5),
(143, 143, 'mec_location', '', 0, 1),
(144, 144, 'mec_location', '', 0, 1),
(145, 145, 'mec_location', '', 0, 1),
(146, 146, 'mec_location', '', 0, 0),
(147, 147, 'mec_location', '', 0, 1),
(148, 148, 'mec_location', '', 0, 2),
(149, 149, 'mec_location', '', 0, 1),
(150, 150, 'mec_location', '', 0, 1),
(151, 151, 'mec_location', '', 0, 1),
(152, 152, 'mec_organizer', '', 0, 1),
(153, 153, 'mec_location', '', 0, 1),
(154, 154, 'mec_location', '', 0, 1),
(155, 155, 'mec_location', '', 0, 1),
(156, 156, 'mec_location', '', 0, 1),
(157, 157, 'mec_location', '', 0, 0),
(158, 158, 'mec_location', '', 0, 0),
(159, 159, 'mec_location', '', 0, 1),
(160, 160, 'mec_location', '', 0, 3),
(161, 161, 'mec_location', '', 0, 1),
(162, 162, 'mec_location', '', 0, 1),
(163, 163, 'mec_location', '', 0, 1),
(164, 164, 'mec_location', '', 0, 0),
(165, 165, 'mec_location', '', 0, 0),
(166, 166, 'mec_location', '', 0, 2),
(167, 167, 'mec_location', '', 0, 2),
(168, 168, 'mec_location', '', 0, 1),
(169, 169, 'mec_location', '', 0, 1),
(170, 170, 'mec_location', '', 0, 2),
(171, 171, 'mec_location', '', 0, 1),
(172, 172, 'mec_location', '', 0, 1),
(173, 173, 'mec_location', '', 0, 1),
(174, 174, 'mec_location', '', 0, 1),
(175, 175, 'mec_location', '', 0, 0),
(176, 176, 'mec_location', '', 0, 1),
(177, 177, 'mec_location', '', 0, 2),
(178, 178, 'mec_location', '', 0, 1),
(179, 179, 'mec_location', '', 0, 0),
(180, 180, 'mec_location', '', 0, 1),
(181, 181, 'mec_location', '', 0, 0),
(182, 182, 'mec_location', '', 0, 0),
(183, 183, 'mec_location', '', 0, 1),
(184, 184, 'mec_location', '', 0, 2),
(185, 185, 'mec_location', '', 0, 1),
(186, 186, 'mec_location', '', 0, 1),
(187, 187, 'mec_location', '', 0, 1),
(188, 188, 'mec_location', '', 0, 1),
(189, 189, 'mec_location', '', 0, 1),
(190, 190, 'mec_location', '', 0, 2),
(191, 191, 'mec_location', '', 0, 1),
(192, 192, 'mec_location', '', 0, 1),
(193, 193, 'mec_location', '', 0, 4),
(194, 194, 'mec_location', '', 0, 1),
(195, 195, 'mec_location', '', 0, 1),
(196, 196, 'mec_location', '', 0, 0),
(197, 197, 'mec_location', '', 0, 1),
(198, 198, 'mec_location', '', 0, 1),
(199, 199, 'mec_location', '', 0, 0),
(200, 200, 'mec_location', '', 0, 4),
(201, 201, 'mec_location', '', 0, 1),
(202, 202, 'mec_location', '', 0, 0),
(203, 203, 'mec_location', '', 0, 1),
(204, 204, 'mec_location', '', 0, 1),
(205, 205, 'mec_location', '', 0, 0),
(206, 206, 'mec_location', '', 0, 9),
(207, 207, 'mec_location', '', 0, 1),
(208, 208, 'mec_location', '', 0, 1),
(209, 209, 'category', '', 0, 2),
(210, 210, 'mec_location', '', 0, 0),
(211, 211, 'mec_location', '', 0, 2),
(212, 212, 'mec_location', '', 0, 1),
(213, 213, 'mec_location', '', 0, 1),
(214, 214, 'mec_location', '', 0, 0),
(215, 215, 'mec_location', '', 0, 0),
(216, 216, 'mec_location', '', 0, 0),
(217, 217, 'mec_location', '', 0, 1),
(218, 218, 'mec_location', '', 0, 1),
(219, 219, 'mec_location', '', 0, 3),
(220, 220, 'mec_location', '', 0, 1),
(221, 221, 'mec_location', '', 0, 1),
(222, 222, 'mec_location', '', 0, 1),
(223, 223, 'mec_location', '', 0, 0),
(224, 224, 'mec_location', '', 0, 0),
(225, 225, 'mec_location', '', 0, 1),
(226, 226, 'mec_location', '', 0, 3),
(227, 227, 'mec_location', '', 0, 1),
(228, 228, 'mec_location', '', 0, 0),
(229, 229, 'mec_location', '', 0, 1),
(230, 230, 'mec_location', '', 0, 0),
(231, 231, 'mec_location', '', 0, 1),
(232, 232, 'mec_location', '<a href=\"waze://?ll=4.579168699999999,-74.09710430000001&amp;navigate=yes\">Waze</a>', 0, 0),
(233, 233, 'mec_location', '', 0, 0),
(234, 234, 'mec_location', '', 0, 1),
(235, 235, 'mec_location', '', 0, 1),
(236, 236, 'mec_location', '', 0, 1),
(239, 239, 'mec_location', '', 0, 2),
(238, 238, 'category', '', 0, 8),
(240, 240, 'mec_location', '', 0, 1),
(241, 241, 'mec_location', '', 0, 0),
(242, 242, 'mec_location', '', 0, 0),
(243, 243, 'mec_location', '', 0, 0),
(244, 244, 'mec_location', '', 0, 1),
(245, 245, 'mec_location', '', 0, 2),
(246, 246, 'category', '', 0, 0),
(247, 247, 'mec_location', '', 0, 1),
(248, 248, 'mec_location', '', 0, 1),
(249, 249, 'mec_location', '', 0, 0),
(250, 250, 'mec_location', '', 0, 1),
(251, 251, 'mec_location', '', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wofilarbp_term_taxonomy`
--
ALTER TABLE `wofilarbp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wofilarbp_term_taxonomy`
--
ALTER TABLE `wofilarbp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
