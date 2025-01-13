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

--
-- Volcado de datos para la tabla `asesoracademico`
--

INSERT INTO `asesoracademico` (`Id`, `Nombre1`, `Nombre2`, `ApellidoP`, `ApellidoM`, `Telefono`, `Correo`, `password`) VALUES
(1, 'Juan', 'Carlos', 'Gómez', 'Pérez', '1234567890', 'juan.gomez@gmail.com', 'juan.gomez@gmail.com'),
(2, 'Ana', 'Maria', 'López', 'García', '2345678901', 'ana.lopez@gmail.com', 'ana.lopez@gmail.com'),
(3, 'Luis', 'Eduardo', 'Martínez', 'Hernández', '3456789012', 'luis.martinez@gmail.com', 'luis.martinez@gmail.com'),
(4, 'Carlos', 'Antonio', 'Rodríguez', 'Martín', '4567890123', 'carlos.rodriguez@gmail.com', 'carlos.rodriguez@gmail.com'),
(5, 'María', 'Elena', 'Fernández', 'López', '5678901234', 'maria.fernandez@gmail.com', 'maria.fernandez@gmail.com'),
(6, 'Pedro', 'José', 'Pérez', 'Gómez', '6789012345', 'pedro.perez@gmail.com', 'pedro.perez@gmail.com'),
(7, 'Lucía', 'Sofía', 'Sánchez', 'González', '7890123456', 'lucia.sanchez@gmail.com', 'lucia.sanchez@gmail.com'),
(8, 'José', 'Manuel', 'Ramírez', 'Hernández', '8901234567', 'jose.ramirez@gmail.com', 'jose.ramirez@gmail.com'),
(9, 'Raúl', 'Antonio', 'Jiménez', 'Mendoza', '9012345678', 'raul.jimenez@gmail.com', 'raul.jimenez@gmail.com'),
(10, 'Marta', 'Isabel', 'Álvarez', 'Torres', '0123456789', 'marta.alvarez@gmail.com', 'marta.alvarez@gmail.com'),
(11, 'Javier', 'Luis', 'Mora', 'Reyes', '1122334455', 'javier.mora@gmail.com', 'javier.mora@gmail.com'),
(12, 'Beatriz', 'Carmen', 'Vázquez', 'González', '2233445566', 'beatriz.vazquez@gmail.com', 'beatriz.vazquez@gmail.com'),
(13, 'Ricardo', 'Luis', 'Castro', 'Morales', '3344556677', 'ricardo.castro@gmail.com', 'ricardo.castro@gmail.com'),
(14, 'Carmen', 'Victoria', 'Luna', 'Ríos', '4455667788', 'carmen.luna@gmail.com', 'carmen.luna@gmail.com'),
(15, 'David', 'Francisco', 'Muñoz', 'Pérez', '5566778899', 'david.munoz@gmail.com', 'david.munoz@gmail.com'),
(16, 'Laura', 'Inés', 'Ruiz', 'Soto', '6677889900', 'laura.ruiz@gmail.com', 'laura.ruiz@gmail.com'),
(17, 'Óscar', 'Eduardo', 'Gutiérrez', 'Hernández', '7788990011', 'oscar.gutierrez@gmail.com', 'oscar.gutierrez@gmail.com'),
(18, 'Verónica', 'Susana', 'Moreno', 'Rodríguez', '8899001122', 'veronica.moreno@gmail.com', 'veronica.moreno@gmail.com'),
(19, 'Gabriel', 'Ángel', 'Torres', 'Díaz', '9900112233', 'gabriel.torres@gmail.com', 'gabriel.torres@gmail.com'),
(20, 'Alba', 'Lorena', 'Paredes', 'Vega', '1011122334', 'alba.paredes@gmail.com', 'alba.paredes@gmail.com'),
(21, 'Antonio', 'José', 'Salazar', 'Muñoz', '2122233445', 'antonio.salazar@gmail.com', 'antonio.salazar@gmail.com'),
(22, 'Sandra', 'María', 'González', 'Vásquez', '3233344556', 'sandra.gonzalez@gmail.com', 'sandra.gonzalez@gmail.com'),
(23, 'Ricardo', 'Antonio', 'Méndez', 'Fuentes', '4344455667', 'ricardo.mendez@gmail.com', 'ricardo.mendez@gmail.com'),
(24, 'Andrea', 'Rocío', 'Hidalgo', 'Ramírez', '5455566778', 'andrea.hidalgo@gmail.com', 'andrea.hidalgo@gmail.com'),
(25, 'Fernando', 'Carlos', 'Castillo', 'Martínez', '6566677889', 'fernando.castillo@gmail.com', 'fernando.castillo@gmail.com'),
(26, 'Esteban', 'Manuel', 'García', 'Muñoz', '7677788990', 'esteban.garcia@gmail.com', 'esteban.garcia@gmail.com'),
(27, 'Patricia', 'Elena', 'Blanco', 'Sánchez', '8788899001', 'patricia.blanco@gmail.com', 'patricia.blanco@gmail.com'),
(28, 'José', 'Luis', 'Cabrera', 'Martínez', '9899001122', 'jose.cabrera@gmail.com', 'jose.cabrera@gmail.com'),
(29, 'Mercedes', 'Elisabeth', 'Morales', 'Torres', '1100112233', 'mercedes.morales@gmail.com', 'mercedes.morales@gmail.com'),
(30, 'Santiago', 'Carlos', 'Hernández', 'Álvarez', '2200223344', 'santiago.hernandez@gmail.com', 'santiago.hernandez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesorempresarial`
--

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

CREATE TABLE `coordinacion` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Nombre2` varchar(20) NOT NULL,
  `ApellidoP` varchar(25) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coordinacion`
--

INSERT INTO `coordinacion` (`Id`, `Nombre`, `Nombre2`, `ApellidoP`, `ApellidoM`, `Correo`, `Password`) VALUES
(1, 'Carmen', '', 'Alarcon', 'Mendoza', 'carmen_mendoza@uptecamac.edu.mx', 'carmen2023');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

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

CREATE TABLE `empresa` (
  `EmpresaID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Domicilio` text NOT NULL,
  `Correo` text NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Sector` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`EmpresaID`, `Nombre`, `Domicilio`, `Correo`, `Telefono`, `Sector`) VALUES
(1, 'TechSoft Solutions', '123 Avenida Principal, CiudadTech', 'info@techsoft.com', 2147483647, 'Desarrollo de Software'),
(2, 'CodeCraft', '456 Calle Innovación, Zona IT', 'contacto@codecraft.io', 2147483647, 'Desarrollo de Software'),
(3, 'InnovDev', '789 Bulevar Tecnología, Distrito Digital', 'hello@innovdev.com', 2147483647, 'Desarrollo de Software'),
(4, 'SoftNext', '321 Circuito Programadores, Parque Tecnológico', 'support@softnext.com', 2147483647, 'Desarrollo de Software'),
(5, 'DevPeak', '654 Camino Desarrollo, Centro Creativo', 'admin@devpeak.com', 2147483647, 'Desarrollo de Software'),
(6, 'BlueCode Labs', '1234 Calle Digital, Zona Tecnológica', 'contacto@bluecode.com', 2147483647, 'Desarrollo de Software'),
(7, 'NextGen Devs', '5678 Avenida Futuro, Ciudad Innovadora', 'info@nextgendevs.com', 2147483647, 'Desarrollo de Software'),
(8, 'AlphaCode', '9101 Bulevar Alfa, Distrito IT', 'support@alphacode.com', 2147483647, 'Desarrollo de Software'),
(9, 'PixelSoft', '1122 Calle Pixel, Parque Creativo', 'admin@pixelsoft.com', 2147483647, 'Desarrollo de Software'),
(10, 'CodeSphere', '3344 Camino Código, Zona Innovación', 'hello@codesphere.com', 2147483647, 'Desarrollo de Software'),
(11, 'DevMasters', '5566 Avenida Progreso, Distrito Digital', 'info@devmasters.com', 2147483647, 'Desarrollo de Software'),
(12, 'Skyline Software', '7788 Circuito Nube, Parque Tecnológico', 'contacto@skylinesoft.com', 2147483647, 'Desarrollo de Software'),
(13, 'LogicWare', '9900 Calle Lógica, Zona Empresarial', 'soporte@logicware.com', 2147483647, 'Desarrollo de Software'),
(14, 'AppCreators', '123 Circuito Innovación, Distrito Creativo', 'info@appcreators.com', 2147483647, 'Desarrollo de Software'),
(15, 'TechWave', '456 Bulevar Tecnología, Ciudad del Futuro', 'contact@techwave.com', 2147483647, 'Desarrollo de Software');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta08`
--

CREATE TABLE `encuesta08` (
  `Id` int(11) NOT NULL,
  `Promedio` decimal(4,2) NOT NULL,
  `Veracidad` varchar(3) NOT NULL,
  `Matricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encuesta08`
--

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

--
-- Volcado de datos para la tabla `equipos`
--

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

CREATE TABLE `proyecto` (
  `ProyectoID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Funcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

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

--
-- Indices de la tabla `asesorempresarial`
--
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

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`EmpresaID`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);

--
-- Indices de la tabla `encuesta08`
--
ALTER TABLE `encuesta08`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Matricula` (`Matricula`),
  ADD KEY `Id_Proyecto` (`Id_Proyecto`);

--
-- Indices de la tabla `estudiante`
--
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

--
-- Indices de la tabla `proyectoasesores`
--
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

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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

--
-- Filtros para la tabla `encuesta08`
--
ALTER TABLE `encuesta08`
  ADD CONSTRAINT `encuesta08_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipos`
--
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
