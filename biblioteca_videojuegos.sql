-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2018 a las 18:13:30
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `CODVID` int(11) NOT NULL,
  `CODPLAT` int(11) DEFAULT NULL,
  `NOMVID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GENVID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`CODVID`, `CODPLAT`, `NOMVID`, `GENVID`) VALUES
(1, 5, 'MARIO KART', 'CONDUCCION'),
(2, 4, 'ROCKET LEAGUE', 'CONDUCCION'),
(3, 2, 'HALO', 'SHOOTER'),
(5, 4, 'HALF LIFE', 'FPS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`CODVID`),
  ADD KEY `CODPLAT` (`CODPLAT`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD CONSTRAINT `videojuegos_ibfk_1` FOREIGN KEY (`CODPLAT`) REFERENCES `plataforma` (`CODPLAT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
