-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: db5000539794.hosting-data.io
-- Tiempo de generación: 18-05-2021 a las 17:42:34
-- Versión del servidor: 5.7.32-log
-- Versión de PHP: 7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbs518309`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adns`
--

CREATE TABLE `adns` (
  `id` int(11) NOT NULL,
  `adn` varchar(100) NOT NULL,
  `has_mutation` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `adns`
--

INSERT INTO `adns` (`id`, `adn`, `has_mutation`, `updated_at`, `created_at`) VALUES
(1, '[ \"AAAAAA\", \"AAAAAA\", \"AAAAAA\", \"AAAAAA\", \"AAAAAA\",\"AAAAAA\" ]', 1, '2021-05-18 18:24:55', '2021-05-18 18:24:55'),
(2, '[ \"ATGCGA\", \"CAGTGC\", \"TTATGT\", \"AGAAGG\", \"CCCCTA\", \"TCACTG\" ]', 1, '2021-05-18 18:39:25', '2021-05-18 18:39:25'),
(4, '[ \"ABCDEF\", \"GHIJKL\", \"MOPQRS\", \"TUVWYX\", \"AXRSTS\", \"CJTDIW\" ]', 1, '2021-05-18 18:57:34', '2021-05-18 18:57:34'),
(6, '[ \"ABCDEF\", \"GHIJKL\", \"MOPQRS\", \"TUVWYX\", \"XMIJLC\", \"PWLKEC\" ]', 0, '2021-05-18 19:01:24', '2021-05-18 19:01:24'),
(7, '[ \"ABKDEF\", \"GHIJKL\", \"MOPQRS\", \"TUVWYX\", \"XMIJLC\", \"PWLKEC\" ]', 0, '2021-05-18 19:22:01', '2021-05-18 19:22:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2020_06_17_132844_create_categories_table', 2),
('2020_06_17_132902_create_recipes_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('traykz@hotmail.com', '669c508079e0d6714d5d5087df6974fc6ec46575fa8fd7b23d99bae9a4a49241', '2020-07-03 05:46:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mangocharm.com', '$2y$10$ED8uvDT0xwoa2AxxC2TvlOs9rig2tSj/SiExljfgYTfh/05ko2Upq', 'rYlWUnzh5yvaIPniNYJqMWyXBYCyVMUaKZxVqjP7nIRdJeni3lOQurPaqCJI', '2020-07-31 00:02:14', '2020-08-19 03:22:20'),
(2, 'Mike', 'traykz@hotmail.com', '$2y$10$cdTttjGbVLKyd8TCw7oPserzgPTd5FR0BuLpf95xf7Rj41bX/K/9C', NULL, '2021-05-18 05:55:06', '2021-05-18 05:55:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adns`
--
ALTER TABLE `adns`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adns`
--
ALTER TABLE `adns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
