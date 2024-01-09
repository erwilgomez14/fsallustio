-- phpMyAdmin SQL Dump
-- version 5.2.1-1.fc37
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-11-2023 a las 14:27:51
-- Versión del servidor: 10.5.22-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tenantpp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_multas`
--

CREATE TABLE `asignacion_multas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descontado` tinyint(1) DEFAULT 0,
  `fechaDescontado` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tipoMulta_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignacion_multas`
--

INSERT INTO `asignacion_multas` (`id`, `descontado`, `fechaDescontado`, `user_id`, `tipoMulta_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, NULL, 1, 1, '2023-11-07 13:35:15', '2023-11-07 13:35:15', NULL),
(2, 0, NULL, 1, 1, '2023-11-07 13:55:58', '2023-11-07 13:55:58', NULL),
(3, 0, NULL, 1, 1, '2023-11-07 13:56:46', '2023-11-07 13:56:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_rooms`
--

CREATE TABLE `asignacion_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion_turnos`
--

CREATE TABLE `asignacion_turnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `turno_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignacion_turnos`
--

INSERT INTO `asignacion_turnos` (`id`, `user_id`, `turno_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2023-11-07 17:10:25', '2023-11-07 17:10:25', NULL),
(2, 7, 2, '2023-11-07 17:21:32', '2023-11-07 18:48:53', '2023-11-07 18:48:53'),
(3, 3, 3, '2023-11-07 18:44:16', '2023-11-07 18:48:58', '2023-11-07 18:48:58'),
(4, 6, 2, '2023-11-07 18:44:26', '2023-11-07 18:44:26', NULL),
(5, 2, 3, '2023-11-07 18:45:19', '2023-11-07 18:45:19', NULL),
(6, 5, 2, '2023-11-07 18:47:02', '2023-11-07 18:47:41', '2023-11-07 18:47:41'),
(7, 4, 3, '2023-11-07 18:47:55', '2023-11-07 18:47:55', NULL),
(8, 7, 2, '2023-11-07 18:49:08', '2023-11-07 18:49:08', NULL),
(9, 6, 2, '2023-11-07 18:52:49', '2023-11-07 18:52:49', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `mi_hora` time NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `control` varchar(255) NOT NULL,
  `multa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `fecha`, `mi_hora`, `user_id`, `control`, `multa_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-11-07', '13:11:00', 1, 'Retardado', NULL, '2023-11-07 17:11:21', '2023-11-07 17:11:21', NULL),
(2, '2023-11-08', '08:00:00', 1, 'Retardado', NULL, '2023-11-07 17:19:22', '2023-11-07 17:19:22', NULL),
(3, '2023-11-07', '13:22:00', 7, 'A Tiempo', NULL, '2023-11-07 17:22:14', '2023-11-07 17:22:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_tiempo_configs`
--

CREATE TABLE `asistencia_tiempo_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `clase` varchar(255) NOT NULL,
  `tiempo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_tiempo_configs`
--

INSERT INTO `asistencia_tiempo_configs` (`id`, `nombre`, `clase`, `tiempo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sobre el Tiempo', 'btn btn-warning', 900, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descontados`
--

CREATE TABLE `descontados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `valor` double DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `descontado` tinyint(1) DEFAULT 0,
  `fechaDescontado` date DEFAULT NULL,
  `descuento_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montoDescuento` double NOT NULL,
  `montoDescontado` double DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `tipoDescuento_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`id`, `montoDescuento`, `montoDescontado`, `saldo`, `tipoDescuento_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2500, NULL, 2500, 1, 1, '2023-11-07 14:00:06', '2023-11-07 14:00:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `representative` varchar(255) DEFAULT NULL,
  `representative_identification_card` varchar(255) DEFAULT NULL,
  `number_rooms` int(11) DEFAULT NULL,
  `capacity_models` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `name`, `nit`, `address`, `representative`, `representative_identification_card`, `number_rooms`, `capacity_models`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'LOCODICE', '1234', '1234', '1234', '1234', 15, 30, NULL, '2023-11-07 13:11:21', '2023-11-07 13:11:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impuestos`
--

CREATE TABLE `impuestos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `porcentaje` double(12,2) DEFAULT NULL,
  `mayorQue` double(12,2) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `impuestos`
--

INSERT INTO `impuestos` (`id`, `nombre`, `porcentaje`, `mayorQue`, `estado`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Retencion Fuente', 4.00, 100000.00, 1, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `valor` double(8,2) NOT NULL,
  `dias` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metas`
--

INSERT INTO `metas` (`id`, `nombre`, `valor`, `dias`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LLEGADA TARDE', 1500.00, 15.00, '2023-11-07 13:35:07', '2023-11-07 13:35:07', NULL),
(2, 'MATASANO', 2500.00, 15.00, '2023-11-07 18:00:55', '2023-11-07 18:00:55', NULL),
(3, 'panconqueso', 5000.00, 15.00, '2023-11-07 18:24:18', '2023-11-07 18:24:18', NULL),
(4, 'Cereales', 10000.00, 15.00, '2023-11-07 18:28:19', '2023-11-07 18:28:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meta_modelos`
--

CREATE TABLE `meta_modelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mayorQue` double(12,2) NOT NULL,
  `porcentaje` double(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `meta_modelos`
--

INSERT INTO `meta_modelos` (`id`, `mayorQue`, `porcentaje`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0.00, 0.00, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '0000_00_00_000000_rename_statistics_counters', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_14_021252_create_empresas_table', 1),
(7, '2023_04_13_023102_create_cursos_table', 1),
(8, '2023_04_14_013430_create_tipo_usuarios_table', 1),
(9, '2023_04_14_224853_create_users_table', 1),
(10, '2023_04_15_004320_create_rooms_table', 1),
(11, '2023_04_15_004810_create_asignacion_rooms_table', 1),
(12, '2023_04_15_023748_create_turnos_table', 1),
(13, '2023_04_15_024004_create_asignacion_turnos_table', 1),
(14, '2023_04_15_025804_create_tipo_multas_table', 1),
(15, '2023_04_15_030154_create_asignacion_multas_table', 1),
(16, '2023_04_15_031746_create_asistencias_table', 1),
(17, '2023_04_15_032650_create_paginas_table', 1),
(18, '2023_04_15_033318_create_metas_table', 1),
(19, '2023_04_15_033525_create_resgistro_producidos_table', 1),
(20, '2023_04_15_040734_create_tipo_descuentos_table', 1),
(21, '2023_04_15_040858_create_descuentos_table', 1),
(22, '2023_05_06_030725_create_permission_tables', 1),
(23, '2023_05_17_181053_create_descontados_table', 1),
(24, '2023_06_18_213610_create_meta_modelos_table', 1),
(25, '2023_06_19_144456_create_reporte_paginas_table', 1),
(26, '2023_06_27_203049_create_impuestos_table', 1),
(27, '2023_06_28_180625_create_pagos_table', 1),
(28, '2023_07_03_185053_create_jobs_table', 1),
(29, '2023_09_30_084811_create_posts_table', 1),
(30, '2023_10_28_214447_create_asistencia_tiempo_config_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paginas`
--

CREATE TABLE `paginas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `moneda` varchar(8) NOT NULL,
  `valor` double(4,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paginas`
--

INSERT INTO `paginas` (`id`, `nombre`, `moneda`, `valor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CHATURBATE', 'dolar', 0.05, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(2, 'STRIPCHAT', 'dolar', 0.05, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(3, 'CAMSODA', 'dolar', 1.00, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(4, 'BONGA', 'dolar', 1.00, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date DEFAULT NULL,
  `pagado` tinyint(1) DEFAULT 0,
  `devengado` double(12,2) DEFAULT NULL,
  `descuento` double(12,2) DEFAULT NULL,
  `neto` double(12,2) DEFAULT NULL,
  `impuestoPorcentaje` double(12,2) DEFAULT NULL,
  `impuestoDescuento` double(12,2) DEFAULT NULL,
  `multaDescuento` double(12,2) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `impuesto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `fecha`, `pagado`, `devengado`, `descuento`, `neto`, `impuestoPorcentaje`, `impuestoDescuento`, `multaDescuento`, `user_id`, `impuesto_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-07-15', 1, 15084800.00, 0.00, 12671232.00, 4.00, 603392.00, NULL, 2, 1, '2023-11-08 14:58:56', '2023-11-09 17:43:26', NULL),
(2, '2023-07-15', 1, 23944800.00, 0.00, 20113632.00, 4.00, 957792.00, NULL, 3, 1, '2023-11-08 14:58:56', '2023-11-09 17:43:26', NULL),
(3, '2023-07-15', 1, 28733760.00, 0.00, 24136358.40, 4.00, 1149350.40, NULL, 4, 1, '2023-11-08 14:58:56', '2023-11-09 17:43:26', NULL),
(4, '2023-07-15', 1, 21553414.40, 0.00, 18104868.08, 4.00, 862136.58, NULL, 8, 1, '2023-11-08 14:58:56', '2023-11-09 17:43:26', NULL),
(5, '2023-07-30', 1, 15084800.00, 0.00, 13274624.00, 4.00, 603392.00, NULL, 2, 1, '2023-11-09 17:24:59', '2023-11-09 17:43:26', NULL),
(6, '2023-07-30', 1, 23944800.00, 0.00, 21071424.00, 4.00, 957792.00, NULL, 3, 1, '2023-11-09 17:24:59', '2023-11-09 17:43:26', NULL),
(7, '2023-07-30', 1, 28733760.00, 0.00, 25285708.80, 4.00, 1149350.40, NULL, 4, 1, '2023-11-09 17:24:59', '2023-11-09 17:43:26', NULL),
(8, '2023-07-30', 1, 21553414.40, 0.00, 18967004.66, 4.00, 862136.58, NULL, 8, 1, '2023-11-09 17:24:59', '2023-11-09 17:43:26', NULL),
(9, '2023-08-15', 1, 15248320.00, 0.00, 14028454.40, 4.00, 609932.80, NULL, 2, 1, '2023-11-09 17:41:17', '2023-11-09 17:43:26', NULL),
(10, '2023-08-15', 1, 31128240.00, 0.00, 28637980.80, 4.00, 1245129.60, NULL, 3, 1, '2023-11-09 17:41:17', '2023-11-09 17:43:26', NULL),
(11, '2023-08-15', 1, 25142040.00, 0.00, 23130676.80, 4.00, 1005681.60, NULL, 4, 1, '2023-11-09 17:41:17', '2023-11-09 17:43:26', NULL),
(12, '2023-08-15', 1, 22773588.80, 0.00, 20951701.70, 4.00, 910943.55, NULL, 8, 1, '2023-11-09 17:41:17', '2023-11-09 17:43:26', NULL),
(13, '2023-08-30', 1, 15248320.00, 0.00, 14638387.20, 4.00, 609932.80, NULL, 2, 1, '2023-11-09 17:43:25', '2023-11-09 17:43:26', NULL),
(14, '2023-08-30', 1, 33522720.00, 0.00, 32181811.20, 4.00, 1340908.80, NULL, 3, 1, '2023-11-09 17:43:25', '2023-11-09 17:43:26', NULL),
(15, '2023-08-30', 1, 20353080.00, 0.00, 19538956.80, 4.00, 814123.20, NULL, 4, 1, '2023-11-09 17:43:25', '2023-11-09 17:43:26', NULL),
(16, '2023-08-30', 1, 18964392.80, 0.00, 18205817.09, 4.00, 758575.71, NULL, 8, 1, '2023-11-09 17:43:25', '2023-11-09 17:43:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin.dashboard', 'Ver dashboard', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(2, 'admin.tenants.index', 'Ver listado de dominios', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(3, 'admin.tenants.create', 'Crear un dominio', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(4, 'admin.tenants.edit', 'Editar un dominio', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(5, 'admin.tenants.destroy', 'Eliminar un dominio', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(6, 'admin.tenants.seeders', 'Ejecutar seeders dominio', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(7, 'admin.home', 'Ver el dashboard', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(8, 'admin.users', 'Ver ruta usuarios', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(9, 'admin.users.index', 'Ver listado de usuarios', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(10, 'admin.users.create', 'Crear usuarios', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(11, 'admin.users.edit', 'Editar usuarios', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(12, 'admin.users.destroy', 'Eliminar usuarios', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(13, 'admin.users.asignarRol', 'Ver boton asinacion rol', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(14, 'admin.asignacionTurnos.index', 'Ver listado de asignacion de Turno', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(15, 'admin.asignacionTurnos.create', 'Crear una asignación de Turno', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(16, 'admin.asignacionTurnos.edit', 'Editar una asignación de Turno', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(17, 'admin.asignacionTurnos.destroy', 'Eliminar asignacionTurno', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(18, 'admin.asignacionRooms.index', 'Ver listado de asignación de rooms', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(19, 'admin.asignacionRooms.create', 'Crear asignación de rooms', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(20, 'admin.asignacionRooms.edit', 'Editar asignacion de rooms', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(21, 'admin.asignacionRooms.destroy', 'Eliminar asignacionRooms', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(22, 'admin.roles.index', 'Ver listado de roles', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(23, 'admin.roles.create', 'Crear roles', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(24, 'admin.roles.edit', 'Editar roles', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(25, 'admin.roles.destroy', 'Eliminar roles', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(26, 'admin.configuraciones.menu', 'Ver Menu Configuraciones', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(27, 'admin.configuraciones.metas', 'Ver menu metas', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(28, 'admin.tipoMetas', 'Ver, crear, editar, eliminar, menu metas estudio', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(29, 'admin.metasModelos', 'Ver, crear, editar, eliminar, menu metas modelos', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(30, 'admin.empresas', 'Ver, crear, editar, eliminar, menu empresa', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(31, 'admin.impuestos', 'Ver, crear, editar, eliminar, menu impuesto', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(32, 'admin.tipoUsuarios', 'Ver, crear, editar, eliminar, menu tipo usuarios', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(33, 'admin.tipoTurnos', 'Ver, crear, editar, eliminar,menu tipo turnos', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(34, 'admin.tipoRooms', 'Ver, crear, editar, eliminar, menu tipo rooms', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(35, 'admin.tipoMultas', 'Ver, crear, editar, eliminar, menu tipo multas', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(36, 'admin.tipoDescuentos', 'Ver, crear, editar, eliminar, menu tipo descuentos', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(37, 'admin.paginas', 'Ver, crear, editar, eliminar, menu paginas', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(38, 'admin.certificaciones', 'Ver menu certificaiones', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(39, 'admin.certificacion.laboral', 'Ver y generar  menu certificacion laboral', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(40, 'admin.certificacion.tiempo', 'Ver y generar  menu certificacion tiempo', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(41, 'admin.certificacion.impuesto', 'Ver y generar  menu certificacion impuesto', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(42, 'admin.certificacion.pago', 'Ver y generar  menu certificacion pago', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL),
(43, 'admin.registroMultas.index', 'Ver listado de multas', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(44, 'admin.registroMultas.create', 'Crear multas', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(45, 'admin.registroMultas.edit', 'Editar multas', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(46, 'admin.registroMultas.destroy', 'Eliminar multas', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(47, 'admin.registroAsistencias.index', 'Ver listado de asistencia', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(48, 'admin.registroAsistencias.create', 'Crear asistencia', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(49, 'admin.registroAsistencias.edit', 'Editar asistencia', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(50, 'admin.registroAsistencias.destroy', 'Eliminar asistencia', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(51, 'admin.registroAsistencias.control', 'Ver columna de control', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(52, 'admin.registroProduccion.index', 'Ver listado de produccion', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(53, 'admin.registroProduccion.resumen', 'Ver resumen produccion', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(54, 'admin.registroProduccion.create', 'Crear produccion', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(55, 'admin.registroProduccion.edit', 'Editar produccion', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(56, 'admin.registroProduccion.destroy', 'Eliminar produccion', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(57, 'admin.registroDescuentos.index', 'Ver listado de descuentos', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(58, 'admin.registroDescuentos.create', 'Crear descuentos', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(59, 'admin.registroDescuentos.edit', 'Editar descuentos', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(60, 'admin.registroDescuentos.destroy', 'Eliminar descuentos', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(61, 'admin.registroDescuentos.total', 'Ver boton descuento total', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(62, 'admin.registroDescuentos.parcial', 'Ver boton descuento parcial', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(63, 'admin.reportePaginas.index', 'Ver listado de produccion', 'web', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_paginas`
--

CREATE TABLE `reporte_paginas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `Cantidad` double(12,2) NOT NULL,
  `TRM` double(12,2) DEFAULT NULL,
  `valorPagina` double(12,2) DEFAULT NULL,
  `dolares` double(12,2) DEFAULT NULL,
  `pesos` double(12,2) DEFAULT NULL,
  `porcentaje` double(12,2) DEFAULT NULL,
  `netoPesos` double(12,2) DEFAULT NULL,
  `porcentajeTotal` double(12,2) DEFAULT NULL,
  `verificado` tinyint(1) DEFAULT 0,
  `enviarPago` tinyint(1) DEFAULT 0,
  `metaModelo` double(12,2) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pagina_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reporte_paginas`
--

INSERT INTO `reporte_paginas` (`id`, `fecha`, `Cantidad`, `TRM`, `valorPagina`, `dolares`, `pesos`, `porcentaje`, `netoPesos`, `porcentajeTotal`, `verificado`, `enviarPago`, `metaModelo`, `user_id`, `pagina_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-07-15', 1.00, 4000.00, 0.05, 0.05, 200.00, 80.00, 160.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(2, '2023-07-15', 4088.00, 4000.00, 0.05, 204.40, 817600.00, 80.00, 654080.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(3, '2023-07-15', 398.00, 4000.00, 0.05, 19.90, 79600.00, 80.00, 63680.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(4, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(5, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(6, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(7, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(8, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(9, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(10, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(11, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(12, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 1, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(13, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(14, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(15, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(16, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(17, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(18, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(19, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(20, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(21, '2023-07-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(22, '2023-07-15', 11322.00, 4000.00, 0.05, 566.10, 2264400.00, 80.00, 1811520.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(23, '2023-07-15', 1946.00, 4000.00, 0.05, 97.30, 389200.00, 80.00, 311360.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(24, '2023-07-15', 47.53, 3800.00, 1.00, 47.53, 180614.00, 80.00, 144491.20, 80.00, 1, 1, 0.00, 8, 4, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(25, '2023-07-15', 23.89, 3800.00, 1.00, 23.89, 90782.00, 80.00, 72625.60, 80.00, 1, 1, 0.00, 8, 4, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(26, '2023-07-15', 18.94, 3800.00, 1.00, 18.94, 71972.00, 80.00, 57577.60, 80.00, 1, 1, 0.00, 8, 4, '2023-11-08 14:20:57', '2023-11-08 14:58:56', NULL),
(27, '2023-07-30', 1.00, 4000.00, 0.05, 0.05, 200.00, 80.00, 160.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(28, '2023-07-30', 4088.00, 4000.00, 0.05, 204.40, 817600.00, 80.00, 654080.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(29, '2023-07-30', 398.00, 4000.00, 0.05, 19.90, 79600.00, 80.00, 63680.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(30, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(31, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(32, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(33, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(34, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(35, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(36, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(37, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(38, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 1, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(39, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(40, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(41, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(42, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(43, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(44, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(45, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(46, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(47, '2023-07-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(48, '2023-07-30', 11322.00, 4000.00, 0.05, 566.10, 2264400.00, 80.00, 1811520.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(49, '2023-07-30', 1946.00, 4000.00, 0.05, 97.30, 389200.00, 80.00, 311360.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(50, '2023-07-30', 47.53, 3800.00, 1.00, 47.53, 180614.00, 80.00, 144491.20, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(51, '2023-07-30', 23.89, 3800.00, 1.00, 23.89, 90782.00, 80.00, 72625.60, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(52, '2023-07-30', 18.94, 3800.00, 1.00, 18.94, 71972.00, 80.00, 57577.60, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:24:39', '2023-11-09 17:24:59', NULL),
(53, '2023-08-15', 1.00, 4000.00, 0.05, 0.05, 200.00, 80.00, 160.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(54, '2023-08-15', 4088.00, 5000.00, 0.05, 204.40, 1022000.00, 80.00, 817600.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(55, '2023-08-15', 398.00, 4000.00, 0.05, 19.90, 79600.00, 80.00, 63680.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(56, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(57, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(58, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(59, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(60, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(61, '2023-08-15', 29931.00, 10000.00, 0.05, 1496.55, 14965500.00, 80.00, 11972400.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(62, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(63, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(64, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 1, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(65, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(66, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(67, '2023-08-15', 29931.00, 1000.00, 0.05, 1496.55, 1496550.00, 80.00, 1197240.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(68, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(69, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(70, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(71, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(72, '2023-08-15', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(73, '2023-08-15', 29931.00, 5000.00, 0.05, 1496.55, 7482750.00, 80.00, 5986200.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(74, '2023-08-15', 11322.00, 4000.00, 0.05, 566.10, 2264400.00, 80.00, 1811520.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(75, '2023-08-15', 1946.00, 4000.00, 0.05, 97.30, 389200.00, 80.00, 311360.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(76, '2023-08-15', 47.53, 3800.00, 1.00, 47.53, 180614.00, 80.00, 144491.20, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(77, '2023-08-15', 23.89, 5000.00, 1.00, 23.89, 119450.00, 80.00, 95560.00, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(78, '2023-08-15', 18.94, 3800.00, 1.00, 18.94, 71972.00, 80.00, 57577.60, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:41:09', '2023-11-09 17:41:17', NULL),
(79, '2023-08-30', 1.00, 4000.00, 0.05, 0.05, 200.00, 80.00, 160.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(80, '2023-08-30', 4088.00, 5000.00, 0.05, 204.40, 1022000.00, 80.00, 817600.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(81, '2023-08-30', 398.00, 4000.00, 0.05, 19.90, 79600.00, 80.00, 63680.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(82, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(83, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(84, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 2, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(85, '2023-08-30', 29931.00, 6000.00, 0.05, 1496.55, 8979300.00, 80.00, 7183440.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(86, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(87, '2023-08-30', 29931.00, 10000.00, 0.05, 1496.55, 14965500.00, 80.00, 11972400.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(88, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(89, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 3, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(90, '2023-08-30', 29931.00, 0.00, 0.05, 1496.55, 0.00, 80.00, 0.00, 80.00, 1, 1, 0.00, 4, 1, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(91, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(92, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(93, '2023-08-30', 29931.00, 1000.00, 0.05, 1496.55, 1496550.00, 80.00, 1197240.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(94, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(95, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 4, 2, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(96, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:43:10', '2023-11-09 17:43:26', NULL),
(97, '2023-08-30', 29931.00, 4000.00, 0.05, 1496.55, 5986200.00, 80.00, 4788960.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL),
(98, '2023-08-30', 29931.00, 100.00, 0.05, 1496.55, 149655.00, 80.00, 119724.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL),
(99, '2023-08-30', 29931.00, 5000.00, 0.05, 1496.55, 7482750.00, 80.00, 5986200.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL),
(100, '2023-08-30', 11322.00, 4000.00, 0.05, 566.10, 2264400.00, 80.00, 1811520.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL),
(101, '2023-08-30', 1946.00, 4000.00, 0.05, 97.30, 389200.00, 80.00, 311360.00, 80.00, 1, 1, 0.00, 8, 2, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL),
(102, '2023-08-30', 47.53, 3800.00, 1.00, 47.53, 180614.00, 80.00, 144491.20, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL),
(103, '2023-08-30', 23.89, 50000.00, 1.00, 23.89, 1194500.00, 80.00, 955600.00, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL),
(104, '2023-08-30', 18.94, 3800.00, 1.00, 18.94, 71972.00, 80.00, 57577.60, 80.00, 1, 1, 0.00, 8, 4, '2023-11-09 17:43:11', '2023-11-09 17:43:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resgistro_producidos`
--

CREATE TABLE `resgistro_producidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `valorProducido` double(8,2) NOT NULL,
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `pagina_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `resgistro_producidos`
--

INSERT INTO `resgistro_producidos` (`id`, `fecha`, `valorProducido`, `meta_id`, `pagina_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2023-11-07', 500.00, 1, 4, 1, '2023-11-07 13:58:00', '2023-11-07 13:58:00', NULL),
(2, '2023-11-07', 250.00, 1, 4, 1, '2023-11-07 13:59:21', '2023-11-07 13:59:21', NULL),
(3, '2023-11-07', 200.00, 1, 3, 1, '2023-11-07 16:43:36', '2023-11-07 16:43:36', NULL),
(4, '2023-11-07', 100.00, 1, 4, 1, '2023-11-07 16:44:36', '2023-11-07 16:44:36', NULL),
(5, '2023-11-10', 300.00, 1, 3, 1, '2023-11-07 16:47:44', '2023-11-07 16:47:44', NULL),
(6, '2023-11-07', 20.00, 1, 4, 1, '2023-11-07 18:04:09', '2023-11-07 18:04:09', NULL),
(7, '2023-11-07', 250.00, 2, 4, 1, '2023-11-07 18:13:55', '2023-11-07 18:13:55', NULL),
(8, '2023-11-07', 500.00, 2, 4, 1, '2023-11-07 18:15:21', '2023-11-07 18:15:21', NULL),
(9, '2023-11-07', 100.00, 2, 4, 1, '2023-11-07 18:16:33', '2023-11-07 18:16:33', NULL),
(10, '2023-11-07', 25.00, 1, 4, 1, '2023-11-07 18:21:27', '2023-11-07 18:21:27', NULL),
(11, '2023-11-07', 500.00, 3, 3, 1, '2023-11-07 18:25:47', '2023-11-07 18:25:47', NULL),
(12, '2023-11-07', 1250.00, 3, 4, 1, '2023-11-07 18:27:06', '2023-11-07 18:27:06', NULL),
(13, '2023-11-07', 1000.00, 2, 3, 1, '2023-11-07 18:27:39', '2023-11-07 18:27:39', NULL),
(14, '2023-11-07', 5000.00, 4, 4, 1, '2023-11-07 18:30:01', '2023-11-07 18:30:01', NULL),
(15, '2023-11-07', 2000.00, 3, 3, 1, '2023-11-07 18:30:18', '2023-11-07 18:30:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21'),
(2, 'Modelo', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21'),
(3, 'Modelo Satélite', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21'),
(4, 'Monitor', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21'),
(5, 'Contador', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21'),
(6, 'Super Admin', 'web', '2023-11-07 12:22:21', '2023-11-07 12:22:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(14, 2),
(14, 4),
(15, 1),
(15, 4),
(16, 1),
(16, 4),
(17, 1),
(17, 4),
(18, 1),
(18, 2),
(18, 4),
(19, 1),
(19, 4),
(20, 1),
(20, 4),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(43, 2),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(45, 4),
(46, 1),
(46, 4),
(47, 1),
(47, 2),
(47, 4),
(48, 1),
(48, 4),
(49, 1),
(49, 4),
(50, 1),
(50, 4),
(51, 1),
(51, 2),
(51, 4),
(52, 1),
(52, 2),
(52, 4),
(53, 1),
(53, 4),
(54, 1),
(54, 4),
(55, 1),
(55, 4),
(56, 1),
(56, 4),
(57, 1),
(57, 2),
(57, 4),
(58, 1),
(58, 4),
(59, 1),
(59, 4),
(60, 1),
(60, 4),
(61, 1),
(61, 4),
(62, 1),
(62, 4),
(63, 1),
(63, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_descuentos`
--

CREATE TABLE `tipo_descuentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_descuentos`
--

INSERT INTO `tipo_descuentos` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'JUGUETERIA', '2023-11-07 13:59:46', '2023-11-07 13:59:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_multas`
--

CREATE TABLE `tipo_multas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `costo` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_multas`
--

INSERT INTO `tipo_multas` (`id`, `nombre`, `costo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Llega Tarde', 10000.00, '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `porcentaje` double(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`id`, `nombre`, `porcentaje`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrador', NULL, '2023-11-07 12:22:20', '2023-11-07 12:22:20', NULL),
(2, 'Modelo', 80.00, '2023-11-07 12:22:20', '2023-11-08 14:38:38', NULL),
(3, 'Modelo Satélite', NULL, '2023-11-07 12:22:20', '2023-11-07 12:22:20', NULL),
(4, 'Monitor', NULL, '2023-11-07 12:22:20', '2023-11-07 12:22:20', NULL),
(5, 'Contador', NULL, '2023-11-07 12:22:21', '2023-11-07 12:22:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horaIngreso` time DEFAULT NULL,
  `horaTermino` time DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `horaIngreso`, `horaTermino`, `nombre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '07:00:00', '14:00:00', 'Mañana', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(2, '14:00:00', '21:00:00', 'Tarde', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL),
(3, '21:00:00', '07:00:00', 'Noche', '2023-11-07 12:22:22', '2023-11-07 12:22:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `cedula` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `tipoUsuario_id` bigint(20) UNSIGNED DEFAULT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `fechaIngreso`, `name`, `cedula`, `celular`, `direccion`, `email`, `email_verified_at`, `active`, `tipoUsuario_id`, `empresa_id`, `created_at`, `updated_at`, `password`, `remember_token`, `deleted_at`) VALUES
(1, '2023-11-07', 'super usuario', '111111111', '11111111', 'Super', 'admin@gmail.com', '2023-05-12 02:39:30', 1, 2, NULL, '2023-11-07 12:22:22', '2023-11-07 12:22:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL),
(2, '2023-11-07', 'perreo', '457896523', '1234', '12434', 'qlq@qlq.com', NULL, 1, 2, 2, '2023-11-07 14:01:26', '2023-11-07 14:01:26', NULL, NULL, NULL),
(3, '2023-11-07', 'perro', '26893560', '1234', '12345', 'perro@perro.com', NULL, 1, 2, 2, '2023-11-07 16:23:49', '2023-11-07 16:23:49', NULL, NULL, NULL),
(4, '2023-11-07', 'gato', '4557855876', '12345', 'hola', 'gato@gato.com', NULL, 1, 2, 2, '2023-11-07 16:24:52', '2023-11-07 16:24:52', NULL, NULL, NULL),
(5, '2023-11-07', 'catdog', '12345', '1234567898', 'hola2', 'catdog@catdog.com', NULL, 1, 2, 2, '2023-11-07 16:28:11', '2023-11-07 16:28:11', NULL, NULL, NULL),
(6, '2023-11-07', 'mono', '1234', '1234', 'hola3', 'mono@mono.com', NULL, 1, 2, 2, '2023-11-07 16:30:17', '2023-11-07 16:30:17', NULL, NULL, NULL),
(7, '2023-11-23', 'enuar', '12345', '12345', 'hola5', 'enuar@enuar.com', NULL, 1, 2, 2, '2023-11-07 16:47:07', '2023-11-07 16:47:07', NULL, NULL, NULL),
(8, '2023-11-08', 'erwil', '20135456', '4654564', 'hola', 'erwil@erwil.com', NULL, 1, 2, 2, '2023-11-08 14:08:15', '2023-11-08 14:08:15', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connections_count` int(11) NOT NULL,
  `websocket_messages_count` int(11) NOT NULL,
  `api_messages_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignacion_multas`
--
ALTER TABLE `asignacion_multas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignacion_multas_user_id_foreign` (`user_id`),
  ADD KEY `asignacion_multas_tipomulta_id_foreign` (`tipoMulta_id`);

--
-- Indices de la tabla `asignacion_rooms`
--
ALTER TABLE `asignacion_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignacion_rooms_user_id_foreign` (`user_id`),
  ADD KEY `asignacion_rooms_room_id_foreign` (`room_id`);

--
-- Indices de la tabla `asignacion_turnos`
--
ALTER TABLE `asignacion_turnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignacion_turnos_user_id_foreign` (`user_id`),
  ADD KEY `asignacion_turnos_turno_id_foreign` (`turno_id`);

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asistencias_user_id_foreign` (`user_id`),
  ADD KEY `asistencias_multa_id_foreign` (`multa_id`);

--
-- Indices de la tabla `asistencia_tiempo_configs`
--
ALTER TABLE `asistencia_tiempo_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descontados`
--
ALTER TABLE `descontados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descontados_descuento_id_foreign` (`descuento_id`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descuentos_tipodescuento_id_foreign` (`tipoDescuento_id`),
  ADD KEY `descuentos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `meta_modelos`
--
ALTER TABLE `meta_modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagos_user_id_foreign` (`user_id`),
  ADD KEY `pagos_impuesto_id_foreign` (`impuesto_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reporte_paginas`
--
ALTER TABLE `reporte_paginas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reporte_paginas_user_id_foreign` (`user_id`),
  ADD KEY `reporte_paginas_pagina_id_foreign` (`pagina_id`);

--
-- Indices de la tabla `resgistro_producidos`
--
ALTER TABLE `resgistro_producidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resgistro_producidos_meta_id_foreign` (`meta_id`),
  ADD KEY `resgistro_producidos_pagina_id_foreign` (`pagina_id`),
  ADD KEY `resgistro_producidos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_descuentos`
--
ALTER TABLE `tipo_descuentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_multas`
--
ALTER TABLE `tipo_multas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_tipousuario_id_foreign` (`tipoUsuario_id`),
  ADD KEY `users_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignacion_multas`
--
ALTER TABLE `asignacion_multas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `asignacion_rooms`
--
ALTER TABLE `asignacion_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacion_turnos`
--
ALTER TABLE `asignacion_turnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `asistencia_tiempo_configs`
--
ALTER TABLE `asistencia_tiempo_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `descontados`
--
ALTER TABLE `descontados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `impuestos`
--
ALTER TABLE `impuestos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `meta_modelos`
--
ALTER TABLE `meta_modelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_paginas`
--
ALTER TABLE `reporte_paginas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `resgistro_producidos`
--
ALTER TABLE `resgistro_producidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_descuentos`
--
ALTER TABLE `tipo_descuentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_multas`
--
ALTER TABLE `tipo_multas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacion_multas`
--
ALTER TABLE `asignacion_multas`
  ADD CONSTRAINT `asignacion_multas_tipomulta_id_foreign` FOREIGN KEY (`tipoMulta_id`) REFERENCES `tipo_multas` (`id`),
  ADD CONSTRAINT `asignacion_multas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asignacion_rooms`
--
ALTER TABLE `asignacion_rooms`
  ADD CONSTRAINT `asignacion_rooms_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asignacion_rooms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `asignacion_turnos`
--
ALTER TABLE `asignacion_turnos`
  ADD CONSTRAINT `asignacion_turnos_turno_id_foreign` FOREIGN KEY (`turno_id`) REFERENCES `turnos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asignacion_turnos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_multa_id_foreign` FOREIGN KEY (`multa_id`) REFERENCES `asignacion_multas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asistencias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `descontados`
--
ALTER TABLE `descontados`
  ADD CONSTRAINT `descontados_descuento_id_foreign` FOREIGN KEY (`descuento_id`) REFERENCES `descuentos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD CONSTRAINT `descuentos_tipodescuento_id_foreign` FOREIGN KEY (`tipoDescuento_id`) REFERENCES `tipo_descuentos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `descuentos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_impuesto_id_foreign` FOREIGN KEY (`impuesto_id`) REFERENCES `impuestos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pagos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reporte_paginas`
--
ALTER TABLE `reporte_paginas`
  ADD CONSTRAINT `reporte_paginas_pagina_id_foreign` FOREIGN KEY (`pagina_id`) REFERENCES `paginas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reporte_paginas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `resgistro_producidos`
--
ALTER TABLE `resgistro_producidos`
  ADD CONSTRAINT `resgistro_producidos_meta_id_foreign` FOREIGN KEY (`meta_id`) REFERENCES `metas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resgistro_producidos_pagina_id_foreign` FOREIGN KEY (`pagina_id`) REFERENCES `paginas` (`id`),
  ADD CONSTRAINT `resgistro_producidos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_tipousuario_id_foreign` FOREIGN KEY (`tipoUsuario_id`) REFERENCES `tipo_usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
