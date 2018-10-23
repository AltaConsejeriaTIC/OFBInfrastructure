-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-10-2018 a las 12:59:01
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
-- Estructura de tabla para la tabla `wofilarbp_terms`
--

CREATE TABLE `wofilarbp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wofilarbp_terms`
--

INSERT INTO `wofilarbp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Actividades', 'actividades', 0),
(7, 'Actualidad', 'actualidad', 0),
(8, 'Clases Magistrales', 'clases-magistrales', 0),
(9, 'Conciertos', 'conciertos', 0),
(10, 'Convocatorias', 'convocatorias', 0),
(11, 'Destacados', 'destacados', 0),
(12, 'Directores', 'directores', 0),
(13, 'Entrevistas', 'entrevistas', 0),
(14, 'Eventos', 'eventos', 0),
(15, 'Prensa', 'prensa', 0),
(16, 'Solistas', 'solistas', 0),
(17, 'Ballet', 'ballet', 0),
(18, 'Bogotá', 'bogota', 0),
(19, 'Filarmónica', 'filarmonica', 0),
(20, 'Música', 'musica', 0),
(21, 'Orquesta', 'orquesta', 0),
(22, 'Menu Principal', 'menu-principal', 0),
(23, 'Red de paginas del Sector', 'red-de-paginas-del-sector', 0),
(24, 'Servicio al ciudadano', 'servicio-al-ciudadano', 0),
(25, 'Conciertos', 'conciertos', 0),
(26, 'Teatro Mayor Julio Mario Santo Domingo', 'teatro-mayor-julio-mario-santo-domingo', 0),
(27, 'Auditorio Fabio Lozano', 'auditorio-fabio-lozano', 0),
(28, 'Auditorio Teresa Cuervo', 'auditorio-teresa-cuervo', 0),
(29, 'Festival', 'festival', 0),
(30, 'Auditorio León de Greiff', 'auditorio-leon-de-greiff', 0),
(31, 'Auditorio Publio Martínez', 'auditorio-publio-martinez', 0),
(32, 'Auditorio Mario Laserna', 'auditorio-mario-laserna', 0),
(33, 'Plaza de Bolivar', 'plaza-de-bolivar', 0),
(34, 'Palacio de los Deportes', 'palacio-de-los-deporte', 0),
(35, 'Obra Salesiana Niño Jesús', 'obra-salesiana-nino-jesus', 0),
(36, 'Colegio Mayor de San Bartolomé', 'colegio-mayor-de-san-bartolome', 0),
(37, 'Centro Cultural William Shakespeare', 'centro-cultural-william-shakespeare', 0),
(38, 'Liceo Femenino Mercedes Nariño', 'liceo-femenino-mercedes-narino', 0),
(39, 'Teatro El Parque', 'teatro-el-parque', 0),
(40, 'Jardín Botánico de Bogotá José Celestino Mutis', 'jardin-botanico-de-bogota-jose-celestino-mutis', 0),
(41, 'Cafam Floresta', 'cafam-floresta', 0),
(42, 'Centro Internacional', 'centro-internacional', 0),
(43, 'Parque del Country', 'parque-del-country', 0),
(44, 'Parque de la 93', 'parque-de-la-93', 0),
(45, 'Colegio Champagnat', 'colegio-champagnat', 0),
(46, 'CADE La Victoria', 'cade-la-victoria', 0),
(47, 'Auditorio Alfonso Borrero Cabal de la Universidad Javeriana', 'auditorio-alfonso-borrero-cabal-de-la-universidad-javeriana', 0),
(48, 'Parroquia de Todos los Santos', 'parroquia-de-todos-los-santos', 0),
(49, 'Aeropuerto el Dorado Muelle Internacional', 'aeropuerto-el-dorado-muelle-internacional', 0),
(50, 'Teatro Colón', 'teatro-colon', 0),
(51, 'Teatro Jorge Eliécer Gaitán', 'teatro-jorge-eliecer-gaitan', 0),
(52, 'PAS Usaquén', 'pas-usaquen', 0),
(53, 'Club Colombia', 'club-colombia', 0),
(54, 'Colegio Distrital Menorah', 'colegio-distrital-menorah', 0),
(55, 'Universidad Jorge Tadeo Lozano', 'universidad-jorge-tadeo-lozano', 0),
(56, 'Hotel Tequendama', 'hotel-tequendama', 0),
(57, 'Hotel La Fontana', 'hotel-la-fontana', 0),
(58, 'Proyecto Fenicia', 'proyecto-fenicia', 0),
(59, 'Aeropuerto Internacional El Dorado', 'aeropuerto-internacional-el-dorado', 0),
(60, 'Santuario de Monserrate', 'santuario-de-monserrate', 0),
(61, 'Centro Comercial Calima', 'centro-comercial-calima', 0),
(62, 'Casona Colonial', 'casona-colonial', 0),
(63, 'Iglesia San Javier', 'iglesia-san-javier', 0),
(64, 'Teatro de Bellas Artes de Bogotá', 'teatro-de-bellas-artes-de-bogota', 0),
(65, 'Entidades de Control', 'entidades-de-control', 0),
(66, 'Cárcel De Mujeres Buen Pastor', 'carcel-de-mujeres-buen-pastor', 0),
(67, 'Colegio Externado Nacional Camilo Torres', 'colegio-externado-nacional-camilo-torres', 0),
(68, 'Fundación Universitaria Konrad Lorenz', 'fundacion-universitaria-konrad-lorenz', 0),
(69, 'Tornamesa Zona G', 'tornamesa-zona-g', 0),
(70, 'Hola OFB', 'hola-ofb', 0),
(71, 'Teatro Villa Mayor', 'teatro-villa-mayor', 0),
(72, 'Museo Nacional Auditorio Teresa Cuervo Borda', 'museo-nacional-de-colombia', 0),
(73, 'Biblioteca Virgilio Barco', 'biblioteca-virgilio-barco', 0),
(74, 'Auditorio Samuel Bedoya', 'auditorio-samuel-bedoya', 0),
(75, 'Procuraduría General de la Nación', 'procuraduria-general-de-la-nacion', 0),
(76, 'Centro Cultural Gimnasio Moderno', 'centro-cultural-gimnasio-moderno', 0),
(77, 'Teatro Estudio TM', 'teatro-estudio-tm', 0),
(78, 'Cárcel La Picota', 'carcel-la-picota', 0),
(79, 'Parroquia San Ambrosio', 'parroquia-san-ambrosio', 0),
(80, 'Iglesia Inmaculada Concepción de Suba', 'iglesia-inmaculada-concepcion-de-suba', 0),
(81, 'Basílica Menor Nuestra Señora de Lourdes', 'basilica-menor-nuestra-senora-de-lourdes', 0),
(82, 'Universidad San Buenaventura', 'universidad-san-buenaventura', 0),
(83, 'Colegio Eucarístico Villa Guadalupe', 'colegio-eucaristico-villa-guadalupe', 0),
(84, 'Parroquia San Luis Beltrán', 'parroquia-san-luis-beltran', 0),
(85, 'Iglesia San Juan Bautista La Estrada', 'iglesia-san-juan-bautista-la-estrada', 0),
(86, 'Teatro Leonardus', 'teatro-leonardus', 0),
(87, 'Colegio OEA', 'colegio-oea', 0),
(88, 'Biblioteca Pública El Tintal Manuel Zapata Olivella', 'biblioteca-publica-el-tintal-manuel-zapata-olivella', 0),
(89, 'Colegio Nueva Esperanza', 'colegio-nueva-esperanza', 0),
(90, 'Colegio Menorah', 'colegio-menorah', 0),
(91, 'Colegio Juan Lozano', 'colegio-juan-lozano', 0),
(92, 'IED República de Guatemala', 'ied-republica-de-guatemala', 0),
(93, 'Colegio Policarpa Salavarrieta', 'colegio-policarpa-salavarrieta', 0),
(94, 'San Ambrosio', 'san-ambrosio', 0),
(95, 'Colegio Femenino Mercedes Nariño', 'colegio-femenino-mercedes-narino', 0),
(96, 'Colegio República De Panamá', 'colegio-republica-de-panama', 0),
(97, 'Teatro Libre Chapinero', 'teatro-libre-chapinero', 0),
(98, 'I.E.D Monteverde', 'i-e-d-monteverde', 0),
(99, 'Fundación Cardioinfantil', 'fundacion-cardioinfantil', 0),
(100, 'INEM Santiago Perez', 'inem-santiago-perez', 0),
(101, 'CDC La Victoria', 'cdc-la-victoria', 0),
(102, 'Gun Club', 'gun-club', 0),
(103, 'Colegio San Bartolomé La Merced', 'colegio-san-bartolome-la-merced', 0),
(104, 'Location Name', 'location-name', 0),
(105, 'Parroquia San Judas Tadeo', 'parroquia-san-judas-tadeo', 0),
(106, 'Biblioteca Pública El Tunal Gabriel García Márquez', 'biblioteca-publica-el-tunal-gabriel-garcia-marquez', 0),
(107, 'Universidad de los Andes - Edificio Mario Laserna', 'universidad-de-los-andes-edificio-mario-laserna', 0),
(108, 'Iglesia San Francisco Javier', 'iglesia-san-francisco-javier', 0),
(109, 'Cárcel Distrital', 'carcel-distrital', 0),
(110, 'Cade Servita', 'cade-servita', 0),
(111, 'Santuario de Nuestra Señora del Carmen', 'santuario-de-nuestra-senora-del-carmen', 0),
(112, 'Parque Iglesia 20 De Julio', 'parque-iglesia-20-de-julio', 0),
(113, 'Teatro Colsubsidio', 'teatro-colsubsidio', 0),
(114, 'Parque Metropolitano Simón Bolívar', 'parque-metropolitano-simon-bolivar', 0),
(115, 'Parque Metropolitano El Tunal', 'parque-metropolitano-el-tunal', 0),
(116, 'Parroquia Nuestra Señora del Campo', 'parroquia-nuestra-senora-del-campo', 0),
(117, 'San Jerónimo Emiliani', 'san-jeronimo-emiliani', 0),
(118, 'Parroquia San Buenaventura', 'parroquia-san-buenaventura', 0),
(119, 'CDC Julio César Usme', 'cdc-julio-cesar-usme', 0),
(120, 'Museo de Bogotá', 'museo-de-bogota', 0),
(121, 'Iglesia Inmaculado Corazón de María', 'iglesia-inmaculado-corazon-de-maria', 0),
(122, 'Teatro La media torta', 'teatro-la-media-torta', 0),
(123, 'Sala Otto de Greiff', 'sala-otto-de-greiff', 0),
(124, 'Clan Cantarrana', 'clan-cantarrana', 0),
(125, 'Sena Centro de electricidad y telecomunicaciones', 'sena-centro-de-electricidad-y-telecomunicaciones', 0),
(126, 'Teatro Servitá', 'teatro-servita', 0),
(127, 'Parque Bicentenario', 'parque-bicentenario', 0),
(128, 'Parque Ciudad Montes', 'parque-ciudad-montes', 0),
(129, 'Casa de la Cultura Ciudad Bolívar', 'casa-de-la-cultura-ciudad-bolivar', 0),
(130, 'Parroquia San Juan Crisóstomo', 'parroquia-san-juan-crisostomo', 0),
(131, 'Parroquia San Nicolás', 'parroquia-san-nicolas', 0),
(132, 'Biblioteca Pública La Giralda Fontibón', 'biblioteca-publica-la-giralda-fontibon', 0),
(133, 'Parroquia Jesucristo Redentor', 'parroquia-jesucristo-redentor', 0),
(134, 'Cedid Guillermo Cano Isaza', 'cedid-guillermo-cano-isaza', 0),
(135, 'Parroquia Santa María del Prado', 'parroquia-santa-maria-del-prado', 0),
(136, 'Planetario de Bogotá', 'planetario-de-bogota', 0),
(137, 'Parroquia Santa Rosa de Lima', 'parroquia-santa-rosa-de-lima', 0),
(138, 'IED Cundinamarca', 'ied-cundinamarca', 0),
(139, 'Iglesia de San Ignacio de Loyola', 'iglesia-de-san-ignacio-de-loyola', 0),
(140, 'Colegio Nuestra Señora de Rosario - Puente Aranda', 'colegio-nuestra-senora-de-rosario-puente-aranda', 0),
(141, 'Parque Nacional', 'parque-nacional', 0),
(142, 'Fundación Gilberto Alzate Avendaño', 'fundacion-gilberto-alzate-avendano', 0),
(143, 'Maloka Centro Interactivo', 'maloka-centro-interactivo', 0),
(144, 'Parroquia San José de Fontibón', 'parroquia-san-jose-de-fontibon', 0),
(145, 'Palacio de Justicia', 'palacio-de-justicia', 0),
(146, 'Almirante Padilla', 'almirante-padilla', 0),
(147, 'Cárcel Modelo', 'carcel-modelo', 0),
(148, 'Parque Chiminigagua', 'parque-chiminigagua', 0),
(149, 'Teatro La Baranda Sede La Calera', 'teatro-la-baranda-sede-la-calera', 0),
(150, 'Auditorio Sonia Fajardo Forero, Fundación Konrad Lorenz', 'auditorio-sonia-fajardo-forero-fundacion-konrad-lorenz', 0),
(151, 'Hall 74', 'hall-74', 0),
(152, 'Organizer Name', 'organizer-name', 0),
(153, 'Centro Comercial Santa Fé', 'centro-comercial-santa-fe', 0),
(154, 'Iglesia 20 de Julio Divino Niño', 'iglesia-20-de-julio-divino-nino', 0),
(155, 'Teatro Chiminigagua. Bosa', 'teatro-chiminigagua-bosa', 0),
(156, 'Parroquia San Cristobal', 'parroquia-san-cristobal', 0),
(157, 'Torres de Fenicia', 'torres-de-fenicia', 0),
(158, 'Torres de Fenicia - Las Nieves', 'torres-de-fenicia-las-nieves', 0),
(159, 'PARK WAY', 'park-way', 0),
(160, 'Parroquia Santos Timoteo y Tito', 'parroquia-santos-timoteo-y-tito', 0),
(161, 'Plaza Fundacional Fontibón', 'plaza-fundacional-fontibon', 0),
(162, 'Plaza Lourdes', 'plaza-lourdes', 0),
(163, 'Parroquia Nuestra Señora de Chiquinquirá', 'parroquia-nuestra-senora-de-chiquinquira', 0),
(164, 'Ciudad Bolivar', 'ciudad-bolivar', 0),
(165, 'Plaza Distrital de la Cruces', 'plaza-distrital-de-la-cruces', 0),
(166, 'Bahía Jorge Eliecer Gaitán', 'bahia-jorge-eliecer-gaitan', 0),
(167, 'Fundación Santa Fe de Bogotá - Hospital Universitario', 'fundacion-santa-fe-de-bogota-hospital-universitario', 0),
(168, 'Auditorio Corferias', 'auditorio-corferias', 0),
(169, 'Proyecto de Renovación Urbana. Torres de Fenicia', 'proyecto-de-renovacion-urbana-torres-de-fenicia', 0),
(170, 'Iglesia San Pedro Poveda', 'iglesia-san-pedro-poveda', 0),
(171, 'Compensar', 'compensar', 0),
(172, 'Parroquia Inmaculado Corazón de María', 'parroquia-inmaculado-corazon-de-maria', 0),
(173, 'Universidad Santo Tomás', 'universidad-santo-tomas', 0),
(174, 'Capilla del Convento de Santo Domingo del Colegio Jordán de Sajonia', 'capilla-del-convento-de-santo-domingo-del-colegio-jordan-de-sajonia', 0),
(175, 'Plaza de Mercado Quirigua', 'plaza-de-mercado-quirigua', 0),
(176, 'Parque Villas de Madrigal', 'parque-villas-de-madrigal', 0),
(177, 'Plaza de los Mártires', 'plaza-de-los-martires', 0),
(178, 'Plazoleta Portal de Transmilenio Suba', 'plazoleta-portal-de-transmilenio-suba', 0),
(179, 'Parque Central Las Cruces', 'parque-central-las-cruces', 0),
(180, 'Auditorio Biblioteca Virgilio Barco', 'auditorio-biblioteca-virgilio-barco', 0),
(181, 'Parque Lucero', 'parque-lucero', 0),
(182, 'Parque Fundacional Usaquén', 'parque-fundacional-usaquen', 0),
(183, 'Iglesia San Bernandino', 'iglesia-san-bernandino', 0),
(184, 'Catedral Primada de Colombia', 'catedral-primada-de-colombia', 0),
(185, 'Parque Venecia', 'parque-venecia', 0),
(186, 'Corporación Casa de la Cultura Ciudad Bolivar', 'corporacion-casa-de-la-cultura-ciudad-bolivar', 0),
(187, 'Canchas Islas del Sol', 'canchas-islas-del-sol', 0),
(188, 'Parque El Guavio', 'parque-el-guavio', 0),
(189, 'Estadio Nacional de Chile', 'estadio-nacional-de-chile', 0),
(190, 'Alcaldía local La Candelaria', 'alcaldia-local-la-candelaria', 0),
(191, 'Humedal el Tunjo', 'humedal-el-tunjo', 0),
(192, 'Parquen Zonal Nuevo Muzú', 'parquen-zonal-nuevo-muzu', 0),
(193, 'Templo de Los Ángeles Custodios', 'templo-de-los-angeles-custodios', 0),
(194, 'Teatro CorpArtes', 'teatro-corpartes', 0),
(195, 'Inauguración Calle 30 con 7', 'inauguracion-calle-30-con-7', 0),
(196, 'Iglesia Santo Domingo', 'iglesia-santo-domingo', 0),
(197, 'Parroquia de Nuestra Señora del Perpetuo Socorro', 'parroquia-de-nuestra-senora-del-perpetuo-socorro', 0),
(198, 'Iglesia Inmaculado Corazón de María - Claret', 'iglesia-inmaculado-corazon-de-maria-claret', 0),
(199, 'Asociación Colombiana de Facultades de Enfermería', 'asociacion-colombiana-de-facultades-de-enfermeria', 0),
(200, 'CDC Servitá', 'cdc-servita', 0),
(201, 'CDC Bellavista', 'cdc-bellavista', 0),
(202, 'Teatro Taller Filarmónico', 'teatro-taller-filarmonico', 0),
(203, 'Universidad De Los Andes - Edificio Alberto Lleras Camargo', 'universidad-de-los-andes-edificio-alberto-lleras-camargo', 0),
(204, 'Clan Cantarrana Usme', 'clan-cantarrana-usme', 0),
(205, 'Biblioteca de la Aduanilla de Paiba de la Universidad Distrital Francisco José de Caldas', 'biblioteca-de-la-aduanilla-de-paiba-de-la-universidad-distrital-francisco-jose-de-caldas', 0),
(206, 'Teatro Estudio. Teatro Mayor Julio Mario Santo Domingo', 'teatro-estudio-teatro-mayor-julio-mario-santo-domingo', 0),
(207, 'Teatro Minuto de Dios', 'teatro-minuto-de-dios', 0),
(208, 'Iglesia San Juan Bautista La Salle', 'iglesia-san-juan-bautista-la-salle', 0),
(209, 'Centros Filarmónicos', 'centros-filarmonicos', 0),
(210, 'CDC La Giralda', 'cdc-la-giralda', 0),
(211, 'Konrad Lorenz', 'konrad-lorenz', 0),
(212, 'CDC Arbolizadora', 'cdc-arbolizadora', 0),
(213, 'Iglesia Santo Domingo - Convento', 'iglesia-santo-domingo-convento', 0),
(214, 'Localidad Sumapaz', 'localidad-sumapaz', 0),
(215, 'Capilla Gimnasio Moderno', 'capilla-gimnasio-moderno', 0),
(216, 'Escenario exterior Gimnasio Moderno', 'escenario-exterior-gimnasio-moderno', 0),
(217, 'Parroquia San Jerónimo Emiliani', 'parroquia-san-jeronimo-emiliani', 0),
(218, 'Claustro de San Francisco', 'claustro-de-san-francisco', 0),
(219, 'Bahía Asosandiego - Parque Bicentenario', 'bahia-asosandiego-parque-bicentenario', 0),
(220, 'Colegio Eduardo Umaña Mendoza', 'colegio-eduardo-umana-mendoza', 0),
(221, 'CORFERIAS', 'corferias', 0),
(222, 'Iglesia Voto Nacional- Los Mártires', 'iglesia-voto-nacional-los-martires', 0),
(223, 'Parque Gaitán - Barrios Unidos', 'parque-gaitan-barrios-unidos', 0),
(224, 'Parque de Los Periodistas', 'parque-de-los-periodistas', 0),
(225, 'Evento Feria de Movilidad y Transporte. Corferias', 'evento-feria-de-movilidad-y-transporte-corferias', 0),
(226, 'Templo de la Santa Cruz', 'templo-santa-cruz', 0),
(227, 'Parque La Esmeralda', 'parque-la-esmeralda', 0),
(228, 'Auditorio Mayor, Universidad Santo Tomás', 'auditorio-mayor-universidad-santo-tomas', 0),
(229, 'World Trade Center', 'world-trade-center', 0),
(230, 'Plazoleta Maloka', 'plazoleta-maloka', 0),
(231, 'Parroquia San José Obrero', 'parroquia-san-jose-obrero', 0),
(232, 'Iglesia San Gabriel Arcangel', 'iglesia-san-gabriel-arcangel', 0),
(233, 'Parque Jacqueline • Kennedy', 'parque-jacqueline-%e2%80%a2-kennedy', 0),
(234, 'Auditorio Sonia Fajardo, Fundación Konrad Lorenz', 'auditorio-sonia-fajardo-fundacion-konrad-lorenz', 0),
(235, 'Parroquia Santa María del Camino', 'parroquia-santa-maria-del-camino', 0),
(236, 'Colegio San Jorge de Inglaterra', 'colegio-san-jorge-de-inglaterra', 0),
(239, 'Parroquia San Bartolome Apostol', 'parroquia-san-bartolome-apostol', 0),
(238, 'Programas de mano', 'programas-de-mano', 0),
(240, 'Iglesia El Encuentro', 'iglesia-el-encuentro', 0),
(241, 'Plaza Fundacional Usaquén', 'plaza-fundacional-usaquen', 0),
(242, 'Calle del Bronx', 'calle-del-bronx', 0),
(243, 'Iglesia Madre Teresa De Calcuta', 'iglesia-madre-teresa-de-calcuta', 0),
(244, 'Centro Comercial Plaza Imperial', 'centro-comercial-plaza-imperial', 0),
(245, 'Parroquia Nuestra Señora del Consuelo (Usaquén)', 'parroquia-nuestra-senora-del-consuelo-usaquen', 0),
(246, 'Videos OFB', 'videos-ofb', 0),
(247, 'Iglesia Santa Lucía', 'iglesia-santa-lucia', 0),
(248, 'Iglesia San Tarsicio', 'iglesia-san-tarsicio', 0),
(249, 'Parroquia Nuestra Señora del Perpetuo Socorro', 'parroquia-nuestra-senora-del-perpetuo-socorro', 0),
(250, 'Iglesia Santa Lucía .', 'iglesia-santa-lucia-2', 0),
(251, 'Parroquia Santa Margarita Reina de Escocia (Ciudad Bolívar)', 'parroquia-santa-margarita-reina-de-escocia-ciudad-bolivar', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wofilarbp_terms`
--
ALTER TABLE `wofilarbp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wofilarbp_terms`
--
ALTER TABLE `wofilarbp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
