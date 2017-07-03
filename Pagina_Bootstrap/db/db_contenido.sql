-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2017 a las 07:00:30
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_contenido`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_cat` varchar(20) NOT NULL,
  `luchadores_x_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_cat`, `luchadores_x_cat`) VALUES
(1, 'pluma', 1),
(2, 'liviano', 1),
(3, 'mediano', 1),
(4, 'pesado', 3),
(5, 'ultra-pesado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id_consulta` int(11) NOT NULL,
  `nombre_apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `texto` text NOT NULL,
  `fecha_consulta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id_consulta`, `nombre_apellido`, `email`, `texto`, `fecha_consulta`) VALUES
(1, 'Pololo', 'pololo@retrucho.com', 'Alta pagina vieja', '2017-06-21 00:03:22'),
(2, 'Pirinporimo del Pirineo de los Palicios', 'pirinporimo@mailinator.com', 'Pololo es un gato\r\n', '2017-06-21 00:04:05'),
(3, 'Das', 'das@mailmuyinteresante.com', 'FAAAAAAAAAAAAA', '2017-06-21 00:05:37'),
(4, 'Carlitos', 'carlitos.el.listo@google.com', 'Que listo que soy', '2017-06-21 02:24:03'),
(5, 'Juan Perez', 'juanperez@gmail.com', 'jojo', '2017-06-23 00:48:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `luchadores`
--

CREATE TABLE `luchadores` (
  `id_luchador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `historia` text NOT NULL,
  `link` text NOT NULL,
  `torneos_ganados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `luchadores`
--

INSERT INTO `luchadores` (`id_luchador`, `nombre`, `apellido`, `edad`, `id_categoria`, `pais`, `historia`, `link`, `torneos_ganados`) VALUES
(1, 'Campeon', '1', 23, 4, 'Argentina', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=ipyAO6x3qyg', 10),
(2, 'Campeon', '2', 33, 3, 'Brasil', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=oS2OF8oWPzg', 2),
(3, 'Campeon', '3', 28, 2, 'Nicaragua', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=s2MeT3UDk9Y', 1),
(4, 'Campeon', '4', 50, 1, 'Malasia', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=aPHacO6BKpw', 1),
(5, 'Campeon', '5', 99, 5, 'Antartida', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'https://www.youtube.com/watch?v=3DCKF69JYQs', 999),
(6, 'Lord Il', 'Pallazzo', 34, 4, 'Italia', 'Lorem Ipsum', 'https://github.com/Unicen-Tupar/fmonod/issues', 42),
(7, 'Ricardo', 'Fort', 40, 4, 'Argentina', 'Basta Chicos', '.', 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `titulo_muted` varchar(20) NOT NULL,
  `detalle` text NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `titulo_muted`, `detalle`, `imagen`, `autor`, `fecha`) VALUES
(1, 'El torneo X comenzara en 10 dias.', 'No te lo pierdas', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'mma-training.jpg', 'Facundo el poderoso', '2017-06-20 04:56:21'),
(2, 'El equipo que vos necesitabas', 'esta de vuelta.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'equipo-entrenamiento.jpg', 'Facundo el poderoso', '2017-06-20 05:02:05'),
(3, 'Siguenos en las redes sociales', 'no te quedes atras.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'redes-sociales.jpg', 'Facundo el poderoso', '2017-06-20 05:14:07'),
(4, 'Increible torneo', 'a la vuelta de la es', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'mma-reg.jpg', 'Facundo el poderoso', '2017-07-02 18:11:54'),
(5, 'Wow', 'Soy re capo', 'Te meto una noticia por aca', 'Sin_Imagen_:(', 'Yo no fui', '2017-07-02 19:30:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos`
--

CREATE TABLE `torneos` (
  `id_torneo` int(11) NOT NULL,
  `nombre_torneo` varchar(200) NOT NULL,
  `lugar` text NOT NULL,
  `fecha_torneo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `torneos`
--

INSERT INTO `torneos` (`id_torneo`, `nombre_torneo`, `lugar`, `fecha_torneo`) VALUES
(1, 'MMA Super super PRO ', 'Argentina', '2017-06-21 03:00:00'),
(2, 'MMA Super super super PRO ', 'Argentina', '2017-06-29 03:00:00'),
(3, 'MMA Super Ultra PRO ', 'Brasil', '2017-08-25 21:44:41'),
(4, 'MMA Ultra Giga PRO ', 'Islas Malvinas', '2017-09-30 17:36:37'),
(5, 'MMA Giga Tera PRO ', 'El Sol', '2020-01-02 02:59:59'),
(6, 'EL Torneo', 'EL Lugar', '2017-06-30 11:15:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id_consulta`);

--
-- Indices de la tabla `luchadores`
--
ALTER TABLE `luchadores`
  ADD PRIMARY KEY (`id_luchador`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `torneos`
--
ALTER TABLE `torneos`
  ADD PRIMARY KEY (`id_torneo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `luchadores`
--
ALTER TABLE `luchadores`
  MODIFY `id_luchador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `torneos`
--
ALTER TABLE `torneos`
  MODIFY `id_torneo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `luchadores`
--
ALTER TABLE `luchadores`
  ADD CONSTRAINT `luchadores_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
