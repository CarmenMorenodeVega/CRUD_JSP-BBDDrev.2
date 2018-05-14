-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2018 a las 10:19:22
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parroquia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catequista`
--

CREATE TABLE `catequista` (
  `catequistaID` int(5) NOT NULL,
  `nombreCatequista` varchar(30) CHARACTER SET utf8 NOT NULL,
  `ciclo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `telefono` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mail` varchar(30) CHARACTER SET utf8 NOT NULL,
  `localidadCatequista` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `catequista`
--

INSERT INTO `catequista` (`catequistaID`, `nombreCatequista`, `ciclo`, `telefono`, `mail`, `localidadCatequista`) VALUES
(1, 'Carmen', '3', '098765432', 'carmen@catequesis.com', 'Salamanca'),
(2, 'Lili', '1', '123456789', 'lili@catequesis.com', 'Campanillas'),
(3, 'Adriana', '2', '234567891', 'adriana@catequesis.com', 'Málaga'),
(4, 'Jose Miguel', '2', '674532901', 'josemi@catequesis.com', 'Campanillas'),
(5, 'Felisa', '1', '102938647', 'felisa@catequesis.com', 'Soria'),
(6, 'Paco', '3', '876456378', 'paco@catequesis.com', 'Estación de Campanillas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catequista_has_menor`
--

CREATE TABLE `catequista_has_menor` (
  `catequista_catequistaID` int(11) NOT NULL,
  `menor_menorID` int(11) NOT NULL,
  `ciclo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menor`
--

CREATE TABLE `menor` (
  `menorID` int(5) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `edad` int(5) DEFAULT NULL,
  `ciclo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `tutor` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` varchar(15) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menor`
--

INSERT INTO `menor` (`menorID`, `nombre`, `edad`, `ciclo`, `tutor`, `telefono`) VALUES
(1539, 'Lucas', 5, 'Ciclo 1: Curso de iniciación cristiana.', 'Gabriel', '098563421'),
(1550, 'Cuervo Sáchez, Ernesto', 9, 'ciclo 2: Curso de renovación de promesas bautismales.', 'María', '514263740'),
(1560, 'luis', 5, 'ciclo 2: Curso de renovación de promesas bautismales.', 'pepe', '123456789'),
(1602, 'Cano Cuenca, Margarita', 8, 'ciclo 3: Curso de confirmación y 1ª comunión', 'Luisa', '213456789'),
(1610, 'Doña Enríquez, Adrián Manuel', 8, '3', 'Eva', '321456789'),
(1611, 'Juan', 7, 'ciclo 2: Curso de renovación de promesas bautismales.', 'Iván', '654789321'),
(1672, 'Jimenez Cuenca, Vicente', 9, 'ciclo 2: Curso de renovación de promesas bautismales.', 'Luisa', '715463920'),
(1700, 'Silvia', 9, '3', 'Begoña', '324156798'),
(1701, 'Fernández Padilla, Esther', 7, '2', 'Francisco', '432156789'),
(1702, 'Galán Bazán, Ester María', 7, '2', 'Pelayo', '543216789'),
(1802, 'Moreno Blanco, Carlos', 6, '1', 'Ernesto', '876543219'),
(1804, 'Martina', 6, '1', 'Linda', '987453333'),
(1810, 'Narváez Gálvez, Juan Antonio', 6, '1', 'Isabel', '987654321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catequista`
--
ALTER TABLE `catequista`
  ADD PRIMARY KEY (`catequistaID`);

--
-- Indices de la tabla `catequista_has_menor`
--
ALTER TABLE `catequista_has_menor`
  ADD PRIMARY KEY (`catequista_catequistaID`,`menor_menorID`);

--
-- Indices de la tabla `menor`
--
ALTER TABLE `menor`
  ADD PRIMARY KEY (`menorID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
