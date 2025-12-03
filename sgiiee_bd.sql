-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2025 a las 05:24:44
-- Versión del servidor: 11.5.2-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sgiiee_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add asiento', 7, 'add_asiento'),
(26, 'Can change asiento', 7, 'change_asiento'),
(27, 'Can delete asiento', 7, 'delete_asiento'),
(28, 'Can view asiento', 7, 'view_asiento'),
(29, 'Can add categoria', 8, 'add_categoria'),
(30, 'Can change categoria', 8, 'change_categoria'),
(31, 'Can delete categoria', 8, 'delete_categoria'),
(32, 'Can view categoria', 8, 'view_categoria'),
(33, 'Can add item carrito', 9, 'add_itemcarrito'),
(34, 'Can change item carrito', 9, 'change_itemcarrito'),
(35, 'Can delete item carrito', 9, 'delete_itemcarrito'),
(36, 'Can view item carrito', 9, 'view_itemcarrito'),
(37, 'Can add evento', 10, 'add_evento'),
(38, 'Can change evento', 10, 'change_evento'),
(39, 'Can delete evento', 10, 'delete_evento'),
(40, 'Can view evento', 10, 'view_evento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$qIdAiyEQyMTO8eG4LwsAKT$Nd2rQb8v8gzTUgrBU68UU6Lx/+W1fPO5u0UxuSIvIN4=', '2025-12-02 01:23:09.809054', 1, 'admin', '', '', 'admin_sgiiee@gmail.com', 1, 1, '2025-11-28 21:09:52.775200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
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
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'sgiiee', 'asiento'),
(8, 'sgiiee', 'categoria'),
(10, 'sgiiee', 'evento'),
(9, 'sgiiee', 'itemcarrito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-11-28 21:09:08.633007'),
(2, 'auth', '0001_initial', '2025-11-28 21:09:08.800301'),
(3, 'admin', '0001_initial', '2025-11-28 21:09:08.837083'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-11-28 21:09:08.843129'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-28 21:09:08.859682'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-11-28 21:09:08.890174'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-11-28 21:09:08.909723'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-11-28 21:09:08.923864'),
(9, 'auth', '0004_alter_user_username_opts', '2025-11-28 21:09:08.929873'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-11-28 21:09:08.945894'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-11-28 21:09:08.948899'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-11-28 21:09:08.955184'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-11-28 21:09:08.969752'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-11-28 21:09:08.982839'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-11-28 21:09:09.005150'),
(16, 'auth', '0011_update_proxy_permissions', '2025-11-28 21:09:09.019671'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-11-28 21:09:09.031923'),
(18, 'sessions', '0001_initial', '2025-11-28 21:09:09.056204'),
(19, 'sgiiee', '0001_initial', '2025-11-28 21:09:09.148109'),
(20, 'sgiiee', '0002_evento_forma_recinto', '2025-11-28 21:09:09.164422'),
(21, 'sgiiee', '0003_asiento_pos_x_asiento_pos_y', '2025-11-28 21:09:09.198010'),
(22, 'sgiiee', '0004_asiento_precio_asiento_zona_evento_precio_base_and_more', '2025-12-01 03:24:51.241583'),
(23, 'sgiiee', '0005_rename_precio_base_evento_precio_normal_and_more', '2025-12-02 01:45:09.129616'),
(24, 'sgiiee', '0006_alter_itemcarrito_options_alter_itemcarrito_asiento_and_more', '2025-12-02 03:15:42.964842');

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
('duf9padekybcnwrxffxptfv3wsngpnex', '.eJxVjjsOgzAQRO_i2kI22F5MmVQpcoIIofWuCeSDJT5VlLsHJBQl7bw3o3mJBpe5a5Ypjk3PohJayN8sIN3jsAG-4XBNGaVhHvuQbUq20yk7J46Pw-7-DXQ4dWubGIAD-ViotiyDY4sOlEbPVmGrgZnBsCfvALy1MZBxpaeWDNjC4faKcBz7OYnq4nJTSJeXRmqljJNeG19LcZrj8_iVVqShfn8AtKdHZA:1vQHHv:Q6zoZ1v00X4w7WEPAUoAUcgKS02Bw0Pp8E6T_ZpjgRE', '2025-12-16 03:42:51.483154');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgiiee_asiento`
--

CREATE TABLE `sgiiee_asiento` (
  `id` bigint(20) NOT NULL,
  `fila` varchar(5) NOT NULL,
  `numero` int(10) UNSIGNED NOT NULL CHECK (`numero` >= 0),
  `estado` varchar(15) NOT NULL,
  `evento_id` bigint(20) NOT NULL,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `zona` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sgiiee_asiento`
--

INSERT INTO `sgiiee_asiento` (`id`, `fila`, `numero`, `estado`, `evento_id`, `pos_x`, `pos_y`, `precio`, `zona`) VALUES
(11102, 'A', 1, 'disponible', 51, 50, 38, 300.00, 'vip'),
(11103, 'A', 2, 'disponible', 51, 38, 50, 300.00, 'vip'),
(11104, 'A', 3, 'disponible', 51, 62, 50, 300.00, 'vip'),
(11105, 'A', 4, 'disponible', 51, 50, 62, 300.00, 'vip'),
(11106, 'A', 5, 'disponible', 51, 46, 38, 300.00, 'vip'),
(11107, 'A', 6, 'disponible', 51, 54, 38, 300.00, 'vip'),
(11108, 'A', 7, 'disponible', 51, 38, 46, 300.00, 'vip'),
(11109, 'A', 8, 'disponible', 51, 62, 46, 300.00, 'vip'),
(11110, 'A', 9, 'disponible', 51, 38, 54, 300.00, 'vip'),
(11111, 'A', 10, 'disponible', 51, 62, 54, 300.00, 'vip'),
(11112, 'A', 11, 'disponible', 51, 46, 62, 300.00, 'vip'),
(11113, 'A', 12, 'disponible', 51, 54, 62, 300.00, 'vip'),
(11114, 'A', 13, 'disponible', 51, 42, 38, 300.00, 'vip'),
(11115, 'A', 14, 'disponible', 51, 58, 38, 300.00, 'vip'),
(11116, 'A', 15, 'disponible', 51, 38, 42, 300.00, 'vip'),
(11117, 'A', 16, 'disponible', 51, 62, 42, 300.00, 'vip'),
(11118, 'A', 17, 'disponible', 51, 38, 58, 300.00, 'vip'),
(11119, 'A', 18, 'disponible', 51, 62, 58, 300.00, 'vip'),
(11120, 'A', 19, 'disponible', 51, 42, 62, 300.00, 'vip'),
(11121, 'A', 20, 'disponible', 51, 58, 62, 300.00, 'vip'),
(11122, 'A', 21, 'disponible', 51, 50, 34, 300.00, 'vip'),
(11123, 'A', 22, 'disponible', 51, 34, 50, 300.00, 'vip'),
(11124, 'A', 23, 'disponible', 51, 66, 50, 300.00, 'vip'),
(11125, 'A', 24, 'disponible', 51, 50, 66, 300.00, 'vip'),
(11126, 'A', 25, 'disponible', 51, 46, 34, 300.00, 'vip'),
(11127, 'A', 26, 'disponible', 51, 54, 34, 300.00, 'vip'),
(11128, 'B', 1, 'disponible', 51, 34, 46, 300.00, 'vip'),
(11129, 'B', 2, 'disponible', 51, 66, 46, 300.00, 'vip'),
(11130, 'B', 3, 'disponible', 51, 34, 54, 300.00, 'vip'),
(11131, 'B', 4, 'disponible', 51, 66, 54, 300.00, 'vip'),
(11132, 'B', 5, 'disponible', 51, 46, 66, 300.00, 'vip'),
(11133, 'B', 6, 'disponible', 51, 54, 66, 300.00, 'vip'),
(11134, 'B', 7, 'disponible', 51, 38, 38, 300.00, 'vip'),
(11135, 'B', 8, 'disponible', 51, 62, 38, 300.00, 'vip'),
(11136, 'B', 9, 'disponible', 51, 38, 62, 300.00, 'vip'),
(11137, 'B', 10, 'disponible', 51, 62, 62, 300.00, 'vip'),
(11138, 'B', 11, 'disponible', 51, 42, 34, 300.00, 'vip'),
(11139, 'B', 12, 'disponible', 51, 58, 34, 300.00, 'vip'),
(11140, 'B', 13, 'disponible', 51, 34, 42, 300.00, 'vip'),
(11141, 'B', 14, 'disponible', 51, 66, 42, 300.00, 'vip'),
(11142, 'B', 15, 'disponible', 51, 34, 58, 300.00, 'vip'),
(11143, 'B', 16, 'disponible', 51, 66, 58, 300.00, 'vip'),
(11144, 'B', 17, 'disponible', 51, 42, 66, 300.00, 'vip'),
(11145, 'B', 18, 'disponible', 51, 58, 66, 300.00, 'vip'),
(11146, 'B', 19, 'disponible', 51, 50, 30, 300.00, 'vip'),
(11147, 'B', 20, 'disponible', 51, 38, 34, 300.00, 'vip'),
(11148, 'B', 21, 'disponible', 51, 62, 34, 300.00, 'vip'),
(11149, 'B', 22, 'disponible', 51, 34, 38, 300.00, 'vip'),
(11150, 'B', 23, 'disponible', 51, 66, 38, 300.00, 'vip'),
(11151, 'B', 24, 'disponible', 51, 30, 50, 300.00, 'vip'),
(11152, 'B', 25, 'disponible', 51, 70, 50, 180.00, 'avanzado'),
(11153, 'B', 26, 'disponible', 51, 34, 62, 180.00, 'avanzado'),
(11154, 'C', 1, 'disponible', 51, 66, 62, 180.00, 'avanzado'),
(11155, 'C', 2, 'disponible', 51, 38, 66, 180.00, 'avanzado'),
(11156, 'C', 3, 'disponible', 51, 62, 66, 180.00, 'avanzado'),
(11157, 'C', 4, 'disponible', 51, 50, 70, 180.00, 'avanzado'),
(11158, 'C', 5, 'disponible', 51, 46, 30, 180.00, 'avanzado'),
(11159, 'C', 6, 'disponible', 51, 54, 30, 180.00, 'avanzado'),
(11160, 'C', 7, 'disponible', 51, 30, 46, 180.00, 'avanzado'),
(11161, 'C', 8, 'disponible', 51, 70, 46, 180.00, 'avanzado'),
(11162, 'C', 9, 'disponible', 51, 30, 54, 180.00, 'avanzado'),
(11163, 'C', 10, 'disponible', 51, 70, 54, 180.00, 'avanzado'),
(11164, 'C', 11, 'disponible', 51, 46, 70, 180.00, 'avanzado'),
(11165, 'C', 12, 'disponible', 51, 54, 70, 180.00, 'avanzado'),
(11166, 'C', 13, 'disponible', 51, 42, 30, 180.00, 'avanzado'),
(11167, 'C', 14, 'disponible', 51, 58, 30, 180.00, 'avanzado'),
(11168, 'C', 15, 'disponible', 51, 30, 42, 180.00, 'avanzado'),
(11169, 'C', 16, 'disponible', 51, 70, 42, 180.00, 'avanzado'),
(11170, 'C', 17, 'disponible', 51, 30, 58, 180.00, 'avanzado'),
(11171, 'C', 18, 'disponible', 51, 70, 58, 180.00, 'avanzado'),
(11172, 'C', 19, 'disponible', 51, 42, 70, 180.00, 'avanzado'),
(11173, 'C', 20, 'disponible', 51, 58, 70, 180.00, 'avanzado'),
(11174, 'C', 21, 'disponible', 51, 34, 34, 180.00, 'avanzado'),
(11175, 'C', 22, 'disponible', 51, 66, 34, 180.00, 'avanzado'),
(11176, 'C', 23, 'disponible', 51, 34, 66, 180.00, 'avanzado'),
(11177, 'C', 24, 'disponible', 51, 66, 66, 180.00, 'avanzado'),
(11178, 'C', 25, 'disponible', 51, 38, 30, 180.00, 'avanzado'),
(11179, 'C', 26, 'disponible', 51, 62, 30, 180.00, 'avanzado'),
(11180, 'D', 1, 'disponible', 51, 30, 38, 180.00, 'avanzado'),
(11181, 'D', 2, 'disponible', 51, 70, 38, 180.00, 'avanzado'),
(11182, 'D', 3, 'disponible', 51, 30, 62, 180.00, 'avanzado'),
(11183, 'D', 4, 'disponible', 51, 70, 62, 180.00, 'avanzado'),
(11184, 'D', 5, 'disponible', 51, 38, 70, 180.00, 'avanzado'),
(11185, 'D', 6, 'disponible', 51, 62, 70, 180.00, 'avanzado'),
(11186, 'D', 7, 'disponible', 51, 50, 26, 180.00, 'avanzado'),
(11187, 'D', 8, 'disponible', 51, 26, 50, 180.00, 'avanzado'),
(11188, 'D', 9, 'disponible', 51, 74, 50, 180.00, 'avanzado'),
(11189, 'D', 10, 'disponible', 51, 50, 74, 180.00, 'avanzado'),
(11190, 'D', 11, 'disponible', 51, 46, 26, 180.00, 'avanzado'),
(11191, 'D', 12, 'disponible', 51, 54, 26, 180.00, 'avanzado'),
(11192, 'D', 13, 'disponible', 51, 26, 46, 180.00, 'avanzado'),
(11193, 'D', 14, 'disponible', 51, 74, 46, 180.00, 'avanzado'),
(11194, 'D', 15, 'disponible', 51, 26, 54, 180.00, 'avanzado'),
(11195, 'D', 16, 'disponible', 51, 74, 54, 180.00, 'avanzado'),
(11196, 'D', 17, 'disponible', 51, 46, 74, 180.00, 'avanzado'),
(11197, 'D', 18, 'disponible', 51, 54, 74, 180.00, 'avanzado'),
(11198, 'D', 19, 'disponible', 51, 42, 26, 180.00, 'avanzado'),
(11199, 'D', 20, 'disponible', 51, 58, 26, 180.00, 'avanzado'),
(11200, 'D', 21, 'disponible', 51, 26, 42, 180.00, 'avanzado'),
(11201, 'D', 22, 'disponible', 51, 74, 42, 180.00, 'avanzado'),
(11202, 'D', 23, 'disponible', 51, 26, 58, 180.00, 'avanzado'),
(11203, 'D', 24, 'disponible', 51, 74, 58, 180.00, 'avanzado'),
(11204, 'D', 25, 'disponible', 51, 42, 74, 180.00, 'avanzado'),
(11205, 'D', 26, 'disponible', 51, 58, 74, 180.00, 'avanzado'),
(11206, 'E', 1, 'disponible', 51, 34, 30, 180.00, 'avanzado'),
(11207, 'E', 2, 'disponible', 51, 66, 30, 180.00, 'avanzado'),
(11208, 'E', 3, 'disponible', 51, 30, 34, 180.00, 'avanzado'),
(11209, 'E', 4, 'disponible', 51, 70, 34, 180.00, 'avanzado'),
(11210, 'E', 5, 'disponible', 51, 30, 66, 180.00, 'avanzado'),
(11211, 'E', 6, 'disponible', 51, 70, 66, 180.00, 'avanzado'),
(11212, 'E', 7, 'disponible', 51, 34, 70, 180.00, 'avanzado'),
(11213, 'E', 8, 'disponible', 51, 66, 70, 180.00, 'avanzado'),
(11214, 'E', 9, 'disponible', 51, 38, 26, 180.00, 'avanzado'),
(11215, 'E', 10, 'disponible', 51, 62, 26, 180.00, 'avanzado'),
(11216, 'E', 11, 'disponible', 51, 26, 38, 180.00, 'avanzado'),
(11217, 'E', 12, 'disponible', 51, 74, 38, 180.00, 'avanzado'),
(11218, 'E', 13, 'disponible', 51, 26, 62, 180.00, 'avanzado'),
(11219, 'E', 14, 'disponible', 51, 74, 62, 180.00, 'avanzado'),
(11220, 'E', 15, 'disponible', 51, 38, 74, 180.00, 'avanzado'),
(11221, 'E', 16, 'disponible', 51, 62, 74, 180.00, 'avanzado'),
(11222, 'E', 17, 'disponible', 51, 50, 22, 180.00, 'avanzado'),
(11223, 'E', 18, 'disponible', 51, 22, 50, 180.00, 'avanzado'),
(11224, 'E', 19, 'disponible', 51, 78, 50, 180.00, 'avanzado'),
(11225, 'E', 20, 'disponible', 51, 50, 78, 180.00, 'avanzado'),
(11226, 'E', 21, 'disponible', 51, 46, 22, 180.00, 'avanzado'),
(11227, 'E', 22, 'disponible', 51, 54, 22, 180.00, 'avanzado'),
(11228, 'E', 23, 'disponible', 51, 30, 30, 180.00, 'avanzado'),
(11229, 'E', 24, 'disponible', 51, 70, 30, 180.00, 'avanzado'),
(11230, 'E', 25, 'disponible', 51, 22, 46, 180.00, 'avanzado'),
(11231, 'E', 26, 'disponible', 51, 78, 46, 180.00, 'avanzado'),
(11232, 'F', 1, 'disponible', 51, 22, 54, 180.00, 'avanzado'),
(11233, 'F', 2, 'disponible', 51, 78, 54, 180.00, 'avanzado'),
(11234, 'F', 3, 'disponible', 51, 30, 70, 180.00, 'avanzado'),
(11235, 'F', 4, 'disponible', 51, 70, 70, 180.00, 'avanzado'),
(11236, 'F', 5, 'disponible', 51, 46, 78, 180.00, 'avanzado'),
(11237, 'F', 6, 'disponible', 51, 54, 78, 180.00, 'avanzado'),
(11238, 'F', 7, 'disponible', 51, 34, 26, 180.00, 'avanzado'),
(11239, 'F', 8, 'disponible', 51, 66, 26, 180.00, 'avanzado'),
(11240, 'F', 9, 'disponible', 51, 26, 34, 180.00, 'avanzado'),
(11241, 'F', 10, 'disponible', 51, 74, 34, 180.00, 'avanzado'),
(11242, 'F', 11, 'disponible', 51, 26, 66, 180.00, 'avanzado'),
(11243, 'F', 12, 'disponible', 51, 74, 66, 180.00, 'avanzado'),
(11244, 'F', 13, 'disponible', 51, 34, 74, 180.00, 'avanzado'),
(11245, 'F', 14, 'disponible', 51, 66, 74, 180.00, 'avanzado'),
(11246, 'F', 15, 'disponible', 51, 42, 22, 180.00, 'avanzado'),
(11247, 'F', 16, 'disponible', 51, 58, 22, 180.00, 'avanzado'),
(11248, 'F', 17, 'disponible', 51, 22, 42, 180.00, 'avanzado'),
(11249, 'F', 18, 'disponible', 51, 78, 42, 180.00, 'avanzado'),
(11250, 'F', 19, 'disponible', 51, 22, 58, 180.00, 'avanzado'),
(11251, 'F', 20, 'disponible', 51, 78, 58, 180.00, 'avanzado'),
(11252, 'F', 21, 'disponible', 51, 42, 78, 180.00, 'avanzado'),
(11253, 'F', 22, 'disponible', 51, 58, 78, 180.00, 'avanzado'),
(11254, 'F', 23, 'disponible', 51, 38, 22, 180.00, 'avanzado'),
(11255, 'F', 24, 'disponible', 51, 62, 22, 180.00, 'avanzado'),
(11256, 'F', 25, 'disponible', 51, 22, 38, 180.00, 'avanzado'),
(11257, 'F', 26, 'disponible', 51, 78, 38, 180.00, 'avanzado'),
(11258, 'G', 1, 'disponible', 51, 22, 62, 180.00, 'avanzado'),
(11259, 'G', 2, 'disponible', 51, 78, 62, 180.00, 'avanzado'),
(11260, 'G', 3, 'disponible', 51, 38, 78, 180.00, 'avanzado'),
(11261, 'G', 4, 'disponible', 51, 62, 78, 180.00, 'avanzado'),
(11262, 'G', 5, 'disponible', 51, 30, 26, 180.00, 'avanzado'),
(11263, 'G', 6, 'disponible', 51, 70, 26, 180.00, 'avanzado'),
(11264, 'G', 7, 'disponible', 51, 26, 30, 180.00, 'avanzado'),
(11265, 'G', 8, 'disponible', 51, 74, 30, 180.00, 'avanzado'),
(11266, 'G', 9, 'disponible', 51, 26, 70, 180.00, 'avanzado'),
(11267, 'G', 10, 'disponible', 51, 74, 70, 180.00, 'avanzado'),
(11268, 'G', 11, 'disponible', 51, 30, 74, 180.00, 'avanzado'),
(11269, 'G', 12, 'disponible', 51, 70, 74, 180.00, 'avanzado'),
(11270, 'G', 13, 'disponible', 51, 50, 18, 180.00, 'avanzado'),
(11271, 'G', 14, 'disponible', 51, 18, 50, 180.00, 'avanzado'),
(11272, 'G', 15, 'disponible', 51, 82, 50, 180.00, 'avanzado'),
(11273, 'G', 16, 'disponible', 51, 50, 82, 180.00, 'avanzado'),
(11274, 'G', 17, 'disponible', 51, 46, 18, 180.00, 'avanzado'),
(11275, 'G', 18, 'disponible', 51, 54, 18, 180.00, 'avanzado'),
(11276, 'G', 19, 'disponible', 51, 34, 22, 180.00, 'avanzado'),
(11277, 'G', 20, 'disponible', 51, 66, 22, 180.00, 'avanzado'),
(11278, 'G', 21, 'disponible', 51, 22, 34, 180.00, 'avanzado'),
(11279, 'G', 22, 'disponible', 51, 78, 34, 180.00, 'avanzado'),
(11280, 'G', 23, 'disponible', 51, 18, 46, 180.00, 'avanzado'),
(11281, 'G', 24, 'disponible', 51, 82, 46, 180.00, 'avanzado'),
(11282, 'G', 25, 'disponible', 51, 18, 54, 180.00, 'avanzado'),
(11283, 'G', 26, 'disponible', 51, 82, 54, 180.00, 'avanzado'),
(11284, 'H', 1, 'disponible', 51, 22, 66, 180.00, 'avanzado'),
(11285, 'H', 2, 'disponible', 51, 78, 66, 180.00, 'avanzado'),
(11286, 'H', 3, 'disponible', 51, 34, 78, 180.00, 'avanzado'),
(11287, 'H', 4, 'disponible', 51, 66, 78, 180.00, 'avanzado'),
(11288, 'H', 5, 'disponible', 51, 46, 82, 180.00, 'avanzado'),
(11289, 'H', 6, 'disponible', 51, 54, 82, 180.00, 'avanzado'),
(11290, 'H', 7, 'disponible', 51, 42, 18, 180.00, 'avanzado'),
(11291, 'H', 8, 'disponible', 51, 58, 18, 180.00, 'avanzado'),
(11292, 'H', 9, 'disponible', 51, 18, 42, 180.00, 'avanzado'),
(11293, 'H', 10, 'disponible', 51, 82, 42, 180.00, 'avanzado'),
(11294, 'H', 11, 'disponible', 51, 18, 58, 180.00, 'avanzado'),
(11295, 'H', 12, 'disponible', 51, 82, 58, 180.00, 'avanzado'),
(11296, 'H', 13, 'disponible', 51, 42, 82, 180.00, 'avanzado'),
(11297, 'H', 14, 'disponible', 51, 58, 82, 180.00, 'avanzado'),
(11298, 'H', 15, 'disponible', 51, 26, 26, 180.00, 'avanzado'),
(11299, 'H', 16, 'disponible', 51, 74, 26, 180.00, 'avanzado'),
(11300, 'H', 17, 'disponible', 51, 26, 74, 180.00, 'avanzado'),
(11301, 'H', 18, 'disponible', 51, 74, 74, 180.00, 'avanzado'),
(11302, 'H', 19, 'disponible', 51, 38, 18, 100.00, 'normal'),
(11303, 'H', 20, 'disponible', 51, 62, 18, 100.00, 'normal'),
(11304, 'H', 21, 'disponible', 51, 18, 38, 100.00, 'normal'),
(11305, 'H', 22, 'disponible', 51, 82, 38, 100.00, 'normal'),
(11306, 'H', 23, 'disponible', 51, 18, 62, 100.00, 'normal'),
(11307, 'H', 24, 'disponible', 51, 82, 62, 100.00, 'normal'),
(11308, 'H', 25, 'disponible', 51, 38, 82, 100.00, 'normal'),
(11309, 'H', 26, 'disponible', 51, 62, 82, 100.00, 'normal'),
(11310, 'I', 1, 'disponible', 51, 30, 22, 100.00, 'normal'),
(11311, 'I', 2, 'disponible', 51, 70, 22, 100.00, 'normal'),
(11312, 'I', 3, 'disponible', 51, 22, 30, 100.00, 'normal'),
(11313, 'I', 4, 'disponible', 51, 78, 30, 100.00, 'normal'),
(11314, 'I', 5, 'disponible', 51, 22, 70, 100.00, 'normal'),
(11315, 'I', 6, 'disponible', 51, 78, 70, 100.00, 'normal'),
(11316, 'I', 7, 'disponible', 51, 30, 78, 100.00, 'normal'),
(11317, 'I', 8, 'disponible', 51, 70, 78, 100.00, 'normal'),
(11318, 'I', 9, 'disponible', 51, 34, 18, 100.00, 'normal'),
(11319, 'I', 10, 'disponible', 51, 66, 18, 100.00, 'normal'),
(11320, 'I', 11, 'disponible', 51, 18, 34, 100.00, 'normal'),
(11321, 'I', 12, 'disponible', 51, 82, 34, 100.00, 'normal'),
(11322, 'I', 13, 'disponible', 51, 18, 66, 100.00, 'normal'),
(11323, 'I', 14, 'disponible', 51, 82, 66, 100.00, 'normal'),
(11324, 'I', 15, 'disponible', 51, 34, 82, 100.00, 'normal'),
(11325, 'I', 16, 'disponible', 51, 66, 82, 100.00, 'normal'),
(11326, 'I', 17, 'disponible', 51, 50, 14, 100.00, 'normal'),
(11327, 'I', 18, 'disponible', 51, 14, 50, 100.00, 'normal'),
(11328, 'I', 19, 'disponible', 51, 86, 50, 100.00, 'normal'),
(11329, 'I', 20, 'disponible', 51, 50, 86, 100.00, 'normal'),
(11330, 'I', 21, 'disponible', 51, 46, 14, 100.00, 'normal'),
(11331, 'I', 22, 'disponible', 51, 54, 14, 100.00, 'normal'),
(11332, 'I', 23, 'disponible', 51, 14, 46, 100.00, 'normal'),
(11333, 'I', 24, 'disponible', 51, 86, 46, 100.00, 'normal'),
(11334, 'I', 25, 'disponible', 51, 14, 54, 100.00, 'normal'),
(11335, 'I', 26, 'disponible', 51, 86, 54, 100.00, 'normal'),
(11336, 'J', 1, 'disponible', 51, 46, 86, 100.00, 'normal'),
(11337, 'J', 2, 'disponible', 51, 54, 86, 100.00, 'normal'),
(11338, 'J', 3, 'disponible', 51, 42, 14, 100.00, 'normal'),
(11339, 'J', 4, 'disponible', 51, 58, 14, 100.00, 'normal'),
(11340, 'J', 5, 'disponible', 51, 26, 22, 100.00, 'normal'),
(11341, 'J', 6, 'disponible', 51, 74, 22, 100.00, 'normal'),
(11342, 'J', 7, 'disponible', 51, 22, 26, 100.00, 'normal'),
(11343, 'J', 8, 'disponible', 51, 78, 26, 100.00, 'normal'),
(11344, 'J', 9, 'disponible', 51, 14, 42, 100.00, 'normal'),
(11345, 'J', 10, 'disponible', 51, 86, 42, 100.00, 'normal'),
(11346, 'J', 11, 'disponible', 51, 14, 58, 100.00, 'normal'),
(11347, 'J', 12, 'disponible', 51, 86, 58, 100.00, 'normal'),
(11348, 'J', 13, 'disponible', 51, 22, 74, 100.00, 'normal'),
(11349, 'J', 14, 'disponible', 51, 78, 74, 100.00, 'normal'),
(11350, 'J', 15, 'disponible', 51, 26, 78, 100.00, 'normal'),
(11351, 'J', 16, 'disponible', 51, 74, 78, 100.00, 'normal'),
(11352, 'J', 17, 'disponible', 51, 42, 86, 100.00, 'normal'),
(11353, 'J', 18, 'disponible', 51, 58, 86, 100.00, 'normal'),
(11354, 'J', 19, 'disponible', 51, 30, 18, 100.00, 'normal'),
(11355, 'J', 20, 'disponible', 51, 70, 18, 100.00, 'normal'),
(11356, 'J', 21, 'disponible', 51, 18, 30, 100.00, 'normal'),
(11357, 'J', 22, 'disponible', 51, 82, 30, 100.00, 'normal'),
(11358, 'J', 23, 'disponible', 51, 18, 70, 100.00, 'normal'),
(11359, 'J', 24, 'disponible', 51, 82, 70, 100.00, 'normal'),
(11360, 'J', 25, 'disponible', 51, 30, 82, 100.00, 'normal'),
(11361, 'J', 26, 'disponible', 51, 70, 82, 100.00, 'normal'),
(11362, 'K', 1, 'disponible', 51, 38, 14, 100.00, 'normal'),
(11363, 'K', 2, 'disponible', 51, 62, 14, 100.00, 'normal'),
(11364, 'K', 3, 'disponible', 51, 14, 38, 100.00, 'normal'),
(11365, 'K', 4, 'disponible', 51, 86, 38, 100.00, 'normal'),
(11366, 'K', 5, 'disponible', 51, 14, 62, 100.00, 'normal'),
(11367, 'K', 6, 'disponible', 51, 86, 62, 100.00, 'normal'),
(11368, 'K', 7, 'disponible', 51, 38, 86, 100.00, 'normal'),
(11369, 'K', 8, 'disponible', 51, 62, 86, 100.00, 'normal'),
(11370, 'K', 9, 'disponible', 51, 34, 14, 100.00, 'normal'),
(11371, 'K', 10, 'disponible', 51, 66, 14, 100.00, 'normal'),
(11372, 'K', 11, 'disponible', 51, 14, 34, 100.00, 'normal'),
(11373, 'K', 12, 'disponible', 51, 86, 34, 100.00, 'normal'),
(11374, 'K', 13, 'disponible', 51, 14, 66, 100.00, 'normal'),
(11375, 'K', 14, 'disponible', 51, 86, 66, 100.00, 'normal'),
(11376, 'K', 15, 'disponible', 51, 34, 86, 100.00, 'normal'),
(11377, 'K', 16, 'disponible', 51, 66, 86, 100.00, 'normal'),
(11378, 'K', 17, 'disponible', 51, 22, 22, 100.00, 'normal'),
(11379, 'K', 18, 'disponible', 51, 78, 22, 100.00, 'normal'),
(11380, 'K', 19, 'disponible', 51, 22, 78, 100.00, 'normal'),
(11381, 'K', 20, 'disponible', 51, 78, 78, 100.00, 'normal'),
(11382, 'K', 21, 'disponible', 51, 50, 10, 100.00, 'normal'),
(11383, 'K', 22, 'disponible', 51, 26, 18, 100.00, 'normal'),
(11384, 'K', 23, 'disponible', 51, 74, 18, 100.00, 'normal'),
(11385, 'K', 24, 'disponible', 51, 18, 26, 100.00, 'normal'),
(11386, 'K', 25, 'disponible', 51, 82, 26, 100.00, 'normal'),
(11387, 'K', 26, 'disponible', 51, 10, 50, 100.00, 'normal'),
(11388, 'L', 1, 'disponible', 51, 90, 50, 100.00, 'normal'),
(11389, 'L', 2, 'disponible', 51, 18, 74, 100.00, 'normal'),
(11390, 'L', 3, 'disponible', 51, 82, 74, 100.00, 'normal'),
(11391, 'L', 4, 'disponible', 51, 26, 82, 100.00, 'normal'),
(11392, 'L', 5, 'disponible', 51, 74, 82, 100.00, 'normal'),
(11393, 'L', 6, 'disponible', 51, 50, 90, 100.00, 'normal'),
(11394, 'L', 7, 'disponible', 51, 46, 10, 100.00, 'normal'),
(11395, 'L', 8, 'disponible', 51, 54, 10, 100.00, 'normal'),
(11396, 'L', 9, 'disponible', 51, 10, 46, 100.00, 'normal'),
(11397, 'L', 10, 'disponible', 51, 90, 46, 100.00, 'normal'),
(11398, 'L', 11, 'disponible', 51, 10, 54, 100.00, 'normal'),
(11399, 'L', 12, 'disponible', 51, 90, 54, 100.00, 'normal'),
(11400, 'L', 13, 'disponible', 51, 46, 90, 100.00, 'normal'),
(11401, 'L', 14, 'disponible', 51, 54, 90, 100.00, 'normal'),
(11402, 'L', 15, 'disponible', 51, 42, 10, 100.00, 'normal'),
(11403, 'L', 16, 'disponible', 51, 58, 10, 100.00, 'normal'),
(11404, 'L', 17, 'disponible', 51, 10, 42, 100.00, 'normal'),
(11405, 'L', 18, 'disponible', 51, 90, 42, 100.00, 'normal'),
(11406, 'L', 19, 'disponible', 51, 10, 58, 100.00, 'normal'),
(11407, 'L', 20, 'disponible', 51, 90, 58, 100.00, 'normal'),
(11408, 'L', 21, 'disponible', 51, 42, 90, 100.00, 'normal'),
(11409, 'L', 22, 'disponible', 51, 58, 90, 100.00, 'normal'),
(11410, 'L', 23, 'disponible', 51, 30, 14, 100.00, 'normal'),
(11411, 'L', 24, 'disponible', 51, 70, 14, 100.00, 'normal'),
(11412, 'L', 25, 'disponible', 51, 14, 30, 100.00, 'normal'),
(11413, 'L', 26, 'disponible', 51, 86, 30, 100.00, 'normal'),
(11414, 'M', 1, 'disponible', 51, 14, 70, 100.00, 'normal'),
(11415, 'M', 2, 'disponible', 51, 86, 70, 100.00, 'normal'),
(11416, 'M', 3, 'disponible', 51, 30, 86, 100.00, 'normal'),
(11417, 'M', 4, 'disponible', 51, 70, 86, 100.00, 'normal'),
(11418, 'M', 5, 'disponible', 51, 38, 10, 100.00, 'normal'),
(11419, 'M', 6, 'disponible', 51, 62, 10, 100.00, 'normal'),
(11420, 'M', 7, 'disponible', 51, 10, 38, 100.00, 'normal'),
(11421, 'M', 8, 'disponible', 51, 90, 38, 100.00, 'normal'),
(11422, 'M', 9, 'disponible', 51, 10, 62, 100.00, 'normal'),
(11423, 'M', 10, 'disponible', 51, 90, 62, 100.00, 'normal'),
(11424, 'M', 11, 'disponible', 51, 38, 90, 100.00, 'normal'),
(11425, 'M', 12, 'disponible', 51, 62, 90, 100.00, 'normal'),
(11426, 'M', 13, 'disponible', 51, 22, 18, 100.00, 'normal'),
(11427, 'M', 14, 'disponible', 51, 78, 18, 100.00, 'normal'),
(11428, 'M', 15, 'disponible', 51, 18, 22, 100.00, 'normal'),
(11429, 'M', 16, 'disponible', 51, 82, 22, 100.00, 'normal'),
(11430, 'M', 17, 'disponible', 51, 18, 78, 100.00, 'normal'),
(11431, 'M', 18, 'disponible', 51, 82, 78, 100.00, 'normal'),
(11432, 'M', 19, 'disponible', 51, 22, 82, 100.00, 'normal'),
(11433, 'M', 20, 'disponible', 51, 78, 82, 100.00, 'normal'),
(11434, 'M', 21, 'disponible', 51, 34, 10, 100.00, 'normal'),
(11435, 'M', 22, 'disponible', 51, 66, 10, 100.00, 'normal'),
(11436, 'M', 23, 'disponible', 51, 10, 34, 100.00, 'normal'),
(11437, 'M', 24, 'disponible', 51, 90, 34, 100.00, 'normal'),
(11438, 'M', 25, 'disponible', 51, 10, 66, 100.00, 'normal'),
(11439, 'M', 26, 'disponible', 51, 90, 66, 100.00, 'normal'),
(11440, 'N', 1, 'disponible', 51, 34, 90, 100.00, 'normal'),
(11441, 'N', 2, 'disponible', 51, 66, 90, 100.00, 'normal'),
(11442, 'N', 3, 'disponible', 51, 26, 14, 100.00, 'normal'),
(11443, 'N', 4, 'disponible', 51, 74, 14, 100.00, 'normal'),
(11444, 'N', 5, 'disponible', 51, 14, 26, 100.00, 'normal'),
(11445, 'N', 6, 'disponible', 51, 86, 26, 100.00, 'normal'),
(11446, 'N', 7, 'disponible', 51, 14, 74, 100.00, 'normal'),
(11447, 'N', 8, 'disponible', 51, 86, 74, 100.00, 'normal'),
(11448, 'N', 9, 'disponible', 51, 26, 86, 100.00, 'normal'),
(11449, 'N', 10, 'disponible', 51, 74, 86, 100.00, 'normal'),
(11450, 'N', 11, 'disponible', 51, 50, 6, 100.00, 'normal'),
(11451, 'N', 12, 'disponible', 51, 6, 50, 100.00, 'normal'),
(11452, 'N', 13, 'disponible', 51, 94, 50, 100.00, 'normal'),
(11453, 'N', 14, 'disponible', 51, 50, 6, 100.00, 'normal'),
(11454, 'N', 15, 'disponible', 51, 46, 6, 100.00, 'normal'),
(11455, 'N', 16, 'disponible', 51, 54, 6, 100.00, 'normal'),
(11456, 'N', 17, 'disponible', 51, 6, 46, 100.00, 'normal'),
(11457, 'N', 18, 'disponible', 51, 94, 46, 100.00, 'normal'),
(11458, 'N', 19, 'disponible', 51, 6, 54, 100.00, 'normal'),
(11459, 'N', 20, 'disponible', 51, 94, 54, 100.00, 'normal'),
(11460, 'N', 21, 'disponible', 51, 46, 6, 100.00, 'normal'),
(11461, 'N', 22, 'disponible', 51, 54, 6, 100.00, 'normal'),
(11462, 'N', 23, 'disponible', 51, 42, 6, 100.00, 'normal'),
(11463, 'N', 24, 'disponible', 51, 58, 6, 100.00, 'normal'),
(11464, 'N', 25, 'disponible', 51, 30, 10, 100.00, 'normal'),
(11465, 'N', 26, 'disponible', 51, 70, 10, 100.00, 'normal'),
(11466, 'O', 1, 'disponible', 51, 10, 30, 100.00, 'normal'),
(11467, 'O', 2, 'disponible', 51, 90, 30, 100.00, 'normal'),
(11468, 'O', 3, 'disponible', 51, 6, 42, 100.00, 'normal'),
(11469, 'O', 4, 'disponible', 51, 94, 42, 100.00, 'normal'),
(11470, 'O', 5, 'disponible', 51, 6, 58, 100.00, 'normal'),
(11471, 'O', 6, 'disponible', 51, 94, 58, 100.00, 'normal'),
(11472, 'O', 7, 'disponible', 51, 10, 70, 100.00, 'normal'),
(11473, 'O', 8, 'disponible', 51, 90, 70, 100.00, 'normal'),
(11474, 'O', 9, 'disponible', 51, 30, 90, 100.00, 'normal'),
(11475, 'O', 10, 'disponible', 51, 70, 90, 100.00, 'normal'),
(11476, 'O', 11, 'disponible', 51, 42, 6, 100.00, 'normal'),
(11477, 'O', 12, 'disponible', 51, 58, 6, 100.00, 'normal'),
(11478, 'O', 13, 'disponible', 51, 18, 18, 100.00, 'normal'),
(11479, 'O', 14, 'disponible', 51, 82, 18, 100.00, 'normal'),
(11480, 'O', 15, 'disponible', 51, 18, 82, 100.00, 'normal'),
(11481, 'O', 16, 'disponible', 51, 82, 82, 100.00, 'normal'),
(11482, 'O', 17, 'disponible', 51, 38, 6, 100.00, 'normal'),
(11483, 'O', 18, 'disponible', 51, 62, 6, 100.00, 'normal'),
(11484, 'O', 19, 'disponible', 51, 22, 14, 100.00, 'normal'),
(11485, 'O', 20, 'disponible', 51, 78, 14, 100.00, 'normal'),
(11486, 'O', 21, 'disponible', 51, 14, 22, 100.00, 'normal'),
(11487, 'O', 22, 'disponible', 51, 86, 22, 100.00, 'normal'),
(11488, 'O', 23, 'disponible', 51, 6, 38, 100.00, 'normal'),
(11489, 'O', 24, 'disponible', 51, 94, 38, 100.00, 'normal'),
(11490, 'O', 25, 'disponible', 51, 6, 62, 100.00, 'normal'),
(11491, 'O', 26, 'disponible', 51, 94, 62, 100.00, 'normal'),
(11492, 'P', 1, 'disponible', 51, 14, 78, 100.00, 'normal'),
(11493, 'P', 2, 'disponible', 51, 86, 78, 100.00, 'normal'),
(11494, 'P', 3, 'disponible', 51, 22, 86, 100.00, 'normal'),
(11495, 'P', 4, 'disponible', 51, 78, 86, 100.00, 'normal'),
(11496, 'P', 5, 'disponible', 51, 38, 6, 100.00, 'normal'),
(11497, 'P', 6, 'disponible', 51, 62, 6, 100.00, 'normal'),
(11498, 'P', 7, 'disponible', 51, 26, 10, 100.00, 'normal'),
(11499, 'P', 8, 'disponible', 51, 74, 10, 100.00, 'normal'),
(11500, 'P', 9, 'disponible', 51, 10, 26, 100.00, 'normal'),
(11501, 'P', 10, 'disponible', 51, 90, 26, 100.00, 'normal'),
(11502, 'P', 11, 'disponible', 51, 10, 74, 100.00, 'normal'),
(11503, 'P', 12, 'disponible', 51, 90, 74, 100.00, 'normal'),
(11504, 'P', 13, 'disponible', 51, 26, 90, 100.00, 'normal'),
(11505, 'P', 14, 'disponible', 51, 34, 6, 100.00, 'normal'),
(11506, 'P', 15, 'disponible', 51, 66, 6, 100.00, 'normal'),
(11507, 'P', 16, 'disponible', 51, 6, 34, 100.00, 'normal'),
(11508, 'P', 17, 'disponible', 51, 94, 34, 100.00, 'normal'),
(11509, 'P', 18, 'disponible', 51, 6, 66, 100.00, 'normal'),
(11510, 'P', 19, 'disponible', 51, 94, 66, 100.00, 'normal'),
(11511, 'P', 20, 'disponible', 51, 34, 6, 100.00, 'normal'),
(11512, 'P', 21, 'disponible', 51, 66, 6, 100.00, 'normal'),
(11513, 'P', 22, 'disponible', 51, 18, 14, 100.00, 'normal'),
(11514, 'P', 23, 'disponible', 51, 82, 14, 100.00, 'normal'),
(11515, 'P', 24, 'disponible', 51, 14, 18, 100.00, 'normal'),
(11516, 'P', 25, 'disponible', 51, 86, 18, 100.00, 'normal'),
(11517, 'P', 26, 'disponible', 51, 14, 82, 100.00, 'normal'),
(11518, 'Q', 1, 'disponible', 51, 86, 82, 100.00, 'normal'),
(11519, 'Q', 2, 'disponible', 51, 18, 86, 100.00, 'normal'),
(11520, 'Q', 3, 'disponible', 51, 82, 86, 100.00, 'normal'),
(11521, 'Q', 4, 'disponible', 51, 30, 6, 100.00, 'normal'),
(11522, 'Q', 5, 'disponible', 51, 70, 6, 100.00, 'normal'),
(11523, 'Q', 6, 'disponible', 51, 6, 30, 100.00, 'normal'),
(11524, 'Q', 7, 'disponible', 51, 94, 30, 100.00, 'normal'),
(11525, 'Q', 8, 'disponible', 51, 6, 70, 100.00, 'normal'),
(11526, 'Q', 9, 'disponible', 51, 94, 70, 100.00, 'normal'),
(11527, 'Q', 10, 'disponible', 51, 30, 6, 100.00, 'normal'),
(11528, 'Q', 11, 'disponible', 51, 70, 6, 100.00, 'normal'),
(11529, 'Q', 12, 'disponible', 51, 22, 10, 100.00, 'normal'),
(11530, 'Q', 13, 'disponible', 51, 78, 10, 100.00, 'normal'),
(11531, 'Q', 14, 'disponible', 51, 10, 22, 100.00, 'normal'),
(11532, 'Q', 15, 'disponible', 51, 90, 22, 100.00, 'normal'),
(11533, 'Q', 16, 'disponible', 51, 10, 78, 100.00, 'normal'),
(11534, 'Q', 17, 'disponible', 51, 90, 78, 100.00, 'normal'),
(11535, 'Q', 18, 'disponible', 51, 22, 90, 100.00, 'normal'),
(11536, 'Q', 19, 'disponible', 51, 26, 6, 100.00, 'normal'),
(11537, 'Q', 20, 'disponible', 51, 74, 6, 100.00, 'normal'),
(11538, 'Q', 21, 'disponible', 51, 6, 26, 100.00, 'normal'),
(11539, 'Q', 22, 'disponible', 51, 94, 26, 100.00, 'normal'),
(11540, 'Q', 23, 'disponible', 51, 6, 74, 100.00, 'normal'),
(11541, 'Q', 24, 'disponible', 51, 94, 74, 100.00, 'normal'),
(11542, 'Q', 25, 'disponible', 51, 26, 6, 100.00, 'normal'),
(11543, 'Q', 26, 'disponible', 51, 74, 6, 100.00, 'normal'),
(11544, 'R', 1, 'disponible', 51, 14, 14, 100.00, 'normal'),
(11545, 'R', 2, 'disponible', 51, 86, 14, 100.00, 'normal'),
(11546, 'R', 3, 'disponible', 51, 14, 86, 100.00, 'normal'),
(11547, 'R', 4, 'disponible', 51, 86, 86, 100.00, 'normal'),
(11548, 'R', 5, 'disponible', 51, 18, 10, 100.00, 'normal'),
(11549, 'R', 6, 'disponible', 51, 82, 10, 100.00, 'normal'),
(11550, 'R', 7, 'disponible', 51, 10, 18, 100.00, 'normal'),
(11551, 'R', 8, 'disponible', 51, 90, 18, 100.00, 'normal'),
(11552, 'R', 9, 'disponible', 51, 10, 82, 100.00, 'normal'),
(11553, 'R', 10, 'disponible', 51, 90, 82, 100.00, 'normal'),
(11554, 'R', 11, 'disponible', 51, 18, 90, 100.00, 'normal'),
(11555, 'R', 12, 'disponible', 51, 22, 6, 100.00, 'normal'),
(11556, 'R', 13, 'disponible', 51, 78, 6, 100.00, 'normal'),
(11557, 'R', 14, 'disponible', 51, 6, 22, 100.00, 'normal'),
(11558, 'R', 15, 'disponible', 51, 94, 22, 100.00, 'normal'),
(11559, 'R', 16, 'disponible', 51, 6, 78, 100.00, 'normal'),
(11560, 'R', 17, 'disponible', 51, 94, 78, 100.00, 'normal'),
(11561, 'R', 18, 'disponible', 51, 22, 6, 100.00, 'normal'),
(11562, 'R', 19, 'disponible', 51, 78, 6, 100.00, 'normal'),
(11563, 'R', 20, 'disponible', 51, 14, 10, 100.00, 'normal'),
(11564, 'R', 21, 'disponible', 51, 86, 10, 100.00, 'normal'),
(11565, 'R', 22, 'disponible', 51, 10, 14, 100.00, 'normal'),
(11566, 'R', 23, 'disponible', 51, 90, 14, 100.00, 'normal'),
(11567, 'R', 24, 'disponible', 51, 10, 86, 100.00, 'normal'),
(11568, 'R', 25, 'disponible', 51, 90, 86, 100.00, 'normal'),
(11569, 'R', 26, 'disponible', 51, 14, 90, 100.00, 'normal'),
(11570, 'S', 1, 'disponible', 51, 18, 6, 100.00, 'normal'),
(11571, 'S', 2, 'disponible', 51, 82, 6, 100.00, 'normal'),
(11572, 'S', 3, 'disponible', 51, 6, 18, 100.00, 'normal'),
(11573, 'S', 4, 'disponible', 51, 94, 18, 100.00, 'normal'),
(11574, 'S', 5, 'disponible', 51, 6, 82, 100.00, 'normal'),
(11575, 'S', 6, 'disponible', 51, 94, 82, 100.00, 'normal'),
(11576, 'S', 7, 'disponible', 51, 18, 6, 100.00, 'normal'),
(11577, 'S', 8, 'disponible', 51, 82, 6, 100.00, 'normal'),
(11578, 'S', 9, 'disponible', 51, 10, 10, 100.00, 'normal'),
(11579, 'S', 10, 'disponible', 51, 90, 10, 100.00, 'normal'),
(11580, 'S', 11, 'disponible', 51, 10, 90, 100.00, 'normal'),
(11581, 'S', 12, 'disponible', 51, 10, 10, 100.00, 'normal'),
(11582, 'S', 13, 'disponible', 51, 14, 6, 100.00, 'normal'),
(11583, 'S', 14, 'disponible', 51, 86, 6, 100.00, 'normal'),
(11584, 'S', 15, 'disponible', 51, 6, 14, 100.00, 'normal'),
(11585, 'S', 16, 'disponible', 51, 94, 14, 100.00, 'normal'),
(11586, 'S', 17, 'disponible', 51, 6, 86, 100.00, 'normal'),
(11587, 'S', 18, 'disponible', 51, 94, 86, 100.00, 'normal'),
(11588, 'S', 19, 'disponible', 51, 14, 6, 100.00, 'normal'),
(11589, 'S', 20, 'disponible', 51, 86, 6, 100.00, 'normal'),
(11590, 'S', 21, 'disponible', 51, 10, 6, 100.00, 'normal'),
(11591, 'S', 22, 'disponible', 51, 90, 6, 100.00, 'normal'),
(11592, 'S', 23, 'disponible', 51, 6, 10, 100.00, 'normal'),
(11593, 'S', 24, 'disponible', 51, 94, 10, 100.00, 'normal'),
(11594, 'S', 25, 'disponible', 51, 6, 90, 100.00, 'normal'),
(11595, 'S', 26, 'disponible', 51, 10, 6, 100.00, 'normal'),
(11596, 'T', 1, 'disponible', 51, 90, 6, 100.00, 'normal'),
(11597, 'T', 2, 'disponible', 51, 6, 10, 100.00, 'normal'),
(11598, 'T', 3, 'disponible', 51, 6, 6, 100.00, 'normal'),
(11599, 'T', 4, 'disponible', 51, 94, 6, 100.00, 'normal'),
(11600, 'T', 5, 'disponible', 51, 6, 6, 100.00, 'normal'),
(11601, 'T', 6, 'disponible', 51, 94, 6, 100.00, 'normal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgiiee_categoria`
--

CREATE TABLE `sgiiee_categoria` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sgiiee_categoria`
--

INSERT INTO `sgiiee_categoria` (`id`, `nombre`) VALUES
(1, 'juegos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgiiee_evento`
--

CREATE TABLE `sgiiee_evento` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `lugar` varchar(250) NOT NULL,
  `capacidad` int(10) UNSIGNED NOT NULL CHECK (`capacidad` >= 0),
  `imagen` varchar(100) DEFAULT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  `forma_recinto` varchar(20) NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_avanzado` decimal(10,2) NOT NULL,
  `precio_vip` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sgiiee_evento`
--

INSERT INTO `sgiiee_evento` (`id`, `nombre`, `descripcion`, `fecha`, `hora`, `lugar`, `capacidad`, `imagen`, `categoria_id`, `forma_recinto`, `precio_normal`, `precio_avanzado`, `precio_vip`) VALUES
(51, 'ASDFASDFSDF', 'ASDFASDFSA', '2025-12-03', '03:13:00.000000', 'FASFSDAF', 500, 'eventos/evento1.jpeg', 1, 'cuadrado', 100.00, 180.00, 300.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgiiee_itemcarrito`
--

CREATE TABLE `sgiiee_itemcarrito` (
  `id` bigint(20) NOT NULL,
  `agregado_en` datetime(6) NOT NULL,
  `asiento_id` bigint(20) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indices de la tabla `sgiiee_asiento`
--
ALTER TABLE `sgiiee_asiento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sgiiee_asiento_evento_id_fila_numero_89b0241f_uniq` (`evento_id`,`fila`,`numero`);

--
-- Indices de la tabla `sgiiee_categoria`
--
ALTER TABLE `sgiiee_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sgiiee_evento`
--
ALTER TABLE `sgiiee_evento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgiiee_evento_categoria_id_f1f426ed_fk_sgiiee_categoria_id` (`categoria_id`);

--
-- Indices de la tabla `sgiiee_itemcarrito`
--
ALTER TABLE `sgiiee_itemcarrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgiiee_itemcarrito_asiento_id_4b13f096_fk_sgiiee_asiento_id` (`asiento_id`),
  ADD KEY `sgiiee_itemcarrito_usuario_id_0fa98cb7_fk_auth_user_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `sgiiee_asiento`
--
ALTER TABLE `sgiiee_asiento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11602;

--
-- AUTO_INCREMENT de la tabla `sgiiee_categoria`
--
ALTER TABLE `sgiiee_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sgiiee_evento`
--
ALTER TABLE `sgiiee_evento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `sgiiee_itemcarrito`
--
ALTER TABLE `sgiiee_itemcarrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

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
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `sgiiee_asiento`
--
ALTER TABLE `sgiiee_asiento`
  ADD CONSTRAINT `sgiiee_asiento_evento_id_55faac00_fk_sgiiee_evento_id` FOREIGN KEY (`evento_id`) REFERENCES `sgiiee_evento` (`id`);

--
-- Filtros para la tabla `sgiiee_evento`
--
ALTER TABLE `sgiiee_evento`
  ADD CONSTRAINT `sgiiee_evento_categoria_id_f1f426ed_fk_sgiiee_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `sgiiee_categoria` (`id`);

--
-- Filtros para la tabla `sgiiee_itemcarrito`
--
ALTER TABLE `sgiiee_itemcarrito`
  ADD CONSTRAINT `sgiiee_itemcarrito_asiento_id_4b13f096_fk_sgiiee_asiento_id` FOREIGN KEY (`asiento_id`) REFERENCES `sgiiee_asiento` (`id`),
  ADD CONSTRAINT `sgiiee_itemcarrito_usuario_id_0fa98cb7_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
