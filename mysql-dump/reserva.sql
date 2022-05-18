-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-05-2022 a las 20:19:18
-- Versión del servidor: 8.0.27-0ubuntu0.21.04.1
-- Versión de PHP: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reserva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authentication_user`
--

CREATE TABLE `authentication_user` (
  `id` bigint NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authentication_user`
--

INSERT INTO `authentication_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `email`, `is_active`, `is_staff`, `created_at`, `updated_at`) VALUES
(1, 'pbkdf2_sha256$320000$71AgCmItOVo7CbBM9uLfa2$69tRUmnUod3+BjY4zdAX4UoAQqQrnFlZ9/YPzg0r1mA=', '2022-05-10 20:09:29.951369', 1, 'admin', 'admin@gmail.com', 1, 1, '2022-02-10 11:45:49.024156', '2022-02-10 11:45:49.032051'),
(2, 'pbkdf2_sha256$320000$1ei0nkiVSWMhWTkMvqyRN2$RyD90R7Gl6cV+f/X8EEM2KL/4yfdfPxYw5UDDD4oCBw=', NULL, 0, 'Abel', 'abel@gmail.com', 1, 0, '2022-02-10 15:16:56.043485', '2022-02-10 15:16:56.043510'),
(3, 'pbkdf2_sha256$320000$1UIi2gjb6mbYvmYKtmtgEB$i8MdMRibitzTSzX54DSc09jQP2+fpGuzfOHEk3lhoQM=', NULL, 0, 'Pedro', 'pedro@gmail.com', 1, 0, '2022-02-17 17:54:46.785460', '2022-02-17 17:54:46.785494'),
(4, 'pbkdf2_sha256$320000$0XEmE907En97UJKh1WCvBb$zFD335JLxJsC5SFtdkqY0MXNBkCXBq+2PR/xW2oqAyM=', NULL, 0, 'Laura', 'laura@gmail.com', 1, 0, '2022-02-21 16:01:08.567484', '2022-02-21 16:01:08.567525'),
(5, 'pbkdf2_sha256$320000$dOs4RAdNvMTDQxvQR2ajDZ$JORVKdygJayuSsUjbzZEMLd+3s8JU3/L69GugTlZgk8=', NULL, 0, 'Eliot', 'eliot@gmail.com', 1, 0, '2022-02-21 16:53:41.795406', '2022-02-21 16:53:41.795428');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authentication_user_groups`
--

CREATE TABLE `authentication_user_groups` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authentication_user_user_permissions`
--

CREATE TABLE `authentication_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add bike', 6, 'add_bike'),
(22, 'Can change bike', 6, 'change_bike'),
(23, 'Can delete bike', 6, 'delete_bike'),
(24, 'Can view bike', 6, 'view_bike'),
(25, 'Can add station', 7, 'add_station'),
(26, 'Can change station', 7, 'change_station'),
(27, 'Can delete station', 7, 'delete_station'),
(28, 'Can view station', 7, 'view_station'),
(29, 'Can add slot', 8, 'add_slot'),
(30, 'Can change slot', 8, 'change_slot'),
(31, 'Can delete slot', 8, 'delete_slot'),
(32, 'Can view slot', 8, 'view_slot'),
(33, 'Can add incident', 9, 'add_incident'),
(34, 'Can change incident', 9, 'change_incident'),
(35, 'Can delete incident', 9, 'delete_incident'),
(36, 'Can view incident', 9, 'view_incident'),
(37, 'Can add profile', 10, 'add_profile'),
(38, 'Can change profile', 10, 'change_profile'),
(39, 'Can delete profile', 10, 'delete_profile'),
(40, 'Can view profile', 10, 'view_profile'),
(41, 'Can add user', 11, 'add_user'),
(42, 'Can change user', 11, 'change_user'),
(43, 'Can delete user', 11, 'delete_user'),
(44, 'Can view user', 11, 'view_user'),
(45, 'Can add rent', 12, 'add_rent'),
(46, 'Can change rent', 12, 'change_rent'),
(47, 'Can delete rent', 12, 'delete_rent'),
(48, 'Can view rent', 12, 'view_rent'),
(49, 'Can add notification', 13, 'add_notification'),
(50, 'Can change notification', 13, 'change_notification'),
(51, 'Can delete notification', 13, 'delete_notification'),
(52, 'Can view notification', 13, 'view_notification');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bikes_bike`
--

CREATE TABLE `bikes_bike` (
  `id` bigint NOT NULL,
  `station_id` bigint NOT NULL,
  `state` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bikes_bike`
--

INSERT INTO `bikes_bike` (`id`, `station_id`, `state`) VALUES
(1, 1, 'Disponible'),
(2, 1, 'Disponible'),
(3, 1, 'Disponible'),
(4, 1, 'Disponible'),
(5, 1, 'Disponible'),
(6, 2, 'Disponible'),
(7, 2, 'Disponible'),
(8, 2, 'Disponible'),
(9, 2, 'Disponible'),
(10, 2, 'Disponible'),
(11, 3, 'Disponible'),
(12, 3, 'Disponible'),
(16, 2, 'Disponible'),
(17, 4, 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL
) ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-10 14:48:29.564215', '1', 'Ayuntamiento', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-02-10 14:48:38.560930', '2', 'Instituto', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-02-10 14:48:45.795545', '1', '1', 1, '[{\"added\": {}}]', 6, 1),
(4, '2022-02-10 15:14:15.464357', '2', '2', 1, '[{\"added\": {}}]', 6, 1),
(5, '2022-02-10 15:14:19.774289', '3', '3', 1, '[{\"added\": {}}]', 6, 1),
(6, '2022-02-10 15:14:23.757808', '4', '4', 1, '[{\"added\": {}}]', 6, 1),
(7, '2022-02-10 15:14:27.448355', '5', '5', 1, '[{\"added\": {}}]', 6, 1),
(8, '2022-02-10 15:14:31.226198', '6', '6', 1, '[{\"added\": {}}]', 6, 1),
(9, '2022-02-10 15:14:36.102361', '7', '7', 1, '[{\"added\": {}}]', 6, 1),
(10, '2022-02-10 15:14:42.663922', '8', '8', 1, '[{\"added\": {}}]', 6, 1),
(11, '2022-02-10 15:14:51.534366', '1', '1', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-02-10 15:14:58.297394', '2', '2', 1, '[{\"added\": {}}]', 8, 1),
(13, '2022-02-10 15:15:09.995790', '3', '3', 1, '[{\"added\": {}}]', 8, 1),
(14, '2022-02-10 15:15:16.099363', '4', '4', 1, '[{\"added\": {}}]', 8, 1),
(15, '2022-02-10 15:15:22.271110', '5', '5', 1, '[{\"added\": {}}]', 8, 1),
(16, '2022-02-10 15:15:29.394771', '6', '6', 1, '[{\"added\": {}}]', 8, 1),
(17, '2022-02-10 15:15:35.960818', '7', '7', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-02-10 15:15:40.651079', '8', '8', 1, '[{\"added\": {}}]', 8, 1),
(19, '2022-02-10 16:37:23.664975', '8', '8', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(20, '2022-02-10 16:37:40.197616', '2', '2', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(21, '2022-02-10 16:37:46.379436', '8', '8', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(22, '2022-02-10 16:37:56.984052', '5', '5', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(23, '2022-02-10 16:38:02.336924', '3', '3', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(24, '2022-02-10 16:38:07.260987', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(25, '2022-02-10 16:43:47.222562', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(26, '2022-02-10 16:43:51.206349', '2', '2', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(27, '2022-02-10 16:43:56.128619', '3', '3', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(28, '2022-02-10 16:43:59.634211', '4', '4', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(29, '2022-02-10 16:44:03.503449', '5', '5', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(30, '2022-02-10 16:44:08.429241', '6', '6', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(31, '2022-02-10 16:44:13.053471', '7', '7', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(32, '2022-02-10 16:44:17.054884', '8', '8', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(33, '2022-02-10 16:45:51.754570', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(34, '2022-02-10 16:45:56.490407', '2', '2', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(35, '2022-02-10 16:46:01.361533', '3', '3', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(36, '2022-02-10 16:46:06.829818', '4', '4', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(37, '2022-02-10 16:46:10.668652', '5', '5', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(38, '2022-02-10 16:46:14.357392', '6', '6', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(39, '2022-02-10 16:46:18.819429', '7', '7', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(40, '2022-02-10 16:46:24.118736', '8', '8', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(41, '2022-02-10 16:46:48.546456', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(42, '2022-02-10 18:19:30.186753', '1', 'Ayuntamiento', 2, '[{\"changed\": {\"fields\": [\"State station\"]}}]', 7, 1),
(43, '2022-02-15 16:35:03.180055', '3', 'Centro de sauld', 1, '[{\"added\": {}}]', 7, 1),
(44, '2022-02-15 16:35:32.774232', '4', 'Plaza del Ayuntamiento', 1, '[{\"added\": {}}]', 7, 1),
(45, '2022-02-15 16:35:56.442499', '5', 'Parque Estación', 1, '[{\"added\": {}}]', 7, 1),
(46, '2022-02-15 16:36:09.957820', '6', 'Parque Derrota', 1, '[{\"added\": {}}]', 7, 1),
(47, '2022-02-15 16:37:22.774966', '1', 'Ayuntamiento', 2, '[{\"changed\": {\"fields\": [\"Image url\"]}}]', 7, 1),
(48, '2022-02-15 16:38:22.431134', '3', 'Centro de sauld', 2, '[{\"changed\": {\"fields\": [\"Image url\"]}}]', 7, 1),
(49, '2022-02-15 16:39:52.908110', '4', 'Colegio Primaria', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Location\", \"Image url\"]}}]', 7, 1),
(50, '2022-02-15 16:40:36.126757', '5', 'Parque Estación', 2, '[{\"changed\": {\"fields\": [\"Image url\"]}}]', 7, 1),
(51, '2022-02-15 16:59:09.424906', '9', '9', 1, '[{\"added\": {}}]', 6, 1),
(52, '2022-02-15 16:59:13.630553', '10', '10', 1, '[{\"added\": {}}]', 6, 1),
(53, '2022-02-15 16:59:23.503071', '9', '9', 1, '[{\"added\": {}}]', 8, 1),
(54, '2022-02-15 16:59:29.695767', '10', '10', 1, '[{\"added\": {}}]', 8, 1),
(55, '2022-02-15 16:59:51.012172', '11', '11', 1, '[{\"added\": {}}]', 6, 1),
(56, '2022-02-15 16:59:56.814188', '12', '12', 1, '[{\"added\": {}}]', 6, 1),
(57, '2022-02-15 17:00:11.901107', '13', '13', 1, '[{\"added\": {}}]', 6, 1),
(58, '2022-02-15 17:00:16.008259', '14', '14', 1, '[{\"added\": {}}]', 6, 1),
(59, '2022-02-15 17:00:20.037049', '15', '15', 1, '[{\"added\": {}}]', 6, 1),
(60, '2022-02-15 17:00:28.652548', '11', '11', 1, '[{\"added\": {}}]', 8, 1),
(61, '2022-02-15 17:00:39.863251', '12', '12', 1, '[{\"added\": {}}]', 8, 1),
(62, '2022-02-15 17:01:11.883716', '13', '13', 1, '[{\"added\": {}}]', 8, 1),
(63, '2022-02-15 17:01:21.051832', '14', '14', 1, '[{\"added\": {}}]', 8, 1),
(64, '2022-02-15 17:01:27.904224', '15', '15', 1, '[{\"added\": {}}]', 8, 1),
(65, '2022-02-15 17:02:21.175551', '15', '15', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(66, '2022-02-15 17:02:24.621640', '14', '14', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(67, '2022-02-15 17:02:28.291780', '13', '13', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(68, '2022-02-15 17:02:32.949000', '12', '12', 2, '[{\"changed\": {\"fields\": [\"Slot state\"]}}]', 8, 1),
(69, '2022-02-15 17:44:16.373341', '5', 'Parque', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(70, '2022-02-15 17:44:23.089488', '3', 'Hospital', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(71, '2022-02-15 17:44:30.815718', '4', 'Colegio', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(72, '2022-02-15 17:44:44.002094', '6', 'Parque_Derrota', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(73, '2022-02-22 14:58:03.195729', '16', '16', 1, '[{\"added\": {}}]', 6, 1),
(74, '2022-02-22 14:58:07.609289', '17', '17', 1, '[{\"added\": {}}]', 6, 1),
(75, '2022-02-22 14:58:10.784682', '18', '18', 1, '[{\"added\": {}}]', 6, 1),
(76, '2022-02-22 14:58:15.622334', '19', '19', 1, '[{\"added\": {}}]', 6, 1),
(77, '2022-02-22 14:59:22.712923', '20', '20', 1, '[{\"added\": {}}]', 6, 1),
(78, '2022-05-10 20:10:28.684977', '6', 'Parque_Derrota', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(79, '2022-05-10 20:33:50.448515', '4', 'Colegio', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(80, '2022-05-10 20:35:02.638992', '3', 'Hospital', 2, '[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]', 7, 1),
(81, '2022-05-16 17:39:40.526867', '15', '15', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(82, '2022-05-16 17:39:58.824517', '15', '15', 2, '[{\"changed\": {\"fields\": [\"Id bike\"]}}]', 8, 1),
(83, '2022-05-16 17:40:11.702399', '1', '1', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(84, '2022-05-16 17:40:19.744144', '2', '2', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(85, '2022-05-16 17:40:27.426886', '3', '3', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(86, '2022-05-16 17:40:27.527359', '3', '3', 2, '[]', 8, 1),
(87, '2022-05-16 17:40:35.174742', '4', '4', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(88, '2022-05-16 17:40:44.181252', '5', '5', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(89, '2022-05-16 17:40:50.801467', '6', '6', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(90, '2022-05-16 17:40:57.338439', '7', '7', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(91, '2022-05-16 17:41:03.310908', '8', '8', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(92, '2022-05-16 17:41:10.080973', '9', '9', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(93, '2022-05-16 17:41:16.595918', '10', '10', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(94, '2022-05-16 17:41:23.403056', '11', '11', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(95, '2022-05-16 17:41:29.491757', '12', '12', 2, '[{\"changed\": {\"fields\": [\"Id bike\", \"Slot state\"]}}]', 8, 1),
(96, '2022-05-16 17:41:46.019982', '13', '13', 2, '[]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(11, 'authentication', 'user'),
(6, 'bikes', 'bike'),
(4, 'contenttypes', 'contenttype'),
(13, 'notifications', 'notification'),
(10, 'profiles', 'profile'),
(12, 'rents', 'rent'),
(5, 'sessions', 'session'),
(9, 'stations', 'incident'),
(8, 'stations', 'slot'),
(7, 'stations', 'station');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-16 19:50:43.440814'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-02-16 19:50:43.546285'),
(3, 'auth', '0001_initial', '2022-02-16 19:50:43.917107'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-02-16 19:50:44.005332'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-02-16 19:50:44.028781'),
(6, 'auth', '0004_alter_user_username_opts', '2022-02-16 19:50:44.052652'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-02-16 19:50:44.080150'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-02-16 19:50:44.089216'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-02-16 19:50:44.110896'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-02-16 19:50:44.134076'),
(11, 'authentication', '0001_initial', '2022-02-16 19:50:44.558242'),
(12, 'admin', '0001_initial', '2022-02-16 19:50:44.767499'),
(13, 'admin', '0002_logentry_remove_auto_add', '2022-02-16 19:50:44.798883'),
(14, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-16 19:50:44.833752'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-02-16 19:50:44.863653'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-02-16 19:50:44.924110'),
(17, 'auth', '0011_update_proxy_permissions', '2022-02-16 19:50:44.964264'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-02-16 19:50:44.997815'),
(19, 'authentication', '0002_alter_user_id', '2022-02-16 19:50:45.699589'),
(20, 'stations', '0001_initial', '2022-02-16 19:50:45.737898'),
(21, 'stations', '0002_station_bikes_station_image_url', '2022-02-16 19:50:45.833254'),
(22, 'bikes', '0001_initial', '2022-02-16 19:50:45.871684'),
(23, 'stations', '0003_slot', '2022-02-16 19:50:46.036970'),
(24, 'bikes', '0002_alter_bike_state', '2022-02-16 19:50:46.052442'),
(25, 'bikes', '0003_alter_bike_station', '2022-02-16 19:50:46.242231'),
(26, 'stations', '0004_alter_slot_id_bike', '2022-02-16 19:50:46.260452'),
(27, 'stations', '0005_slot_slot_state_alter_slot_id_bike', '2022-02-16 19:50:46.279965'),
(28, 'stations', '0006_alter_slot_id_bike', '2022-02-16 19:50:46.508127'),
(29, 'stations', '0007_slot_slot_state', '2022-02-16 19:50:46.516589'),
(30, 'stations', '0008_alter_slot_id_bike', '2022-02-16 19:50:46.655784'),
(31, 'stations', '0009_slot_slot_state', '2022-02-16 19:50:46.664473'),
(32, 'stations', '0010_slot_slot_state', '2022-02-16 19:50:46.673328'),
(33, 'stations', '0011_alter_slot_id_bike', '2022-02-16 19:50:46.806489'),
(34, 'stations', '0012_slot_slot_state', '2022-02-16 19:50:46.873550'),
(35, 'stations', '0013_alter_slot_id_bike', '2022-02-16 19:50:47.055753'),
(36, 'stations', '0014_station_state_station', '2022-02-16 19:50:47.141358'),
(37, 'profiles', '0001_initial', '2022-02-16 19:50:47.281659'),
(38, 'profiles', '0002_alter_profile_id', '2022-02-16 19:50:47.377783'),
(39, 'stations', '0015_incident', '2022-02-16 19:50:47.588867'),
(40, 'stations', '0016_incident_state', '2022-02-16 19:50:47.663668'),
(41, 'notifications', '0001_initial', '2022-02-16 19:50:47.883703'),
(42, 'notifications', '0002_alter_notification_text', '2022-02-16 19:50:47.933947'),
(43, 'rents', '0001_initial', '2022-02-16 19:50:48.227485'),
(44, 'rents', '0002_alter_rent_user', '2022-02-16 19:50:48.280788'),
(45, 'rents', '0003_alter_rent_user', '2022-02-16 19:50:48.525814'),
(46, 'rents', '0004_alter_rent_bike', '2022-02-16 19:50:48.799261'),
(47, 'rents', '0005_alter_rent_station', '2022-02-16 19:50:49.091119'),
(48, 'rents', '0006_alter_rent_day_alter_rent_hour', '2022-02-16 19:50:49.262206'),
(49, 'rents', '0007_alter_rent_options_remove_rent_day_remove_rent_hour_and_more', '2022-02-16 19:50:49.599932'),
(50, 'rents', '0008_alter_rent_bike_alter_rent_station_alter_rent_user', '2022-02-16 19:50:50.475364'),
(51, 'rents', '0009_alter_rent_bike_alter_rent_station_alter_rent_user', '2022-02-16 19:50:50.589388'),
(52, 'rents', '0010_alter_rent_bike_alter_rent_station_alter_rent_user', '2022-02-16 19:50:51.061944'),
(53, 'sessions', '0001_initial', '2022-02-16 19:50:51.129701'),
(54, 'notifications', '0003_notification_state', '2022-02-16 20:06:39.581478'),
(55, 'notifications', '0004_rename_user_notification_user_admin', '2022-02-17 15:20:32.774579'),
(56, 'notifications', '0005_alter_notification_user_admin', '2022-02-17 15:27:15.390839'),
(57, 'stations', '0017_alter_incident_state', '2022-02-18 14:50:08.676653'),
(58, 'stations', '0018_station_latitude_station_longitude', '2022-05-10 20:03:30.462333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ed3dtqeuzb17v5ztekccnp0hfelkqax', '.eJxVjMsOgjAQRf-la9MMMOnDpXu_gQy9U4saSCisjP-uJCx0e88592V62dbSb1WXfoQ5m8acfrdB0kOnHeAu0222aZ7WZRzsrtiDVnudoc_L4f4dFKnlW-dOOOasIYKQiByzCy65TNzAKzo4EENb8p4ZbRLxGJywBorgYN4f8nw4Og:1nIAjz:IG-l8gfyUKugL50hU1xM8i82bOKw2TysttB0u2Reg8E', '2022-02-24 14:48:11.350459'),
('r8euibq2e0dsdpx1ux0c58wncm6xk8n0', '.eJxVjMsOgjAQRf-la9MMMOnDpXu_gQy9U4saSCisjP-uJCx0e88592V62dbSb1WXfoQ5m8acfrdB0kOnHeAu0222aZ7WZRzsrtiDVnudoc_L4f4dFKnlW-dOOOasIYKQiByzCy65TNzAKzo4EENb8p4ZbRLxGJywBorgYN4f8nw4Og:1nJzJW:ap3hQqFH5Am4Otbht7U1FguoEXGMekf63KIilYfroaE', '2022-03-01 15:00:22.082115'),
('raaotmdtj171phxke19yr3wfjunoxdpc', '.eJxVjMsOgjAQRf-la9MMMOnDpXu_gQy9U4saSCisjP-uJCx0e88592V62dbSb1WXfoQ5m8acfrdB0kOnHeAu0222aZ7WZRzsrtiDVnudoc_L4f4dFKnlW-dOOOasIYKQiByzCy65TNzAKzo4EENb8p4ZbRLxGJywBorgYN4f8nw4Og:1noWAj:ivKBmYnhF7xyS9RIpsYDivAWu6UhwapQ8Z2sN17SnQY', '2022-05-24 20:09:29.954647');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications_notification`
--

CREATE TABLE `notifications_notification` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `text` varchar(500) NOT NULL,
  `incident_id` bigint NOT NULL,
  `user_admin_id` bigint NOT NULL,
  `state` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notifications_notification`
--

INSERT INTO `notifications_notification` (`id`, `created_at`, `updated_at`, `text`, `incident_id`, `user_admin_id`, `state`) VALUES
(18, '2022-02-17 17:42:26.765300', '2022-02-18 12:37:54.373016', 'Estación habilitada de nuevo, gracias por informar', 6, 1, 'Leída'),
(19, '2022-02-17 17:53:12.227622', '2022-02-18 12:35:22.810566', 'No entiendo nada de lo que has escrito', 7, 1, 'Leída'),
(20, '2022-02-17 17:55:39.427513', '2022-02-17 17:55:39.427645', 'Vale, la deshabilitamos, gracias por informar', 8, 1, 'No leído'),
(21, '2022-02-17 17:59:08.200206', '2022-02-17 17:59:08.200355', 'asasass', 10, 1, 'No leído'),
(22, '2022-02-17 18:22:04.245151', '2022-02-17 18:22:04.245211', 'asasas', 11, 1, 'No leído'),
(23, '2022-02-18 12:05:08.682387', '2022-02-18 12:35:10.772064', 'Vale tete', 15, 1, 'Leída'),
(24, '2022-02-18 12:38:29.804562', '2022-02-18 12:38:58.523566', 'asasas', 15, 1, 'Leída'),
(25, '2022-02-18 12:38:31.514825', '2022-02-18 12:39:02.329447', 'asasasasasas', 15, 1, 'Leída'),
(26, '2022-02-18 12:38:33.106954', '2022-02-18 12:39:00.615401', 'asasasasasas', 15, 1, 'Leída'),
(27, '2022-02-18 12:38:34.156309', '2022-02-18 12:39:19.802438', 'asasasasasas', 15, 1, 'Leída'),
(28, '2022-02-18 12:38:35.167126', '2022-02-18 12:39:21.153287', 'asasasasasas', 15, 1, 'Leída'),
(29, '2022-02-18 12:38:36.186202', '2022-02-18 12:39:22.094652', 'asasasasasas', 15, 1, 'Leída'),
(30, '2022-02-18 12:40:58.408917', '2022-02-18 12:41:26.364733', 'asasassdsfdsfsfd', 15, 1, 'Leída'),
(31, '2022-02-18 12:41:01.065266', '2022-02-18 12:41:28.188431', 'asasassdsfdsfsfd', 15, 1, 'Leída'),
(32, '2022-02-18 12:41:02.646545', '2022-02-18 12:41:35.885726', 'asasassdsfdsfsfd', 15, 1, 'Leída'),
(33, '2022-02-18 12:41:03.741629', '2022-02-18 12:41:32.095138', 'asasassdsfdsfsfd', 15, 1, 'Leída'),
(34, '2022-02-18 12:41:04.722737', '2022-02-18 12:41:29.717032', 'asasassdsfdsfsfd', 15, 1, 'Leída'),
(35, '2022-02-18 12:41:05.854341', '2022-02-18 12:41:37.700999', 'asasassdsfdsfsfd', 15, 1, 'Leída'),
(36, '2022-02-18 12:52:54.306942', '2022-02-18 12:53:17.524065', '', 15, 1, 'Leída'),
(37, '2022-02-18 12:52:56.229394', '2022-02-18 12:53:20.375786', 'asasas', 15, 1, 'Leída'),
(38, '2022-02-18 12:52:58.046559', '2022-02-18 12:53:21.667840', 'asasasdadad', 15, 1, 'Leída'),
(39, '2022-02-18 12:52:59.783290', '2022-02-18 12:53:23.941364', 'asasasdadadasd', 15, 1, 'Leída'),
(40, '2022-02-18 12:53:00.968539', '2022-02-18 12:53:25.119128', 'asasasdadadasd', 15, 1, 'Leída'),
(41, '2022-02-18 12:53:02.058340', '2022-02-18 12:53:26.933068', 'asasasdadadasd', 15, 1, 'Leída'),
(42, '2022-02-18 12:53:03.351914', '2022-02-18 12:53:26.003436', 'asasasdadadasd', 15, 1, 'Leída'),
(63, '2022-02-18 15:06:26.033574', '2022-02-18 15:06:43.412030', 'Gracias por informar.', 16, 1, 'Leída'),
(64, '2022-02-21 11:05:36.178865', '2022-02-21 11:05:51.228981', 'Okey', 17, 1, 'Leída'),
(65, '2022-02-21 13:33:55.475964', '2022-02-21 13:34:29.668299', 'asasasasasas', 18, 1, 'Leída'),
(66, '2022-02-21 14:49:18.548434', '2022-02-21 14:49:38.004984', 'Hola', 19, 1, 'Leída'),
(67, '2022-02-21 15:18:12.765720', '2022-02-21 16:32:44.994080', 'Okey', 20, 1, 'Leída'),
(68, '2022-02-21 16:32:23.288933', '2022-02-21 16:32:42.914103', 'sdsdsd', 23, 1, 'Leída'),
(69, '2022-02-21 16:32:25.063064', '2022-02-21 16:32:41.713656', 'sdsdsdsdsd', 22, 1, 'Leída'),
(70, '2022-02-21 16:32:26.608087', '2022-02-21 16:32:37.134614', 'sdsdsdsdsd', 21, 1, 'Leída'),
(71, '2022-02-21 16:56:05.906359', '2022-02-21 16:56:05.906412', 'sasas', 26, 1, 'No leído'),
(72, '2022-02-21 16:57:07.391596', '2022-02-21 17:29:17.992377', 'swwdaswa', 24, 1, 'Leída'),
(73, '2022-02-21 17:29:08.371197', '2022-02-21 17:29:08.371268', 'Okey, estamos trabajando en ello', 25, 1, 'No leído'),
(74, '2022-02-21 17:42:23.898029', '2022-02-21 17:42:34.611401', 'Hola', 27, 1, 'Leída'),
(75, '2022-02-22 16:24:21.362559', '2022-02-22 16:24:40.593406', 'Hola', 28, 1, 'Leída'),
(76, '2022-05-07 20:14:23.478402', '2022-05-07 20:14:32.555131', 'asasas', 29, 1, 'Leída'),
(77, '2022-05-13 09:19:42.689382', '2022-05-13 09:19:53.551407', 'Okey, lo tenemos en cuenta!', 30, 1, 'Leída');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profiles_profile`
--

CREATE TABLE `profiles_profile` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `bio` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profiles_profile`
--

INSERT INTO `profiles_profile` (`id`, `created_at`, `updated_at`, `bio`, `image`, `user_id`) VALUES
(1, '2022-02-10 11:45:49.029055', '2022-02-10 11:45:49.029083', '', '', 1),
(2, '2022-02-10 15:16:56.047939', '2022-02-10 15:16:56.048017', '', '', 2),
(3, '2022-02-17 17:54:46.790331', '2022-02-17 17:54:46.790361', '', '', 3),
(4, '2022-02-21 16:01:08.571205', '2022-02-21 16:01:08.571233', '', '', 4),
(5, '2022-02-21 16:53:41.799087', '2022-02-21 16:53:41.799104', '', '', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rents_rent`
--

CREATE TABLE `rents_rent` (
  `id` bigint NOT NULL,
  `bike_id` bigint NOT NULL,
  `station_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rents_rent`
--

INSERT INTO `rents_rent` (`id`, `bike_id`, `station_id`, `user_id`, `created_at`, `updated_at`) VALUES
(131, 3, 1, 2, '2022-02-17 15:25:10.856852', '2022-02-17 15:25:10.856994'),
(132, 3, 1, 3, '2022-02-17 17:59:35.425491', '2022-02-17 17:59:35.425638'),
(133, 3, 1, 3, '2022-02-17 18:00:58.654672', '2022-02-17 18:00:58.654817'),
(134, 4, 1, 3, '2022-02-17 18:03:17.826720', '2022-02-17 18:03:17.826770'),
(135, 3, 1, 3, '2022-02-17 18:04:51.065965', '2022-02-17 18:04:51.066089'),
(136, 9, 2, 2, '2022-02-17 20:01:04.318143', '2022-02-17 20:01:04.318196'),
(137, 8, 2, 2, '2022-02-17 20:01:08.095245', '2022-02-17 20:01:08.095350'),
(138, 3, 1, 2, '2022-02-18 12:08:29.491251', '2022-02-18 12:08:29.491359'),
(139, 3, 1, 2, '2022-02-21 13:35:31.862057', '2022-02-21 13:35:31.862219'),
(140, 4, 1, 2, '2022-02-21 13:35:36.300655', '2022-02-21 13:35:36.300760'),
(141, 4, 1, 2, '2022-02-21 14:48:23.363780', '2022-02-21 14:48:23.363873'),
(142, 5, 3, 2, '2022-02-21 15:19:19.546279', '2022-02-21 15:19:19.546389'),
(143, 3, 1, 2, '2022-02-21 15:19:30.521406', '2022-02-21 15:19:30.521502'),
(144, 5, 1, 2, '2022-02-21 15:56:16.529790', '2022-02-21 15:56:16.529955'),
(145, 4, 1, 4, '2022-02-21 16:01:14.923484', '2022-02-21 16:01:14.923660'),
(146, 12, 3, 4, '2022-02-21 16:01:19.335455', '2022-02-21 16:01:19.335587'),
(147, 5, 2, 2, '2022-02-21 16:52:50.196324', '2022-02-21 16:52:50.196373'),
(148, 11, 3, 2, '2022-02-21 16:53:00.897894', '2022-02-21 16:53:00.897950'),
(149, 12, 1, 2, '2022-02-21 17:39:53.933500', '2022-02-21 17:39:53.933552'),
(150, 10, 2, 2, '2022-05-16 17:51:16.442514', '2022-05-16 17:51:16.442571'),
(151, 10, 2, 2, '2022-05-16 17:51:21.239636', '2022-05-16 17:51:21.239686'),
(152, 10, 2, 2, '2022-05-16 17:52:39.168071', '2022-05-16 17:52:39.168102'),
(153, 10, 2, 2, '2022-05-16 17:57:41.375590', '2022-05-16 17:57:41.375630'),
(154, 10, 2, 2, '2022-05-16 17:59:20.530885', '2022-05-16 17:59:20.530938'),
(155, 10, 2, 2, '2022-05-16 18:03:02.037683', '2022-05-16 18:03:02.037745'),
(156, 10, 2, 2, '2022-05-16 18:06:34.343236', '2022-05-16 18:06:34.343281'),
(157, 10, 2, 2, '2022-05-16 18:07:08.443060', '2022-05-16 18:07:08.443104'),
(158, 10, 2, 2, '2022-05-16 18:08:21.763936', '2022-05-16 18:08:21.763991'),
(159, 10, 2, 2, '2022-05-16 18:09:57.333817', '2022-05-16 18:09:57.333878'),
(160, 10, 2, 2, '2022-05-16 18:10:36.413765', '2022-05-16 18:10:36.413815'),
(161, 10, 2, 2, '2022-05-16 18:10:42.955457', '2022-05-16 18:10:42.955496'),
(162, 10, 2, 2, '2022-05-16 18:11:50.570523', '2022-05-16 18:11:50.570563'),
(163, 10, 2, 2, '2022-05-16 18:11:55.791227', '2022-05-16 18:11:55.791288'),
(164, 10, 2, 2, '2022-05-16 18:13:26.286056', '2022-05-16 18:13:26.286088'),
(165, 10, 2, 2, '2022-05-16 18:24:35.057427', '2022-05-16 18:24:35.057469'),
(166, 10, 2, 2, '2022-05-16 18:25:43.284798', '2022-05-16 18:25:43.284842'),
(167, 10, 2, 2, '2022-05-16 18:27:37.257067', '2022-05-16 18:27:37.257121'),
(168, 10, 2, 2, '2022-05-16 18:36:53.558987', '2022-05-16 18:36:53.559046'),
(169, 10, 2, 2, '2022-05-16 18:37:19.885772', '2022-05-16 18:37:19.885830'),
(170, 10, 2, 2, '2022-05-16 18:41:34.143572', '2022-05-16 18:41:34.143607'),
(171, 10, 2, 2, '2022-05-16 18:51:33.857843', '2022-05-16 18:51:33.857888'),
(172, 10, 2, 2, '2022-05-16 20:29:38.447961', '2022-05-16 20:29:38.448001'),
(173, 1, 1, 2, '2022-05-16 20:41:20.958381', '2022-05-16 20:41:20.958452'),
(174, 1, 1, 2, '2022-05-16 20:42:55.995149', '2022-05-16 20:42:55.995201'),
(175, 2, 1, 2, '2022-05-16 20:43:59.007220', '2022-05-16 20:43:59.007271'),
(176, 1, 1, 2, '2022-05-16 20:45:29.752830', '2022-05-16 20:45:29.752885'),
(177, 5, 1, 2, '2022-05-16 20:47:50.306484', '2022-05-16 20:47:50.306524');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stations_incident`
--

CREATE TABLE `stations_incident` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `text` varchar(500) NOT NULL,
  `station_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `state` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stations_incident`
--

INSERT INTO `stations_incident` (`id`, `created_at`, `updated_at`, `text`, `station_id`, `user_id`, `state`) VALUES
(6, '2022-02-17 17:41:48.028878', '2022-02-18 14:52:35.124631', 'Estacion inundada', 1, 2, 'Hola'),
(7, '2022-02-17 17:52:45.734312', '2022-02-18 14:56:34.289679', 'ASASASASAS', 1, 2, 'Hola'),
(8, '2022-02-17 17:55:00.691751', '2022-02-18 14:49:12.761405', 'Estacion inaccesible por las lluvias', 1, 3, 'Hola'),
(9, '2022-02-17 17:57:54.833009', '2022-02-18 14:56:21.481262', 'As', 1, 3, 'Hola'),
(10, '2022-02-17 17:58:45.227277', '2022-02-18 14:56:32.459412', '', 1, 3, 'Hola'),
(11, '2022-02-17 18:01:03.065506', '2022-02-18 14:56:30.440141', '', 1, 3, 'Hola'),
(12, '2022-02-18 12:01:56.054775', '2022-02-18 14:56:28.627547', '', 1, 2, 'Hola'),
(13, '2022-02-18 12:02:01.497067', '2022-02-18 14:56:26.331326', '', 1, 2, 'Hola'),
(14, '2022-02-18 12:03:55.069827', '2022-02-18 14:52:06.712306', '', 1, 2, 'Hola'),
(15, '2022-02-18 12:04:13.813773', '2022-02-18 14:50:55.408826', '', 1, 2, 'Hola'),
(16, '2022-02-18 15:06:05.796722', '2022-02-18 15:06:26.038045', 'Estación inundada.', 1, 2, 'Leida'),
(17, '2022-02-21 11:05:22.193742', '2022-02-21 11:05:36.180664', 'Estacion inaccesiuble', 1, 2, 'Leida'),
(18, '2022-02-21 13:33:38.328797', '2022-02-21 13:33:55.499230', 'Estación inundada', 1, 2, 'Leida'),
(19, '2022-02-21 14:48:39.207731', '2022-02-21 14:49:18.552718', 'Hola', 1, 2, 'Leida'),
(20, '2022-02-21 15:17:08.349261', '2022-02-21 15:18:12.771062', 'Estacion inundada por las lluvias', 1, 2, 'Leida'),
(21, '2022-02-21 16:32:07.937275', '2022-02-21 16:32:26.631135', 'xvxxv', 2, 2, 'Leida'),
(22, '2022-02-21 16:32:09.887027', '2022-02-21 16:32:25.087637', 'xvxxvx', 2, 2, 'Leida'),
(23, '2022-02-21 16:32:11.913105', '2022-02-21 16:32:23.306358', 'xvxxvxxv', 2, 2, 'Leida'),
(24, '2022-02-21 16:46:22.171717', '2022-02-21 16:57:07.395429', 'Yepa', 2, 4, 'Leida'),
(25, '2022-02-21 16:46:25.998127', '2022-02-21 17:29:08.375803', 'Yepa', 2, 4, 'Leida'),
(26, '2022-02-21 16:54:04.143756', '2022-02-21 16:56:05.909835', 'Estacion inaccesible, con muchos slots fuera de servicio.', 2, 5, 'Leida'),
(27, '2022-02-21 17:40:17.194815', '2022-02-21 17:42:23.900510', 'Hola', 1, 2, 'Leida'),
(28, '2022-02-22 16:23:04.225535', '2022-02-22 16:24:21.366224', 'Hola', 1, 2, 'Leida'),
(29, '2022-05-07 20:14:11.025436', '2022-05-07 20:14:23.498077', 'asasas', 2, 2, 'Leida'),
(30, '2022-05-13 09:19:17.280337', '2022-05-13 09:19:42.692467', 'Estacion en mal esatdo!\n', 2, 2, 'Leida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stations_slot`
--

CREATE TABLE `stations_slot` (
  `id` bigint NOT NULL,
  `id_bike_id` bigint DEFAULT NULL,
  `station_id` bigint NOT NULL,
  `slot_state` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stations_slot`
--

INSERT INTO `stations_slot` (`id`, `id_bike_id`, `station_id`, `slot_state`) VALUES
(1, 5, 1, 'OCUPADO'),
(2, 2, 1, 'OCUPADO'),
(3, 3, 1, 'OCUPADO'),
(4, 4, 1, 'OCUPADO'),
(5, NULL, 1, 'LIBRE'),
(6, NULL, 2, 'LIBRE'),
(7, NULL, 2, 'LIBRE'),
(8, 10, 2, 'OCUPADO'),
(9, NULL, 2, 'LIBRE'),
(10, NULL, 2, 'LIBRE'),
(11, 11, 3, 'OCUPADO'),
(12, 12, 3, 'OCUPADO'),
(13, NULL, 3, 'LIBRE'),
(14, NULL, 3, 'LIBRE'),
(15, NULL, 3, 'LIBRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stations_station`
--

CREATE TABLE `stations_station` (
  `id` bigint NOT NULL,
  `name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `available_bikes` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `bikes` varchar(200) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `state_station` varchar(200) NOT NULL,
  `latitude` decimal(30,20) NOT NULL,
  `longitude` decimal(30,20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stations_station`
--

INSERT INTO `stations_station` (`id`, `name`, `location`, `available_bikes`, `state`, `bikes`, `image_url`, `state_station`, `latitude`, `longitude`) VALUES
(1, 'Ayuntamiento', 'Calle Norte Bocairent', '5', 'Disponible', 'Disponible', './ayuntamiento.jpeg', 'ON', '0.00000000000000000000', '0.00000000000000000000'),
(2, 'Instituto', 'Calle Nueva', '4', 'Disponible', 'Disponible', './descarga.jpeg', 'ON', '0.00000000000000000000', '0.00000000000000000000'),
(3, 'Hospital', 'Calle Cervantes', '5', 'Disponible', 'Disponible', './salud.jpg', 'ON', '38.76499922094369000000', '-0.61314991416586170000'),
(4, 'Colegio', 'Calle Lluis Vives', '5', 'Disponible', 'Disponible', './colegio.jpeg', 'ON', '38.76485287267778000000', '-0.61685105753033420000'),
(5, 'Parque', 'Calle Nueva', '5', 'Disponible', 'Disponible', './estacion.jpeg', 'ON', '0.00000000000000000000', '0.00000000000000000000'),
(6, 'Parque_Derrota', 'Calle Derrota', '5', 'Disponible', 'Disponible', './descarga.jpeg', 'ON', '38.76413358541374500000', '-0.61851340212575830000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authentication_user`
--
ALTER TABLE `authentication_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_user_groups_user_id_group_id_8af031ac_uniq` (`user_id`,`group_id`),
  ADD KEY `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authentication_user_user_user_id_permission_id_ec51b09f_uniq` (`user_id`,`permission_id`),
  ADD KEY `authentication_user__permission_id_ea6be19a_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `bikes_bike`
--
ALTER TABLE `bikes_bike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bikes_bike_station_id_068d972a` (`station_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `notifications_notification`
--
ALTER TABLE `notifications_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifi_incident_id_f5d6cdb9_fk_stations_` (`incident_id`),
  ADD KEY `notifications_notification_user_admin_id_fe0b001e` (`user_admin_id`);

--
-- Indices de la tabla `profiles_profile`
--
ALTER TABLE `profiles_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `rents_rent`
--
ALTER TABLE `rents_rent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rents_rent_bike_id_6caf8fbb_fk_bikes_bike_id` (`bike_id`),
  ADD KEY `rents_rent_station_id_6a8490b9_fk_stations_station_id` (`station_id`),
  ADD KEY `rents_rent_user_id_5da619fe_fk_profiles_profile_id` (`user_id`);

--
-- Indices de la tabla `stations_incident`
--
ALTER TABLE `stations_incident`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stations_incident_station_id_73c41126_fk_stations_station_id` (`station_id`),
  ADD KEY `stations_incident_user_id_a8d727ab_fk_profiles_profile_id` (`user_id`);

--
-- Indices de la tabla `stations_slot`
--
ALTER TABLE `stations_slot`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_bike_id` (`id_bike_id`),
  ADD KEY `stations_slot_station_id_5681ed9a_fk_stations_station_id` (`station_id`);

--
-- Indices de la tabla `stations_station`
--
ALTER TABLE `stations_station`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authentication_user`
--
ALTER TABLE `authentication_user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `bikes_bike`
--
ALTER TABLE `bikes_bike`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `notifications_notification`
--
ALTER TABLE `notifications_notification`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `profiles_profile`
--
ALTER TABLE `profiles_profile`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rents_rent`
--
ALTER TABLE `rents_rent`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de la tabla `stations_incident`
--
ALTER TABLE `stations_incident`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `stations_slot`
--
ALTER TABLE `stations_slot`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `stations_station`
--
ALTER TABLE `stations_station`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authentication_user_groups`
--
ALTER TABLE `authentication_user_groups`
  ADD CONSTRAINT `authentication_user_groups_group_id_6b5c44b7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `authentication_user_groups_user_id_30868577_fk` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `authentication_user_user_permissions`
--
ALTER TABLE `authentication_user_user_permissions`
  ADD CONSTRAINT `authentication_user__permission_id_ea6be19a_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `authentication_user_user_permissions_user_id_736ebf7e_fk` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `bikes_bike`
--
ALTER TABLE `bikes_bike`
  ADD CONSTRAINT `bikes_bike_station_id_068d972a_fk_stations_station_id` FOREIGN KEY (`station_id`) REFERENCES `stations_station` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `notifications_notification`
--
ALTER TABLE `notifications_notification`
  ADD CONSTRAINT `notifications_notifi_incident_id_f5d6cdb9_fk_stations_` FOREIGN KEY (`incident_id`) REFERENCES `stations_incident` (`id`),
  ADD CONSTRAINT `notifications_notifi_user_admin_id_fe0b001e_fk_profiles_` FOREIGN KEY (`user_admin_id`) REFERENCES `profiles_profile` (`id`);

--
-- Filtros para la tabla `profiles_profile`
--
ALTER TABLE `profiles_profile`
  ADD CONSTRAINT `profiles_profile_user_id_a3e81f91_fk_authentication_user_id` FOREIGN KEY (`user_id`) REFERENCES `authentication_user` (`id`);

--
-- Filtros para la tabla `rents_rent`
--
ALTER TABLE `rents_rent`
  ADD CONSTRAINT `rents_rent_bike_id_6caf8fbb_fk_bikes_bike_id` FOREIGN KEY (`bike_id`) REFERENCES `bikes_bike` (`id`),
  ADD CONSTRAINT `rents_rent_station_id_6a8490b9_fk_stations_station_id` FOREIGN KEY (`station_id`) REFERENCES `stations_station` (`id`),
  ADD CONSTRAINT `rents_rent_user_id_5da619fe_fk_profiles_profile_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_profile` (`id`);

--
-- Filtros para la tabla `stations_incident`
--
ALTER TABLE `stations_incident`
  ADD CONSTRAINT `stations_incident_station_id_73c41126_fk_stations_station_id` FOREIGN KEY (`station_id`) REFERENCES `stations_station` (`id`),
  ADD CONSTRAINT `stations_incident_user_id_a8d727ab_fk_profiles_profile_id` FOREIGN KEY (`user_id`) REFERENCES `profiles_profile` (`id`);

--
-- Filtros para la tabla `stations_slot`
--
ALTER TABLE `stations_slot`
  ADD CONSTRAINT `stations_slot_id_bike_id_39e880b8_fk_bikes_bike_id` FOREIGN KEY (`id_bike_id`) REFERENCES `bikes_bike` (`id`),
  ADD CONSTRAINT `stations_slot_station_id_5681ed9a_fk_stations_station_id` FOREIGN KEY (`station_id`) REFERENCES `stations_station` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
