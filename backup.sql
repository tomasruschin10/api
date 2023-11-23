-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db-mysql-fadu-do-user-13229506-0.b.db.ondigitalocean.com:25060
-- Tiempo de generación: 19-05-2023 a las 18:30:45
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `defaultdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activities`
--

CREATE TABLE `activities` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `action`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Comentaste', 'en la materia Matemáticas', 'Comentario', '2022-08-25 00:23:16.622549', '2022-08-25 00:23:16.622549'),
(2, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 00:29:03.069448', '2022-08-25 00:29:03.069448'),
(3, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:35:24.258784', '2022-08-25 01:35:24.258784'),
(4, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:36:12.017719', '2022-08-25 01:36:12.017719'),
(5, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:37:46.251922', '2022-08-25 01:37:46.251922'),
(6, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:38:18.051808', '2022-08-25 01:38:18.051808'),
(7, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:38:59.098396', '2022-08-25 01:38:59.098396'),
(8, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:40:49.470444', '2022-08-25 01:40:49.470444'),
(9, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:42:05.367435', '2022-08-25 01:42:05.367435'),
(10, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:43:25.253415', '2022-08-25 01:43:25.253415'),
(11, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 01:45:06.220405', '2022-08-25 01:45:06.220405'),
(12, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 15:36:04.257564', '2022-08-25 15:36:04.257564'),
(13, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 19:33:49.372109', '2022-08-25 19:33:49.372109'),
(14, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 19:36:42.638255', '2022-08-25 19:36:42.638255'),
(15, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 19:38:09.771353', '2022-08-25 19:38:09.771353'),
(16, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 19:41:31.107584', '2022-08-25 19:41:31.107584'),
(17, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 19:44:26.606802', '2022-08-25 19:44:26.606802'),
(18, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 19:56:23.565693', '2022-08-25 19:56:23.565693'),
(19, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-08-25 21:13:51.487670', '2022-08-25 21:13:51.487670'),
(20, 31, 'Comentaste', 'en la materia Inglés', 'Comentario', '2022-08-31 00:11:16.620043', '2022-08-31 00:11:16.620043'),
(21, 31, 'Comentaste', 'en la materia Inglés', 'Comentario', '2022-08-31 00:11:46.608593', '2022-08-31 00:11:46.608593'),
(22, 31, 'Comentaste', 'en la materia Inglés', 'Comentario', '2022-08-31 00:11:51.214387', '2022-08-31 00:11:51.214387'),
(23, 31, 'Comentaste', 'en la materia Inglés', 'Comentario', '2022-08-31 00:11:57.730829', '2022-08-31 00:11:57.730829'),
(24, 31, 'Comentaste', 'en la materia Inglés', 'Comentario', '2022-08-31 00:11:59.150897', '2022-08-31 00:11:59.150897'),
(25, 31, 'Comentaste', 'en la materia Inglés', 'Comentario', '2022-08-31 02:48:42.771039', '2022-08-31 02:48:42.771039'),
(60, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-09-12 05:03:01.768479', '2022-09-12 05:03:01.768479'),
(61, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-09-12 05:06:37.167689', '2022-09-12 05:06:37.167689'),
(62, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-09-12 05:06:44.542073', '2022-09-12 05:06:44.542073'),
(70, 1, 'Comentaste', 'el hilo de @angel', 'Comentario', '2022-09-13 20:19:26.844264', '2022-09-13 20:19:26.844264'),
(71, 1, 'Comentaste', 'el hilo de @admin1', 'Comentario', '2022-09-13 20:24:16.731867', '2022-09-13 20:24:16.731867'),
(72, 1, 'Comentaste', 'el hilo de @angel', 'Comentario', '2022-09-13 20:24:59.609313', '2022-09-13 20:24:59.609313'),
(73, 1, 'Comentaste', 'el hilo de @angel', 'Comentario', '2022-09-13 20:28:41.217661', '2022-09-13 20:28:41.217661'),
(74, 1, 'Comentaste', 'el hilo de @angel', 'Comentario', '2022-09-13 20:28:47.576575', '2022-09-13 20:28:47.576575'),
(75, 31, 'Comentaste', 'en la materia Materias Optativas', 'Comentario', '2022-09-14 00:08:45.359120', '2022-09-14 00:08:45.359120'),
(76, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-14 00:09:54.159501', '2022-09-14 00:09:54.159501'),
(77, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-14 00:10:06.161917', '2022-09-14 00:10:06.161917'),
(78, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-14 00:10:54.600631', '2022-09-14 00:10:54.600631'),
(79, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-14 00:22:57.827891', '2022-09-14 00:22:57.827891'),
(90, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-14 00:49:48.404523', '2022-09-14 00:49:48.404523'),
(91, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-16 05:55:19.758484', '2022-09-16 05:55:19.758484'),
(92, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-16 05:55:45.263232', '2022-09-16 05:55:45.263232'),
(93, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-16 06:18:31.869747', '2022-09-16 06:18:31.869747'),
(94, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-16 06:27:46.899227', '2022-09-16 06:27:46.899227'),
(95, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-17 00:53:00.149953', '2022-09-17 00:53:00.149953'),
(96, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-17 00:53:50.926775', '2022-09-17 00:53:50.926775'),
(97, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-17 01:00:45.531424', '2022-09-17 01:00:45.531424'),
(117, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-20 12:56:37.641622', '2022-09-20 12:56:37.641622'),
(118, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-20 14:58:38.580562', '2022-09-20 14:58:38.580562'),
(119, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-20 15:13:03.866160', '2022-09-20 15:13:03.866160'),
(120, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-20 15:14:36.063466', '2022-09-20 15:14:36.063466'),
(121, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-22 02:43:49.308002', '2022-09-22 02:43:49.308002'),
(122, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-22 02:44:23.546902', '2022-09-22 02:44:23.546902'),
(123, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-26 21:47:18.977076', '2022-09-26 21:47:18.977076'),
(124, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-26 21:47:59.480516', '2022-09-26 21:47:59.480516'),
(125, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-26 21:49:39.282487', '2022-09-26 21:49:39.282487'),
(126, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-26 22:44:37.691125', '2022-09-26 22:44:37.691125'),
(128, 1, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-27 14:46:29.027033', '2022-09-27 14:46:29.027033'),
(129, 1, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-27 15:13:46.798833', '2022-09-27 15:13:46.798833'),
(130, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-27 20:10:00.088768', '2022-09-27 20:10:00.088768'),
(131, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-27 21:43:04.621830', '2022-09-27 21:43:04.621830'),
(132, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-09-27 21:43:11.776037', '2022-09-27 21:43:11.776037'),
(133, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-09-28 14:52:17.518437', '2022-09-28 14:52:17.518437'),
(134, 1, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-04 15:53:41.486962', '2022-10-04 15:53:41.486962'),
(135, 1, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-04 22:02:58.612130', '2022-10-04 22:02:58.612130'),
(136, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:04:24.419262', '2022-10-07 18:04:24.419262'),
(137, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:08:05.355324', '2022-10-07 18:08:05.355324'),
(138, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:08:24.304999', '2022-10-07 18:08:24.304999'),
(139, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:14:35.085724', '2022-10-07 18:14:35.085724'),
(140, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:15:40.536604', '2022-10-07 18:15:40.536604'),
(141, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:21:53.994079', '2022-10-07 18:21:53.994079'),
(142, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:22:12.101821', '2022-10-07 18:22:12.101821'),
(143, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:26:40.183989', '2022-10-07 18:26:40.183989'),
(144, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-07 18:28:16.928443', '2022-10-07 18:28:16.928443'),
(145, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-07 18:29:13.751316', '2022-10-07 18:29:13.751316'),
(146, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-07 18:29:19.238790', '2022-10-07 18:29:19.238790'),
(147, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-07 18:29:25.830876', '2022-10-07 18:29:25.830876'),
(148, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-07 18:32:18.805166', '2022-10-07 18:32:18.805166'),
(149, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-11 10:38:43.700999', '2022-10-11 10:38:43.700999'),
(150, 31, 'Comentaste', 'en la materia A1. Arquitectura I', 'Comentario', '2022-10-11 11:24:36.351458', '2022-10-11 11:24:36.351458'),
(151, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-15 23:44:07.891773', '2022-10-15 23:44:07.891773'),
(152, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-10-21 01:40:59.155505', '2022-10-21 01:40:59.155505'),
(153, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-24 12:32:51.713880', '2022-10-24 12:32:51.713880'),
(154, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-24 12:34:50.365301', '2022-10-24 12:34:50.365301'),
(155, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2022-10-24 12:35:29.917005', '2022-10-24 12:35:29.917005'),
(156, 1, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2022-11-25 05:08:11.181031', '2022-11-25 05:08:11.181031'),
(157, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2023-01-22 22:59:17.069495', '2023-01-22 22:59:17.069495'),
(158, 31, 'Comentaste', 'en la materia Seminario optativo III (5)', 'Comentario', '2023-03-22 00:00:33.305411', '2023-03-22 00:00:33.305411'),
(159, 31, 'Comentaste', 'en la materia Seminario optativo III (5)', 'Comentario', '2023-03-28 05:07:43.928693', '2023-03-28 05:07:43.928693'),
(160, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2023-03-28 05:38:03.439608', '2023-03-28 05:38:03.439608'),
(161, 31, 'Comentaste', 'en la materia Diseño Graf 4', 'Comentario', '2023-03-28 22:17:46.576850', '2023-03-28 22:17:46.576850'),
(163, 31, 'Comentaste', 'en la materia Semiología', 'Comentario', '2023-03-29 07:14:17.377126', '2023-03-29 07:14:17.377126'),
(164, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-05 12:11:32.124752', '2023-04-05 12:11:32.124752'),
(165, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2023-04-05 12:12:55.242886', '2023-04-05 12:12:55.242886'),
(166, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-07 14:02:47.458873', '2023-04-07 14:02:47.458873'),
(167, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-17 20:36:55.501064', '2023-04-17 20:36:55.501064'),
(168, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-17 22:12:25.602220', '2023-04-17 22:12:25.602220'),
(169, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-17 22:14:27.321811', '2023-04-17 22:14:27.321811'),
(170, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-17 22:17:54.459692', '2023-04-17 22:17:54.459692'),
(171, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-18 11:13:49.750331', '2023-04-18 11:13:49.750331'),
(172, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-18 16:16:38.697509', '2023-04-18 16:16:38.697509'),
(173, 31, 'Comentaste', 'en la materia Intr. al Conocimiento de la Sociedad y el Estado', 'Comentario', '2023-04-18 16:30:39.357452', '2023-04-18 16:30:39.357452'),
(174, 31, 'Comentaste', 'el hilo de @alumno', 'Comentario', '2023-04-18 18:50:15.470173', '2023-04-18 18:50:15.470173'),
(175, 31, 'Comentaste', 'en la materia Intr. al Pensamiento Científico', 'Comentario', '2023-04-19 09:34:42.794449', '2023-04-19 09:34:42.794449'),
(176, 31, 'Comentaste', 'en la materia Intr. al Pensamiento Científico', 'Comentario', '2023-04-27 17:40:23.672092', '2023-04-27 17:40:23.672092'),
(177, 31, 'Comentaste', 'en la materia Intr. al Pensamiento Científico', 'Comentario', '2023-04-27 17:40:45.864311', '2023-04-27 17:40:45.864311');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int NOT NULL,
  `image_id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `career_id` int NOT NULL,
  `partner_id` int NOT NULL,
  `key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `advertisements`
--

INSERT INTO `advertisements` (`id`, `image_id`, `url`, `date_start`, `date_end`, `created_at`, `updated_at`, `career_id`, `partner_id`, `key`) VALUES
(31, 236, 'ole.com.ar', '2023-03-14 00:00:00', '2023-03-30 00:00:00', '2023-03-20 18:50:46.946189', '2023-03-21 13:22:43.000000', 65, 92, 'job_offers'),
(34, 244, 'ole.com.ar', '2023-03-14 00:00:00', '2023-05-06 00:00:00', '2023-03-21 13:23:38.412664', '2023-04-19 09:43:27.000000', 65, 112, 'job_offers'),
(35, 245, 'www.ole.com.ar', '2023-03-16 00:00:00', '2023-03-31 00:00:00', '2023-03-21 13:31:25.893088', '2023-03-21 13:31:25.893088', 65, 93, 'home'),
(36, 246, 'ole.com.ar', '2023-03-14 00:00:00', '2023-04-22 00:00:00', '2023-03-21 14:58:54.653104', '2023-04-19 09:48:55.000000', 65, 114, 'courses_workshops'),
(37, 247, 'ole.com.ar', '2023-03-14 00:00:00', '2023-03-30 00:00:00', '2023-03-21 14:58:57.033045', '2023-03-21 14:59:01.000000', 65, 94, 'courses_workshops'),
(39, 250, 'ole.com.ar', '2023-03-14 00:00:00', '2023-04-28 00:00:00', '2023-04-03 14:31:41.665210', '2023-04-19 09:46:48.000000', 65, 113, 'courses_workshops'),
(40, 251, 'www.ole.com.ar', '2023-03-16 00:00:00', '2023-04-29 00:00:00', '2023-04-03 14:32:14.290724', '2023-04-13 15:37:37.000000', 65, 102, 'home'),
(41, 253, 'www.ole.com.ar', '2023-03-16 00:00:00', '2023-08-31 00:00:00', '2023-04-13 15:33:27.076076', '2023-05-12 05:45:35.000000', 65, 119, 'home'),
(42, 254, 'www.ole.com.ar', '2023-03-16 00:00:00', '2023-04-29 00:00:00', '2023-04-13 15:37:12.886796', '2023-04-13 15:37:44.000000', 65, 103, 'home'),
(43, 255, 'www.ole.com.ar', '2023-03-16 00:00:00', '2023-07-31 00:00:00', '2023-04-13 15:38:25.947501', '2023-05-12 05:45:23.000000', 65, 118, 'home'),
(44, 278, 'https://www.linkedin.com/', '2023-04-19 00:00:00', '2023-04-27 00:00:00', '2023-04-19 09:44:46.274845', '2023-04-19 09:44:46.274845', 65, 111, 'job_offers');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balances`
--

CREATE TABLE `balances` (
  `id` int NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `offer_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `careers`
--

CREATE TABLE `careers` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `description_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `careers`
--

INSERT INTO `careers` (`id`, `name`, `image_id`, `created_at`, `updated_at`, `description_url`) VALUES
(65, 'Diseño Gráfico', 241, '2023-03-21 12:05:28.310699', '2023-03-21 14:25:33.000000', 'https://www.fadu.uba.ar/categoria/246-nuevo-plan'),
(72, 'Arquitectura', 294, '2023-04-28 09:35:02.154285', '2023-04-28 09:35:02.154285', 'https://www.fadu.uba.ar/categoria/49-arquitectura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int NOT NULL,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `key`, `name`, `value`) VALUES
(1, 'si', 'offert_4_u', '🎪 El Mercado de Fadu ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_scores`
--

CREATE TABLE `extra_scores` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `score` int NOT NULL,
  `user_subject_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `extra_scores`
--

INSERT INTO `extra_scores` (`id`, `name`, `score`, `user_subject_id`, `created_at`, `updated_at`) VALUES
(45, 'hshsbs', 4, 125, '2023-05-17 17:48:45.518386', '2023-05-17 17:48:45.518386'),
(46, 'nota 2', 4, 124, '2023-05-17 17:50:42.767237', '2023-05-17 17:50:42.767237');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` longtext,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hi!', '2022-08-15 06:30:29.872834', '2022-08-15 06:30:29.872834');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `general_notifications`
--

CREATE TABLE `general_notifications` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `general_notifications`
--

INSERT INTO `general_notifications` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'hola', 'Bienvenido', '2023-02-07 04:04:51.583615', '2023-03-29 16:46:32.255771');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `url`, `name`, `created_at`, `updated_at`) VALUES
(1, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/user.png', 'users/user.png', '2022-08-15 04:32:40.782842', '2022-08-15 04:32:40.782842'),
(2, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1660543585670million_back.png', 'advertisements/1660543585670million_back.png', '2022-08-15 06:06:27.489342', '2022-08-15 06:06:27.489342'),
(4, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1661198024533goku-dragon-ball-super-ultra-instinto.webp', 'advertisements/1661198024533goku-dragon-ball-super-ultra-instinto.webp', '2022-08-15 06:19:38.504112', '2022-08-22 19:53:44.000000'),
(5, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661187619338programacion.png', 'offers/1661187619338programacion.png', '2022-08-15 07:24:06.507345', '2022-08-22 17:00:19.000000'),
(6, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661187532145programacion.png', 'offers/1661187532145programacion.png', '2022-08-15 07:24:18.652230', '2022-08-22 16:58:52.000000'),
(7, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661187664718programacion.png', 'offers/1661187664718programacion.png', '2022-08-15 07:24:28.108936', '2022-08-22 17:01:05.000000'),
(8, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661187668402programacion.png', 'offers/1661187668402programacion.png', '2022-08-15 07:25:04.929441', '2022-08-22 17:01:08.000000'),
(9, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661187673376programacion.png', 'offers/1661187673376programacion.png', '2022-08-15 07:25:12.659147', '2022-08-22 17:01:13.000000'),
(10, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661187676474programacion.png', 'offers/1661187676474programacion.png', '2022-08-15 07:25:20.598620', '2022-08-22 17:01:16.000000'),
(12, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1662588114107burger image.png', 'offers/1662588114107burger image.png', '2022-08-15 07:26:18.223095', '2022-09-07 22:01:54.000000'),
(13, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661187686089programacion.png', 'offers/1661187686089programacion.png', '2022-08-15 07:26:24.650373', '2022-08-22 17:01:26.000000'),
(14, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/resources/1660575850853poison.png', 'resources/1660575850853poison.png', '2022-08-15 15:04:12.707510', '2022-08-15 15:04:12.707510'),
(16, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/resources/1661189827226pdf.png', 'resources/1661189827226pdf.png', '2022-08-15 15:19:18.336199', '2022-08-22 17:37:07.000000'),
(18, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1661195953070pexels-cottonbro-5998822 (1) (1).jpg', 'advertisements/1661195953070pexels-cottonbro-5998822 (1) (1).jpg', '2022-08-16 15:38:22.475736', '2022-08-22 19:19:13.000000'),
(20, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661369573335userProfile.jpg', 'users/1661369573335userProfile.jpg', '2022-08-22 19:56:55.898713', '2022-08-24 19:32:53.000000'),
(21, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661291018399CONSULTORIA CON CPA (2).png', 'users/1661291018399CONSULTORIA CON CPA (2).png', '2022-08-23 19:36:51.629397', '2022-08-23 21:43:38.000000'),
(22, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661283482577image (1).png', 'users/1661283482577image (1).png', '2022-08-23 19:38:02.604711', '2022-08-23 19:38:02.604711'),
(23, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661283610305image (1).png', 'users/1661283610305image (1).png', '2022-08-23 19:40:10.332373', '2022-08-23 19:40:10.332373'),
(24, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661283722758image (1).png', 'users/1661283722758image (1).png', '2022-08-23 19:42:02.783287', '2022-08-23 19:42:02.783287'),
(25, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661283765232image (1).png', 'users/1661283765232image (1).png', '2022-08-23 19:42:45.257338', '2022-08-23 19:42:45.257338'),
(26, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661283804953image (1).png', 'users/1661283804953image (1).png', '2022-08-23 19:43:24.978111', '2022-08-23 19:43:24.978111'),
(27, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661283873085image (1).png', 'users/1661283873085image (1).png', '2022-08-23 19:44:33.108764', '2022-08-23 19:44:33.108764'),
(28, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1661288637597image (1).png', 'users/1661288637597image (1).png', '2022-08-23 21:03:57.682939', '2022-08-23 21:03:57.682939'),
(32, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1661375329855Impulsando tu negocio (4).png', 'offers/1661375329855Impulsando tu negocio (4).png', '2022-08-24 21:08:50.006636', '2022-08-24 21:08:50.006636'),
(49, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1673113029088userProfile.jpg', 'users/1673113029088userProfile.jpg', '2022-08-25 19:49:18.905907', '2023-01-07 17:37:09.000000'),
(55, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/16624986563071000_F_231568540_o5hRmCVmWHqgGveBAyJWN9l17pqjZmEE.jpeg', 'users/16624986563071000_F_231568540_o5hRmCVmWHqgGveBAyJWN9l17pqjZmEE.jpeg', '2022-09-06 21:10:56.336580', '2022-09-06 21:10:56.336580'),
(56, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1662577547529wallpaper.png', 'advertisements/1662577547529wallpaper.png', '2022-09-07 19:05:48.275503', '2022-09-07 19:05:48.275503'),
(57, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1662703857348360_F_398275593_lLjP0YkmuaWbDHRIZ5pTDUbjc1gPQgX1.jpg', 'users/1662703857348360_F_398275593_lLjP0YkmuaWbDHRIZ5pTDUbjc1gPQgX1.jpg', '2022-09-09 06:10:57.825735', '2022-09-09 06:10:57.825735'),
(58, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1662704106493luna.webp', 'users/1662704106493luna.webp', '2022-09-09 06:15:06.508403', '2022-09-09 06:15:06.508403'),
(59, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1662704112733luna.webp', 'users/1662704112733luna.webp', '2022-09-09 06:15:12.749063', '2022-09-09 06:15:12.749063'),
(60, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1662741433819userProfile.jpg', 'users/1662741433819userProfile.jpg', '2022-09-09 16:37:14.082650', '2022-09-09 16:37:14.082650'),
(61, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663019049058camera.png', 'offers/1663019049058camera.png', '2022-09-12 21:44:09.915974', '2022-09-12 21:44:09.915974'),
(62, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663019120303camera.png', 'offers/1663019120303camera.png', '2022-09-12 21:45:20.314694', '2022-09-12 21:45:20.314694'),
(63, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663019343123CONSULTORIA CON CPA (3).png', 'offers/1663019343123CONSULTORIA CON CPA (3).png', '2022-09-12 21:49:03.141643', '2022-09-12 21:49:03.141643'),
(66, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663019555809camera.png', 'offers/1663019555809camera.png', '2022-09-12 21:52:35.821998', '2022-09-12 21:52:35.821998'),
(67, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663019583064camera.png', 'offers/1663019583064camera.png', '2022-09-12 21:53:03.074472', '2022-09-12 21:53:03.074472'),
(74, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663019942549camera.png', 'offers/1663019942549camera.png', '2022-09-12 21:59:02.562733', '2022-09-12 21:59:02.562733'),
(75, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663020071702camera.png', 'offers/1663020071702camera.png', '2022-09-12 22:01:11.713988', '2022-09-12 22:01:11.713988'),
(76, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663020557188punto blanco.jpeg', 'offers/1663020557188punto blanco.jpeg', '2022-09-12 22:09:17.199120', '2022-09-12 22:09:17.199120'),
(77, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663020635282punto blanco.jpeg', 'offers/1663020635282punto blanco.jpeg', '2022-09-12 22:10:35.293652', '2022-09-12 22:10:35.293652'),
(79, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1663599742449Factu artes (10).png', 'users/1663599742449Factu artes (10).png', '2022-09-19 15:02:22.731998', '2022-09-19 15:02:22.731998'),
(80, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/16636899355611-11.jpeg', 'offers/16636899355611-11.jpeg', '2022-09-20 16:05:35.759368', '2022-09-20 16:05:35.759368'),
(81, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663690187555tote.png', 'offers/1663690187555tote.png', '2022-09-20 16:09:47.591769', '2022-09-20 16:09:47.591769'),
(82, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663702020724punto blanco.jpeg', 'offers/1663702020724punto blanco.jpeg', '2022-09-20 19:27:07.274221', '2022-09-20 19:27:07.274221'),
(85, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663709805033tote.png', 'offers/1663709805033tote.png', '2022-09-20 21:36:45.068744', '2022-09-20 21:36:45.068744'),
(86, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663709830381afiche3.jpg', 'offers/1663709830381afiche3.jpg', '2022-09-20 21:37:10.413151', '2022-09-20 21:37:10.413151'),
(89, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/16637126842721-11.jpeg', 'offers/16637126842721-11.jpeg', '2022-09-20 22:24:44.295404', '2022-09-20 22:24:44.295404'),
(90, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1663712739021Untitled_Artwork-97streng.jpg', 'offers/1663712739021Untitled_Artwork-97streng.jpg', '2022-09-20 22:25:39.036463', '2022-09-20 22:25:39.036463'),
(92, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1663726455094adaptive-icon.png', 'users/1663726455094adaptive-icon.png', '2022-09-21 02:14:15.255387', '2022-09-21 02:14:15.255387'),
(96, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1664171836686camera.png', 'users/1664171836686camera.png', '2022-09-26 05:57:16.701982', '2022-09-26 05:57:16.701982'),
(97, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1664172251738Factu artes (10).png', 'users/1664172251738Factu artes (10).png', '2022-09-26 06:04:11.772690', '2022-09-26 06:04:11.772690'),
(98, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1664304132346camera.png', 'users/1664304132346camera.png', '2022-09-26 06:12:07.852051', '2022-09-27 18:42:12.000000'),
(99, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1664172975141WhatsApp Image 2022-08-22 at 2.29.59 PM (1).jpeg', 'users/1664172975141WhatsApp Image 2022-08-22 at 2.29.59 PM (1).jpeg', '2022-09-26 06:16:15.159276', '2022-09-26 06:16:15.159276'),
(100, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1664250579709camera.png', 'advertisements/1664250579709camera.png', '2022-09-27 03:49:39.874933', '2022-09-27 03:49:39.874933'),
(101, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664254886462camera.png', 'careers/1664254886462camera.png', '2022-09-27 05:01:26.624822', '2022-09-27 05:01:26.624822'),
(102, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664254936594camera.png', 'careers/1664254936594camera.png', '2022-09-27 05:02:16.609418', '2022-09-27 05:02:16.609418'),
(103, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664255166245camera.png', 'careers/1664255166245camera.png', '2022-09-27 05:06:06.258433', '2022-09-27 05:06:06.258433'),
(104, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664255282731camera.png', 'careers/1664255282731camera.png', '2022-09-27 05:08:02.745168', '2022-09-27 05:08:02.745168'),
(105, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664255444702camera.png', 'careers/1664255444702camera.png', '2022-09-27 05:10:44.715462', '2022-09-27 05:10:44.715462'),
(106, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664255820727camera.png', 'careers/1664255820727camera.png', '2022-09-27 05:17:00.743319', '2022-09-27 05:17:00.743319'),
(107, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664256338564camera.png', 'careers/1664256338564camera.png', '2022-09-27 05:25:38.577323', '2022-09-27 05:25:38.577323'),
(108, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1664258997349camera.png', 'careers/1664258997349camera.png', '2022-09-27 06:09:57.364182', '2022-09-27 06:09:57.364182'),
(110, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664298879414miAmKtyTyaH0p0ytVlPB_Screenshot 2021-11-11 at 12.58.33 (1).webp', 'offers/1664298879414miAmKtyTyaH0p0ytVlPB_Screenshot 2021-11-11 at 12.58.33 (1).webp', '2022-09-27 17:14:39.438451', '2022-09-27 17:14:39.438451'),
(111, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664299611503quickchalle2.jpg', 'offers/1664299611503quickchalle2.jpg', '2022-09-27 17:26:51.519379', '2022-09-27 17:26:51.519379'),
(112, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1664299742589miAmKtyTyaH0p0ytVlPB_Screenshot 2021-11-11 at 12.58.33 (1).webp', 'users/1664299742589miAmKtyTyaH0p0ytVlPB_Screenshot 2021-11-11 at 12.58.33 (1).webp', '2022-09-27 17:29:02.637158', '2022-09-27 17:29:02.637158'),
(118, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664303519815imagesyuol.png', 'offers/1664303519815imagesyuol.png', '2022-09-27 18:31:59.829898', '2022-09-27 18:31:59.829898'),
(119, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664303654701images.jpeg', 'offers/1664303654701images.jpeg', '2022-09-27 18:34:14.730663', '2022-09-27 18:34:14.730663'),
(120, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664303969153ortolgo-150.jpg', 'offers/1664303969153ortolgo-150.jpg', '2022-09-27 18:39:29.174055', '2022-09-27 18:39:29.174055'),
(121, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664304701032download.png', 'offers/1664304701032download.png', '2022-09-27 18:51:41.046256', '2022-09-27 18:51:41.046256'),
(122, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664305788035images (1).jpeg', 'offers/1664305788035images (1).jpeg', '2022-09-27 19:09:48.049286', '2022-09-27 19:09:48.049286'),
(124, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664307425238elpoli2.jpg', 'offers/1664307425238elpoli2.jpg', '2022-09-27 19:37:05.252695', '2022-09-27 19:37:05.252695'),
(125, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1664307607266images (1).jpeg', 'offers/1664307607266images (1).jpeg', '2022-09-27 19:40:07.280653', '2022-09-27 19:40:07.280653'),
(126, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1664311309709river-juega.jpg', 'users/1664311309709river-juega.jpg', '2022-09-27 19:47:48.531825', '2022-09-27 20:41:50.000000'),
(127, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1664308948459river-juega.jpg', 'users/1664308948459river-juega.jpg', '2022-09-27 20:02:28.471787', '2022-09-27 20:02:28.471787'),
(155, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1665429445546placeholder.jpg', 'users/1665429445546placeholder.jpg', '2022-10-10 19:17:25.600087', '2022-10-10 19:17:25.600087'),
(156, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1665429459045placeholder.jpg', 'users/1665429459045placeholder.jpg', '2022-10-10 19:17:39.057174', '2022-10-10 19:17:39.057174'),
(158, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1665431402274WhatsApp Image 2022-08-22 at 2.29.59 PM.jpeg', 'offers/1665431402274WhatsApp Image 2022-08-22 at 2.29.59 PM.jpeg', '2022-10-10 19:50:02.288888', '2022-10-10 19:50:02.288888'),
(162, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1665431583482CONSULTORIA CON CPA (3).png', 'offers/1665431583482CONSULTORIA CON CPA (3).png', '2022-10-10 19:53:03.497830', '2022-10-10 19:53:03.497830'),
(173, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1665432366734Google-Amblem.png', 'offers/1665432366734Google-Amblem.png', '2022-10-10 20:06:06.750819', '2022-10-10 20:06:06.750819'),
(174, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1665432374915placeholder.jpg', 'offers/1665432374915placeholder.jpg', '2022-10-10 20:06:14.928380', '2022-10-10 20:06:14.928380'),
(175, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/16654323960641665431402274WhatsApp Image 2022-08-22 at 2.29.59 PM.jpeg', 'offers/16654323960641665431402274WhatsApp Image 2022-08-22 at 2.29.59 PM.jpeg', '2022-10-10 20:06:36.076502', '2022-10-10 20:06:36.076502'),
(179, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/16654369896511665432366734Google-Amblem.png', 'offers/16654369896511665432366734Google-Amblem.png', '2022-10-10 21:23:09.666022', '2022-10-10 21:23:09.666022'),
(192, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1665528306742riverapp.png', 'users/1665528306742riverapp.png', '2022-10-11 22:45:06.955759', '2022-10-11 22:45:06.955759'),
(193, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1681400762577IMG_0804.jpg', 'users/1681400762577IMG_0804.jpg', '2022-10-11 22:47:52.420099', '2023-04-13 15:46:02.000000'),
(197, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/16658056999581664307607266images (1).jpeg', 'offers/16658056999581664307607266images (1).jpeg', '2022-10-15 03:48:19.971342', '2022-10-15 03:48:19.971342'),
(198, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681817391331download (9).jpeg', 'offers/1681817391331download (9).jpeg', '2022-10-15 03:48:22.374770', '2023-04-18 11:29:51.000000'),
(204, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/167404484674558888220bc2fc2ef3a186090.png', 'advertisements/167404484674558888220bc2fc2ef3a186090.png', '2023-01-18 12:27:27.274221', '2023-01-18 12:27:27.274221'),
(205, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/167416579827958888220bc2fc2ef3a186090.png', 'advertisements/167416579827958888220bc2fc2ef3a186090.png', '2023-01-19 22:03:18.329798', '2023-01-19 22:03:18.329798'),
(208, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1676471343897avatar-0d09e442db7025efbce1da08009db500.jpg', 'advertisements/1676471343897avatar-0d09e442db7025efbce1da08009db500.jpg', '2023-02-15 14:29:03.947343', '2023-02-15 14:29:03.947343'),
(213, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/16782194186284.png', 'offers/16782194186284.png', '2023-03-07 20:03:39.046631', '2023-03-07 20:03:39.046631'),
(235, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/16793381718079353e7f9-0fbb-4ec9-a139-ff12297ac283.jpg', 'users/16793381718079353e7f9-0fbb-4ec9-a139-ff12297ac283.jpg', '2023-03-20 18:49:31.831824', '2023-03-20 18:49:31.831824'),
(236, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1679338450677PHOTO-2023-03-15-13-21-12.jpg', 'advertisements/1679338450677PHOTO-2023-03-15-13-21-12.jpg', '2023-03-20 18:50:46.936896', '2023-03-20 18:54:10.000000'),
(241, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1679400539521Logo_de_la_Universidad_de_Buenos_Aires.jpeg', 'careers/1679400539521Logo_de_la_Universidad_de_Buenos_Aires.jpeg', '2023-03-21 12:05:28.270812', '2023-03-21 12:08:59.000000'),
(242, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/resources/1679401700236GUBERN_espacio.pdf', 'resources/1679401700236GUBERN_espacio.pdf', '2023-03-21 12:28:20.261897', '2023-03-21 12:28:20.261897'),
(243, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1679401922136images (1).jpeg', 'offers/1679401922136images (1).jpeg', '2023-03-21 12:32:02.152718', '2023-03-21 12:32:02.152718'),
(244, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1679405018388placeholder.jpg', 'advertisements/1679405018388placeholder.jpg', '2023-03-21 13:23:38.403015', '2023-03-21 13:23:38.403015'),
(245, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/167940548587131d08a7a-2904-47ab-a94b-8275ed0ede44.JPG', 'advertisements/167940548587131d08a7a-2904-47ab-a94b-8275ed0ede44.JPG', '2023-03-21 13:31:25.883117', '2023-03-21 13:31:25.883117'),
(246, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1681897735025IMG_0803.jpg', 'advertisements/1681897735025IMG_0803.jpg', '2023-03-21 14:58:54.642011', '2023-04-19 09:48:55.000000'),
(247, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1679410736994placeholder.jpg', 'advertisements/1679410736994placeholder.jpg', '2023-03-21 14:58:57.009898', '2023-03-21 14:58:57.009898'),
(250, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1680532301634placeholder.jpg', 'advertisements/1680532301634placeholder.jpg', '2023-04-03 14:31:41.651527', '2023-04-03 14:31:41.651527'),
(251, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1681400257090download (6).jpeg', 'advertisements/1681400257090download (6).jpeg', '2023-04-03 14:32:14.275604', '2023-04-13 15:37:37.000000'),
(253, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1681400302879download.jpeg', 'advertisements/1681400302879download.jpeg', '2023-04-13 15:33:27.054092', '2023-04-13 15:38:23.000000'),
(254, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1681400264931download (4).jpeg', 'advertisements/1681400264931download (4).jpeg', '2023-04-13 15:37:12.880002', '2023-04-13 15:37:45.000000'),
(255, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1681400315106WA-buenos-aires-jazz-festival-2019.jpeg', 'advertisements/1681400315106WA-buenos-aires-jazz-festival-2019.jpeg', '2023-04-13 15:38:25.928979', '2023-04-13 15:38:35.000000'),
(256, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1681400709534IMG_0803.jpg', 'users/1681400709534IMG_0803.jpg', '2023-04-13 15:39:48.350863', '2023-04-13 15:45:09.000000'),
(257, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1681400956304IMG_0805.jpg', 'users/1681400956304IMG_0805.jpg', '2023-04-13 15:48:49.410591', '2023-04-13 15:49:16.000000'),
(258, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681817827906download (10).jpeg', 'offers/1681817827906download (10).jpeg', '2023-04-18 11:37:07.930187', '2023-04-18 11:37:07.930187'),
(259, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681818698603341846339_271498278632050_3326617468138912170_n.jpeg', 'offers/1681818698603341846339_271498278632050_3326617468138912170_n.jpeg', '2023-04-18 11:49:48.920089', '2023-04-18 11:51:38.000000'),
(260, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681818906188IMG_0703.JPG', 'offers/1681818906188IMG_0703.JPG', '2023-04-18 11:54:52.915436', '2023-04-18 11:55:06.000000'),
(261, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681818915893placeholder.jpg', 'offers/1681818915893placeholder.jpg', '2023-04-18 11:55:15.909669', '2023-04-18 11:55:15.909669'),
(262, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681818917591placeholder.jpg', 'offers/1681818917591placeholder.jpg', '2023-04-18 11:55:17.599904', '2023-04-18 11:55:17.599904'),
(263, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681818920531placeholder.jpg', 'offers/1681818920531placeholder.jpg', '2023-04-18 11:55:20.540695', '2023-04-18 11:55:20.540695'),
(264, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1681822543664307775923_518777446739328_3461982087534229089_n.jpg', 'offers/1681822543664307775923_518777446739328_3461982087534229089_n.jpg', '2023-04-18 12:55:43.675744', '2023-04-18 12:55:43.675744'),
(267, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168185445631735e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168185445631735e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-18 21:47:36.334111', '2023-04-18 21:47:36.334111'),
(268, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168185521865135e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168185521865135e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-18 22:00:18.660475', '2023-04-18 22:00:18.660475'),
(269, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168185535150335e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168185535150335e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-18 22:02:31.511284', '2023-04-18 22:02:31.511284'),
(270, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186216177035e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186216177035e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-18 23:56:01.784623', '2023-04-18 23:56:01.784623'),
(271, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186397115935e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186397115935e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 00:26:11.167102', '2023-04-19 00:26:11.167102'),
(272, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186403773335e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186403773335e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 00:27:17.742628', '2023-04-19 00:27:17.742628'),
(273, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186409858535e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186409858535e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 00:28:18.594099', '2023-04-19 00:28:18.594099'),
(274, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186417431535e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186417431535e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 00:29:34.322981', '2023-04-19 00:29:34.322981'),
(275, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186429850435e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186429850435e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 00:31:38.522441', '2023-04-19 00:31:38.522441'),
(276, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186432371435e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186432371435e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 00:32:03.730962', '2023-04-19 00:32:03.730962'),
(277, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168186440690335e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168186440690335e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 00:33:26.911069', '2023-04-19 00:33:26.911069'),
(278, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/advertisements/1681897486242IMG_0805.jpg', 'advertisements/1681897486242IMG_0805.jpg', '2023-04-19 09:44:46.258478', '2023-04-19 09:44:46.258478'),
(280, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168192047461235e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168192047461235e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 16:07:55.249102', '2023-04-19 16:07:55.249102'),
(281, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168192109895735e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168192109895735e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 16:18:19.567598', '2023-04-19 16:18:19.567598'),
(282, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168192122345135e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168192122345135e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 16:20:24.053747', '2023-04-19 16:20:24.053747'),
(283, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168192602392835e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168192602392835e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 17:40:24.897679', '2023-04-19 17:40:24.897679'),
(286, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168194064344235e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168194064344235e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 21:44:03.966523', '2023-04-19 21:44:03.966523'),
(287, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168194147597735e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168194147597735e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 21:57:56.483810', '2023-04-19 21:57:56.483810'),
(288, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168194178385935e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168194178385935e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 22:03:04.740822', '2023-04-19 22:03:04.740822'),
(289, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168194188329135e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168194188329135e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 22:04:43.680645', '2023-04-19 22:04:43.680645'),
(290, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/168194205427035e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', 'careers/168194205427035e3240b-83ea-4bce-8b06-076fc81ab639_bike-with-yellow-wall-min.jpg', '2023-04-19 22:07:34.658373', '2023-04-19 22:07:34.658373'),
(294, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/careers/1682674502070Screen Shot 2023-02-17 at 11.52.28.png', 'careers/1682674502070Screen Shot 2023-02-17 at 11.52.28.png', '2023-04-28 09:35:02.102417', '2023-04-28 09:35:02.102417'),
(295, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/users/1682675416352Frame 30 (1).png', 'users/1682675416352Frame 30 (1).png', '2023-04-28 09:48:23.087061', '2023-04-28 09:50:16.000000'),
(296, 'https://storage.googleapis.com/fadu-1c40d.appspot.com/offers/1683870193003D765A99E-F434-48B6-9236-DAE01BB150FB.jpeg', 'offers/1683870193003D765A99E-F434-48B6-9236-DAE01BB150FB.jpeg', '2023-05-12 05:43:13.030120', '2023-05-12 05:43:13.030120');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lost_objects`
--

CREATE TABLE `lost_objects` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `image_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `lost_objects`
--

INSERT INTO `lost_objects` (`id`, `title`, `description`, `image_id`, `created_at`, `updated_at`, `user_id`) VALUES
(10, 'Billetera ', 'Hola gente, hoy en la parada del 107 tipo 13 me encontré una billetera tirada, por el dni que estaba adentro es de Pedro Di Benedetto. Pueden reenviar este mensaje a otros grupos así se puede contactar conmigo, gracias. Mi cel: 1164731933\r\nEse mensaje está circulando por wtspp, lo comparto capaz el propietario está en el grupo.', 243, '2023-03-21 12:32:02.171142', '2023-03-21 12:32:02.171142', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notices`
--

CREATE TABLE `notices` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `notices`
--

INSERT INTO `notices` (`id`, `name`, `image_id`, `date_start`, `date_end`, `created_at`, `updated_at`) VALUES
(15, 'River', 193, '2022-10-11 00:00:00', '2022-10-12 00:00:00', '2022-10-11 22:47:52.460210', '2022-10-11 22:47:52.460210'),
(17, 'River', 256, '2022-10-11 00:00:00', '2022-10-12 00:00:00', '2023-04-13 15:39:48.364152', '2023-04-13 15:39:48.364152'),
(18, 'River', 257, '2022-10-11 00:00:00', '2022-10-12 00:00:00', '2023-04-13 15:48:49.420596', '2023-04-13 15:48:49.420596'),
(19, 'River', 295, '2022-10-11 00:00:00', '2022-10-12 00:00:00', '2023-04-28 09:48:23.098090', '2023-04-28 09:48:23.098090');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers`
--

CREATE TABLE `offers` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `offer_category_id` int NOT NULL,
  `description` longtext,
  `url` varchar(255) DEFAULT NULL,
  `image_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `partner_id` int NOT NULL,
  `career_id` int NOT NULL,
  `point` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `offers`
--

INSERT INTO `offers` (`id`, `title`, `offer_category_id`, `description`, `url`, `image_id`, `created_at`, `updated_at`, `partner_id`, `career_id`, `point`) VALUES
(36, 'Design For Good', 2, 'The Design For Good Brief set is a collection of inspiring design projects that aim to highlight and showcase how social change can happen through the power of design and visual communication. Get creative, take action!!', 'https://www.briefbox.me/courses/design-for-good', 110, '2022-09-27 17:14:39.515592', '2023-03-21 13:21:11.000000', 59, 65, 0),
(37, 'Quick UI Challenges', 2, 'This set is made up of quick, fun digital and UI design briefs, aimed at helping you develop a variety of skills and create some awesome portfolio pieces, but at a faster pace and with slightly less guidance than our regular brief sets. This is the perfect brief set for those looking to polish up on their UI skills, while picking up a few new things along the way.', 'https://www.briefbox.me/courses/quick-ui-challenges', 111, '2022-09-27 17:26:51.557139', '2023-03-21 13:21:07.000000', 90, 65, 10),
(40, 'Diseñador/a Gráfico para Comunicación Visual', 1, 'Diseñador Gráfico con experiencia en Comunicación Visual Nos encontramos en la búsqueda de un profesional en Diseño Gráfico para incorporarse a la Gerencia de Marketing y Comunicaciones. Somos una importante red sanatorial que brinda prestaciones de salud a más de 800.000 pacientes. ¿Qué esperamos de vos? Acompañar y colaborar con diseños creativos e innovadores a las estrategias de Marketing y Comunicación institucional. Organizar, planificar y elaborar los pedidos de piezas gráficas, impresas y digitales, tanto para la Administración Central como para los 16 centros de salud y canales oficiales de la red. También, estará a tu cargo la producción de piezas para la difusión de actividades, campañas e información destinada a pacientes, familiares y profesionales sanitarios. Algunas de tus tareas serán: Diseñar piezas creativas y centradas en el usuario final, ya sean digitales y/o impresas, para acompañar las estrategias de marketing y comunicación institucional (flyers, banners emails, merchandising, otros elementos de comunicación). ​​​​Desarrollar logos e identidad visual, institucional y para la red sanatorial. Diseñar piezas para canales de comunicación digital siguiendo la planificación mensual. Crear piezas únicas y adaptaciones para cada red social. Diseño de contenidos digitales (GIF´s, imágenes, PDF). Proponer nuevos formatos de diseño, conectado con las nuevas tendencias de diseño. Realizar ediciones en piezas de RRHH para comunicaciones mensuales de ingresos, ascensos, etc. Llevar adelante el diseño de piezas de mail para comunicación interna. Diseñar contenidos enfocados en formato web y mobile. Presentaciones corporativas (presentaciones tipo power point, documentos y formularios) Colaborar en el desarrollo de procesos en el área de Diseño. Ser focal point de todos los pedidos y organización personal a través de Trello. El/La candidato/a ideal deberá contar con experiencia de al menos 4 años en diseño gráfico institucional, web y la generación de piezas impresas y digitales para landing pages, redes sociales y campañas. Experiencia en el ámbito de la salud será un plus, aunque no es excluyente.\r\n\r\nRequisitos\r\n\r\nEstudiantes avanzados o graduados de las carreras de Diseño Gráfico, Diseño web o Diseñador audiovisual o carreras afines. Un mínimo de 4 años de experiencia en diseño 360º en empresas, agencias, medios o áreas afines al ámbito de la salud (es un plus, no excluyente). Conocimiento de branding y contenido corporativo. Conocimiento y experiencia en el armado de piezas creativas para campañas digitales. Conocimiento de diferentes formatos institucionales (folletería, cartelería, señalética, en grandes formatos y/o digital) Excelente manejo de programas de diseño (Manejo del paquete Adobe. Photoshop, Illustrator, Acrobat. Alto nivel de interpretación, conceptualización, redacción y creatividad para contar historias y plasmarlas en una presentación (Storytelling) Manejo de herramientas de producción y edición de contenidos para redes como Canva. Disponibilidad full time. 9:30 a 18 hs. ¿Qué valoramos? -Capacidad de organización, adaptación y planificación para trabajar con múltiples proyectos de manera simultánea. -Creatividad, compromiso y habilidades para trabajar en equipo. -Perfiles comprometidos con la divulgación médica, interesados en temáticas de salud. -Iniciativa para Investigar las tendencias, novedades tecnológicas que sumen al sector y a su tarea diaria. -Capacidad para relacionarse con colaboradores internos y externos, siendo focal point de todos los pedidos. -Soporte en las tareas concernientes a la Gerencia de Marketing y Comunicación y sus activaciones para generación de demanda. -Participar en la gestión de Proveedores (gráficas, merchandising).. Comportamientos Valorados Autonomía Organización Excelente Comunicación Proactividad Liderazgo Mirada 360°\r\n\r\nBeneficios\r\n\r\nOfrecemos una modalidad de trabajo HÍBRIDO: 3 días presencial en nuestras oficinas + 2 días de Home Office', 'https://ar.trabajo.org/oferta-1291-20220925-f96fc13b4a8a5b7085baa776ce8fd742?utm_campaign=google_jobs_apply&utm_source=google_jobs_apply&utm_medium=organic', 118, '2022-09-27 18:31:59.876385', '2023-03-21 13:20:16.000000', 23, 65, 0),
(41, 'Diseñador Gráfico y Editor de Videos', 1, 'Somos ORT Argentina, una Institución Educativa de excelencia vanguardista en Tech y nos encontramos en búsqueda de una persona para sumarse al equipo de Comunicación Institucional.\r\n\r\n¿Estudiaste Diseño Gráfico o Imagen y Sonido, y tenés ganas de continuar tu desarrollo como Diseñador Gráfico y Editor de Videos? ¡Sumate!\r\n\r\nQuien Se Sume Podrá\r\n\r\nRealizar diseño y diagramación de piezas gráficas para distintos formatos digitales (redes sociales, página web, gifs animados) e impresos (folletos, banners, brochures, cartelería).\r\n\r\nRealizar la producción y edición de piezas audiovisuales para carteleras digitales, sitios web y redes sociales\r\n\r\n¿Que buscamos de la persona que sume?\r\n\r\nMuy buen manejo de Illustrator y Photoshop (excluyente).\r\n\r\nExperiencia en animaciones y Motion Graphic en After Effects y ediciones de video en Premiere (excluyente).\r\n\r\nConocimientos de HTML para diseño y maquetación web / newsletter (deseable).\r\n\r\nEstamos pensando en personas que cuenten con un mínimo de 3 años de experiencia, tengan ganas de trabajar en equipo, sean creativas y versátiles en la relación con diversos interlocutores.\r\n\r\nTe ofrecemos la oportunidad de ser parte de un equipo único, al que le gusta innovar y crear valor, ¡sumate!\r\n\r\nHorarios de trabajo: lunes a viernes de 8:30 a 17:30 hs.\r\n\r\nLugar: CABA\r\n\r\n¿Te interesa la propuesta? Nos gustaría conocer tu portfolio para verte en acción. Incluí el link dentro de tu CV', 'https://www.linkedin.com/jobs/view/disen%CC%83ador-gra%CC%81fico-y-editor-de-videos-at-ort-argentina-3251641276/?utm_campaign=google_jobs_apply&utm_source=google_jobs_apply&utm_medium=organic&originalSubdomain=ar', 119, '2022-09-27 18:34:14.828252', '2023-03-21 13:20:12.000000', 24, 65, 0),
(42, 'Diseñador Gráfico y Editor de Videos', 1, 'Somos ORT Argentina, una Institución Educativa de excelencia vanguardista en Tech y nos encontramos en búsqueda de una persona para sumarse al equipo de Comunicación Institucional.\r\n\r\n¿Estudiaste Diseño Gráfico o Imagen y Sonido, y tenés ganas de continuar tu desarrollo como Diseñador Gráfico y Editor de Videos? ¡Sumate!\r\n\r\nQuien Se Sume Podrá\r\n\r\nRealizar diseño y diagramación de piezas gráficas para distintos formatos digitales (redes sociales, página web, gifs animados) e impresos (folletos, banners, brochures, cartelería).\r\n\r\nRealizar la producción y edición de piezas audiovisuales para carteleras digitales, sitios web y redes sociales\r\n\r\n¿Que buscamos de la persona que sume?\r\n\r\nMuy buen manejo de Illustrator y Photoshop (excluyente).\r\n\r\nExperiencia en animaciones y Motion Graphic en After Effects y ediciones de video en Premiere (excluyente).\r\n\r\nConocimientos de HTML para diseño y maquetación web / newsletter (deseable).\r\n\r\nEstamos pensando en personas que cuenten con un mínimo de 3 años de experiencia, tengan ganas de trabajar en equipo, sean creativas y versátiles en la relación con diversos interlocutores.\r\n\r\nTe ofrecemos la oportunidad de ser parte de un equipo único, al que le gusta innovar y crear valor, ¡sumate!\r\n\r\nHorarios de trabajo: lunes a viernes de 8:30 a 17:30 hs.\r\n\r\nLugar: CABA\r\n\r\n¿Te interesa la propuesta? Nos gustaría conocer tu portfolio para verte en acción. Incluí el link dentro de tu CV', 'https://www.linkedin.com/jobs/view/disen%CC%83ador-gra%CC%81fico-y-editor-de-videos-at-ort-argentina-3251641276/?utm_campaign=google_jobs_apply&utm_source=google_jobs_apply&utm_medium=organic&originalSubdomain=ar', 120, '2022-09-27 18:39:29.239028', '2023-03-21 13:20:07.000000', 24, 65, 0),
(43, 'Busco profe de diseño grafico presencial ZONA SAN ISIDRO VICENTE LOPEZ', 1, '? Buenos Aires, CABA.\r\n ? 3 días presencial en nuestras oficinas + 2 días de Home Office\r\n\r\n\r\nDiseñador Gráfico con experiencia en Comunicación Visual Nos encontramos en la búsqueda de un profesional en Diseño Gráfico para incorporarse a la Gerencia de Marketing y Comunicaciones. Somos una importante red sanatorial que brinda prestaciones de salud a más de 800.000 pacientes. ¿Qué esperamos de vos? Acompañar y colaborar con diseños creativos e innovadores a las estrategias de Marketing y Comunicación institucional. Organizar, planificar y elaborar los pedidos de piezas gráficas, impresas y digitales, tanto para la Administración Central como para los 16 centros de salud y canales oficiales de la red. También, estará a tu cargo la producción de piezas para la difusión de actividades, campañas e información destinada a pacientes, familiares y profesionales sanitarios. Algunas de tus tareas serán: Diseñar piezas creativas y centradas en el usuario final, ya sean digitales y/o impresas, para acompañar las estrategias de marketing y comunicación institucional (flyers, banners emails, merchandising, otros elementos de comunicación). ​​​​Desarrollar logos e identidad visual, institucional y para la red sanatorial. Diseñar piezas para canales de comunicación digital siguiendo la planificación mensual. Crear piezas únicas y adaptaciones para cada red social. Diseño de contenidos digitales (GIF´s, imágenes, PDF). Proponer nuevos formatos de diseño, conectado con las nuevas tendencias de diseño. Realizar ediciones en piezas de RRHH para comunicaciones mensuales de ingresos, ascensos, etc. Llevar adelante el diseño de piezas de mail para comunicación interna. Diseñar contenidos enfocados en formato web y mobile. Presentaciones corporativas (presentaciones tipo power point, documentos y formularios) Colaborar en el desarrollo de procesos en el área de Diseño. Ser focal point de todos los pedidos y organización personal a través de Trello. El/La candidato/a ideal deberá contar con experiencia de al menos 4 años en diseño gráfico institucional, web y la generación de piezas impresas y digitales para landing pages, redes sociales y campañas. Experiencia en el ámbito de la salud será un plus, aunque no es excluyente.\r\n\r\nRequisitos\r\n\r\nEstudiantes avanzados o graduados de las carreras de Diseño Gráfico, Diseño web o Diseñador audiovisual o carreras afines. Un mínimo de 4 años de experiencia en diseño 360º en empresas, agencias, medios o áreas afines al ámbito de la salud (es un plus, no excluyente). Conocimiento de branding y contenido corporativo. Conocimiento y experiencia en el armado de piezas creativas para campañas digitales. Conocimiento de diferentes formatos institucionales (folletería, cartelería, señalética, en grandes formatos y/o digital) Excelente manejo de programas de diseño (Manejo del paquete Adobe. Photoshop, Illustrator, Acrobat. Alto nivel de interpretación, conceptualización, redacción y creatividad para contar historias y plasmarlas en una presentación (Storytelling) Manejo de herramientas de producción y edición de contenidos para redes como Canva. Disponibilidad full time. 9:30 a 18 hs. ¿Qué valoramos? -Capacidad de organización, adaptación y planificación para trabajar con múltiples proyectos de manera simultánea. -Creatividad, compromiso y habilidades para trabajar en equipo. -Perfiles comprometidos con la divulgación médica, interesados en temáticas de salud. -Iniciativa para Investigar las tendencias, novedades tecnológicas que sumen al sector y a su tarea diaria. -Capacidad para relacionarse con colaboradores internos y externos, siendo focal point de todos los pedidos. -Soporte en las tareas concernientes a la Gerencia de Marketing y Comunicación y sus activaciones para generación de demanda. -Participar en la gestión de Proveedores (gráficas, merchandising).. Comportamientos Valorados Autonomía Organización Excelente Comunicación Proactividad Liderazgo Mirada 360°\r\n\r\nBeneficios\r\n\r\nOfrecemos una modalidad de trabajo HÍBRIDO: 3 días presencial en nuestras oficinas + 2 días de Home Office', '-profe-de-diseño-grafico-presencial-ZONA-SAN-ISIDRO-VICENTE-LOPEZ-Buenos-Aires?utm_campaign=google_jobs_apply&utm_source=google_jobs_apply&utm_medium=organic', 121, '2022-09-27 18:51:41.093042', '2023-03-21 13:20:02.000000', 89, 65, 0),
(45, 'Hasta 20% off y 12 Cuotas!', 25, 'Encontrá todos los Artículos de Librería que estás buscando con envíos a todo el país! Librería El Poli Tienda Online. Todo en Librería Artística hasta 20% off y 12 Cuotas.', 'https://www.tienda.elpoli.com/', 124, '2022-09-27 19:37:05.291601', '2023-04-18 14:41:18.000000', 27, 65, 0),
(85, 'Hasta 20% off y 12 Cuotas!', 25, 'Encontrá todos los Artículos de Librería que estás buscando con envíos a todo el país! Librería El Poli Tienda Online. Todo en Librería Artística hasta 20% off y 12 Cuotas.', 'https://www.tienda.elpoli.com/', 198, '2022-10-15 03:48:22.409222', '2023-04-18 11:29:51.000000', 27, 65, 0),
(86, 'oferta', 1, 'algo interesante', 'google.com', 213, '2023-03-07 20:03:39.057965', '2023-03-21 13:19:58.000000', 72, 65, 1),
(90, 'Cartuchera en 5to Piso - Arquitectura', 36, 'hola se perdio algo en el aula 208 arquitectura, lleva lapices y otras cosas', 'www.masfadu.com', 258, '2023-04-18 11:37:07.943786', '2023-04-18 14:47:16.000000', 109, 65, 0),
(95, 'Vendo insumos - Materia: Diseño de calzado.', 32, 'Buen dia! Vendo insumos que me quedaron de la materia diseño de calzado.\r\n', 'www.masfadu.com', 263, '2023-04-18 11:55:20.548936', '2023-04-18 12:56:29.000000', 108, 65, 0),
(96, 'Encontré el libro \"Retóricas del diseño social\"', 37, 'hola! alguno que haya cursado comu2 ex-ledesma, tenga y ya no use el libro  \"Retóricas del diseño social\"??? gracias!\r\n', '#', 264, '2023-04-18 12:55:43.685216', '2023-04-18 14:47:26.000000', 110, 65, 0),
(99, 'justo lo comi', 39, 'hola lo. omi', 'https//www.ole.com.ar', 296, '2023-05-12 05:43:13.039317', '2023-05-12 05:44:02.000000', 116, 65, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offer_categories`
--

CREATE TABLE `offer_categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `offer_categories`
--

INSERT INTO `offer_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Work', '2022-08-15 06:57:23.104307', '2022-08-15 06:57:23.104307'),
(2, 'Courses and Workshop', '2022-08-15 07:15:29.785504', '2022-08-15 07:16:04.000000'),
(3, 'offers', '2022-08-15 07:16:22.984790', '2022-08-24 03:24:24.000000'),
(4, 'ejemplo2', '2022-08-23 15:15:38.541187', '2022-08-23 15:15:38.541187'),
(5, 'Work', '2022-08-24 19:56:10.254824', '2022-08-24 19:56:10.254824'),
(6, 'partner 3', '2022-08-24 19:56:10.879840', '2022-08-24 19:56:10.879840'),
(7, 'Work', '2022-08-24 19:58:20.343954', '2022-08-24 19:58:20.343954'),
(8, 'partner 3', '2022-08-24 19:58:20.938167', '2022-08-24 19:58:20.938167'),
(9, 'partner 3', '2022-08-24 19:58:59.262272', '2022-08-24 19:58:59.262272'),
(10, 'partner 3', '2022-08-24 20:00:01.230599', '2022-08-24 20:00:01.230599'),
(11, 'partner 4', '2022-08-24 20:01:11.457682', '2022-08-24 20:01:11.457682'),
(12, 'partner 3', '2022-08-24 20:03:00.487094', '2022-08-24 20:03:00.487094'),
(13, 'partner 3', '2022-08-24 20:05:24.862976', '2022-08-24 20:05:24.862976'),
(14, 'aasasasasa', '2022-08-24 20:08:28.943115', '2022-08-24 20:08:28.943115'),
(15, 'partner 4', '2022-08-24 20:15:29.556398', '2022-08-24 20:15:29.556398'),
(16, 'eeee', '2022-08-24 20:16:36.114230', '2022-08-24 20:16:36.114230'),
(17, 'rrr', '2022-08-24 20:16:36.708856', '2022-08-24 20:16:36.708856'),
(18, 'offer 4', '2022-08-24 20:18:20.069586', '2022-08-24 20:18:20.069586'),
(19, 'offers 54', '2022-08-24 20:39:17.202873', '2022-08-24 20:39:17.202873'),
(20, 'categoria a', '2022-08-24 21:08:49.028678', '2022-08-24 21:08:49.028678'),
(21, 'categoria a 2', '2022-08-24 21:11:19.490887', '2022-08-24 21:11:19.490887'),
(22, 'Prueba', '2022-09-20 16:09:43.127338', '2022-09-20 16:09:43.127338'),
(25, 'Librería', '2022-09-27 19:37:04.328882', '2022-09-27 19:37:04.328882'),
(26, 'fotografia', '2022-09-27 19:39:04.843887', '2022-09-27 19:39:04.843887'),
(28, 'Perdidos', '2023-04-18 11:37:07.082549', '2023-04-18 11:37:07.082549'),
(29, 'Objetos Perdidos', '2023-04-18 11:49:46.676318', '2023-04-18 11:49:46.676318'),
(31, 'Objetos Encontrados', '2023-04-18 12:55:05.085531', '2023-04-18 12:55:05.085531'),
(32, 'Vendo', '2023-04-18 12:56:28.224277', '2023-04-18 12:56:28.224277'),
(33, 'Lo encontré', '2023-04-18 14:46:10.070223', '2023-04-18 14:46:10.070223'),
(34, 'Encontré', '2023-04-18 14:46:44.053789', '2023-04-18 14:46:44.053789'),
(35, 'Encontré', '2023-04-18 14:46:49.285376', '2023-04-18 14:46:49.285376'),
(36, 'Perdí - No encuentro', '2023-04-18 14:47:10.636959', '2023-04-18 14:47:10.636959'),
(37, 'Encontré', '2023-04-18 14:47:25.813496', '2023-04-18 14:47:25.813496'),
(38, 'Encontré', '2023-04-18 14:47:30.622813', '2023-04-18 14:47:30.622813'),
(39, 'Comida', '2023-05-12 05:42:07.472773', '2023-05-12 05:42:07.472773'),
(40, 'Comida', '2023-05-12 05:42:26.343247', '2023-05-12 05:42:26.343247');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opinions`
--

CREATE TABLE `opinions` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `professor` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `description` longtext NOT NULL,
  `anonymous` tinyint DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `opinions`
--

INSERT INTO `opinions` (`id`, `title`, `student_id`, `subject_id`, `professor`, `created_at`, `updated_at`, `description`, `anonymous`) VALUES
(158, 'hol', 31, 411, 'hol', '2023-03-28 05:07:43.733967', '2023-03-28 05:07:43.733967', 'hol', 0),
(170, 'v', 31, 376, '', '2023-04-19 09:34:42.736432', '2023-04-19 09:34:42.736432', 'f g g g \nybubub\ntbtvy ', 0),
(171, 'hi', 31, 376, 'bb', '2023-04-27 17:40:23.652326', '2023-04-27 17:40:23.652326', 'bb', 0),
(172, 'yhh', 31, 376, 'jj', '2023-04-27 17:40:45.844786', '2023-04-27 17:40:45.844786', 'bnj', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opinion_answers`
--

CREATE TABLE `opinion_answers` (
  `id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `opinion_id` int NOT NULL,
  `student_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `opinion_answers`
--

INSERT INTO `opinion_answers` (`id`, `description`, `opinion_id`, `student_id`, `created_at`, `updated_at`) VALUES
(100, 'vbn', 158, 31, '2023-03-28 05:38:03.415930', '2023-03-28 05:38:03.415930'),
(103, 'https://www.ole.com.ar/', 158, 31, '2023-04-18 18:50:15.409943', '2023-04-18 18:50:15.409943');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opinion_tags`
--

CREATE TABLE `opinion_tags` (
  `id` int NOT NULL,
  `opinion_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `opinion_tags`
--

INSERT INTO `opinion_tags` (`id`, `opinion_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(207, 158, 71, '2023-03-28 05:07:43.810851', '2023-03-28 05:07:43.810851');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partners`
--

CREATE TABLE `partners` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `partners`
--

INSERT INTO `partners` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'partner 4', '2022-08-24 20:17:52.655446', '2022-08-24 20:17:52.655446'),
(6, 'partnert 4', '2022-08-24 20:39:18.124603', '2022-08-24 20:39:18.124603'),
(7, 'patrocinador', '2022-08-24 21:08:49.264224', '2022-08-24 21:08:49.264224'),
(8, 'patrocinador 2', '2022-08-24 21:11:19.719228', '2022-08-24 21:11:19.719228'),
(9, 'hola', '2022-09-06 21:02:59.338953', '2022-09-06 21:02:59.338953'),
(10, 'algo nuevo', '2022-09-12 21:49:01.565395', '2022-09-12 21:49:01.565395'),
(11, 'si', '2022-09-12 21:51:28.587253', '2022-09-12 21:51:28.587253'),
(12, 'alfoooo', '2022-09-12 21:53:28.977659', '2022-09-12 21:53:28.977659'),
(13, 'hhh', '2022-09-12 21:54:44.012382', '2022-09-12 21:54:44.012382'),
(14, 'ggg', '2022-09-12 21:55:11.223915', '2022-09-12 21:55:11.223915'),
(15, 'SD', '2022-09-20 21:35:16.524490', '2022-09-20 21:35:16.524490'),
(16, 'ole', '2022-09-20 21:46:02.883549', '2022-09-20 21:46:02.883549'),
(17, 'fo', '2022-09-20 21:48:22.694304', '2022-09-20 21:48:22.694304'),
(19, 'nose', '2022-09-27 03:51:08.416902', '2022-09-27 03:51:08.416902'),
(20, 'https://www.briefbox.me/', '2022-09-27 17:14:38.646573', '2022-09-27 17:14:38.646573'),
(21, 'Briefbox', '2022-09-27 17:26:50.490249', '2022-09-27 17:26:50.490249'),
(22, 'partner 4', '2022-09-27 18:06:21.337575', '2022-09-27 18:06:21.337575'),
(23, 'Grupo Olmos', '2022-09-27 18:31:59.387986', '2022-09-27 18:31:59.387986'),
(24, 'ORT Argentina', '2022-09-27 18:34:14.259759', '2022-09-27 18:34:14.259759'),
(25, 'Confidencial', '2022-09-27 18:51:40.609023', '2022-09-27 18:51:40.609023'),
(26, 'EnchulameLaCamara', '2022-09-27 19:09:47.648128', '2022-09-27 19:09:47.648128'),
(27, 'ElPoli', '2022-09-27 19:37:04.705873', '2022-09-27 19:37:04.705873'),
(28, 'https://www.briefbox.me/', '2022-09-27 20:38:33.401124', '2022-09-27 20:38:33.401124'),
(29, 'Briefbox', '2022-10-04 22:16:58.227040', '2022-10-04 22:16:58.227040'),
(30, 'https://www.briefbox.me/', '2022-10-12 04:23:46.472716', '2022-10-12 04:23:46.472716'),
(31, 'https://www.briefbox.me/', '2022-10-12 04:24:00.185983', '2022-10-12 04:24:00.185983'),
(32, 'https://www.briefbox.me/', '2022-10-12 04:24:15.100911', '2022-10-12 04:24:15.100911'),
(33, 'https://www.briefbox.me/', '2022-10-12 04:25:06.802771', '2022-10-12 04:25:06.802771'),
(34, 'https://www.briefbox.me/', '2022-10-12 04:25:15.021516', '2022-10-12 04:25:15.021516'),
(35, 'https://www.briefbox.me/', '2022-10-12 04:25:27.937278', '2022-10-12 04:25:27.937278'),
(36, 'https://www.briefbox.me/', '2022-10-12 04:25:41.279847', '2022-10-12 04:25:41.279847'),
(37, 'https://www.briefbox.me/', '2022-10-12 04:31:48.299629', '2022-10-12 04:31:48.299629'),
(38, 'https://www.briefbox.me/', '2022-10-12 04:31:59.386642', '2022-10-12 04:31:59.386642'),
(39, 'https://www.briefbox.me/', '2022-10-12 04:32:08.235132', '2022-10-12 04:32:08.235132'),
(40, 'https://www.briefbox.me/', '2022-10-12 04:34:54.517191', '2022-10-12 04:34:54.517191'),
(41, 'https://www.briefbox.me/', '2022-10-12 04:35:02.136117', '2022-10-12 04:35:02.136117'),
(42, 'https://www.briefbox.me/', '2022-10-12 04:35:10.747028', '2022-10-12 04:35:10.747028'),
(43, 'https://www.briefbox.me/', '2022-10-12 04:35:25.934679', '2022-10-12 04:35:25.934679'),
(44, 'https://www.briefbox.me/', '2022-10-12 04:35:48.552352', '2022-10-12 04:35:48.552352'),
(45, 'https://www.briefbox.me/', '2022-10-12 04:35:56.869872', '2022-10-12 04:35:56.869872'),
(46, 'https://www.briefbox.me/', '2022-10-12 04:36:13.618579', '2022-10-12 04:36:13.618579'),
(47, 'https://www.briefbox.me/', '2022-10-15 01:30:14.441667', '2022-10-15 01:30:14.441667'),
(48, 'https://www.briefbox.me/', '2022-10-15 01:46:45.658022', '2022-10-15 01:46:45.658022'),
(49, 'https://www.briefbox.me/', '2022-10-15 02:20:31.839875', '2022-10-15 02:20:31.839875'),
(50, 'https://www.briefbox.me/', '2022-10-15 02:24:02.785474', '2022-10-15 02:24:02.785474'),
(51, 'https://www.briefbox.me/', '2022-10-15 02:27:57.245282', '2022-10-15 02:27:57.245282'),
(52, 'https://www.briefbox.me/', '2022-10-15 02:30:45.525179', '2022-10-15 02:30:45.525179'),
(53, 'https://www.briefbox.me/', '2022-10-15 02:41:13.701863', '2022-10-15 02:41:13.701863'),
(54, 'https://www.briefbox.me/', '2022-10-15 02:46:14.349365', '2022-10-15 02:46:14.349365'),
(55, 'https://www.briefbox.me/', '2022-10-15 02:49:53.079523', '2022-10-15 02:49:53.079523'),
(56, 'https://www.briefbox.me/', '2022-10-15 02:53:25.818445', '2022-10-15 02:53:25.818445'),
(57, 'https://www.briefbox.me/', '2022-10-15 02:53:39.292405', '2022-10-15 02:53:39.292405'),
(58, 'https://www.briefbox.me/', '2022-10-15 02:56:08.060643', '2022-10-15 02:56:08.060643'),
(59, 'https://www.briefbox.me/', '2022-10-15 03:08:16.093173', '2022-10-15 03:08:16.093173'),
(60, 'Million Solutions', '2023-01-21 15:04:25.052831', '2023-01-21 15:04:25.052831'),
(61, 'Million Solutions', '2023-01-23 03:31:04.078849', '2023-01-23 03:31:04.078849'),
(62, 'ebc', '2023-01-23 15:42:03.650519', '2023-01-23 15:42:03.650519'),
(63, 'ebc', '2023-03-07 20:06:14.416867', '2023-03-07 20:06:14.416867'),
(67, 'Confidencial', '2023-03-15 06:17:43.350810', '2023-03-15 06:17:43.350810'),
(68, 'Million Solutions', '2023-03-15 15:01:43.750329', '2023-03-15 15:01:43.750329'),
(69, 'Million Solutions', '2023-03-15 15:01:50.913629', '2023-03-15 15:01:50.913629'),
(70, 'ebc', '2023-03-15 15:01:57.741509', '2023-03-15 15:01:57.741509'),
(71, 'Million Solutions', '2023-03-15 15:02:23.425944', '2023-03-15 15:02:23.425944'),
(72, 'ebc', '2023-03-15 15:02:29.986011', '2023-03-15 15:02:29.986011'),
(73, 'Confidencial', '2023-03-15 15:02:43.271195', '2023-03-15 15:02:43.271195'),
(74, 'Million Solutions', '2023-03-15 15:02:48.956860', '2023-03-15 15:02:48.956860'),
(75, 'Million Solutions', '2023-03-15 15:03:06.460346', '2023-03-15 15:03:06.460346'),
(76, 'Confidencial', '2023-03-15 15:05:30.029742', '2023-03-15 15:05:30.029742'),
(77, 'Confidencial', '2023-03-15 15:05:37.487706', '2023-03-15 15:05:37.487706'),
(78, 'Million Solutions', '2023-03-18 00:42:15.525949', '2023-03-18 00:42:15.525949'),
(79, 'Confidencial', '2023-03-18 01:00:04.196123', '2023-03-18 01:00:04.196123'),
(80, 'Million Solutions', '2023-03-18 01:00:12.587780', '2023-03-18 01:00:12.587780'),
(81, 'Confidencial', '2023-03-18 21:19:52.948308', '2023-03-18 21:19:52.948308'),
(82, 'Confidencial', '2023-03-18 21:20:01.959596', '2023-03-18 21:20:01.959596'),
(83, 'Confidencial', '2023-03-18 21:20:40.663381', '2023-03-18 21:20:40.663381'),
(84, 'Confidencial', '2023-03-20 18:52:16.799626', '2023-03-20 18:52:16.799626'),
(85, 'Confidencial', '2023-03-20 18:52:23.350758', '2023-03-20 18:52:23.350758'),
(86, 'Confidencial', '2023-03-20 18:52:37.446262', '2023-03-20 18:52:37.446262'),
(87, 'Confidencial', '2023-03-20 18:53:28.555141', '2023-03-20 18:53:28.555141'),
(88, 'Confidencial', '2023-03-20 18:54:09.740477', '2023-03-20 18:54:09.740477'),
(89, 'Confidencial', '2023-03-20 23:05:10.160995', '2023-03-20 23:05:10.160995'),
(90, 'Briefbox', '2023-03-21 13:21:07.189446', '2023-03-21 13:21:07.189446'),
(91, 'Million Solutions', '2023-03-21 13:21:51.423400', '2023-03-21 13:21:51.423400'),
(92, 'Confidencial', '2023-03-21 13:22:42.628968', '2023-03-21 13:22:42.628968'),
(93, 'Confidencial', '2023-03-21 13:23:44.070243', '2023-03-21 13:23:44.070243'),
(94, 'Confidencial', '2023-03-21 14:59:01.249626', '2023-03-21 14:59:01.249626'),
(95, 'Confidencial', '2023-03-21 14:59:05.906277', '2023-03-21 14:59:05.906277'),
(96, 'Confidencial', '2023-04-03 14:32:28.508170', '2023-04-03 14:32:28.508170'),
(97, 'Confidencial', '2023-04-08 14:13:06.859263', '2023-04-08 14:13:06.859263'),
(98, 'Confidencial', '2023-04-08 14:13:16.816694', '2023-04-08 14:13:16.816694'),
(99, 'Confidencial', '2023-04-13 15:31:01.268391', '2023-04-13 15:31:01.268391'),
(100, 'Confidencial', '2023-04-13 15:33:33.978488', '2023-04-13 15:33:33.978488'),
(101, 'Confidencial', '2023-04-13 15:37:19.561058', '2023-04-13 15:37:19.561058'),
(102, 'Confidencial', '2023-04-13 15:37:36.184926', '2023-04-13 15:37:36.184926'),
(103, 'Confidencial', '2023-04-13 15:37:43.858291', '2023-04-13 15:37:43.858291'),
(104, 'Confidencial', '2023-04-13 15:38:21.423981', '2023-04-13 15:38:21.423981'),
(105, 'Confidencial', '2023-04-13 15:38:34.079053', '2023-04-13 15:38:34.079053'),
(106, 'Fadu', '2023-04-18 11:37:07.490913', '2023-04-18 11:37:07.490913'),
(107, 'Objetos Encontrados', '2023-04-18 12:56:06.803978', '2023-04-18 12:56:06.803978'),
(108, 'Vendo', '2023-04-18 12:56:28.605854', '2023-04-18 12:56:28.605854'),
(109, 'Perdí - No encuentro', '2023-04-18 14:47:16.562229', '2023-04-18 14:47:16.562229'),
(110, 'Encontré', '2023-04-18 14:47:26.189810', '2023-04-18 14:47:26.189810'),
(111, ' Vendo', '2023-04-19 09:42:34.781340', '2023-04-19 09:42:34.781340'),
(112, 'Confidencial', '2023-04-19 09:43:25.148063', '2023-04-19 09:43:25.148063'),
(113, 'Confidencial', '2023-04-19 09:46:42.190689', '2023-04-19 09:46:42.190689'),
(114, 'Confidencial', '2023-04-19 09:47:30.454196', '2023-04-19 09:47:30.454196'),
(115, 'Confidencial', '2023-04-19 09:48:35.350408', '2023-04-19 09:48:35.350408'),
(116, 'Comidas', '2023-05-12 05:42:07.843715', '2023-05-12 05:42:07.843715'),
(117, 'Comidas', '2023-05-12 05:42:26.716198', '2023-05-12 05:42:26.716198'),
(118, 'Confidencial', '2023-05-12 05:45:23.268546', '2023-05-12 05:45:23.268546'),
(119, 'Confidencial', '2023-05-12 05:45:34.877741', '2023-05-12 05:45:34.877741');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resources`
--

CREATE TABLE `resources` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `image_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `resource_category_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `url` varchar(255) DEFAULT NULL,
  `html` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `resources`
--

INSERT INTO `resources` (`id`, `name`, `user_id`, `image_id`, `subject_id`, `resource_category_id`, `created_at`, `updated_at`, `url`, `html`) VALUES
(15, 'GUBERN_espacio', 1, 242, 385, 6, '2023-03-21 12:28:20.272321', '2023-03-21 12:28:20.272321', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resource_categories`
--

CREATE TABLE `resource_categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `resource_categories`
--

INSERT INTO `resource_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Libros', '2022-08-15 14:50:50.633425', '2022-08-15 14:50:50.633425'),
(2, 'Multimedia', '2022-08-15 14:51:06.545330', '2022-08-15 14:51:06.545330'),
(3, 'others', '2022-08-25 16:32:41.064347', '2022-08-25 16:32:41.064347'),
(5, 'Exámenes', '2022-09-20 22:56:01.974891', '2022-09-20 22:56:01.974891'),
(6, 'Ledesma', '2023-03-21 12:28:19.318612', '2023-03-21 12:28:19.318612');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2022-08-15 04:03:23.892691', '2022-08-15 04:03:23.892691'),
(2, 'Student', '2022-08-15 04:04:05.970503', '2022-08-15 04:04:05.970503');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject_category_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `info` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `subject_category_id`, `created_at`, `updated_at`, `info`, `url`, `prefix`) VALUES
(375, 'Intr. al Conocimiento de la Sociedad y el Estado', 145, '2023-03-21 12:05:30.256267', '2023-03-29 18:37:34.000000', 'descripcion bien piola', NULL, 'ICSE'),
(376, 'Intr. al Pensamiento Científico', 145, '2023-03-21 12:05:30.276399', '2023-03-21 12:05:30.276399', NULL, NULL, 'IPC'),
(377, 'Intr. al Conocimiento Proyectual I', 145, '2023-03-21 12:05:30.287052', '2023-03-21 14:44:50.000000', NULL, NULL, 'ICP1'),
(378, 'Intr. al Conocimiento Proyectual II', 145, '2023-03-21 12:05:30.327372', '2023-03-21 12:05:30.327372', NULL, NULL, 'ICP2'),
(379, 'Matemática', 145, '2023-03-21 12:05:30.392784', '2023-03-21 12:05:30.392784', NULL, NULL, 'MAT'),
(380, 'Semiología', 145, '2023-03-21 12:05:30.454713', '2023-03-21 12:05:30.454713', NULL, NULL, 'SEM'),
(381, 'Taller de Dibujo', 145, '2023-03-21 12:05:30.515904', '2023-03-21 12:05:30.515904', NULL, NULL, 'DIB'),
(382, 'Diseño Gráfico I', 146, '2023-03-21 12:07:55.779970', '2023-03-21 12:07:55.779970', NULL, NULL, 'DG1'),
(383, 'Morfología I', 146, '2023-03-21 12:07:55.804838', '2023-03-21 12:07:55.804838', NULL, NULL, 'M1'),
(384, 'Tipografía I', 146, '2023-03-21 12:07:55.819547', '2023-03-21 12:07:55.819547', NULL, NULL, 'TIP1'),
(385, 'Comunicación I', 146, '2023-03-21 12:07:55.838607', '2023-03-21 12:07:55.838607', NULL, NULL, 'C1'),
(386, 'Historia I', 146, '2023-03-21 12:07:55.850232', '2023-03-21 12:07:55.850232', NULL, NULL, 'H1'),
(387, 'Tecnología I', 146, '2023-03-21 12:07:55.872141', '2023-03-21 12:07:55.872141', NULL, NULL, 'TEC1'),
(388, 'Electiva I (Fotografía o Ilustración)', 146, '2023-03-21 12:07:55.884954', '2023-03-21 14:41:46.000000', NULL, NULL, 'ELEC1'),
(390, 'Diseño Gráfico II', 147, '2023-03-21 12:23:52.256757', '2023-03-21 14:44:52.000000', NULL, NULL, 'DG2'),
(391, 'Morfología II (1)', 147, '2023-03-21 12:23:52.273650', '2023-03-21 14:44:53.000000', NULL, NULL, 'M2'),
(392, 'Tipografía II (1)', 147, '2023-03-21 12:23:52.282722', '2023-03-21 14:44:53.000000', NULL, NULL, 'TIP2'),
(393, 'Comunicación II', 147, '2023-03-21 12:23:52.289649', '2023-03-21 14:44:53.000000', NULL, NULL, 'C2'),
(394, 'Historia II', 147, '2023-03-21 12:23:52.297877', '2023-03-21 14:44:53.000000', NULL, NULL, 'H2'),
(395, 'Medios Expresivos I', 147, '2023-03-21 12:23:52.305685', '2023-03-21 14:44:53.000000', NULL, NULL, 'ME1'),
(396, 'Tecnología II', 147, '2023-03-21 12:23:52.313916', '2023-03-21 14:44:53.000000', NULL, NULL, 'TEC2'),
(397, 'Diseño Gráfico por Computación (2)', 147, '2023-03-21 12:23:52.320944', '2023-03-21 14:44:53.000000', NULL, NULL, 'DGPC'),
(398, 'Diseño Gráfico III', 148, '2023-03-21 12:23:52.803825', '2023-03-21 12:23:52.803825', NULL, NULL, 'DG3'),
(399, 'Morfología II (1)', 148, '2023-03-21 12:23:52.812842', '2023-03-21 12:23:52.812842', NULL, NULL, 'M2'),
(400, 'Tipografia II (1)', 148, '2023-03-21 12:23:52.819912', '2023-03-21 12:23:52.819912', NULL, NULL, 'TIP2'),
(401, 'Legislación y Práctica Profesional', 148, '2023-03-21 12:23:52.826735', '2023-03-21 12:23:52.826735', NULL, NULL, 'LPP'),
(402, 'Electiva Socio Humanística (3)', 148, '2023-03-21 12:23:52.834171', '2023-03-21 12:23:52.834171', NULL, NULL, 'ESH'),
(403, 'Medios Expresivos II', 148, '2023-03-21 12:23:52.842307', '2023-03-21 12:23:52.842307', NULL, NULL, 'ME2'),
(404, 'Diseño Gráfico IV', 148, '2023-03-21 12:23:53.808872', '2023-03-21 14:41:48.000000', NULL, NULL, 'DG4'),
(405, 'Electiva Orientada I (4)', 148, '2023-03-21 12:23:53.817254', '2023-03-21 14:41:48.000000', NULL, NULL, 'EO1'),
(406, 'Electiva Orientada II (4)', 148, '2023-03-21 12:23:53.823678', '2023-03-21 14:41:48.000000', NULL, NULL, 'EO2'),
(407, 'Materia Optativa I  (5)', 148, '2023-03-21 12:23:53.833745', '2023-03-21 14:41:48.000000', NULL, NULL, 'MO1'),
(408, 'Materia Optativa II (5)', 148, '2023-03-21 12:23:53.841009', '2023-03-21 14:41:49.000000', NULL, NULL, 'MO2'),
(409, 'Seminario optativo I (5)', 148, '2023-03-21 12:23:53.856107', '2023-03-21 14:41:49.000000', NULL, NULL, 'SO1'),
(410, 'Seminario optativo II (5)', 148, '2023-03-21 12:23:53.868027', '2023-03-21 14:41:49.000000', NULL, NULL, 'SO2'),
(411, 'Seminario optativo III (5)', 148, '2023-03-21 12:23:53.892685', '2023-03-21 14:41:49.000000', NULL, NULL, 'SO3'),
(412, 'Diseño Graf 4', 149, '2023-03-28 05:43:09.072888', '2023-03-28 05:43:09.072888', NULL, NULL, 'dis4'),
(427, 'Intr. al Conocimiento de la Sociedad y el Estado', 162, '2023-04-28 09:35:03.925671', '2023-04-28 09:35:03.925671', 'fr', NULL, 'ICSE'),
(428, 'Intr. al Pensamiento Científico', 162, '2023-04-28 09:35:03.946076', '2023-04-28 09:35:03.946076', 'fr', NULL, 'IPC'),
(429, 'Intr. al Conocimiento Proyectual I', 162, '2023-04-28 09:35:03.960921', '2023-04-28 09:35:03.960921', 'fr', NULL, 'ICP1'),
(430, 'Intr. al Conocimiento Proyectual II', 162, '2023-04-28 09:35:03.976893', '2023-04-28 09:35:03.976893', 'fr', NULL, 'ICP2'),
(431, 'Matemática', 162, '2023-04-28 09:35:03.986868', '2023-04-28 09:35:03.986868', 'fr', NULL, 'MAT'),
(432, 'Filosofía', 162, '2023-04-28 09:35:04.002212', '2023-04-28 09:35:04.002212', 'fr', NULL, 'FI'),
(433, 'Taller de Dibujo', 162, '2023-04-28 09:35:04.012504', '2023-04-28 09:35:04.012504', 'fr', NULL, 'DIB'),
(434, 'Arquitectura I', 163, '2023-04-28 09:35:04.569044', '2023-04-28 09:35:04.569044', 'fr', NULL, 'A1'),
(435, 'Matemática II', 163, '2023-04-28 09:35:04.582273', '2023-04-28 09:35:04.582273', 'fr', NULL, 'M2'),
(436, 'Matemática II On-line', 163, '2023-04-28 09:35:04.597198', '2023-04-28 09:35:04.597198', 'fr', NULL, 'MATO'),
(437, 'Sistemas de Representación Geométrica', 163, '2023-04-28 09:35:04.613264', '2023-04-28 09:35:04.613264', 'fr', NULL, 'SRG'),
(438, 'Física Aplicada a la Arquitectura', 163, '2023-04-28 09:35:04.629337', '2023-04-28 09:35:04.629337', 'fr', NULL, 'FAA'),
(439, 'Introducción a la Arquitectura Contemporánea', 163, '2023-04-28 09:35:04.651267', '2023-04-28 09:35:04.651267', 'fr', NULL, 'IAC'),
(440, 'Introducción a los Tipos Constructivos', 163, '2023-04-28 09:35:04.668518', '2023-04-28 09:35:04.668518', 'fr', NULL, 'ITC'),
(441, 'Introducción a los Tipos Estructurales', 163, '2023-04-28 09:35:04.678134', '2023-04-28 09:35:04.678134', 'fr', NULL, 'ITE'),
(442, 'Arquitectura II', 164, '2023-04-28 09:35:05.580914', '2023-04-28 09:35:05.580914', 'fr', NULL, 'A2'),
(443, 'Estructuras I', 164, '2023-04-28 09:35:05.592031', '2023-04-28 09:35:05.592031', 'fr', NULL, 'E1'),
(444, 'Historia I', 164, '2023-04-28 09:35:05.602480', '2023-04-28 09:35:05.602480', 'fr', NULL, 'H1'),
(445, 'Construcciones I', 164, '2023-04-28 09:35:05.622476', '2023-04-28 09:35:05.622476', 'fr', NULL, 'C1'),
(446, 'Instalaciones I', 164, '2023-04-28 09:35:05.634480', '2023-04-28 09:35:05.634480', 'fr', NULL, 'I1'),
(447, 'Morfología I', 164, '2023-04-28 09:35:05.647459', '2023-04-28 09:35:05.647459', 'fr', NULL, 'M1'),
(448, 'Representación Arquitectónica', 164, '2023-04-28 09:35:05.657041', '2023-04-28 09:35:05.657041', 'fr', NULL, 'RA'),
(449, 'Diseño por Computadora', 164, '2023-04-28 09:35:05.672230', '2023-04-28 09:35:05.672230', 'fr', NULL, 'DPC'),
(450, 'Diseño Asistido por Computadora', 164, '2023-04-28 09:35:05.683977', '2023-04-28 09:35:05.683977', 'fr', NULL, 'DAC'),
(451, 'Modelado Arquitectónico BIM (materia optativa)', 164, '2023-04-28 09:35:05.693248', '2023-04-28 09:35:05.693248', 'fr', NULL, 'BIM'),
(452, 'Arquitectura III', 165, '2023-04-28 09:35:06.579007', '2023-04-28 09:35:06.579007', 'fr', NULL, 'A3'),
(453, 'Estructuras II', 165, '2023-04-28 09:35:06.590108', '2023-04-28 09:35:06.590108', 'fr', NULL, 'E2'),
(454, 'Historia II', 165, '2023-04-28 09:35:06.600236', '2023-04-28 09:35:06.600236', 'fr', NULL, 'H2'),
(455, 'Construcciones II', 165, '2023-04-28 09:35:06.609939', '2023-04-28 09:35:06.609939', 'fr', NULL, 'C2'),
(456, 'Instalaciones II', 165, '2023-04-28 09:35:06.627303', '2023-04-28 09:35:06.627303', 'fr', NULL, 'I2'),
(457, 'Morfología II', 165, '2023-04-28 09:35:06.637312', '2023-04-28 09:35:06.637312', 'fr', NULL, 'M2'),
(458, 'Materialización de Proyectos', 165, '2023-04-28 09:35:06.647070', '2023-04-28 09:35:06.647070', 'fr', NULL, 'MP'),
(459, 'Arquitectura IV', 166, '2023-04-28 09:35:07.584928', '2023-04-28 09:35:07.584928', 'fr', NULL, 'A4'),
(460, 'Estructuras III', 166, '2023-04-28 09:35:07.600487', '2023-04-28 09:35:07.600487', 'fr', NULL, 'E3'),
(461, 'Planificación Urbana', 166, '2023-04-28 09:35:07.611018', '2023-04-28 09:35:07.611018', 'fr', NULL, 'PU'),
(462, 'Construcciones III', 166, '2023-04-28 09:35:07.620071', '2023-04-28 09:35:07.620071', 'fr', NULL, 'C3'),
(463, 'Instalaciones III', 166, '2023-04-28 09:35:07.629085', '2023-04-28 09:35:07.629085', 'fr', NULL, 'I3'),
(464, 'Historia III', 166, '2023-04-28 09:35:07.649866', '2023-04-28 09:35:07.649866', 'fr', NULL, 'H3'),
(465, 'Teoría de la Arquitectura', 166, '2023-04-28 09:35:07.660000', '2023-04-28 09:35:07.660000', 'fr', NULL, 'T'),
(466, 'Prácticas Profesionales Asistidas', 166, '2023-04-28 09:35:07.669103', '2023-04-28 09:35:07.669103', 'fr', NULL, 'PPA'),
(467, 'Materias Optativas', 166, '2023-04-28 09:35:07.678230', '2023-04-28 09:35:07.678230', 'fr', NULL, 'MOP'),
(468, 'Dirección y Legislación de Obra', 167, '2023-04-28 09:35:08.587137', '2023-04-28 09:35:08.587137', 'fr', NULL, 'DyLO'),
(469, 'Proyecto Urbano', 167, '2023-04-28 09:35:08.596845', '2023-04-28 09:35:08.596845', 'fr', NULL, 'PUR'),
(470, 'Proyecto Arquitectónico', 167, '2023-04-28 09:35:08.608034', '2023-04-28 09:35:08.608034', 'fr', NULL, 'PA'),
(471, 'Prácticas Profesionales Asistidas', 167, '2023-04-28 09:35:08.617866', '2023-04-28 09:35:08.617866', 'fr', NULL, 'PPA'),
(472, 'Materias Optativas', 167, '2023-04-28 09:35:08.627997', '2023-04-28 09:35:08.627997', 'fr', NULL, 'MOP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject_categories`
--

CREATE TABLE `subject_categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `career_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `subject_categories`
--

INSERT INTO `subject_categories` (`id`, `name`, `career_id`, `created_at`, `updated_at`) VALUES
(145, 'CBC', 65, '2023-03-21 12:05:29.790549', '2023-03-21 12:05:29.790549'),
(146, '2° AÑO', 65, '2023-03-21 12:05:30.568334', '2023-03-21 12:07:55.000000'),
(147, '3° AÑO', 65, '2023-03-21 12:23:51.798288', '2023-03-21 12:23:51.798288'),
(148, '4° AÑO', 65, '2023-03-21 12:23:52.575682', '2023-03-21 12:23:52.575682'),
(149, '5° AÑO', 65, '2023-03-21 12:23:53.582994', '2023-03-21 12:23:53.582994'),
(162, 'CBC', 72, '2023-04-28 09:35:03.559788', '2023-04-28 09:35:03.559788'),
(163, 'NIVEL 1', 72, '2023-04-28 09:35:04.378630', '2023-04-28 09:35:04.378630'),
(164, 'NIVEL 2', 72, '2023-04-28 09:35:05.387353', '2023-04-28 09:35:05.387353'),
(165, 'NIVEL 3', 72, '2023-04-28 09:35:06.389443', '2023-04-28 09:35:06.389443'),
(166, 'NIVEL 4', 72, '2023-04-28 09:35:07.390070', '2023-04-28 09:35:07.390070'),
(167, 'NIVEL 5', 72, '2023-04-28 09:35:08.388559', '2023-04-28 09:35:08.388559');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject_parents`
--

CREATE TABLE `subject_parents` (
  `id` int NOT NULL,
  `subject_id` int NOT NULL,
  `subject_parent_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `subject_parents`
--

INSERT INTO `subject_parents` (`id`, `subject_id`, `subject_parent_id`, `created_at`, `updated_at`) VALUES
(46, 382, 375, '2023-03-21 14:41:46.025967', '2023-03-21 14:41:46.025967'),
(47, 382, 376, '2023-03-21 14:41:46.033974', '2023-03-21 14:41:46.033974'),
(48, 382, 377, '2023-03-21 14:41:46.040585', '2023-03-21 14:41:46.040585'),
(49, 382, 378, '2023-03-21 14:41:46.053512', '2023-03-21 14:41:46.053512'),
(50, 382, 379, '2023-03-21 14:41:46.077387', '2023-03-21 14:41:46.077387'),
(51, 382, 381, '2023-03-21 14:41:46.091997', '2023-03-21 14:41:46.091997'),
(52, 382, 380, '2023-03-21 14:41:46.098642', '2023-03-21 14:41:46.098642'),
(53, 383, 375, '2023-03-21 14:41:46.115955', '2023-03-21 14:41:46.115955'),
(54, 383, 376, '2023-03-21 14:41:46.123349', '2023-03-21 14:41:46.123349'),
(55, 383, 377, '2023-03-21 14:41:46.129960', '2023-03-21 14:41:46.129960'),
(56, 383, 378, '2023-03-21 14:41:46.145127', '2023-03-21 14:41:46.145127'),
(57, 383, 379, '2023-03-21 14:41:46.153281', '2023-03-21 14:41:46.153281'),
(58, 383, 380, '2023-03-21 14:41:46.170429', '2023-03-21 14:41:46.170429'),
(59, 383, 381, '2023-03-21 14:41:46.178119', '2023-03-21 14:41:46.178119'),
(60, 384, 375, '2023-03-21 14:41:46.192515', '2023-03-21 14:41:46.192515'),
(61, 384, 376, '2023-03-21 14:41:46.210058', '2023-03-21 14:41:46.210058'),
(62, 384, 377, '2023-03-21 14:41:46.228109', '2023-03-21 14:41:46.228109'),
(63, 384, 378, '2023-03-21 14:41:46.237400', '2023-03-21 14:41:46.237400'),
(64, 384, 379, '2023-03-21 14:41:46.249028', '2023-03-21 14:41:46.249028'),
(65, 384, 380, '2023-03-21 14:41:46.256441', '2023-03-21 14:41:46.256441'),
(66, 384, 381, '2023-03-21 14:41:46.264417', '2023-03-21 14:41:46.264417'),
(67, 385, 381, '2023-03-21 14:41:46.283344', '2023-03-21 14:41:46.283344'),
(68, 385, 380, '2023-03-21 14:41:46.291026', '2023-03-21 14:41:46.291026'),
(69, 385, 379, '2023-03-21 14:41:46.297307', '2023-03-21 14:41:46.297307'),
(70, 385, 378, '2023-03-21 14:41:46.307346', '2023-03-21 14:41:46.307346'),
(71, 385, 377, '2023-03-21 14:41:46.314905', '2023-03-21 14:41:46.314905'),
(72, 385, 376, '2023-03-21 14:41:46.321736', '2023-03-21 14:41:46.321736'),
(73, 385, 375, '2023-03-21 14:41:46.327777', '2023-03-21 14:41:46.327777'),
(74, 386, 381, '2023-03-21 14:41:46.341473', '2023-03-21 14:41:46.341473'),
(75, 386, 380, '2023-03-21 14:41:46.348440', '2023-03-21 14:41:46.348440'),
(76, 386, 379, '2023-03-21 14:41:46.355724', '2023-03-21 14:41:46.355724'),
(77, 386, 378, '2023-03-21 14:41:46.361526', '2023-03-21 14:41:46.361526'),
(78, 386, 377, '2023-03-21 14:41:46.367417', '2023-03-21 14:41:46.367417'),
(79, 386, 376, '2023-03-21 14:41:46.373427', '2023-03-21 14:41:46.373427'),
(80, 386, 375, '2023-03-21 14:41:46.385790', '2023-03-21 14:41:46.385790'),
(81, 387, 375, '2023-03-21 14:41:46.400261', '2023-03-21 14:41:46.400261'),
(82, 387, 376, '2023-03-21 14:41:46.407276', '2023-03-21 14:41:46.407276'),
(83, 387, 377, '2023-03-21 14:41:46.414001', '2023-03-21 14:41:46.414001'),
(84, 387, 378, '2023-03-21 14:41:46.421713', '2023-03-21 14:41:46.421713'),
(85, 387, 379, '2023-03-21 14:41:46.439590', '2023-03-21 14:41:46.439590'),
(86, 387, 380, '2023-03-21 14:41:46.448356', '2023-03-21 14:41:46.448356'),
(87, 387, 381, '2023-03-21 14:41:46.456141', '2023-03-21 14:41:46.456141'),
(88, 388, 375, '2023-03-21 14:41:46.484399', '2023-03-21 14:41:46.484399'),
(89, 388, 376, '2023-03-21 14:41:46.492639', '2023-03-21 14:41:46.492639'),
(90, 388, 377, '2023-03-21 14:41:46.500352', '2023-03-21 14:41:46.500352'),
(91, 388, 379, '2023-03-21 14:41:46.508348', '2023-03-21 14:41:46.508348'),
(92, 388, 378, '2023-03-21 14:41:46.517091', '2023-03-21 14:41:46.517091'),
(93, 388, 380, '2023-03-21 14:41:46.523602', '2023-03-21 14:41:46.523602'),
(94, 388, 381, '2023-03-21 14:41:46.529448', '2023-03-21 14:41:46.529448'),
(95, 390, 375, '2023-03-21 14:41:46.991723', '2023-03-21 14:41:46.991723'),
(96, 390, 376, '2023-03-21 14:41:46.998351', '2023-03-21 14:41:46.998351'),
(97, 390, 377, '2023-03-21 14:41:47.007138', '2023-03-21 14:41:47.007138'),
(98, 390, 378, '2023-03-21 14:41:47.020394', '2023-03-21 14:41:47.020394'),
(99, 390, 380, '2023-03-21 14:41:47.032241', '2023-03-21 14:41:47.032241'),
(100, 390, 379, '2023-03-21 14:41:47.046983', '2023-03-21 14:41:47.046983'),
(101, 390, 381, '2023-03-21 14:41:47.055997', '2023-03-21 14:41:47.055997'),
(102, 390, 382, '2023-03-21 14:41:47.062903', '2023-03-21 14:41:47.062903'),
(103, 390, 384, '2023-03-21 14:41:47.069418', '2023-03-21 14:41:47.069418'),
(104, 390, 383, '2023-03-21 14:41:47.077322', '2023-03-21 14:41:47.077322'),
(105, 391, 375, '2023-03-21 14:41:47.096072', '2023-03-21 14:41:47.096072'),
(106, 391, 376, '2023-03-21 14:41:47.102049', '2023-03-21 14:41:47.102049'),
(107, 391, 377, '2023-03-21 14:41:47.171557', '2023-03-21 14:41:47.171557'),
(108, 391, 378, '2023-03-21 14:41:47.231545', '2023-03-21 14:41:47.231545'),
(109, 391, 379, '2023-03-21 14:41:47.286117', '2023-03-21 14:41:47.286117'),
(110, 391, 380, '2023-03-21 14:41:47.293694', '2023-03-21 14:41:47.293694'),
(111, 391, 381, '2023-03-21 14:41:47.299894', '2023-03-21 14:41:47.299894'),
(112, 391, 383, '2023-03-21 14:41:47.309054', '2023-03-21 14:41:47.309054'),
(113, 392, 375, '2023-03-21 14:41:47.332494', '2023-03-21 14:41:47.332494'),
(114, 392, 376, '2023-03-21 14:41:47.338689', '2023-03-21 14:41:47.338689'),
(115, 392, 378, '2023-03-21 14:41:47.344066', '2023-03-21 14:41:47.344066'),
(116, 392, 377, '2023-03-21 14:41:47.349503', '2023-03-21 14:41:47.349503'),
(117, 392, 379, '2023-03-21 14:41:47.355575', '2023-03-21 14:41:47.355575'),
(118, 392, 380, '2023-03-21 14:41:47.361057', '2023-03-21 14:41:47.361057'),
(119, 392, 381, '2023-03-21 14:41:47.366378', '2023-03-21 14:41:47.366378'),
(120, 392, 384, '2023-03-21 14:41:47.372629', '2023-03-21 14:41:47.372629'),
(121, 393, 375, '2023-03-21 14:41:47.396733', '2023-03-21 14:41:47.396733'),
(122, 393, 376, '2023-03-21 14:41:47.402848', '2023-03-21 14:41:47.402848'),
(123, 393, 377, '2023-03-21 14:41:47.413625', '2023-03-21 14:41:47.413625'),
(124, 393, 378, '2023-03-21 14:41:47.419455', '2023-03-21 14:41:47.419455'),
(125, 393, 379, '2023-03-21 14:41:47.424909', '2023-03-21 14:41:47.424909'),
(126, 393, 380, '2023-03-21 14:41:47.430423', '2023-03-21 14:41:47.430423'),
(127, 393, 381, '2023-03-21 14:41:47.435998', '2023-03-21 14:41:47.435998'),
(128, 393, 385, '2023-03-21 14:41:47.442202', '2023-03-21 14:41:47.442202'),
(129, 394, 375, '2023-03-21 14:41:47.459458', '2023-03-21 14:41:47.459458'),
(130, 394, 376, '2023-03-21 14:41:47.466674', '2023-03-21 14:41:47.466674'),
(131, 394, 377, '2023-03-21 14:41:47.473043', '2023-03-21 14:41:47.473043'),
(132, 394, 379, '2023-03-21 14:41:47.479714', '2023-03-21 14:41:47.479714'),
(133, 394, 380, '2023-03-21 14:41:47.490636', '2023-03-21 14:41:47.490636'),
(134, 394, 381, '2023-03-21 14:41:47.496759', '2023-03-21 14:41:47.496759'),
(135, 394, 378, '2023-03-21 14:41:47.503153', '2023-03-21 14:41:47.503153'),
(136, 394, 386, '2023-03-21 14:41:47.508525', '2023-03-21 14:41:47.508525'),
(137, 395, 375, '2023-03-21 14:41:47.527274', '2023-03-21 14:41:47.527274'),
(138, 395, 376, '2023-03-21 14:41:47.540073', '2023-03-21 14:41:47.540073'),
(139, 395, 377, '2023-03-21 14:41:47.545693', '2023-03-21 14:41:47.545693'),
(140, 395, 378, '2023-03-21 14:41:47.552276', '2023-03-21 14:41:47.552276'),
(141, 395, 379, '2023-03-21 14:41:47.558024', '2023-03-21 14:41:47.558024'),
(142, 395, 380, '2023-03-21 14:41:47.564607', '2023-03-21 14:41:47.564607'),
(143, 395, 381, '2023-03-21 14:41:47.570427', '2023-03-21 14:41:47.570427'),
(144, 396, 375, '2023-03-21 14:41:47.596928', '2023-03-21 14:41:47.596928'),
(145, 396, 376, '2023-03-21 14:41:47.602615', '2023-03-21 14:41:47.602615'),
(146, 396, 377, '2023-03-21 14:41:47.607938', '2023-03-21 14:41:47.607938'),
(147, 396, 378, '2023-03-21 14:41:47.613309', '2023-03-21 14:41:47.613309'),
(148, 396, 379, '2023-03-21 14:41:47.620031', '2023-03-21 14:41:47.620031'),
(149, 396, 380, '2023-03-21 14:41:47.629526', '2023-03-21 14:41:47.629526'),
(150, 396, 381, '2023-03-21 14:41:47.636430', '2023-03-21 14:41:47.636430'),
(151, 396, 387, '2023-03-21 14:41:47.642296', '2023-03-21 14:41:47.642296'),
(152, 397, 375, '2023-03-21 14:41:47.659253', '2023-03-21 14:41:47.659253'),
(153, 397, 376, '2023-03-21 14:41:47.664382', '2023-03-21 14:41:47.664382'),
(154, 397, 377, '2023-03-21 14:41:47.669635', '2023-03-21 14:41:47.669635'),
(155, 397, 379, '2023-03-21 14:41:47.675025', '2023-03-21 14:41:47.675025'),
(156, 397, 380, '2023-03-21 14:41:47.680470', '2023-03-21 14:41:47.680470'),
(158, 397, 381, '2023-03-21 14:41:47.691649', '2023-03-21 14:41:47.691649'),
(159, 390, 375, '2023-03-21 14:41:47.829931', '2023-03-21 14:41:47.829931'),
(160, 390, 376, '2023-03-21 14:41:47.837263', '2023-03-21 14:41:47.837263'),
(161, 390, 377, '2023-03-21 14:41:47.843803', '2023-03-21 14:41:47.843803'),
(162, 390, 378, '2023-03-21 14:41:47.849659', '2023-03-21 14:41:47.849659'),
(163, 390, 380, '2023-03-21 14:41:47.856597', '2023-03-21 14:41:47.856597'),
(164, 390, 379, '2023-03-21 14:41:47.863687', '2023-03-21 14:41:47.863687'),
(165, 390, 381, '2023-03-21 14:41:47.870595', '2023-03-21 14:41:47.870595'),
(166, 390, 382, '2023-03-21 14:41:47.876227', '2023-03-21 14:41:47.876227'),
(167, 390, 384, '2023-03-21 14:41:47.882362', '2023-03-21 14:41:47.882362'),
(168, 390, 383, '2023-03-21 14:41:47.888292', '2023-03-21 14:41:47.888292'),
(169, 391, 375, '2023-03-21 14:41:47.906518', '2023-03-21 14:41:47.906518'),
(170, 391, 376, '2023-03-21 14:41:47.913287', '2023-03-21 14:41:47.913287'),
(171, 391, 377, '2023-03-21 14:41:47.918836', '2023-03-21 14:41:47.918836'),
(172, 391, 378, '2023-03-21 14:41:47.925102', '2023-03-21 14:41:47.925102'),
(173, 391, 379, '2023-03-21 14:41:47.935405', '2023-03-21 14:41:47.935405'),
(174, 391, 380, '2023-03-21 14:41:47.943293', '2023-03-21 14:41:47.943293'),
(175, 391, 381, '2023-03-21 14:41:47.952139', '2023-03-21 14:41:47.952139'),
(176, 391, 383, '2023-03-21 14:41:47.959829', '2023-03-21 14:41:47.959829'),
(177, 392, 375, '2023-03-21 14:41:47.981050', '2023-03-21 14:41:47.981050'),
(178, 392, 376, '2023-03-21 14:41:47.987631', '2023-03-21 14:41:47.987631'),
(179, 392, 378, '2023-03-21 14:41:47.994318', '2023-03-21 14:41:47.994318'),
(180, 392, 377, '2023-03-21 14:41:48.000152', '2023-03-21 14:41:48.000152'),
(181, 392, 379, '2023-03-21 14:41:48.007195', '2023-03-21 14:41:48.007195'),
(182, 392, 380, '2023-03-21 14:41:48.013100', '2023-03-21 14:41:48.013100'),
(183, 392, 381, '2023-03-21 14:41:48.024905', '2023-03-21 14:41:48.024905'),
(184, 392, 384, '2023-03-21 14:41:48.030874', '2023-03-21 14:41:48.030874'),
(185, 393, 375, '2023-03-21 14:41:48.069748', '2023-03-21 14:41:48.069748'),
(186, 393, 376, '2023-03-21 14:41:48.083987', '2023-03-21 14:41:48.083987'),
(187, 393, 377, '2023-03-21 14:41:48.089935', '2023-03-21 14:41:48.089935'),
(188, 393, 378, '2023-03-21 14:41:48.099648', '2023-03-21 14:41:48.099648'),
(189, 393, 379, '2023-03-21 14:41:48.105608', '2023-03-21 14:41:48.105608'),
(190, 393, 380, '2023-03-21 14:41:48.111113', '2023-03-21 14:41:48.111113'),
(191, 393, 381, '2023-03-21 14:41:48.118781', '2023-03-21 14:41:48.118781'),
(192, 393, 385, '2023-03-21 14:41:48.130836', '2023-03-21 14:41:48.130836'),
(193, 394, 375, '2023-03-21 14:41:48.150510', '2023-03-21 14:41:48.150510'),
(194, 394, 376, '2023-03-21 14:41:48.156222', '2023-03-21 14:41:48.156222'),
(195, 394, 377, '2023-03-21 14:41:48.162409', '2023-03-21 14:41:48.162409'),
(196, 394, 379, '2023-03-21 14:41:48.180030', '2023-03-21 14:41:48.180030'),
(197, 394, 380, '2023-03-21 14:41:48.186390', '2023-03-21 14:41:48.186390'),
(198, 394, 381, '2023-03-21 14:41:48.194730', '2023-03-21 14:41:48.194730'),
(199, 394, 378, '2023-03-21 14:41:48.201251', '2023-03-21 14:41:48.201251'),
(200, 394, 386, '2023-03-21 14:41:48.207683', '2023-03-21 14:41:48.207683'),
(201, 395, 375, '2023-03-21 14:41:48.251559', '2023-03-21 14:41:48.251559'),
(202, 395, 376, '2023-03-21 14:41:48.258643', '2023-03-21 14:41:48.258643'),
(203, 395, 377, '2023-03-21 14:41:48.272377', '2023-03-21 14:41:48.272377'),
(204, 395, 378, '2023-03-21 14:41:48.283958', '2023-03-21 14:41:48.283958'),
(205, 395, 379, '2023-03-21 14:41:48.291196', '2023-03-21 14:41:48.291196'),
(206, 395, 380, '2023-03-21 14:41:48.298250', '2023-03-21 14:41:48.298250'),
(207, 395, 381, '2023-03-21 14:41:48.307456', '2023-03-21 14:41:48.307456'),
(208, 396, 375, '2023-03-21 14:41:48.327136', '2023-03-21 14:41:48.327136'),
(209, 396, 376, '2023-03-21 14:41:48.337539', '2023-03-21 14:41:48.337539'),
(210, 396, 377, '2023-03-21 14:41:48.344047', '2023-03-21 14:41:48.344047'),
(211, 396, 378, '2023-03-21 14:41:48.349732', '2023-03-21 14:41:48.349732'),
(212, 396, 379, '2023-03-21 14:41:48.355767', '2023-03-21 14:41:48.355767'),
(213, 396, 380, '2023-03-21 14:41:48.361256', '2023-03-21 14:41:48.361256'),
(214, 396, 381, '2023-03-21 14:41:48.383585', '2023-03-21 14:41:48.383585'),
(215, 396, 387, '2023-03-21 14:41:48.401170', '2023-03-21 14:41:48.401170'),
(216, 397, 375, '2023-03-21 14:41:48.422754', '2023-03-21 14:41:48.422754'),
(217, 397, 376, '2023-03-21 14:41:48.428916', '2023-03-21 14:41:48.428916'),
(218, 397, 377, '2023-03-21 14:41:48.439858', '2023-03-21 14:41:48.439858'),
(219, 397, 379, '2023-03-21 14:41:48.445480', '2023-03-21 14:41:48.445480'),
(220, 397, 380, '2023-03-21 14:41:48.451000', '2023-03-21 14:41:48.451000'),
(222, 397, 381, '2023-03-21 14:41:48.463436', '2023-03-21 14:41:48.463436'),
(223, 404, 375, '2023-03-21 14:41:48.831772', '2023-03-21 14:41:48.831772'),
(224, 404, 376, '2023-03-21 14:41:48.837284', '2023-03-21 14:41:48.837284'),
(225, 404, 377, '2023-03-21 14:41:48.842801', '2023-03-21 14:41:48.842801'),
(226, 404, 378, '2023-03-21 14:41:48.848663', '2023-03-21 14:41:48.848663'),
(227, 404, 381, '2023-03-21 14:41:48.854772', '2023-03-21 14:41:48.854772'),
(229, 404, 380, '2023-03-21 14:41:48.865896', '2023-03-21 14:41:48.865896'),
(230, 405, 375, '2023-03-21 14:41:48.884166', '2023-03-21 14:41:48.884166'),
(231, 405, 376, '2023-03-21 14:41:48.890111', '2023-03-21 14:41:48.890111'),
(232, 405, 378, '2023-03-21 14:41:48.904473', '2023-03-21 14:41:48.904473'),
(233, 405, 377, '2023-03-21 14:41:48.911591', '2023-03-21 14:41:48.911591'),
(234, 405, 379, '2023-03-21 14:41:48.918768', '2023-03-21 14:41:48.918768'),
(235, 405, 380, '2023-03-21 14:41:48.924242', '2023-03-21 14:41:48.924242'),
(236, 405, 381, '2023-03-21 14:41:48.929411', '2023-03-21 14:41:48.929411'),
(237, 406, 375, '2023-03-21 14:41:48.948595', '2023-03-21 14:41:48.948595'),
(238, 406, 376, '2023-03-21 14:41:48.954425', '2023-03-21 14:41:48.954425'),
(239, 406, 377, '2023-03-21 14:41:48.959663', '2023-03-21 14:41:48.959663'),
(240, 406, 378, '2023-03-21 14:41:48.965443', '2023-03-21 14:41:48.965443'),
(241, 406, 379, '2023-03-21 14:41:48.970856', '2023-03-21 14:41:48.970856'),
(242, 406, 380, '2023-03-21 14:41:48.975951', '2023-03-21 14:41:48.975951'),
(243, 406, 381, '2023-03-21 14:41:48.982457', '2023-03-21 14:41:48.982457'),
(244, 407, 375, '2023-03-21 14:41:49.001493', '2023-03-21 14:41:49.001493'),
(245, 407, 376, '2023-03-21 14:41:49.008577', '2023-03-21 14:41:49.008577'),
(246, 407, 377, '2023-03-21 14:41:49.015226', '2023-03-21 14:41:49.015226'),
(247, 407, 378, '2023-03-21 14:41:49.021652', '2023-03-21 14:41:49.021652'),
(248, 407, 379, '2023-03-21 14:41:49.027528', '2023-03-21 14:41:49.027528'),
(249, 407, 380, '2023-03-21 14:41:49.032914', '2023-03-21 14:41:49.032914'),
(250, 407, 381, '2023-03-21 14:41:49.038442', '2023-03-21 14:41:49.038442'),
(251, 408, 376, '2023-03-21 14:41:49.056307', '2023-03-21 14:41:49.056307'),
(252, 408, 375, '2023-03-21 14:41:49.062813', '2023-03-21 14:41:49.062813'),
(253, 408, 377, '2023-03-21 14:41:49.069516', '2023-03-21 14:41:49.069516'),
(254, 408, 378, '2023-03-21 14:41:49.082758', '2023-03-21 14:41:49.082758'),
(255, 408, 379, '2023-03-21 14:41:49.089949', '2023-03-21 14:41:49.089949'),
(256, 408, 380, '2023-03-21 14:41:49.096042', '2023-03-21 14:41:49.096042'),
(257, 408, 381, '2023-03-21 14:41:49.103413', '2023-03-21 14:41:49.103413'),
(258, 409, 381, '2023-03-21 14:41:49.130509', '2023-03-21 14:41:49.130509'),
(259, 409, 380, '2023-03-21 14:41:49.139013', '2023-03-21 14:41:49.139013'),
(260, 409, 379, '2023-03-21 14:41:49.144922', '2023-03-21 14:41:49.144922'),
(261, 409, 378, '2023-03-21 14:41:49.152090', '2023-03-21 14:41:49.152090'),
(262, 409, 377, '2023-03-21 14:41:49.157418', '2023-03-21 14:41:49.157418'),
(263, 409, 376, '2023-03-21 14:41:49.169604', '2023-03-21 14:41:49.169604'),
(264, 409, 375, '2023-03-21 14:41:49.175441', '2023-03-21 14:41:49.175441'),
(265, 410, 375, '2023-03-21 14:41:49.194814', '2023-03-21 14:41:49.194814'),
(266, 410, 376, '2023-03-21 14:41:49.200232', '2023-03-21 14:41:49.200232'),
(267, 410, 377, '2023-03-21 14:41:49.205343', '2023-03-21 14:41:49.205343'),
(268, 410, 378, '2023-03-21 14:41:49.212307', '2023-03-21 14:41:49.212307'),
(269, 410, 379, '2023-03-21 14:41:49.218560', '2023-03-21 14:41:49.218560'),
(270, 410, 380, '2023-03-21 14:41:49.226791', '2023-03-21 14:41:49.226791'),
(271, 410, 381, '2023-03-21 14:41:49.238856', '2023-03-21 14:41:49.238856'),
(272, 411, 375, '2023-03-21 14:41:49.257231', '2023-03-21 14:41:49.257231'),
(273, 411, 376, '2023-03-21 14:41:49.263032', '2023-03-21 14:41:49.263032'),
(274, 411, 377, '2023-03-21 14:41:49.269011', '2023-03-21 14:41:49.269011'),
(275, 411, 378, '2023-03-21 14:41:49.275934', '2023-03-21 14:41:49.275934'),
(276, 411, 379, '2023-03-21 14:41:49.281083', '2023-03-21 14:41:49.281083'),
(277, 411, 381, '2023-03-21 14:41:49.290559', '2023-03-21 14:41:49.290559'),
(278, 411, 380, '2023-03-21 14:41:49.296899', '2023-03-21 14:41:49.296899'),
(279, 378, 377, '2023-03-21 14:44:50.240201', '2023-03-21 14:44:50.240201'),
(287, 383, 375, '2023-03-21 14:44:51.095001', '2023-03-21 14:44:51.095001'),
(288, 383, 376, '2023-03-21 14:44:51.102878', '2023-03-21 14:44:51.102878'),
(289, 383, 377, '2023-03-21 14:44:51.109804', '2023-03-21 14:44:51.109804'),
(290, 383, 378, '2023-03-21 14:44:51.116485', '2023-03-21 14:44:51.116485'),
(291, 383, 379, '2023-03-21 14:44:51.123313', '2023-03-21 14:44:51.123313'),
(292, 383, 380, '2023-03-21 14:44:51.131089', '2023-03-21 14:44:51.131089'),
(293, 383, 381, '2023-03-21 14:44:51.138323', '2023-03-21 14:44:51.138323'),
(294, 384, 375, '2023-03-21 14:44:51.160349', '2023-03-21 14:44:51.160349'),
(295, 384, 376, '2023-03-21 14:44:51.173011', '2023-03-21 14:44:51.173011'),
(296, 384, 377, '2023-03-21 14:44:51.180163', '2023-03-21 14:44:51.180163'),
(297, 384, 378, '2023-03-21 14:44:51.188215', '2023-03-21 14:44:51.188215'),
(298, 384, 379, '2023-03-21 14:44:51.195625', '2023-03-21 14:44:51.195625'),
(299, 384, 380, '2023-03-21 14:44:51.202712', '2023-03-21 14:44:51.202712'),
(300, 384, 381, '2023-03-21 14:44:51.210407', '2023-03-21 14:44:51.210407'),
(301, 385, 381, '2023-03-21 14:44:51.223638', '2023-03-21 14:44:51.223638'),
(302, 385, 380, '2023-03-21 14:44:51.229921', '2023-03-21 14:44:51.229921'),
(303, 385, 379, '2023-03-21 14:44:51.237311', '2023-03-21 14:44:51.237311'),
(304, 385, 378, '2023-03-21 14:44:51.243275', '2023-03-21 14:44:51.243275'),
(305, 385, 377, '2023-03-21 14:44:51.249345', '2023-03-21 14:44:51.249345'),
(306, 385, 376, '2023-03-21 14:44:51.255968', '2023-03-21 14:44:51.255968'),
(307, 385, 375, '2023-03-21 14:44:51.263773', '2023-03-21 14:44:51.263773'),
(308, 386, 381, '2023-03-21 14:44:51.279560', '2023-03-21 14:44:51.279560'),
(309, 386, 380, '2023-03-21 14:44:51.289626', '2023-03-21 14:44:51.289626'),
(310, 386, 379, '2023-03-21 14:44:51.300035', '2023-03-21 14:44:51.300035'),
(311, 386, 378, '2023-03-21 14:44:51.312328', '2023-03-21 14:44:51.312328'),
(312, 386, 377, '2023-03-21 14:44:51.319149', '2023-03-21 14:44:51.319149'),
(313, 386, 376, '2023-03-21 14:44:51.337046', '2023-03-21 14:44:51.337046'),
(314, 386, 375, '2023-03-21 14:44:51.343788', '2023-03-21 14:44:51.343788'),
(315, 387, 375, '2023-03-21 14:44:51.362661', '2023-03-21 14:44:51.362661'),
(316, 387, 376, '2023-03-21 14:44:51.375390', '2023-03-21 14:44:51.375390'),
(317, 387, 377, '2023-03-21 14:44:51.396665', '2023-03-21 14:44:51.396665'),
(318, 387, 378, '2023-03-21 14:44:51.406284', '2023-03-21 14:44:51.406284'),
(319, 387, 379, '2023-03-21 14:44:51.413005', '2023-03-21 14:44:51.413005'),
(320, 387, 380, '2023-03-21 14:44:51.418933', '2023-03-21 14:44:51.418933'),
(321, 387, 381, '2023-03-21 14:44:51.424949', '2023-03-21 14:44:51.424949'),
(322, 388, 375, '2023-03-21 14:44:51.441230', '2023-03-21 14:44:51.441230'),
(323, 388, 376, '2023-03-21 14:44:51.447975', '2023-03-21 14:44:51.447975'),
(324, 388, 377, '2023-03-21 14:44:51.461200', '2023-03-21 14:44:51.461200'),
(325, 388, 379, '2023-03-21 14:44:51.472928', '2023-03-21 14:44:51.472928'),
(326, 388, 378, '2023-03-21 14:44:51.482800', '2023-03-21 14:44:51.482800'),
(327, 388, 380, '2023-03-21 14:44:51.490014', '2023-03-21 14:44:51.490014'),
(328, 388, 381, '2023-03-21 14:44:51.496508', '2023-03-21 14:44:51.496508'),
(329, 390, 375, '2023-03-21 14:44:51.969217', '2023-03-21 14:44:51.969217'),
(330, 390, 376, '2023-03-21 14:44:51.975979', '2023-03-21 14:44:51.975979'),
(331, 390, 377, '2023-03-21 14:44:51.982627', '2023-03-21 14:44:51.982627'),
(332, 390, 378, '2023-03-21 14:44:51.989074', '2023-03-21 14:44:51.989074'),
(333, 390, 380, '2023-03-21 14:44:51.998794', '2023-03-21 14:44:51.998794'),
(334, 390, 379, '2023-03-21 14:44:52.007087', '2023-03-21 14:44:52.007087'),
(335, 390, 381, '2023-03-21 14:44:52.014104', '2023-03-21 14:44:52.014104'),
(336, 390, 382, '2023-03-21 14:44:52.021562', '2023-03-21 14:44:52.021562'),
(337, 390, 384, '2023-03-21 14:44:52.030561', '2023-03-21 14:44:52.030561'),
(338, 390, 383, '2023-03-21 14:44:52.037797', '2023-03-21 14:44:52.037797'),
(339, 391, 375, '2023-03-21 14:44:52.063167', '2023-03-21 14:44:52.063167'),
(340, 391, 376, '2023-03-21 14:44:52.072103', '2023-03-21 14:44:52.072103'),
(341, 391, 377, '2023-03-21 14:44:52.078844', '2023-03-21 14:44:52.078844'),
(342, 391, 378, '2023-03-21 14:44:52.084675', '2023-03-21 14:44:52.084675'),
(343, 391, 379, '2023-03-21 14:44:52.090688', '2023-03-21 14:44:52.090688'),
(344, 391, 380, '2023-03-21 14:44:52.098621', '2023-03-21 14:44:52.098621'),
(345, 391, 381, '2023-03-21 14:44:52.105275', '2023-03-21 14:44:52.105275'),
(346, 391, 383, '2023-03-21 14:44:52.112205', '2023-03-21 14:44:52.112205'),
(347, 392, 375, '2023-03-21 14:44:52.150963', '2023-03-21 14:44:52.150963'),
(348, 392, 376, '2023-03-21 14:44:52.162407', '2023-03-21 14:44:52.162407'),
(349, 392, 378, '2023-03-21 14:44:52.169496', '2023-03-21 14:44:52.169496'),
(350, 392, 377, '2023-03-21 14:44:52.175786', '2023-03-21 14:44:52.175786'),
(351, 392, 379, '2023-03-21 14:44:52.181900', '2023-03-21 14:44:52.181900'),
(352, 392, 380, '2023-03-21 14:44:52.188043', '2023-03-21 14:44:52.188043'),
(353, 392, 381, '2023-03-21 14:44:52.193832', '2023-03-21 14:44:52.193832'),
(354, 392, 384, '2023-03-21 14:44:52.207386', '2023-03-21 14:44:52.207386'),
(355, 393, 375, '2023-03-21 14:44:52.230353', '2023-03-21 14:44:52.230353'),
(356, 393, 376, '2023-03-21 14:44:52.253164', '2023-03-21 14:44:52.253164'),
(357, 393, 377, '2023-03-21 14:44:52.266909', '2023-03-21 14:44:52.266909'),
(358, 393, 378, '2023-03-21 14:44:52.289311', '2023-03-21 14:44:52.289311'),
(359, 393, 379, '2023-03-21 14:44:52.295673', '2023-03-21 14:44:52.295673'),
(360, 393, 380, '2023-03-21 14:44:52.301834', '2023-03-21 14:44:52.301834'),
(361, 393, 381, '2023-03-21 14:44:52.313014', '2023-03-21 14:44:52.313014'),
(362, 393, 385, '2023-03-21 14:44:52.352026', '2023-03-21 14:44:52.352026'),
(363, 394, 375, '2023-03-21 14:44:52.508414', '2023-03-21 14:44:52.508414'),
(364, 394, 376, '2023-03-21 14:44:52.514694', '2023-03-21 14:44:52.514694'),
(365, 394, 377, '2023-03-21 14:44:52.520394', '2023-03-21 14:44:52.520394'),
(366, 394, 379, '2023-03-21 14:44:52.526272', '2023-03-21 14:44:52.526272'),
(367, 394, 380, '2023-03-21 14:44:52.531668', '2023-03-21 14:44:52.531668'),
(368, 394, 381, '2023-03-21 14:44:52.538320', '2023-03-21 14:44:52.538320'),
(369, 394, 378, '2023-03-21 14:44:52.543782', '2023-03-21 14:44:52.543782'),
(370, 394, 386, '2023-03-21 14:44:52.557372', '2023-03-21 14:44:52.557372'),
(371, 395, 375, '2023-03-21 14:44:52.590242', '2023-03-21 14:44:52.590242'),
(372, 395, 376, '2023-03-21 14:44:52.598474', '2023-03-21 14:44:52.598474'),
(373, 395, 377, '2023-03-21 14:44:52.604921', '2023-03-21 14:44:52.604921'),
(374, 395, 378, '2023-03-21 14:44:52.610603', '2023-03-21 14:44:52.610603'),
(375, 395, 379, '2023-03-21 14:44:52.616357', '2023-03-21 14:44:52.616357'),
(376, 395, 380, '2023-03-21 14:44:52.621868', '2023-03-21 14:44:52.621868'),
(377, 395, 381, '2023-03-21 14:44:52.636926', '2023-03-21 14:44:52.636926'),
(378, 396, 375, '2023-03-21 14:44:52.672253', '2023-03-21 14:44:52.672253'),
(379, 396, 376, '2023-03-21 14:44:52.678354', '2023-03-21 14:44:52.678354'),
(380, 396, 377, '2023-03-21 14:44:52.684094', '2023-03-21 14:44:52.684094'),
(381, 396, 378, '2023-03-21 14:44:52.689483', '2023-03-21 14:44:52.689483'),
(382, 396, 379, '2023-03-21 14:44:52.694652', '2023-03-21 14:44:52.694652'),
(383, 396, 380, '2023-03-21 14:44:52.700077', '2023-03-21 14:44:52.700077'),
(384, 396, 381, '2023-03-21 14:44:52.705357', '2023-03-21 14:44:52.705357'),
(385, 396, 387, '2023-03-21 14:44:52.711402', '2023-03-21 14:44:52.711402'),
(386, 397, 375, '2023-03-21 14:44:52.741303', '2023-03-21 14:44:52.741303'),
(387, 397, 376, '2023-03-21 14:44:52.752147', '2023-03-21 14:44:52.752147'),
(388, 397, 377, '2023-03-21 14:44:52.764897', '2023-03-21 14:44:52.764897'),
(389, 397, 379, '2023-03-21 14:44:52.773831', '2023-03-21 14:44:52.773831'),
(390, 397, 380, '2023-03-21 14:44:52.786145', '2023-03-21 14:44:52.786145'),
(392, 397, 381, '2023-03-21 14:44:52.800886', '2023-03-21 14:44:52.800886'),
(393, 390, 375, '2023-03-21 14:44:52.976306', '2023-03-21 14:44:52.976306'),
(394, 390, 376, '2023-03-21 14:44:52.983051', '2023-03-21 14:44:52.983051'),
(395, 390, 377, '2023-03-21 14:44:52.989497', '2023-03-21 14:44:52.989497'),
(396, 390, 378, '2023-03-21 14:44:52.995968', '2023-03-21 14:44:52.995968'),
(397, 390, 380, '2023-03-21 14:44:53.002247', '2023-03-21 14:44:53.002247'),
(398, 390, 379, '2023-03-21 14:44:53.009620', '2023-03-21 14:44:53.009620'),
(399, 390, 381, '2023-03-21 14:44:53.017654', '2023-03-21 14:44:53.017654'),
(400, 390, 382, '2023-03-21 14:44:53.027688', '2023-03-21 14:44:53.027688'),
(401, 390, 384, '2023-03-21 14:44:53.033719', '2023-03-21 14:44:53.033719'),
(402, 390, 383, '2023-03-21 14:44:53.039984', '2023-03-21 14:44:53.039984'),
(403, 391, 375, '2023-03-21 14:44:53.057903', '2023-03-21 14:44:53.057903'),
(404, 391, 376, '2023-03-21 14:44:53.063953', '2023-03-21 14:44:53.063953'),
(405, 391, 377, '2023-03-21 14:44:53.069646', '2023-03-21 14:44:53.069646'),
(406, 391, 378, '2023-03-21 14:44:53.076401', '2023-03-21 14:44:53.076401'),
(407, 391, 379, '2023-03-21 14:44:53.082477', '2023-03-21 14:44:53.082477'),
(408, 391, 380, '2023-03-21 14:44:53.088287', '2023-03-21 14:44:53.088287'),
(409, 391, 381, '2023-03-21 14:44:53.094233', '2023-03-21 14:44:53.094233'),
(410, 391, 383, '2023-03-21 14:44:53.101250', '2023-03-21 14:44:53.101250'),
(411, 392, 375, '2023-03-21 14:44:53.130953', '2023-03-21 14:44:53.130953'),
(412, 392, 376, '2023-03-21 14:44:53.137145', '2023-03-21 14:44:53.137145'),
(413, 392, 378, '2023-03-21 14:44:53.144488', '2023-03-21 14:44:53.144488'),
(414, 392, 377, '2023-03-21 14:44:53.150840', '2023-03-21 14:44:53.150840'),
(415, 392, 379, '2023-03-21 14:44:53.156994', '2023-03-21 14:44:53.156994'),
(416, 392, 380, '2023-03-21 14:44:53.162502', '2023-03-21 14:44:53.162502'),
(417, 392, 381, '2023-03-21 14:44:53.168284', '2023-03-21 14:44:53.168284'),
(418, 392, 384, '2023-03-21 14:44:53.174608', '2023-03-21 14:44:53.174608'),
(419, 393, 375, '2023-03-21 14:44:53.194954', '2023-03-21 14:44:53.194954'),
(420, 393, 376, '2023-03-21 14:44:53.210826', '2023-03-21 14:44:53.210826'),
(421, 393, 377, '2023-03-21 14:44:53.217345', '2023-03-21 14:44:53.217345'),
(422, 393, 378, '2023-03-21 14:44:53.222942', '2023-03-21 14:44:53.222942'),
(423, 393, 379, '2023-03-21 14:44:53.229207', '2023-03-21 14:44:53.229207'),
(424, 393, 380, '2023-03-21 14:44:53.235215', '2023-03-21 14:44:53.235215'),
(425, 393, 381, '2023-03-21 14:44:53.241462', '2023-03-21 14:44:53.241462'),
(426, 393, 385, '2023-03-21 14:44:53.247700', '2023-03-21 14:44:53.247700'),
(427, 394, 375, '2023-03-21 14:44:53.267587', '2023-03-21 14:44:53.267587'),
(428, 394, 376, '2023-03-21 14:44:53.279379', '2023-03-21 14:44:53.279379'),
(429, 394, 377, '2023-03-21 14:44:53.290740', '2023-03-21 14:44:53.290740'),
(430, 394, 379, '2023-03-21 14:44:53.297369', '2023-03-21 14:44:53.297369'),
(431, 394, 380, '2023-03-21 14:44:53.303321', '2023-03-21 14:44:53.303321'),
(432, 394, 381, '2023-03-21 14:44:53.310272', '2023-03-21 14:44:53.310272'),
(433, 394, 378, '2023-03-21 14:44:53.316337', '2023-03-21 14:44:53.316337'),
(434, 394, 386, '2023-03-21 14:44:53.323167', '2023-03-21 14:44:53.323167'),
(435, 395, 375, '2023-03-21 14:44:53.350360', '2023-03-21 14:44:53.350360'),
(436, 395, 376, '2023-03-21 14:44:53.356255', '2023-03-21 14:44:53.356255'),
(437, 395, 377, '2023-03-21 14:44:53.362605', '2023-03-21 14:44:53.362605'),
(438, 395, 378, '2023-03-21 14:44:53.368372', '2023-03-21 14:44:53.368372'),
(439, 395, 379, '2023-03-21 14:44:53.374432', '2023-03-21 14:44:53.374432'),
(440, 395, 380, '2023-03-21 14:44:53.380138', '2023-03-21 14:44:53.380138'),
(441, 395, 381, '2023-03-21 14:44:53.385744', '2023-03-21 14:44:53.385744'),
(442, 396, 375, '2023-03-21 14:44:53.410560', '2023-03-21 14:44:53.410560'),
(443, 396, 376, '2023-03-21 14:44:53.416594', '2023-03-21 14:44:53.416594'),
(444, 396, 377, '2023-03-21 14:44:53.422409', '2023-03-21 14:44:53.422409'),
(445, 396, 378, '2023-03-21 14:44:53.428211', '2023-03-21 14:44:53.428211'),
(446, 396, 379, '2023-03-21 14:44:53.434574', '2023-03-21 14:44:53.434574'),
(447, 396, 380, '2023-03-21 14:44:53.440478', '2023-03-21 14:44:53.440478'),
(448, 396, 381, '2023-03-21 14:44:53.446603', '2023-03-21 14:44:53.446603'),
(449, 396, 387, '2023-03-21 14:44:53.453421', '2023-03-21 14:44:53.453421'),
(450, 397, 375, '2023-03-21 14:44:53.480103', '2023-03-21 14:44:53.480103'),
(451, 397, 376, '2023-03-21 14:44:53.485839', '2023-03-21 14:44:53.485839'),
(452, 397, 377, '2023-03-21 14:44:53.491926', '2023-03-21 14:44:53.491926'),
(453, 397, 379, '2023-03-21 14:44:53.497657', '2023-03-21 14:44:53.497657'),
(454, 397, 380, '2023-03-21 14:44:53.511348', '2023-03-21 14:44:53.511348'),
(455, 397, 378, '2023-03-21 14:44:53.518760', '2023-03-21 14:44:53.518760'),
(456, 397, 381, '2023-03-21 14:44:53.525500', '2023-03-21 14:44:53.525500'),
(457, 404, 375, '2023-03-21 14:44:53.986949', '2023-03-21 14:44:53.986949'),
(458, 404, 376, '2023-03-21 14:44:53.993091', '2023-03-21 14:44:53.993091'),
(459, 404, 377, '2023-03-21 14:44:53.999674', '2023-03-21 14:44:53.999674'),
(460, 404, 378, '2023-03-21 14:44:54.006587', '2023-03-21 14:44:54.006587'),
(461, 404, 381, '2023-03-21 14:44:54.013320', '2023-03-21 14:44:54.013320'),
(462, 404, 379, '2023-03-21 14:44:54.019359', '2023-03-21 14:44:54.019359'),
(463, 404, 380, '2023-03-21 14:44:54.025248', '2023-03-21 14:44:54.025248'),
(464, 405, 375, '2023-03-21 14:44:54.037479', '2023-03-21 14:44:54.037479'),
(465, 405, 376, '2023-03-21 14:44:54.058831', '2023-03-21 14:44:54.058831'),
(466, 405, 378, '2023-03-21 14:44:54.115904', '2023-03-21 14:44:54.115904'),
(467, 405, 377, '2023-03-21 14:44:54.122094', '2023-03-21 14:44:54.122094'),
(468, 405, 379, '2023-03-21 14:44:54.128209', '2023-03-21 14:44:54.128209'),
(469, 405, 380, '2023-03-21 14:44:54.135479', '2023-03-21 14:44:54.135479'),
(470, 405, 381, '2023-03-21 14:44:54.142717', '2023-03-21 14:44:54.142717'),
(471, 406, 375, '2023-03-21 14:44:54.155969', '2023-03-21 14:44:54.155969'),
(472, 406, 376, '2023-03-21 14:44:54.161714', '2023-03-21 14:44:54.161714'),
(473, 406, 377, '2023-03-21 14:44:54.167593', '2023-03-21 14:44:54.167593'),
(474, 406, 378, '2023-03-21 14:44:54.176216', '2023-03-21 14:44:54.176216'),
(475, 406, 379, '2023-03-21 14:44:54.182667', '2023-03-21 14:44:54.182667'),
(476, 406, 380, '2023-03-21 14:44:54.189142', '2023-03-21 14:44:54.189142'),
(477, 406, 381, '2023-03-21 14:44:54.195908', '2023-03-21 14:44:54.195908'),
(478, 407, 375, '2023-03-21 14:44:54.209147', '2023-03-21 14:44:54.209147'),
(479, 407, 376, '2023-03-21 14:44:54.215119', '2023-03-21 14:44:54.215119'),
(480, 407, 377, '2023-03-21 14:44:54.221485', '2023-03-21 14:44:54.221485'),
(481, 407, 378, '2023-03-21 14:44:54.227512', '2023-03-21 14:44:54.227512'),
(482, 407, 379, '2023-03-21 14:44:54.234002', '2023-03-21 14:44:54.234002'),
(483, 407, 380, '2023-03-21 14:44:54.241192', '2023-03-21 14:44:54.241192'),
(484, 407, 381, '2023-03-21 14:44:54.247392', '2023-03-21 14:44:54.247392'),
(485, 408, 376, '2023-03-21 14:44:54.263105', '2023-03-21 14:44:54.263105'),
(486, 408, 375, '2023-03-21 14:44:54.268973', '2023-03-21 14:44:54.268973'),
(487, 408, 377, '2023-03-21 14:44:54.274658', '2023-03-21 14:44:54.274658'),
(488, 408, 378, '2023-03-21 14:44:54.280211', '2023-03-21 14:44:54.280211'),
(489, 408, 379, '2023-03-21 14:44:54.286413', '2023-03-21 14:44:54.286413'),
(490, 408, 380, '2023-03-21 14:44:54.293021', '2023-03-21 14:44:54.293021'),
(491, 408, 381, '2023-03-21 14:44:54.299038', '2023-03-21 14:44:54.299038'),
(492, 409, 381, '2023-03-21 14:44:54.312135', '2023-03-21 14:44:54.312135'),
(493, 409, 380, '2023-03-21 14:44:54.317369', '2023-03-21 14:44:54.317369'),
(494, 409, 379, '2023-03-21 14:44:54.322894', '2023-03-21 14:44:54.322894'),
(495, 409, 378, '2023-03-21 14:44:54.328468', '2023-03-21 14:44:54.328468'),
(496, 409, 377, '2023-03-21 14:44:54.347446', '2023-03-21 14:44:54.347446'),
(497, 409, 376, '2023-03-21 14:44:54.356619', '2023-03-21 14:44:54.356619'),
(498, 409, 375, '2023-03-21 14:44:54.365496', '2023-03-21 14:44:54.365496'),
(499, 410, 375, '2023-03-21 14:44:54.390037', '2023-03-21 14:44:54.390037'),
(500, 410, 376, '2023-03-21 14:44:54.396433', '2023-03-21 14:44:54.396433'),
(501, 410, 377, '2023-03-21 14:44:54.403050', '2023-03-21 14:44:54.403050'),
(502, 410, 378, '2023-03-21 14:44:54.408963', '2023-03-21 14:44:54.408963'),
(503, 410, 379, '2023-03-21 14:44:54.414994', '2023-03-21 14:44:54.414994'),
(504, 410, 380, '2023-03-21 14:44:54.420376', '2023-03-21 14:44:54.420376'),
(505, 410, 381, '2023-03-21 14:44:54.426345', '2023-03-21 14:44:54.426345'),
(506, 411, 375, '2023-03-21 14:44:54.439204', '2023-03-21 14:44:54.439204'),
(507, 411, 376, '2023-03-21 14:44:54.445171', '2023-03-21 14:44:54.445171'),
(508, 411, 377, '2023-03-21 14:44:54.450843', '2023-03-21 14:44:54.450843'),
(509, 411, 378, '2023-03-21 14:44:54.456684', '2023-03-21 14:44:54.456684'),
(510, 411, 379, '2023-03-21 14:44:54.462611', '2023-03-21 14:44:54.462611'),
(511, 411, 381, '2023-03-21 14:44:54.468152', '2023-03-21 14:44:54.468152'),
(512, 411, 380, '2023-03-21 14:44:54.473625', '2023-03-21 14:44:54.473625');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'ejemplo2', '2022-08-23 15:39:31.955372', '2022-08-23 15:39:31.955372'),
(11, 'NuevoTag', '2022-08-25 16:55:24.273998', '2022-08-25 16:55:24.273998'),
(34, '#si', '2022-09-08 21:56:37.874396', '2022-09-08 21:56:37.874396'),
(35, 'dinero', '2022-09-08 21:58:06.298266', '2022-09-08 21:58:06.298266'),
(36, 'eje', '2022-09-09 01:58:22.916346', '2022-09-09 01:58:22.916346'),
(39, 'agregado', '2022-09-12 03:42:54.461868', '2022-09-12 03:42:54.461868'),
(40, 'otroMas', '2022-09-12 03:43:54.794063', '2022-09-12 03:43:54.794063'),
(44, 'dineros', '2022-09-13 00:18:10.501572', '2022-09-13 00:18:10.501572'),
(45, 'HOLA', '2022-09-13 23:52:10.667424', '2022-09-13 23:52:10.667424'),
(46, 'EJEMPLO', '2022-09-13 23:52:27.243783', '2022-09-13 23:52:27.243783'),
(48, 'EJEMLO', '2022-09-14 00:47:23.568464', '2022-09-14 00:47:23.568464'),
(49, '', '2022-09-16 05:55:45.169588', '2022-09-16 05:55:45.169588'),
(53, 'LONGI', '2022-09-20 12:56:37.532047', '2022-09-20 12:56:37.532047'),
(54, 'TIEMPO', '2022-09-20 15:13:03.775389', '2022-09-20 15:13:03.775389'),
(55, 'MORRIT', '2022-09-26 21:49:39.032025', '2022-09-26 21:49:39.032025'),
(56, 'UJ', '2022-09-26 21:49:39.109671', '2022-09-26 21:49:39.109671'),
(57, 'LAMBOR', '2022-09-26 21:49:39.186769', '2022-09-26 21:49:39.186769'),
(58, 'GUILLERMO', '2022-09-27 20:09:59.946086', '2022-09-27 20:09:59.946086'),
(59, 'JULI', '2022-09-27 21:43:04.523738', '2022-09-27 21:43:04.523738'),
(60, 'JSBD', '2022-09-28 14:52:17.421109', '2022-09-28 14:52:17.421109'),
(61, 'PAR', '2022-10-07 18:04:24.250426', '2022-10-07 18:04:24.250426'),
(62, 'CALAMAR', '2022-10-11 10:38:43.608296', '2022-10-11 10:38:43.608296'),
(63, 'LO', '2022-10-11 11:24:35.421107', '2022-10-11 11:24:35.421107'),
(64, 'BLNGF', '2022-10-24 12:32:51.360074', '2022-10-24 12:32:51.360074'),
(65, 'BLNGFJK', '2022-10-24 12:32:51.480811', '2022-10-24 12:32:51.480811'),
(66, 'IUJGDX', '2022-10-24 12:32:51.583030', '2022-10-24 12:32:51.583030'),
(67, 'CXF', '2022-10-24 12:34:50.130061', '2022-10-24 12:34:50.130061'),
(68, 'CXFCB', '2022-10-24 12:34:50.221468', '2022-10-24 12:34:50.221468'),
(69, 'GABR', '2022-10-24 12:35:29.811597', '2022-10-24 12:35:29.811597'),
(70, 'NUEVA', '2023-03-22 00:00:33.260597', '2023-03-22 00:00:33.260597'),
(71, 'HIL', '2023-03-28 05:07:43.763223', '2023-03-28 05:07:43.763223'),
(72, 'TOM', '2023-04-05 12:11:32.089443', '2023-04-05 12:11:32.089443'),
(73, 'SJS', '2023-04-07 14:02:47.430893', '2023-04-07 14:02:47.430893'),
(74, 'HBL', '2023-04-18 16:16:38.668375', '2023-04-18 16:16:38.668375'),
(75, 'NZ', '2023-04-18 16:30:39.333085', '2023-04-18 16:30:39.333085');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `career_id` int DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `lastname`, `phone`, `instagram`, `web`, `uid`, `active`, `career_id`, `image_id`, `remember_token`, `device_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'admin@admin.com', '$2b$12$foK9kC9iTr1NBxnWaK/JCOWeHfHzkG.vbr/EDWmS3PeFIBjach3fS', 'Admin', 'admin1', '86878856', NULL, NULL, '1', 1, NULL, 20, NULL, NULL, '2022-08-15 04:51:30.040639', '2022-09-19 14:25:06.299614'),
(23, 'usu1', 'usu1@usu.com', '$2b$12$glF9bybV8ofrwC6lXwfg6.7OaIqIhMRs58y2e4dw6z6STmSjOctxy', 'usu', 'usu', '9978798', NULL, NULL, '23', 1, NULL, 21, NULL, NULL, '2022-08-23 19:36:51.930016', '2022-08-25 20:27:36.402085'),
(30, 'example', 'example@example.com', '$2b$12$aCigjNaovpdaADnWbi6WN.dR.NEpWmYWwXcsqDcpvNpfOJ1/R7yC6', 'Example', NULL, NULL, NULL, NULL, '30', 1, NULL, 1, NULL, NULL, '2022-08-23 21:08:27.482578', '2022-08-25 20:27:36.215646'),
(31, 'alumno', 'alumno@erickcampas.com', '$2b$12$wypXmBMQPvlbhroTBM4RAO55k1fuX/kvfD7zqeZNQRxYwEHA.Ec.2', 'Erick', 'Campas', '1164619938', 'null', 'admin@admin.com', '31', 1, 65, 49, NULL, NULL, '2022-08-25 19:49:19.207023', '2023-03-21 13:24:02.000000'),
(35, 'tomasr', 'tomasruschin1@gmail.com', '$2b$12$8es9Cx5nZq6aXVtrM6uS5elaLXHzJE7RoZJaP.x8HuzcO54VePPaW', 'tomas', 'ruschin', '1164619938', NULL, NULL, '35', 1, NULL, 55, NULL, NULL, '2022-09-06 21:10:56.641280', '2022-09-06 21:10:56.000000'),
(47, 'Tab', 'tomi.ruschin@hotmail.com', '$2b$12$XmCPHFZZQJ4puvEzvHKcfuoBzU/Py1475o.sNz95HZMD8aGTBNpgO', 'Tab', 'Hei', NULL, NULL, NULL, '47', 1, 65, 1, NULL, NULL, '2023-03-29 07:27:16.138609', '2023-03-29 07:27:51.000000'),
(48, 'Hombre', 'Nombre@correo.com', '$2b$12$yF1Bm88Vn6Mc7EhHXXn7oegiSIxKW7KKxKOnj/qn5G9b47rONYdJu', 'Hombre', 'Apelliido', NULL, NULL, NULL, '48', 1, NULL, 1, NULL, NULL, '2023-03-29 14:44:48.881362', '2023-03-29 14:44:48.000000'),
(49, 'Jesus', 'ciriloruiz98@gmail.com', '$2b$12$J1e2JbNu9oK0h45U4FxLo.xi1o4J48HQHH9tFqrP1mFXhFGv.jVmm', 'Jesus', 'Ruiz', NULL, NULL, NULL, '49', 1, NULL, 1, NULL, NULL, '2023-03-29 16:26:33.314908', '2023-03-29 16:26:33.000000'),
(50, 'Ariel', 'Ariel@correo.com', '$2b$12$fLpjsRltMWAlltFA5NIRxegboMz/ECyes3w.LbpuY0sL9HsuwSNDW', 'Ariel', 'Ruiz', NULL, NULL, NULL, '50', 1, 65, 1, NULL, NULL, '2023-03-29 16:32:07.843083', '2023-03-29 16:32:56.000000'),
(51, 'pepito', 'dxrkio@gmail.com', '$2b$12$m6aAKiBPMCsDbxPZfdTz5OcT.ACPiJgPeSMVnqjbEtqp6pJqfFB/a', 'pepito', 'perez', NULL, NULL, NULL, '51', 1, 65, 1, NULL, NULL, '2023-04-17 14:17:20.444803', '2023-04-17 14:21:37.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-08-15 04:51:30.457637', '2022-08-15 04:51:30.457637'),
(23, 23, 1, '2022-08-23 19:36:51.964891', '2022-08-23 19:36:51.964891'),
(30, 30, 1, '2022-08-23 21:08:27.518531', '2022-08-23 21:08:27.518531'),
(31, 31, 2, '2022-08-25 19:49:19.245159', '2022-08-25 19:49:19.245159'),
(35, 35, 1, '2022-09-06 21:10:56.679767', '2022-09-06 21:10:56.679767'),
(47, 47, 2, '2023-03-29 07:27:16.156619', '2023-03-29 07:27:16.156619'),
(48, 48, 2, '2023-03-29 14:44:48.920036', '2023-03-29 14:44:48.920036'),
(49, 49, 2, '2023-03-29 16:26:33.345770', '2023-03-29 16:26:33.345770'),
(50, 50, 2, '2023-03-29 16:32:07.851269', '2023-03-29 16:32:07.851269'),
(51, 51, 2, '2023-04-17 14:17:20.464396', '2023-04-17 14:17:20.464396');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_subjects`
--

CREATE TABLE `user_subjects` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `score` int DEFAULT NULL,
  `finish` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;;

--
-- Volcado de datos para la tabla `user_subjects`
--

INSERT INTO `user_subjects` (`id`, `user_id`, `subject_id`, `score`, `finish`, `created_at`, `updated_at`) VALUES
(102, 31, 386, 4, 1, '2023-03-21 14:47:32.007930', '2023-03-21 14:47:36.000000'),
(103, 31, 382, 4, 1, '2023-03-21 14:48:00.866545', '2023-03-21 14:48:05.000000'),
(104, 31, 383, 5, 1, '2023-03-21 21:20:03.802361', '2023-03-21 21:20:22.000000'),
(105, 31, 384, 1, 1, '2023-03-22 03:04:10.104738', '2023-03-22 03:04:15.000000'),
(114, 31, 375, 8, 1, '2023-04-26 20:57:03.837043', '2023-04-28 08:17:27.000000'),
(119, 31, 376, 5, 1, '2023-04-27 17:26:54.504912', '2023-05-10 02:51:08.000000'),
(123, 31, 377, 5, 1, '2023-05-10 02:50:01.762844', '2023-05-10 02:50:20.000000'),
(124, 31, 378, 5, 1, '2023-05-17 17:48:03.851691', '2023-05-17 17:48:15.000000'),
(125, 31, 379, 1, 1, '2023-05-17 17:48:35.441235', '2023-05-17 17:48:35.441235'),
(126, 31, 381, 5, 1, '2023-05-17 17:50:09.188515', '2023-05-17 17:50:14.000000'),
(127, 31, 380, 1, 1, '2023-05-19 15:54:24.376465', '2023-05-19 15:54:24.376465');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b82f1d8368dd5305ae7e7e664c2` (`user_id`);

--
-- Indices de la tabla `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_547efe1d238f8fa27c33d1787d2` (`image_id`),
  ADD KEY `FK_b2ad8dbea887a57629077390477` (`career_id`),
  ADD KEY `FK_43f589d593a209f52687cdb72ca` (`partner_id`);

--
-- Indices de la tabla `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_6f36fb7c6781ebb92af6d59e852` (`offer_id`);

--
-- Indices de la tabla `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_8c428a1fcc64d8e078c4f7ad5ec` (`image_id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `extra_scores`
--
ALTER TABLE `extra_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_8ad20c9044c3270236cdf049779` (`user_subject_id`);

--
-- Indices de la tabla `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_4334f6be2d7d841a9d5205a100e` (`user_id`);

--
-- Indices de la tabla `general_notifications`
--
ALTER TABLE `general_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lost_objects`
--
ALTER TABLE `lost_objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_e715723bc6085f53eccbeb318ec` (`image_id`),
  ADD KEY `FK_a31700e239bc921a392a0b7f583` (`user_id`);

--
-- Indices de la tabla `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_35ed3bdcded07e4ffc4e19ff8cc` (`image_id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_9a8a82462cab47c73d25f49261f` (`user_id`);

--
-- Indices de la tabla `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_47414a1661e6598319de904375e` (`offer_category_id`),
  ADD KEY `FK_560b98e6ccd362b85c867e64fa1` (`image_id`),
  ADD KEY `FK_ce647f46768e77ebab79e0c908c` (`partner_id`),
  ADD KEY `FK_04c4741314898262b1774eb99d6` (`career_id`);

--
-- Indices de la tabla `offer_categories`
--
ALTER TABLE `offer_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opinions`
--
ALTER TABLE `opinions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_13b2d8d8323fec8685236a8a989` (`student_id`),
  ADD KEY `FK_be8165136c28d39898126bf7ae5` (`subject_id`);

--
-- Indices de la tabla `opinion_answers`
--
ALTER TABLE `opinion_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_f7fa8f84c51b138577e094f7046` (`opinion_id`),
  ADD KEY `FK_069f952ea4eff3b4252e7a156e5` (`student_id`);

--
-- Indices de la tabla `opinion_tags`
--
ALTER TABLE `opinion_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_cc8fd30b1345e8e69809d98e2a4` (`opinion_id`),
  ADD KEY `FK_ec0cf1f60af65eb25dd9f1a0910` (`tag_id`);

--
-- Indices de la tabla `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_78844f2d9f8da7d87d8dbff4794` (`user_id`),
  ADD KEY `FK_bb3c0d4d005294aefbc04bc8840` (`image_id`),
  ADD KEY `FK_d0d379066881717760ad9971b1d` (`subject_id`),
  ADD KEY `FK_d2d3d01414ae80b7058d5ad0ea2` (`resource_category_id`);

--
-- Indices de la tabla `resource_categories`
--
ALTER TABLE `resource_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_32bcd595a362cb613cb3119bab0` (`subject_category_id`);

--
-- Indices de la tabla `subject_categories`
--
ALTER TABLE `subject_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_14c43ac8708eae55ec3e199d06c` (`career_id`);

--
-- Indices de la tabla `subject_parents`
--
ALTER TABLE `subject_parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_c4155593cc2b87db79eac294d0d` (`subject_id`),
  ADD KEY `FK_7f21c6c680dc01f6c52f6abf65f` (`subject_parent_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_d90243459a697eadb8ad56e909` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b1aae736b7c5d6925efa8563527` (`image_id`),
  ADD KEY `FK_595e3ec68870fff745c8dcabe7a` (`career_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b23c65e50a758245a33ee35fda1` (`role_id`),
  ADD KEY `FK_87b8888186ca9769c960e926870` (`user_id`);

--
-- Indices de la tabla `user_subjects`
--
ALTER TABLE `user_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_420c413caf5877b2d1417ad9cc3` (`user_id`),
  ADD KEY `FK_14f1432e6cd4fbaca293844bfdd` (`subject_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de la tabla `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `balances`
--
ALTER TABLE `balances`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `extra_scores`
--
ALTER TABLE `extra_scores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `general_notifications`
--
ALTER TABLE `general_notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT de la tabla `lost_objects`
--
ALTER TABLE `lost_objects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `offer_categories`
--
ALTER TABLE `offer_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `opinions`
--
ALTER TABLE `opinions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT de la tabla `opinion_answers`
--
ALTER TABLE `opinion_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `opinion_tags`
--
ALTER TABLE `opinion_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT de la tabla `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `resource_categories`
--
ALTER TABLE `resource_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT de la tabla `subject_categories`
--
ALTER TABLE `subject_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT de la tabla `subject_parents`
--
ALTER TABLE `subject_parents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `user_subjects`
--
ALTER TABLE `user_subjects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `FK_b82f1d8368dd5305ae7e7e664c2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `FK_43f589d593a209f52687cdb72ca` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_547efe1d238f8fa27c33d1787d2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_b2ad8dbea887a57629077390477` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `balances`
--
ALTER TABLE `balances`
  ADD CONSTRAINT `FK_6f36fb7c6781ebb92af6d59e852` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `careers`
--
ALTER TABLE `careers`
  ADD CONSTRAINT `FK_8c428a1fcc64d8e078c4f7ad5ec` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `extra_scores`
--
ALTER TABLE `extra_scores`
  ADD CONSTRAINT `FK_8ad20c9044c3270236cdf049779` FOREIGN KEY (`user_subject_id`) REFERENCES `user_subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `FK_4334f6be2d7d841a9d5205a100e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lost_objects`
--
ALTER TABLE `lost_objects`
  ADD CONSTRAINT `FK_a31700e239bc921a392a0b7f583` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_e715723bc6085f53eccbeb318ec` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `FK_35ed3bdcded07e4ffc4e19ff8cc` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK_9a8a82462cab47c73d25f49261f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `FK_04c4741314898262b1774eb99d6` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_47414a1661e6598319de904375e` FOREIGN KEY (`offer_category_id`) REFERENCES `offer_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_560b98e6ccd362b85c867e64fa1` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ce647f46768e77ebab79e0c908c` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `opinions`
--
ALTER TABLE `opinions`
  ADD CONSTRAINT `FK_13b2d8d8323fec8685236a8a989` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_be8165136c28d39898126bf7ae5` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `opinion_answers`
--
ALTER TABLE `opinion_answers`
  ADD CONSTRAINT `FK_069f952ea4eff3b4252e7a156e5` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_f7fa8f84c51b138577e094f7046` FOREIGN KEY (`opinion_id`) REFERENCES `opinions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `opinion_tags`
--
ALTER TABLE `opinion_tags`
  ADD CONSTRAINT `FK_cc8fd30b1345e8e69809d98e2a4` FOREIGN KEY (`opinion_id`) REFERENCES `opinions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ec0cf1f60af65eb25dd9f1a0910` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `FK_78844f2d9f8da7d87d8dbff4794` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_bb3c0d4d005294aefbc04bc8840` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d0d379066881717760ad9971b1d` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_d2d3d01414ae80b7058d5ad0ea2` FOREIGN KEY (`resource_category_id`) REFERENCES `resource_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `FK_32bcd595a362cb613cb3119bab0` FOREIGN KEY (`subject_category_id`) REFERENCES `subject_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subject_categories`
--
ALTER TABLE `subject_categories`
  ADD CONSTRAINT `FK_14c43ac8708eae55ec3e199d06c` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subject_parents`
--
ALTER TABLE `subject_parents`
  ADD CONSTRAINT `FK_7f21c6c680dc01f6c52f6abf65f` FOREIGN KEY (`subject_parent_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_c4155593cc2b87db79eac294d0d` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_595e3ec68870fff745c8dcabe7a` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_b1aae736b7c5d6925efa8563527` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FK_87b8888186ca9769c960e926870` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_b23c65e50a758245a33ee35fda1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_subjects`
--
ALTER TABLE `user_subjects`
  ADD CONSTRAINT `FK_14f1432e6cd4fbaca293844bfdd` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_420c413caf5877b2d1417ad9cc3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
