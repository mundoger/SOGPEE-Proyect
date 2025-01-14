-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2025 a las 02:26:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sogpee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesoracademico`
--

CREATE TABLE `asesoracademico` (
  `Id` int(11) NOT NULL,
  `Nombre1` varchar(30) NOT NULL,
  `Nombre2` varchar(20) NOT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Correo` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `asesorempresarial` (
  `AsesorID` int(11) NOT NULL,
  `Nombre1` varchar(20) DEFAULT NULL,
  `Nombre2` varchar(20) DEFAULT NULL,
  `ApellidoP` varchar(20) DEFAULT NULL,
  `ApellidoM` varchar(20) DEFAULT NULL,
  `Telefono` int(10) DEFAULT NULL,
  `Correo` text DEFAULT NULL,
  `Empresa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asesorempresarial`
--

INSERT INTO `asesorempresarial` (`AsesorID`, `Nombre1`, `Nombre2`, `ApellidoP`, `ApellidoM`, `Telefono`, `Correo`, `Empresa`) VALUES
(1, 'Luis', 'Fernando', 'Gómez', 'Martínez', 2147483647, 'lfgomez@techsoft.com', 'TechSoft Solutions'),
(2, 'Ana', 'María', 'López', 'Hernández', 2147483647, 'amlopez@codecraft.io', 'CodeCraft'),
(3, 'Carlos', 'Eduardo', 'Ramírez', 'Pérez', 2147483647, 'ceramirez@innovdev.com', 'InnovDev'),
(4, 'María', 'José', 'Hernández', 'González', 2147483647, 'mjhernandez@softnext.com', 'SoftNext'),
(5, 'Jorge', 'Iván', 'Díaz', 'Castro', 2147483647, 'jidiaz@devpeak.com', 'DevPeak'),
(6, 'Laura', 'Beatriz', 'Sánchez', 'Morales', 2147483647, 'lbsanchez@bluecode.com', 'BlueCode Labs'),
(7, 'Fernando', 'Andrés', 'Ortiz', 'Vega', 2147483647, 'faortiz@nextgendevs.com', 'NextGen Devs'),
(8, 'Sofía', 'Elena', 'Vargas', 'Mendoza', 2147483647, 'sevargas@alphacode.com', 'AlphaCode'),
(9, 'Ricardo', 'Alonso', 'Navarro', 'Torres', 2147483647, 'ranavarro@pixelsoft.com', 'PixelSoft'),
(10, 'Gabriela', 'Isabel', 'Molina', 'Ruiz', 2147483647, 'gimolina@codesphere.com', 'CodeSphere'),
(11, 'Daniel', 'Roberto', 'Castillo', 'Jiménez', 2147483647, 'drcastillo@devmasters.com', 'DevMasters'),
(12, 'Paola', 'Andrea', 'Mejía', 'García', 2147483647, 'pamejia@skylinesoft.com', 'Skyline Software'),
(13, 'Juan', 'Pablo', 'Rojas', 'López', 2147483647, 'jprojas@logicware.com', 'LogicWare'),
(14, 'Liliana', 'Guadalupe', 'Medina', 'Flores', 2147483647, 'lgmedina@appcreators.com', 'AppCreators'),
(15, 'Francisco', 'Javier', 'Cortés', 'Valdez', 2147483647, 'fjcortes@techwave.com', 'TechWave'),
(16, 'Cecilia', 'Verónica', 'Vega', 'Ramos', 2147483647, 'cvega@techsoft.com', 'TechSoft Solutions'),
(17, 'Hugo', 'Emilio', 'Silva', 'Hernández', 2147483647, 'hesilva@codecraft.io', 'CodeCraft'),
(18, 'Diana', 'Esther', 'Gutiérrez', 'Santos', 2147483647, 'degutierrez@innovdev.com', 'InnovDev'),
(19, 'Oscar', 'Antonio', 'Luna', 'Cruz', 2147483647, 'oaluna@softnext.com', 'SoftNext'),
(20, 'Mónica', 'Rocío', 'Peña', 'Velázquez', 2147483647, 'mrpena@devpeak.com', 'DevPeak'),
(21, 'Ramón', 'Humberto', 'Campos', 'Ortiz', 2147483647, 'rhcampos@bluecode.com', 'BlueCode Labs'),
(22, 'Claudia', 'Ximena', 'Aguilar', 'Chávez', 2147483647, 'cxaguilar@nextgendevs.com', 'NextGen Devs'),
(23, 'Guillermo', 'Fabián', 'Zavala', 'Rosales', 2147483647, 'gfzavala@alphacode.com', 'AlphaCode'),
(24, 'Alejandra', 'Lucía', 'Valencia', 'Rojas', 2147483647, 'alvalencia@pixelsoft.com', 'PixelSoft'),
(25, 'Javier', 'Eduardo', 'Padilla', 'Sandoval', 2147483647, 'jepadilla@codesphere.com', 'CodeSphere'),
(26, 'Regina', 'Adriana', 'Salinas', 'Fernández', 2147483647, 'rasalinas@devmasters.com', 'DevMasters'),
(27, 'Armando', 'Israel', 'González', 'Navarrete', 2147483647, 'aigonzalez@skylinesoft.com', 'Skyline Software'),
(28, 'Beatriz', 'Inés', 'Cabrera', 'Lara', 2147483647, 'bicabrera@logicware.com', 'LogicWare'),
(29, 'José', 'Luis', 'Esquivel', 'Reyes', 2147483647, 'jlesquivel@appcreators.com', 'AppCreators'),
(30, 'Rocío', 'Margarita', 'Torres', 'Estrada', 2147483647, 'rmortiz@techwave.com', 'TechWave'),
(31, 'Felipe', 'Miguel', 'Castañeda', 'Trujillo', 2147483647, 'fmcastaneda@techsoft.com', 'TechSoft Solutions'),
(32, 'Karla', 'Fernanda', 'Pérez', 'Chavarría', 2147483647, 'kfperez@codecraft.io', 'CodeCraft'),
(33, 'Eduardo', 'Iván', 'Moreno', 'Villalobos', 2147483647, 'eimoreno@innovdev.com', 'InnovDev'),
(34, 'Jessica', 'Lorena', 'Fuentes', 'Quintana', 2147483647, 'jlfuentes@softnext.com', 'SoftNext'),
(35, 'Alberto', 'Francisco', 'Hernández', 'Ruiz', 2147483647, 'afhernandez@devpeak.com', 'DevPeak'),
(36, 'Clara', 'Luz', 'Martínez', 'Gómez', 2147483647, 'clmartinez@bluecode.com', 'BlueCode Labs'),
(37, 'Emanuel', 'Joaquín', 'Reyes', 'Domínguez', 2147483647, 'ejreyes@nextgendevs.com', 'NextGen Devs'),
(38, 'Victoria', 'Angélica', 'Núñez', 'Campos', 2147483647, 'vanunez@alphacode.com', 'AlphaCode'),
(39, 'Diego', 'Ricardo', 'Mendoza', 'Peña', 2147483647, 'drmendoza@pixelsoft.com', 'PixelSoft'),
(40, 'Montserrat', 'Alicia', 'Romero', 'Salas', 2147483647, 'maromero@codesphere.com', 'CodeSphere'),
(41, 'Ignacio', 'Julián', 'Pineda', 'Meza', 2147483647, 'ijpineda@devmasters.com', 'DevMasters'),
(42, 'Sergio', 'Adolfo', 'Quintero', 'Valle', 2147483647, 'saquintero@skylinesoft.com', 'Skyline Software'),
(43, 'Ximena', 'Carolina', 'Ortega', 'Barrios', 2147483647, 'xcortega@logicware.com', 'LogicWare'),
(44, 'Adriana', 'Elizabeth', 'Palacios', 'Campos', 2147483647, 'aepalacios@appcreators.com', 'AppCreators'),
(45, 'Marcelo', 'Rubén', 'Chávez', 'Naranjo', 2147483647, 'mrchavez@techwave.com', 'TechWave'),
(46, 'Rafael', 'Cristian', 'Solís', 'Ocampo', 2147483647, 'rcsolis@techsoft.com', 'TechSoft Solutions'),
(47, 'María', 'Alejandra', 'Figueroa', 'Hidalgo', 2147483647, 'mafigueroa@codecraft.io', 'CodeCraft'),
(48, 'Pedro', 'Tomás', 'Alvarado', 'Cárdenas', 2147483647, 'ptalvarado@innovdev.com', 'InnovDev'),
(49, 'Fernanda', 'Dulce', 'Cruz', 'Jiménez', 2147483647, 'fdcruz@softnext.com', 'SoftNext');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartas`
--

CREATE TABLE `cartas` (
  `Id` int(11) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `Cartas` text NOT NULL,
  `Parcial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cartas`
--

INSERT INTO `cartas` (`Id`, `Matricula`, `Cartas`, `Parcial`) VALUES
(1, 1322134083, 'Documentos\\1322134083\\Parcial1\\Cartas\\cartasJesusMargaritoParcial1.pdf', 'Parcial1'),
(2, 1322134083, 'Documentos\\1322134083\\Parcial3\\Cartas\\cartasJesusMargaritoParcial3.pdf', 'Parcial3'),
(3, 1322134083, 'Documentos\\1322134083\\Cartas\\cartasJesusMargarito.pdf', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinacion`
--

>>>>>>> 75f3254 (Matenme):base de datos/sogpee(1).sql
CREATE TABLE `coordinacion` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Nombre2` varchar(20) NOT NULL,
  `ApellidoP` varchar(25) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `coordinacion` (`Id`, `Nombre`, `Nombre2`, `ApellidoP`, `ApellidoM`, `Correo`, `Password`) VALUES
(1, 'Carmen', '', 'Alarcon', 'Mendoza', 'carmen_mendoza@uptecamac.edu.mx', 'carmen2023');

CREATE TABLE `documentos` (
  `Id` int(11) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `Proyecto` text NOT NULL,
  `Parcial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentos`
--

INSERT INTO `documentos` (`Id`, `Matricula`, `Proyecto`, `Parcial`) VALUES
(4, 1322134083, 'Documentos\\1322134083\\Parcial1\\Proyecto\\proyetoJesusMargaritoParcial1.pdf', 'Parcial1'),
(6, 1322134083, 'Documentos\\1322134083\\Parcial2\\Proyecto\\proyetoJesusMargaritoParcial2.pdf', 'Parcial2'),
(7, 1322134083, 'Documentos\\1322134083\\Parcial3\\Proyecto\\proyetoJesusMargaritoParcial3.pdf', 'Parcial3'),
(8, 1322134083, 'Documentos\\1322134083\\Proyecto\\proyetoJesusMargarito.pdf', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

>>>>>>> 75f3254 (Matenme):base de datos/sogpee(1).sql
CREATE TABLE `empresa` (
  `EmpresaID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Domicilio` text NOT NULL,
  `Correo` text NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Sector` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `encuesta08` (
  `Id` int(11) NOT NULL,
  `Promedio` decimal(4,2) NOT NULL,
  `Veracidad` varchar(3) NOT NULL,
  `Matricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `encuesta08` (`Id`, `Promedio`, `Veracidad`, `Matricula`) VALUES
(3, 10.00, 'si', 1322134083);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `Id` int(11) NOT NULL,
  `Matricula` int(10) NOT NULL,
  `NoEquipo` int(11) NOT NULL,
  `Id_Proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `equipos` (`Id`, `Matricula`, `NoEquipo`, `Id_Proyecto`) VALUES
(195, 1322134083, 1, 3),
(196, 1322134084, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Matricula` int(10) NOT NULL,
  `Nombre1` varchar(20) NOT NULL,
  `Nombre2` varchar(20) DEFAULT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Correo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Matricula`, `Nombre1`, `Nombre2`, `ApellidoP`, `ApellidoM`, `Telefono`, `Correo`) VALUES
(1322134083, 'Jesus', 'Margarito', 'Santos', 'Garcia', '5547062133', 'jesus_1322134083@uptecamac.edu.mx'),
(1322134084, 'Luis', 'Antonio', 'Hernández', 'Pérez', '5547062144', 'luis_1322134084@uptecamac.edu.mx'),
(1322134085, 'Ana', 'María', 'López', 'Gómez', '5547062155', 'ana_1322134085@uptecamac.edu.mx'),
(1322134086, 'Carlos', 'Eduardo', 'Martínez', 'Santos', '5547062166', 'carlos_1322134086@uptecamac.edu.mx'),
(1322134087, 'María', 'Fernanda', 'Rodríguez', 'Hernández', '5547062177', 'maria_1322134087@uptecamac.edu.mx'),
(1322134088, 'Jorge', 'Iván', 'García', 'Luna', '5547062188', 'jorge_1322134088@uptecamac.edu.mx'),
(1322134089, 'Laura', 'Beatriz', 'Sánchez', 'Cruz', '5547062199', 'laura_1322134089@uptecamac.edu.mx'),
(1322134090, 'Fernando', 'Andrés', 'Ramírez', 'Mendoza', '5547062200', 'fernando_1322134090@uptecamac.edu.mx'),
(1322134091, 'Diana', 'Carolina', 'Morales', 'Torres', '5547062211', 'diana_1322134091@uptecamac.edu.mx'),
(1322134092, 'Sofía', 'Isabel', 'Vargas', 'Flores', '5547062222', 'sofia_1322134092@uptecamac.edu.mx'),
(1322134093, 'Ricardo', 'Alonso', 'Navarro', 'Valencia', '5547062233', 'ricardo_1322134093@uptecamac.edu.mx'),
(1322134094, 'Gabriela', 'Esther', 'Castillo', 'Jiménez', '5547062244', 'gabriela_1322134094@uptecamac.edu.mx'),
(1322134095, 'Juan', 'Pablo', 'Reyes', 'Salazar', '5547062255', 'juan_1322134095@uptecamac.edu.mx'),
(1322134096, 'Liliana', 'Guadalupe', 'Mendoza', 'Cortés', '5547062266', 'liliana_1322134096@uptecamac.edu.mx'),
(1322134097, 'Francisco', 'Javier', 'Ortega', 'Meza', '5547062277', 'francisco_1322134097@uptecamac.edu.mx'),
(1322134098, 'Cecilia', 'Elena', 'Gómez', 'González', '5547062288', 'cecilia_1322134098@uptecamac.edu.mx'),
(1322134099, 'Oscar', 'Eduardo', 'Luna', 'Moreno', '5547062299', 'oscar_1322134099@uptecamac.edu.mx'),
(1322134100, 'Mónica', 'Rocío', 'Pérez', 'Rojas', '5547062300', 'monica_1322134100@uptecamac.edu.mx'),
(1322134101, 'Ramón', 'Humberto', 'Campos', 'Vega', '5547062311', 'ramon_1322134101@uptecamac.edu.mx'),
(1322134102, 'Claudia', 'Ximena', 'Aguilar', 'Zavala', '5547062322', 'claudia_1322134102@uptecamac.edu.mx'),
(1322134103, 'Guillermo', 'Fabián', 'Zavala', 'Rosales', '5547062333', 'guillermo_1322134103@uptecamac.edu.mx'),
(1322134104, 'Alejandra', 'Lucía', 'Valencia', 'Rojas', '5547062344', 'alejandra_1322134104@uptecamac.edu.mx'),
(1322134105, 'Javier', 'Eduardo', 'Padilla', 'Sandoval', '5547062355', 'javier_1322134105@uptecamac.edu.mx'),
(1322134106, 'Regina', 'Adriana', 'Salinas', 'Fernández', '5547062366', 'regina_1322134106@uptecamac.edu.mx'),
(1322134107, 'Armando', 'Israel', 'González', 'Navarrete', '5547062377', 'armando_1322134107@uptecamac.edu.mx'),
(1322134108, 'Beatriz', 'Inés', 'Cabrera', 'Lara', '5547062388', 'beatriz_1322134108@uptecamac.edu.mx'),
(1322134109, 'José', 'Luis', 'Esquivel', 'Reyes', '5547062399', 'jose_1322134109@uptecamac.edu.mx'),
(1322134110, 'Rocío', 'Margarita', 'Torres', 'Estrada', '5547062400', 'rocio_1322134110@uptecamac.edu.mx'),
(1322134111, 'Felipe', 'Miguel', 'Castañeda', 'Trujillo', '5547062411', 'felipe_1322134111@uptecamac.edu.mx'),
(1322134112, 'Karla', 'Fernanda', 'Pérez', 'Chavarría', '5547062422', 'karla_1322134112@uptecamac.edu.mx'),
(1322134113, 'Eduardo', 'Iván', 'Moreno', 'Villalobos', '5547062433', 'eduardo_1322134113@uptecamac.edu.mx'),
(1322134114, 'Jessica', 'Lorena', 'Fuentes', 'Quintana', '5547062444', 'jessica_1322134114@uptecamac.edu.mx'),
(1322134115, 'Alberto', 'Francisco', 'Hernández', 'Ruiz', '5547062455', 'alberto_1322134115@uptecamac.edu.mx'),
(1322134116, 'Clara', 'Luz', 'Martínez', 'Gómez', '5547062466', 'clara_1322134116@uptecamac.edu.mx'),
(1322134117, 'Emanuel', 'Joaquín', 'Reyes', 'Domínguez', '5547062477', 'emanuel_1322134117@uptecamac.edu.mx'),
(1322134118, 'Victoria', 'Angélica', 'Núñez', 'Campos', '5547062488', 'victoria_1322134118@uptecamac.edu.mx'),
(1322134119, 'Diego', 'Ricardo', 'Mendoza', 'Peña', '5547062499', 'diego_1322134119@uptecamac.edu.mx'),
(1322134120, 'Montserrat', 'Alicia', 'Romero', 'Salas', '5547062500', 'montserrat_1322134120@uptecamac.edu.mx'),
(1322134121, 'Ignacio', 'Julián', 'Pineda', 'Meza', '5547062511', 'ignacio_1322134121@uptecamac.edu.mx'),
(1322134122, 'Sergio', 'Adolfo', 'Quintero', 'Valle', '5547062522', 'sergio_1322134122@uptecamac.edu.mx'),
(1322134123, 'Ximena', 'Carolina', 'Ortega', 'Barrios', '5547062533', 'ximena_1322134123@uptecamac.edu.mx'),
(1322134124, 'Adriana', 'Elizabeth', 'Palacios', 'Campos', '5547062544', 'adriana_1322134124@uptecamac.edu.mx'),
(1322134125, 'Marcelo', 'Rubén', 'Chávez', 'Naranjo', '5547062555', 'marcelo_1322134125@uptecamac.edu.mx'),
(1322134126, 'Rafael', 'Cristian', 'Solís', 'Ocampo', '5547062566', 'rafael_1322134126@uptecamac.edu.mx'),
(1322134127, 'María', 'Alejandra', 'Figueroa', 'Hidalgo', '5547062577', 'maria_1322134127@uptecamac.edu.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato03`
--

CREATE TABLE `formato03` (
  `Id` int(11) NOT NULL,
  `Matricula` int(11) NOT NULL,
  `Formato03` text NOT NULL,
  `Parcial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formato03`
--

INSERT INTO `formato03` (`Id`, `Matricula`, `Formato03`, `Parcial`) VALUES
(1, 1322134083, 'Documentos\\1322134083\\Parcial1\\FO03\\proyetoJesusMargaritoParcial1.pdf', 'Parcial1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

>>>>>>> 75f3254 (Matenme):base de datos/sogpee(1).sql
CREATE TABLE `proyecto` (
  `ProyectoID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Funcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `proyecto` (`ProyectoID`, `Nombre`, `Funcion`) VALUES
(3, 'SOGPEE', 'Estancias y estadias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectoasesores`
--

CREATE TABLE `proyectoasesores` (
  `Id` int(11) NOT NULL,
  `Id_asesorE` int(11) NOT NULL,
  `Id_asesorA` int(11) NOT NULL,
  `Id_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyectoasesores`
--

INSERT INTO `proyectoasesores` (`Id`, `Id_asesorE`, `Id_asesorA`, `Id_proyecto`) VALUES
(9, 21, 17, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asesoracademico`
--
ALTER TABLE `asesoracademico`
  ADD PRIMARY KEY (`Id`);
ALTER TABLE `asesorempresarial`
  ADD PRIMARY KEY (`AsesorID`),
  ADD KEY `EmpresaID` (`Empresa`);

--
-- Indices de la tabla `cartas`
--
ALTER TABLE `cartas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`);

--
-- Indices de la tabla `coordinacion`
--
ALTER TABLE `coordinacion`
  ADD PRIMARY KEY (`Id`);
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`);
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`EmpresaID`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);
ALTER TABLE `encuesta08`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`);
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`),
  ADD KEY `Id_Proyecto` (`Id_Proyecto`);
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `formato03`
--
ALTER TABLE `formato03`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`ProyectoID`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);
ALTER TABLE `proyectoasesores`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_asesorA` (`Id_asesorA`),
  ADD KEY `Id_asesorE` (`Id_asesorE`),
  ADD KEY `Id_proyecto` (`Id_proyecto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asesoracademico`
--
ALTER TABLE `asesoracademico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `cartas`
--
ALTER TABLE `cartas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `coordinacion`
--
ALTER TABLE `coordinacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `documentos`
<<<<<<< HEAD
<<<<<<< HEAD:base de datos/sogpee (5).sql
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
=======
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
>>>>>>> 75f3254 (Matenme)

--
-- AUTO_INCREMENT de la tabla `encuesta08`
--
ALTER TABLE `encuesta08`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT de la tabla `formato03`
--
ALTER TABLE `formato03`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `ProyectoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proyectoasesores`
--
ALTER TABLE `proyectoasesores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asesorempresarial`
--
ALTER TABLE `asesorempresarial`
  ADD CONSTRAINT `asesorempresarial_ibfk_1` FOREIGN KEY (`Empresa`) REFERENCES `empresa` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cartas`
--
ALTER TABLE `cartas`
  ADD CONSTRAINT `cartas_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `encuesta08`
  ADD CONSTRAINT `encuesta08_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_2` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_ibfk_3` FOREIGN KEY (`Id_Proyecto`) REFERENCES `proyecto` (`ProyectoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `formato03`
--
ALTER TABLE `formato03`
  ADD CONSTRAINT `formato03_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyectoasesores`
--
ALTER TABLE `proyectoasesores`
  ADD CONSTRAINT `proyectoasesores_ibfk_1` FOREIGN KEY (`Id_asesorA`) REFERENCES `asesoracademico` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proyectoasesores_ibfk_2` FOREIGN KEY (`Id_asesorE`) REFERENCES `asesorempresarial` (`AsesorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proyectoasesores_ibfk_3` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyecto` (`ProyectoID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;