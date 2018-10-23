-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-10-2018 a las 16:39:02
-- Versión del servidor: 5.6.41
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
-- Estructura de tabla para la tabla `wofilarbp_postmeta`
--

CREATE TABLE `wofilarbp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wofilarbp_postmeta`
--

INSERT INTO `wofilarbp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(129035, 10055, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(129036, 10055, '_edit_lock', '1538771939:5'),
(129037, 10055, '_edit_last', '5'),
(129038, 10055, '_thumbnail_id', '7769'),
(129039, 10055, 'mec_color', 'fdd700'),
(129040, 10055, 'mec_location_id', '206'),
(129041, 10055, 'mec_dont_show_map', '0'),
(129042, 10055, 'mec_organizer_id', '1'),
(129043, 10055, 'mec_read_more', ''),
(129044, 10055, 'mec_more_info', ''),
(129045, 10055, 'mec_more_info_title', ''),
(129046, 10055, 'mec_more_info_target', '_self'),
(129047, 10055, 'mec_cost', 'primerafila '),
(129048, 10055, 'mec_date', 'a:5:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2018-11-11\";s:4:\"hour\";s:2:\"11\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"AM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2018-11-11\";s:4:\"hour\";s:2:\"11\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"AM\";}s:13:\"hide_end_time\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:6:\"repeat\";a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:1:\"1\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}}'),
(129049, 10055, 'mec_repeat', 'a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:1:\"1\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}'),
(129050, 10055, 'mec_certain_weekdays', 'a:0:{}'),
(129051, 10055, 'mec_allday', '0'),
(129052, 10055, 'mec_hide_time', '0'),
(129053, 10055, 'mec_hide_end_time', '1'),
(129054, 10055, 'mec_comment', ''),
(129055, 10055, 'mec_start_date', '2018-11-11'),
(129056, 10055, 'mec_start_time_hour', '11'),
(129057, 10055, 'mec_start_time_minutes', '0'),
(129058, 10055, 'mec_start_time_ampm', 'AM'),
(129059, 10055, 'mec_start_day_seconds', '39600'),
(129060, 10055, 'mec_end_date', '2018-11-11'),
(129061, 10055, 'mec_end_time_hour', '11'),
(129062, 10055, 'mec_end_time_minutes', '0'),
(129063, 10055, 'mec_end_time_ampm', 'AM'),
(129064, 10055, 'mec_end_day_seconds', '39600'),
(129065, 10055, 'mec_repeat_status', '0'),
(129066, 10055, 'mec_repeat_type', ''),
(129067, 10055, 'mec_repeat_interval', '1'),
(129068, 10055, 'mec_repeat_end', ''),
(129069, 10055, 'mec_repeat_end_at_occurrences', ''),
(129070, 10055, 'mec_repeat_end_at_date', ''),
(129071, 10055, 'mec_in_days', ''),
(129072, 10055, 'mec_not_in_days', ''),
(129073, 10055, 'mec_hourly_schedules', 'a:0:{}'),
(129074, 10055, 'mec_booking', 'a:0:{}'),
(129075, 10055, 'mec_tickets', 'a:0:{}'),
(129076, 10055, 'mec_fees_global_inheritance', '1'),
(129077, 10055, 'mec_fees', 'a:0:{}'),
(129078, 10055, 'slide_template', 'default'),
(129079, 10055, '_yoast_wpseo_primary_mec_category', '25'),
(129080, 10055, 'essb_cached_image', 'http://filarmonicabogota.gov.co/wp-content/uploads/2018/03/BFJ2018.jpg'),
(129081, 10055, '_yoast_wpseo_content_score', '60'),
(128988, 10054, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(128989, 10054, '_edit_lock', '1538771284:5'),
(128990, 10054, '_edit_last', '5'),
(128991, 10054, '_thumbnail_id', '7769'),
(128992, 10054, 'mec_color', 'fdd700'),
(128993, 10054, 'mec_location_id', '271'),
(128994, 10054, 'mec_dont_show_map', '0'),
(128995, 10054, 'mec_organizer_id', '1'),
(128996, 10054, 'mec_read_more', ''),
(128997, 10054, 'mec_more_info', ''),
(128998, 10054, 'mec_more_info_title', ''),
(128999, 10054, 'mec_more_info_target', '_self'),
(129000, 10054, 'mec_cost', 'Entrada libre'),
(129001, 10054, 'mec_date', 'a:5:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2018-11-10\";s:4:\"hour\";s:1:\"3\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2018-11-10\";s:4:\"hour\";s:1:\"3\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:13:\"hide_end_time\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:6:\"repeat\";a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}}'),
(129002, 10054, 'mec_repeat', 'a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}'),
(129003, 10054, 'mec_certain_weekdays', 'a:0:{}'),
(129004, 10054, 'mec_allday', '0'),
(129005, 10054, 'mec_hide_time', '0'),
(129006, 10054, 'mec_hide_end_time', '1'),
(129007, 10054, 'mec_comment', ''),
(129008, 10054, 'mec_start_date', '2018-11-10'),
(129009, 10054, 'mec_start_time_hour', '3'),
(129010, 10054, 'mec_start_time_minutes', '0'),
(129011, 10054, 'mec_start_time_ampm', 'PM'),
(129012, 10054, 'mec_start_day_seconds', '54000'),
(129013, 10054, 'mec_end_date', '2018-11-10'),
(129014, 10054, 'mec_end_time_hour', '3'),
(129015, 10054, 'mec_end_time_minutes', '0'),
(129016, 10054, 'mec_end_time_ampm', 'PM'),
(129017, 10054, 'mec_end_day_seconds', '54000'),
(129018, 10054, 'mec_repeat_status', '0'),
(129019, 10054, 'mec_repeat_type', ''),
(129020, 10054, 'mec_repeat_interval', '1'),
(129021, 10054, 'mec_repeat_end', ''),
(129022, 10054, 'mec_repeat_end_at_occurrences', ''),
(129023, 10054, 'mec_repeat_end_at_date', ''),
(129024, 10054, 'mec_in_days', ''),
(129025, 10054, 'mec_not_in_days', ''),
(129026, 10054, 'mec_hourly_schedules', 'a:0:{}'),
(129027, 10054, 'mec_booking', 'a:0:{}'),
(129028, 10054, 'mec_tickets', 'a:0:{}'),
(129029, 10054, 'mec_fees_global_inheritance', '1'),
(129030, 10054, 'mec_fees', 'a:0:{}'),
(129031, 10054, 'slide_template', 'default'),
(129032, 10054, '_yoast_wpseo_primary_mec_category', '25'),
(129033, 10054, 'essb_cached_image', 'http://filarmonicabogota.gov.co/wp-content/uploads/2018/03/BFJ2018.jpg'),
(129034, 10054, '_yoast_wpseo_content_score', '60'),
(128941, 10053, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(128942, 10053, '_edit_lock', '1538770845:5'),
(128943, 10053, '_edit_last', '5'),
(128944, 10053, '_thumbnail_id', '9863'),
(128945, 10053, 'mec_color', 'fdd700'),
(128946, 10053, 'mec_location_id', '28'),
(128947, 10053, 'mec_dont_show_map', '0'),
(128948, 10053, 'mec_organizer_id', '1'),
(128949, 10053, 'mec_read_more', ''),
(128950, 10053, 'mec_more_info', ''),
(128951, 10053, 'mec_more_info_title', ''),
(128952, 10053, 'mec_more_info_target', '_self'),
(128953, 10053, 'mec_cost', 'Entrada libre'),
(128954, 10053, 'mec_date', 'a:5:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2018-11-07\";s:4:\"hour\";s:1:\"6\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2018-11-07\";s:4:\"hour\";s:1:\"6\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:13:\"hide_end_time\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:6:\"repeat\";a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}}'),
(128955, 10053, 'mec_repeat', 'a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}'),
(128956, 10053, 'mec_certain_weekdays', 'a:0:{}'),
(128957, 10053, 'mec_allday', '0'),
(128958, 10053, 'mec_hide_time', '0'),
(128959, 10053, 'mec_hide_end_time', '1'),
(128960, 10053, 'mec_comment', ''),
(128961, 10053, 'mec_start_date', '2018-11-07'),
(128962, 10053, 'mec_start_time_hour', '6'),
(128963, 10053, 'mec_start_time_minutes', '0'),
(128964, 10053, 'mec_start_time_ampm', 'PM'),
(128965, 10053, 'mec_start_day_seconds', '64800'),
(128966, 10053, 'mec_end_date', '2018-11-07'),
(128967, 10053, 'mec_end_time_hour', '6'),
(128968, 10053, 'mec_end_time_minutes', '0'),
(128969, 10053, 'mec_end_time_ampm', 'PM'),
(128970, 10053, 'mec_end_day_seconds', '64800'),
(128971, 10053, 'mec_repeat_status', '0'),
(128972, 10053, 'mec_repeat_type', ''),
(128973, 10053, 'mec_repeat_interval', '1'),
(128974, 10053, 'mec_repeat_end', ''),
(128975, 10053, 'mec_repeat_end_at_occurrences', ''),
(128976, 10053, 'mec_repeat_end_at_date', ''),
(128977, 10053, 'mec_in_days', ''),
(128978, 10053, 'mec_not_in_days', ''),
(128979, 10053, 'mec_hourly_schedules', 'a:0:{}'),
(128980, 10053, 'mec_booking', 'a:0:{}'),
(128981, 10053, 'mec_tickets', 'a:0:{}'),
(128982, 10053, 'mec_fees_global_inheritance', '1'),
(128983, 10053, 'mec_fees', 'a:0:{}'),
(128984, 10053, 'slide_template', 'default'),
(128985, 10053, '_yoast_wpseo_primary_mec_category', '25'),
(128986, 10053, 'essb_cached_image', 'http://filarmonicabogota.gov.co/wp-content/uploads/2018/09/OFJC.jpg'),
(128987, 10053, '_yoast_wpseo_content_score', '60'),
(128894, 10052, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(128895, 10052, '_edit_lock', '1538770246:5'),
(128896, 10052, '_edit_last', '5'),
(128897, 10052, '_thumbnail_id', '8206'),
(128898, 10052, 'mec_color', 'fdd700'),
(128899, 10052, 'mec_location_id', '27'),
(128900, 10052, 'mec_dont_show_map', '0'),
(128901, 10052, 'mec_organizer_id', '1'),
(128902, 10052, 'mec_read_more', ''),
(128903, 10052, 'mec_more_info', ''),
(128904, 10052, 'mec_more_info_title', ''),
(128905, 10052, 'mec_more_info_target', '_self'),
(128906, 10052, 'mec_cost', 'Entrada libre'),
(128907, 10052, 'mec_date', 'a:5:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2018-11-07\";s:4:\"hour\";s:1:\"6\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2018-11-07\";s:4:\"hour\";s:1:\"6\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:13:\"hide_end_time\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:6:\"repeat\";a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}}'),
(128908, 10052, 'mec_repeat', 'a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}'),
(128909, 10052, 'mec_certain_weekdays', 'a:0:{}'),
(128910, 10052, 'mec_allday', '0'),
(128911, 10052, 'mec_hide_time', '0'),
(128912, 10052, 'mec_hide_end_time', '1'),
(128913, 10052, 'mec_comment', ''),
(128914, 10052, 'mec_start_date', '2018-11-07'),
(128915, 10052, 'mec_start_time_hour', '6'),
(128916, 10052, 'mec_start_time_minutes', '0'),
(128917, 10052, 'mec_start_time_ampm', 'PM'),
(128918, 10052, 'mec_start_day_seconds', '64800'),
(128919, 10052, 'mec_end_date', '2018-11-07'),
(128920, 10052, 'mec_end_time_hour', '6'),
(128921, 10052, 'mec_end_time_minutes', '0'),
(128922, 10052, 'mec_end_time_ampm', 'PM'),
(128923, 10052, 'mec_end_day_seconds', '64800'),
(128924, 10052, 'mec_repeat_status', '0'),
(128925, 10052, 'mec_repeat_type', ''),
(128926, 10052, 'mec_repeat_interval', '1'),
(128927, 10052, 'mec_repeat_end', ''),
(128928, 10052, 'mec_repeat_end_at_occurrences', ''),
(128929, 10052, 'mec_repeat_end_at_date', ''),
(128930, 10052, 'mec_in_days', ''),
(128931, 10052, 'mec_not_in_days', ''),
(128932, 10052, 'mec_hourly_schedules', 'a:0:{}'),
(128933, 10052, 'mec_booking', 'a:0:{}'),
(128934, 10052, 'mec_tickets', 'a:0:{}'),
(128935, 10052, 'mec_fees_global_inheritance', '1'),
(128936, 10052, 'mec_fees', 'a:0:{}'),
(128937, 10052, 'slide_template', 'default'),
(128938, 10052, '_yoast_wpseo_primary_mec_category', '25'),
(128939, 10052, 'essb_cached_image', 'http://filarmonicabogota.gov.co/wp-content/uploads/2016/10/Orquesta-Filarmónica-Juvenil.jpg'),
(128940, 10052, '_yoast_wpseo_content_score', '60'),
(128840, 10043, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(128841, 10043, '_edit_lock', '1538745828:5'),
(128842, 10043, '_edit_last', '5'),
(128843, 10043, 'mec_color', 'fdd700'),
(128844, 10043, 'mec_location_id', '206'),
(128845, 10043, 'mec_dont_show_map', '0'),
(128846, 10043, 'mec_organizer_id', '1'),
(128847, 10043, 'mec_read_more', ''),
(128848, 10043, 'mec_more_info', ''),
(128849, 10043, 'mec_more_info_title', ''),
(128850, 10043, 'mec_more_info_target', '_self'),
(128851, 10043, 'mec_cost', 'primerafila '),
(128852, 10043, 'mec_date', 'a:5:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2018-11-04\";s:4:\"hour\";s:2:\"11\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"AM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2018-11-04\";s:4:\"hour\";s:2:\"11\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"AM\";}s:13:\"hide_end_time\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:6:\"repeat\";a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:1:\"1\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}}'),
(128853, 10043, 'mec_repeat', 'a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:1:\"1\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}'),
(128854, 10043, 'mec_certain_weekdays', 'a:0:{}'),
(128855, 10043, 'mec_allday', '0'),
(128856, 10043, 'mec_hide_time', '0'),
(128857, 10043, 'mec_hide_end_time', '1'),
(128858, 10043, 'mec_comment', ''),
(128859, 10043, 'mec_start_date', '2018-11-04'),
(128860, 10043, 'mec_start_time_hour', '11'),
(128861, 10043, 'mec_start_time_minutes', '0'),
(128862, 10043, 'mec_start_time_ampm', 'AM'),
(128863, 10043, 'mec_start_day_seconds', '39600'),
(128864, 10043, 'mec_end_date', '2018-11-04'),
(128865, 10043, 'mec_end_time_hour', '11'),
(128866, 10043, 'mec_end_time_minutes', '0'),
(128867, 10043, 'mec_end_time_ampm', 'AM'),
(128868, 10043, 'mec_end_day_seconds', '39600'),
(128869, 10043, 'mec_repeat_status', '0'),
(128870, 10043, 'mec_repeat_type', ''),
(128871, 10043, 'mec_repeat_interval', '1'),
(128872, 10043, 'mec_repeat_end', ''),
(128873, 10043, 'mec_repeat_end_at_occurrences', ''),
(128874, 10043, 'mec_repeat_end_at_date', ''),
(128875, 10043, 'mec_in_days', ''),
(128876, 10043, 'mec_not_in_days', ''),
(128877, 10043, 'mec_hourly_schedules', 'a:0:{}'),
(128878, 10043, 'mec_booking', 'a:0:{}'),
(128879, 10043, 'mec_tickets', 'a:0:{}'),
(128880, 10043, 'mec_fees_global_inheritance', '1'),
(128881, 10043, 'mec_fees', 'a:0:{}'),
(128882, 10043, 'slide_template', 'default'),
(128883, 10043, '_yoast_wpseo_primary_mec_category', '25'),
(128884, 10043, '_yoast_wpseo_content_score', '60'),
(128885, 10043, '_thumbnail_id', '7791'),
(128886, 10043, 'essb_cached_image', 'http://filarmonicabogota.gov.co/wp-content/uploads/2016/10/BFJ20181.jpg'),
(128834, 10042, 'mec_fees_global_inheritance', '1'),
(128793, 10042, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(128794, 10042, '_edit_lock', '1538744262:5'),
(128795, 10042, '_edit_last', '5'),
(128796, 10042, '_thumbnail_id', '7791'),
(128797, 10042, 'mec_color', 'fdd700'),
(128798, 10042, 'mec_location_id', '270'),
(128799, 10042, 'mec_dont_show_map', '0'),
(128800, 10042, 'mec_organizer_id', '1'),
(128801, 10042, 'mec_read_more', ''),
(128802, 10042, 'mec_more_info', ''),
(128803, 10042, 'mec_more_info_title', ''),
(128804, 10042, 'mec_more_info_target', '_self'),
(128805, 10042, 'mec_cost', 'Entrada libre'),
(128806, 10042, 'mec_date', 'a:5:{s:5:\"start\";a:4:{s:4:\"date\";s:10:\"2018-11-03\";s:4:\"hour\";s:2:\"11\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"AM\";}s:3:\"end\";a:4:{s:4:\"date\";s:10:\"2018-11-03\";s:4:\"hour\";s:2:\"11\";s:7:\"minutes\";s:1:\"0\";s:4:\"ampm\";s:2:\"PM\";}s:13:\"hide_end_time\";s:1:\"1\";s:7:\"comment\";s:0:\"\";s:6:\"repeat\";a:5:{s:4:\"type\";s:5:\"daily\";s:8:\"interval\";s:0:\"\";s:3:\"end\";s:5:\"never\";s:11:\"end_at_date\";s:0:\"\";s:18:\"end_at_occurrences\";s:2:\"10\";}}');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wofilarbp_postmeta`
--
ALTER TABLE `wofilarbp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wofilarbp_postmeta`
--
ALTER TABLE `wofilarbp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129082;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
