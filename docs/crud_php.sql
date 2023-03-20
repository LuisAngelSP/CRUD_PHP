-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2023 a las 15:23:45
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
-- Estructura de tabla para la tabla `tm_product`
--

CREATE TABLE `tm_product` (
  `prod_id` int(11) NOT NULL,
  `prod_nom` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `fech_crea` datetime NOT NULL,
  `fech_modi` datetime DEFAULT NULL,
  `fech_elim` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tm_product`
--

INSERT INTO `tm_product` (`prod_id`, `prod_nom`, `prod_desc`, `fech_crea`, `fech_modi`, `fech_elim`, `est`) VALUES
(1, 'Ram', 'Ninguna', '2023-03-19 22:52:31', NULL, NULL, 1),
(2, 'Ram1', 'Ninguna', '2023-03-19 22:52:39', NULL, '2023-03-19 22:52:48', 0),
(3, 'Ramxx', 'Ninguna', '2023-03-19 22:57:08', NULL, '2023-03-19 22:57:13', 0),
(4, 'ssss', 'Ninguna', '2023-03-19 23:05:30', NULL, '2023-03-19 23:51:00', 0),
(5, 'Ramxxx', 'Ninguna', '2023-03-19 23:06:31', NULL, '2023-03-19 23:38:15', 0),
(6, 'dsdd', 'Ninguna', '2023-03-19 23:48:07', NULL, '2023-03-19 23:58:40', 0),
(7, 'dsddddd', 'Ninguna', '2023-03-19 23:48:12', NULL, '2023-03-19 23:58:38', 0),
(8, 'ssss', 'Ninguna', '2023-03-19 23:50:54', NULL, '2023-03-19 23:50:58', 0),
(9, 'ssss', 'Ninguna', '2023-03-19 23:50:54', NULL, '2023-03-19 23:51:03', 0),
(10, 'dd', 'Ninguna', '2023-03-19 23:51:08', NULL, '2023-03-19 23:51:45', 0),
(11, 'dd', 'Ninguna', '2023-03-19 23:51:08', NULL, '2023-03-19 23:51:47', 0),
(12, 'ddbb', 'Ninguna', '2023-03-19 23:51:29', NULL, '2023-03-19 23:51:49', 0),
(13, 'Monitor', 'Ninguna', '2023-03-19 23:51:30', '2023-03-19 23:58:51', NULL, 1),
(14, 'ddbbx', 'Ninguna', '2023-03-19 23:52:21', NULL, '2023-03-19 23:52:24', 0),
(15, 'Teclado', 'MARCA Logitech', '2023-03-19 23:59:22', '2023-03-20 09:14:22', NULL, 1),
(16, 'SDD12', 'Ninguna', '2023-03-20 00:00:43', '2023-03-20 00:00:48', NULL, 1),
(17, 'LAPTOP', 'Ninguna', '2023-03-20 00:00:57', '2023-03-20 00:01:06', NULL, 1),
(18, 'MOUSE', 'Ninguna', '2023-03-20 00:01:14', NULL, NULL, 1),
(19, '', '', '2023-03-20 09:08:19', NULL, '2023-03-20 09:08:22', 0),
(20, 'Cargador de Laptop', 'Marca Lenovo', '2023-03-20 09:16:53', NULL, NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tm_product`
--
ALTER TABLE `tm_product`
  ADD PRIMARY KEY (`prod_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tm_product`
--
ALTER TABLE `tm_product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
