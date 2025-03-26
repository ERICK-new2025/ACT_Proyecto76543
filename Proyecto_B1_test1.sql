-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 25-03-2025 a las 23:14:51
-- Versión del servidor: 8.0.35
-- Versión de PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Proyecto_B1_AADA_AMSG_JAGA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Alumnos`
--

CREATE TABLE `Alumnos` (
  `Id_Alumno` int NOT NULL,
  `Matricula` varchar(20) NOT NULL,
  `Primer_Nombre` varchar(50) NOT NULL,
  `Segundo_Nombre` varchar(50) DEFAULT NULL,
  `Primer_Apellido` varchar(50) NOT NULL,
  `Segundo_Apellido` varchar(50) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Dirección` varchar(255) DEFAULT NULL,
  `Ciudad` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Carrera` varchar(100) DEFAULT NULL,
  `Campus` varchar(100) DEFAULT NULL,
  `Fecha` date NOT NULL
) ;

--
-- Volcado de datos para la tabla `Alumnos`
--

INSERT INTO `Alumnos` (`Id_Alumno`, `Matricula`, `Primer_Nombre`, `Segundo_Nombre`, `Primer_Apellido`, `Segundo_Apellido`, `Edad`, `Dirección`, `Ciudad`, `Estado`, `Telefono`, `Carrera`, `Campus`, `Fecha`) VALUES
(1, 'A001', 'Juan', 'Carlos', 'González', 'Martínez', 21, 'Calle 123', 'CDMX', 'CDMX', '5551234567', 'Ingeniería en Sistemas', 'Campus Norte', '2024-03-22'),
(2, 'A002', 'Ana', 'María', 'López', 'Hernández', 22, 'Av. Reforma 456', 'Puebla', 'Puebla', '2229876543', 'Administración', 'Campus Sur', '2024-03-22'),
(3, 'A003', 'Luis', 'Fernando', 'Ramírez', 'García', 20, 'Calle 789', 'Monterrey', 'Nuevo León', '8112233445', 'Contaduría', 'Campus Monterrey', '2024-03-22'),
(4, 'A004', 'Mariana', 'Isabel', 'Sánchez', 'Rodríguez', 23, 'Calle Falsa 321', 'Guadalajara', 'Jalisco', '3311122233', 'Derecho', 'Campus Jalisco', '2024-03-22'),
(5, 'A005', 'Pedro', 'Jesús', 'Mendoza', 'Vega', 21, 'Calle Luna 666', 'Mérida', 'Yucatán', '9998765432', 'Arquitectura', 'Campus Mérida', '2024-03-22'),
(6, 'A006', 'Fernanda', 'Elena', 'Cortés', 'Pérez', 24, 'Av. Central 77', 'Toluca', 'Edomex', '7223344556', 'Medicina', 'Campus Toluca', '2024-03-22'),
(7, 'A007', 'Ricardo', 'Manuel', 'Hernández', 'Gómez', 22, 'Calle Victoria 55', 'León', 'Guanajuato', '4779988776', 'Ingeniería Civil', 'Campus León', '2024-03-22'),
(8, 'A008', 'Gabriela', 'Sofía', 'Martínez', 'Luna', 23, 'Av. Morelos 99', 'Querétaro', 'Querétaro', '4426677885', 'Psicología', 'Campus Querétaro', '2024-03-22'),
(9, 'A009', 'Diego', 'Armando', 'Castro', 'Ramos', 20, 'Calle Sur 222', 'Aguascalientes', 'Aguascalientes', '4492233445', 'Economía', 'Campus Aguascalientes', '2024-03-22'),
(10, 'A010', 'Valeria', 'Andrea', 'Ortega', 'Fernández', 21, 'Av. Las Flores 10', 'Tijuana', 'Baja California', '6649987765', 'Diseño Gráfico', 'Campus Tijuana', '2024-03-22');


-- -------------------------------------------------------- Nombres Agregados
(11, 'A011', 'Pablo', 'Angel', 'Sanchez', 'Martínez', 28, 'Calle 141', 'CDMX', 'Ecatepec', '5513456567', 'Ingeniería en Sistemas', 'Campus Norte', '2024-03-22'),
(12, 'A012', 'Juan', 'Guarnizo', 'Armando', 'Paredes', 20, 'Av. Reforma 6', 'merida', 'yucatan', '2429295543', 'Administración', 'Campus Norte', '2024-03-22'),
(13, 'A013', 'Ari', 'Gameplays', 'Jimenez', 'Torres', 25, 'Calle 69', 'Monterrey', 'Nuevo León', '8111037440', 'Comunicacion', 'Campus Monterrey', '2024-03-22'),
(14, 'A014', 'Fernando', 'Flores', 'Aguilar', 'Rodríguez', 23, 'Calle Chorizo', 'Guadalajara', 'Jalisco', '3204712233', 'Comunicacion', 'Campus Jalisco', '2024-03-22'),
(15, 'A015', 'Dalas', 'Review', 'Gutierrez', 'Lopez', 20, 'Calle dios 616', 'progreso', 'Yucatán', '9193515432', 'Folosofia', 'Campus Mérida', '2024-03-22'),
(16, 'A016', 'Luna', 'Snow', 'Morales', 'de la Cruz', 22, 'Av. Central 7u7', 'Osaka', 'Tabasco', '7222750156', 'Medicina', 'Campus Tabasco', '2024-03-22'),
(17, 'A017', 'Jordi', 'Wild', 'Ramirez', 'Aguilar', 29, 'Calle Derrota 33', 'León', 'Guanajuato', '4779338776', 'Ingeniería Civil', 'Campus León', '2024-03-22'),
(18, 'A018', 'Azuka', 'Lopez', 'Zapata', 'Soryu', 23, 'Av. Feliz Jueves ', 'Tepache', 'Querétaro', '44416677885', 'Psicología', 'Campus Querétaro', '2024-03-22'),
(19, 'A019', 'Fidel', 'Castro', 'Jesus', 'Ramos', 20, 'Calle Sur 2', 'LOpezs', 'Aguascalientes', '4477733445', 'Economía', 'Campus Aguascalientes', '2024-03-22'),
(20, 'A020', 'Carlos', 'Raul', 'Ortega', 'Castro', 25, 'Av. Negra', 'Tijuana', 'Alta California', '6641946265', 'Diseño Gráfico', 'Campus Tijuana', '2024-03-22');


--
-- Estructura de tabla para la tabla `Calificaciones`
--

CREATE TABLE `Calificaciones` (
  `Id_Calificacion` int NOT NULL,
  `Id_Alumno` int DEFAULT NULL,
  `Id_Materia` int DEFAULT NULL,
  `Id_Profesor` int DEFAULT NULL,
  `Calificacion` decimal(5,2) DEFAULT NULL,
  `Fecha` date NOT NULL
) ;

--
-- Volcado de datos para la tabla `Calificaciones`
--

INSERT INTO `Calificaciones` (`Id_Calificacion`, `Id_Alumno`, `Id_Materia`, `Id_Profesor`, `Calificacion`, `Fecha`) VALUES
(1, 1, 1, 1, 85.50, '2024-03-22'),
(2, 2, 2, 2, 90.00, '2024-03-22'),
(3, 3, 3, 3, 78.20, '2024-03-22'),
(4, 4, 4, 4, 88.70, '2024-03-22'),
(5, 5, 5, 5, 91.30, '2024-03-22'),
(6, 6, 6, 6, 95.00, '2024-03-22'),
(7, 7, 7, 7, 84.50, '2024-03-22'),
(8, 8, 8, 8, 92.80, '2024-03-22'),
(9, 9, 9, 9, 89.00, '2024-03-22'),
(10, 10, 10, 10, 96.50, '2024-03-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Materias`
--

CREATE TABLE `Materias` (
  `Id_Materia` int NOT NULL,
  `Nombre_Materia` varchar(100) NOT NULL,
  `Area_conocimiento` varchar(100) DEFAULT NULL,
  `Descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Materias`
--

INSERT INTO `Materias` (`Id_Materia`, `Nombre_Materia`, `Area_conocimiento`, `Descripcion`) VALUES
(1, 'Matemáticas Discretas', 'Matemáticas', 'Estudio de estructuras matemáticas fundamentales.'),
(2, 'Programación Web', 'Informática', 'Desarrollo de aplicaciones web con tecnologías modernas.'),
(3, 'Bases de Datos', 'Informática', 'Diseño y gestión de bases de datos relacionales.'),
(4, 'Derecho Constitucional', 'Derecho', 'Estudio de la constitución y sus implicaciones legales.'),
(5, 'Diseño de Interiores', 'Arquitectura', 'Fundamentos del diseño interior en espacios funcionales.'),
(6, 'Anatomía Humana', 'Medicina', 'Estudio detallado del cuerpo humano y sus sistemas.'),
(7, 'Estructuras de Concreto', 'Ingeniería Civil', 'Principios del diseño y construcción con concreto.'),
(8, 'Psicología del Desarrollo', 'Psicología', 'Procesos psicológicos en el crecimiento humano.'),
(9, 'Macroeconomía', 'Economía', 'Análisis de la economía a nivel global y nacional.'),
(10, 'Diseño Digital', 'Diseño Gráfico', 'Herramientas y principios para la creación digital.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Profesores`
--

CREATE TABLE `Profesores` (
  `Id_Profesor` int NOT NULL,
  `Matricula` varchar(20) NOT NULL,
  `Campus` varchar(100) DEFAULT NULL,
  `Primer_Nombre` varchar(50) NOT NULL,
  `Segundo_Nombre` varchar(50) DEFAULT NULL,
  `Primer_Apellido` varchar(50) NOT NULL,
  `Segundo_Apellido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Profesores`
--

INSERT INTO `Profesores` (`Id_Profesor`, `Matricula`, `Campus`, `Primer_Nombre`, `Segundo_Nombre`, `Primer_Apellido`, `Segundo_Apellido`) VALUES
(1, 'P001', 'Campus Norte', 'Carlos', 'Eduardo', 'Ramírez', 'López'),
(2, 'P002', 'Campus Sur', 'María', 'Fernanda', 'Gómez', 'Martínez'),
(3, 'P003', 'Campus Monterrey', 'Javier', 'Alejandro', 'Hernández', 'Torres'),
(4, 'P004', 'Campus Jalisco', 'Rosa', 'Elena', 'Pérez', 'Santos'),
(5, 'P005', 'Campus Mérida', 'Daniel', 'Alberto', 'Cordero', 'Vega'),
(6, 'P006', 'Campus Toluca', 'Alejandra', 'Sofía', 'Castillo', 'García'),
(7, 'P007', 'Campus León', 'Andrés', 'Vicente', 'Hernández', 'Morales'),
(8, 'P008', 'Campus Querétaro', 'Silvia', 'Beatriz', 'Fuentes', 'López'),
(9, 'P009', 'Campus Aguascalientes', 'Fernando', 'Ricardo', 'Salazar', 'Ríos'),
(10, 'P010', 'Campus Tijuana', 'Elena', 'Mariana', 'Campos', 'Ortega');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Alumnos`
--
ALTER TABLE `Alumnos`
  ADD PRIMARY KEY (`Id_Alumno`),
  ADD UNIQUE KEY `Matricula` (`Matricula`);

--
-- Indices de la tabla `Calificaciones`
--
ALTER TABLE `Calificaciones`
  ADD PRIMARY KEY (`Id_Calificacion`),
  ADD KEY `Id_Alumno` (`Id_Alumno`),
  ADD KEY `Id_Materia` (`Id_Materia`),
  ADD KEY `Id_Profesor` (`Id_Profesor`);

--
-- Indices de la tabla `Materias`
--
ALTER TABLE `Materias`
  ADD PRIMARY KEY (`Id_Materia`);

--
-- Indices de la tabla `Profesores`
--
ALTER TABLE `Profesores`
  ADD PRIMARY KEY (`Id_Profesor`),
  ADD UNIQUE KEY `Matricula` (`Matricula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Alumnos`
--
ALTER TABLE `Alumnos`
  MODIFY `Id_Alumno` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Calificaciones`
--
ALTER TABLE `Calificaciones`
  MODIFY `Id_Calificacion` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Materias`
--
ALTER TABLE `Materias`
  MODIFY `Id_Materia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Profesores`
--
ALTER TABLE `Profesores`
  MODIFY `Id_Profesor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Calificaciones`
--
ALTER TABLE `Calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `Alumnos` (`Id_Alumno`),
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`Id_Materia`) REFERENCES `Materias` (`Id_Materia`),
  ADD CONSTRAINT `calificaciones_ibfk_3` FOREIGN KEY (`Id_Profesor`) REFERENCES `Profesores` (`Id_Profesor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
