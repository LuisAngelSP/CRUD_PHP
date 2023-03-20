-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2023 a las 19:44:32
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_categoria`
--

CREATE TABLE `tm_categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(100) DEFAULT NULL,
  `est` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tm_categoria`
--

INSERT INTO `tm_categoria` (`cat_id`, `cat_nom`, `est`) VALUES
(1, 'Software', 1),
(2, 'Hardware', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_product`
--

CREATE TABLE `tm_product` (
  `prod_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `prod_nom` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_cantidad` int(11) DEFAULT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tm_product`
--

INSERT INTO `tm_product` (`prod_id`, `cat_id`, `prod_nom`, `prod_desc`, `prod_cantidad`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 2, 'Ram', 'Ninguna', NULL, '2023-03-19 22:52:31', NULL, NULL, 1),
(13, 2, 'Monitor', 'Ningunas', NULL, '2023-03-19 23:51:30', '2023-03-20 12:39:08', NULL, 1),
(15, 2, 'Teclado', 'MARCA Logitech 1288', NULL, '2023-03-19 23:59:22', '2023-03-20 11:53:44', NULL, 1),
(16, 2, 'SDD12', 'Ninguna', NULL, '2023-03-20 00:00:43', '2023-03-20 12:02:12', NULL, 1),
(17, 2, 'LAPTOP', 'Marca Lenovo', 10, '2023-03-20 00:00:57', '2023-03-20 12:41:30', NULL, 1),
(18, 2, 'MOUSE', 'Ninguna', NULL, '2023-03-20 00:01:14', NULL, NULL, 1),
(20, 2, 'Cargador de Laptop', 'Marca Lenovo', NULL, '2023-03-20 09:16:53', '2023-03-20 12:02:00', NULL, 1),
(21, 2, 'Celular', 'Marca Samsung j7dd', NULL, '2023-03-20 10:48:25', '2023-03-20 12:39:27', NULL, 1),
(22, 2, 'Tablet', 'Marca samsung', NULL, '2023-03-20 11:04:03', '2023-03-20 12:02:19', NULL, 1),
(23, 1, 'Officce', 'word, excel, powerpoint', NULL, '2023-03-20 11:20:18', NULL, NULL, 1),
(24, 1, 'AutoCat', 'Para Ingenieria y planos', 6, '2023-03-20 11:45:16', '2023-03-20 12:41:19', NULL, 1),
(25, 1, 'PhotoShows', 'mmmddd', NULL, '2023-03-20 11:48:50', '2023-03-20 11:53:34', NULL, 1),
(26, 1, 'xampp', 'Servidor', 1, '2023-03-20 12:44:52', '2023-03-20 12:45:02', NULL, 1),
(27, 2, 'USB', 'gkgkj', 7, '2023-03-20 13:22:32', '2023-03-20 13:22:54', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `tm_product`
--
ALTER TABLE `tm_product`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_product`
--
ALTER TABLE `tm_product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
