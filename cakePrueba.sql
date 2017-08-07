-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-08-2017 a las 02:07:26
-- Versión del servidor: 10.1.23-MariaDB-9+deb9u1
-- Versión de PHP: 7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cakePrueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tmunicipio_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `apellido`, `user_id`, `tmunicipio_id`, `active`) VALUES
(4, 'Roberto Antonio', 'Hernandez', 1, 4, 1),
(11, 'Pedro Jose', 'Gongora', 1, 6, 0),
(12, 'Mario Antonio', 'Cruz Mendoza', 16, 6, 1),
(13, 'Flor de Maria', 'Ayala Lopez', 2, 5, 0),
(17, 'rewr', 'wrwerwer', 1, 8, 0),
(18, 'rwerew', 'rwerwer', 3, 3, 1),
(19, 'Blanca Nieves', 'Del Bosque', 4, 8, 1),
(20, 'Elmer Antonio', 'Carrillo Cerritos', 18, 4, 1),
(21, 'Marcelo Jose', 'Valladares', 1, 3, 1),
(22, 'Bladimir Dolores', 'Landaverde', 2, 4, 0),
(23, 'Antonio ', 'Hueso', 20, 2, 0),
(24, 'fefe', 'fefef', 1, 7, 0),
(25, 'weffwe', 'fewfewf', 1, 1, 1),
(26, 'wfew', 'fwef', 1, 1, 1),
(27, 'fwef', 'fwefw', 1, 8, 1),
(28, 'casc', 'casc', 8, 4, 1),
(29, 'fgdsg', 'dgdfg', 1, 4, 1),
(30, 'Luz', 'Montano', 1, 5, 0),
(31, 'Lupe', 'Montano', 1, 6, 1),
(32, 'juan', 'Cruz', 1, 5, 0),
(33, 'dqwd', 'dwqdq', 1, 6, 0),
(34, 'MAretydsad', 'dasda', 1, 3, 0),
(35, 'dasdsa', 'dasd', 1, 3, 0),
(36, 'Coro', 'Apleii', 1, 1, 1),
(37, 'MArlon', 'appelido', 1, 8, 1),
(38, 'dgdg', 'gdfg', 1, 8, 1),
(39, 'Milton', 'Molina', 1, 4, 1),
(40, 'Norma', 'Lu', 1, 5, 1),
(41, 'asxcs', 'dasdfsf', 1, 1, 0),
(42, 'ewrwr', 'werwe', 3, 8, 0),
(43, 'Mardasopd', 'faf', 1, 5, 0),
(44, 'Marta', 'Lopez', 1, 1, 1),
(45, 'ujyt', 'yjtj', 1, 4, 1),
(46, 'Luis', 'Duran', 1, 1, 0),
(47, 'Luis', 'Duran', 1, 1, 0),
(74, 'VCV', 'VCXV', 1, 3, 0),
(102, 'dqwd', 'qdqwd', 15, 5, 0),
(103, 'dwdas', 'dasdsad', 3, 5, 0),
(104, 'Antononlksdfsd', 'sdfsdf', 18, 4, 0),
(105, 'Fsgdasd', 'cascac', 18, 4, 0),
(106, 'LORENZO', 'BERMUDEZ', 5, 4, 0),
(107, 'Santos', 'Reyes', 10, 3, 0),
(108, 'Marita', 'Castra', 4, 2, 0),
(109, 'Sadasd', 'dasdasd', 1, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas_idiomas`
--

CREATE TABLE `personas_idiomas` (
  `id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `idioma_id` int(11) NOT NULL,
  `nivel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas_idiomas`
--

INSERT INTO `personas_idiomas` (`id`, `persona_id`, `idioma_id`, `nivel`) VALUES
(1, 25, 3, ''),
(2, 26, 2, ''),
(3, 102, 2, '1'),
(4, 104, 2, '3'),
(5, 105, 4, '2'),
(6, 106, 2, '1'),
(7, 106, 1, '3'),
(8, 107, 1, '3'),
(9, 107, 2, '3'),
(10, 107, 5, '2'),
(11, 108, 5, '3'),
(12, 108, 2, '3'),
(13, 108, 1, '3'),
(14, 109, 5, '3'),
(15, 109, 3, '2'),
(16, 109, 4, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdepartamentos`
--

CREATE TABLE `tdepartamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tdepartamentos`
--

INSERT INTO `tdepartamentos` (`id`, `nombre`) VALUES
(1, 'San Salvador'),
(2, 'San Miguel'),
(3, 'Santa Ana'),
(4, 'Cuscatlan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tidiomas`
--

CREATE TABLE `tidiomas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tidiomas`
--

INSERT INTO `tidiomas` (`id`, `nombre`) VALUES
(1, 'Español'),
(2, 'Ingles'),
(3, 'Italiano'),
(4, 'Frances'),
(5, 'Aleman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmunicipios`
--

CREATE TABLE `tmunicipios` (
  `id` int(11) NOT NULL,
  `tdepartamento_id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tmunicipios`
--

INSERT INTO `tmunicipios` (`id`, `tdepartamento_id`, `nombre`) VALUES
(1, 1, 'San Salvador'),
(2, 1, 'Soyapango'),
(3, 1, 'Ilopango'),
(4, 2, 'San Miguel'),
(5, 3, 'Santa Ana'),
(6, 4, 'Cojutepeque'),
(7, 2, 'Chinameca'),
(8, 1, 'Nueva San Salvador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'gongora@gmail.com', '1234'),
(2, 'laberto89@hotmail.com', '21312313'),
(3, 'admin@gmail.com', '123'),
(4, 'martha@hotmal.com', '$2y$10$dLLzZ9GcF/kphPJaKWc3QuuNVpLpbAwBqFiAe6Ufrgmk4Shsy3HHG'),
(5, 'juan@gmail.com', '$2y$10$WgdXisPnrr7s/hGGX7a9Ru.4rcl0Urlw0v27I8I9A7Sfcmaf1d5zK'),
(6, 'pablod23@gmail.com', '$2y$10$4.S1P6p4J4X347djWO5Fc./c7jZ8TmvhpCNavBd38IBL6OFIvzUQW'),
(7, 'paortilo@gmail.com', '$2y$10$TQ1AahtYWZLgospDIficzOliQ5apv2TNq7B75yyNt1w6U1ChEKJe.'),
(8, 'santos12@gmail.com', '$2y$10$v1XA.huvgucBZzsl0teJaOkSaES1sR19D/pbzqQMdn7.EtXiTkOSi'),
(9, 'luis@gmail.com', '$2y$10$UBVEsXROzo.01fRzBgIvpOdr32ZI5Bd5/JE..G/Ukxt0A8zIG2yWC'),
(10, 'roberto@gmail.com', '$2y$10$HtSya3mBslwfCHfaOOw.WOYZcMT0S4ti7zIzpjiyWlpRutO4w3vp6'),
(11, 'roberto233@gmail.com', '$2y$10$qtJ.kDBS8DffkxnicrfOCOYGaDGYHPvvQUwLqSGRxDl4O5OUIQ1a2'),
(12, 'doris@gmail.com', '$2y$10$Yj8h9WzgvsJvBnE5lx71TOtrLJib9MmiBWOSZhgQl3f1fr.m.2mWS'),
(13, 'guzman@hotmail.com', '$2y$10$wiNW/p84k.krMTAFFIs3gO4cVovEmSPmQ/o/g44cJ6oYcsZg9xEOu'),
(14, 'guzman102@hotmail.com', '$2y$10$tCtC7uDvXGwrRrrYCaWj5uLca4nXkxg5Xm2buCnYJc3jcb8n8wvKi'),
(15, 'bermudez12@hotmail.com', '$2y$10$EOzYmdtd6F16Up1KnYWZ/u.XsEyy08C1x0zJ7gb6CbnsvRmqaX12O'),
(16, 'antonio@hotmail.com', '$2y$10$22MmmXyRZ84.H7ULwtkb7OA85snWJo81ArKTmSkAvShdtAIdgCutq'),
(17, 'antonio34@gmail.com', '$2y$10$6uJRke7/F/5lLwNKAXOp8uA7/aeiO/leIyutnR/x/Bzp4tAgDyQrG'),
(18, 'Raquel@gmail.com', '$2y$10$TNwoB97TS6PahXsoWOtMf.hDRJGHKYqsnZBCq2wFebO/y1ec/PUhu'),
(19, 'adminfsfas@fsdf.com', '$2y$10$g0JBGdOlF21HyfHei0S1Te2KdRs71U40BBedn5H.8tAZU.taH9dzW'),
(20, 'hueso@tecnologias101.com', '$2y$10$3ZHE1fgfptSRZcu/wDyFAORwxrEJVTgn0EnTf6EyACIqLbzsSiMuW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_persona` (`user_id`),
  ADD KEY `fk_municipio` (`tmunicipio_id`);

--
-- Indices de la tabla `personas_idiomas`
--
ALTER TABLE `personas_idiomas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_idiomas_tidiomas_fk` (`idioma_id`),
  ADD KEY `persona_idiomas_personas_id_fk` (`persona_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tdepartamentos`
--
ALTER TABLE `tdepartamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tidiomas`
--
ALTER TABLE `tidiomas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tmunicipios`
--
ALTER TABLE `tmunicipios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_departamento` (`tdepartamento_id`) USING BTREE;

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role` (`user_id`),
  ADD KEY `fk_roles_role` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT de la tabla `personas_idiomas`
--
ALTER TABLE `personas_idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tdepartamentos`
--
ALTER TABLE `tdepartamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tidiomas`
--
ALTER TABLE `tidiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tmunicipios`
--
ALTER TABLE `tmunicipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `fk_municipio` FOREIGN KEY (`tmunicipio_id`) REFERENCES `tmunicipios` (`id`),
  ADD CONSTRAINT `fk_user_persona` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `personas_idiomas`
--
ALTER TABLE `personas_idiomas`
  ADD CONSTRAINT `persona_idiomas_personas_id_fk` FOREIGN KEY (`persona_id`) REFERENCES `personas` (`id`),
  ADD CONSTRAINT `persona_idiomas_tidiomas_fk` FOREIGN KEY (`idioma_id`) REFERENCES `tidiomas` (`id`);

--
-- Filtros para la tabla `tmunicipios`
--
ALTER TABLE `tmunicipios`
  ADD CONSTRAINT `fk_departamento` FOREIGN KEY (`tdepartamento_id`) REFERENCES `tdepartamentos` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_roles_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
