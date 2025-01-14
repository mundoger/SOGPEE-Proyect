
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `sogpee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sogpee`;

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
  `Carta` text NOT NULL,
  `FO03` text NOT NULL,
  `Proyecto` text NOT NULL,
  `Parcial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 7.00, 'si', 1322134083);

CREATE TABLE `equipos` (
  `Id` int(11) NOT NULL,
  `Matricula` int(10) NOT NULL,
  `NoEquipo` int(11) NOT NULL,
  `Id_Proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `equipos` (`Id`, `Matricula`, `NoEquipo`, `Id_Proyecto`) VALUES
(189, 1322134083, 2, 1),
(190, 1322134084, 2, 1),
(191, 1322134085, 2, 1),
(192, 1322134086, 2, 1),
(193, 1322134087, 2, 1),
(194, 1322134088, 3, 1);

CREATE TABLE `estudiante` (
  `Matricula` int(10) NOT NULL,
  `Nombre1` varchar(20) NOT NULL,
  `Nombre2` varchar(20) DEFAULT NULL,
  `ApellidoP` varchar(20) NOT NULL,
  `ApellidoM` varchar(20) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Correo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `proyecto` (
  `ProyectoID` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Funcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `proyecto` (`ProyectoID`, `Nombre`, `Funcion`) VALUES
(1, 'SOGPEE', 'Estancias y estadias');

CREATE TABLE `proyectoasesores` (
  `Id` int(11) NOT NULL,
  `Id_asesorE` int(11) NOT NULL,
  `Id_asesorA` int(11) NOT NULL,
  `Id_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `teacher` (
  `TeacherID` int(11) NOT NULL,
  `Nombre1` varchar(20) DEFAULT NULL,
  `Nombre2` varchar(20) DEFAULT NULL,
  `ApellidoP` varchar(20) DEFAULT NULL,
  `ApellidoM` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
ALTER TABLE `asesoracademico`
  ADD PRIMARY KEY (`Id`);
ALTER TABLE `asesorempresarial`
  ADD PRIMARY KEY (`AsesorID`),
  ADD KEY `EmpresaID` (`Empresa`);
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
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`ProyectoID`),
  ADD UNIQUE KEY `Nombre` (`Nombre`);
ALTER TABLE `proyectoasesores`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_asesorA` (`Id_asesorA`),
  ADD KEY `Id_asesorE` (`Id_asesorE`),
  ADD KEY `Id_proyecto` (`Id_proyecto`);
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`TeacherID`);
ALTER TABLE `asesoracademico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
ALTER TABLE `coordinacion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `documentos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `encuesta08`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE `equipos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
ALTER TABLE `proyecto`
  MODIFY `ProyectoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
ALTER TABLE `proyectoasesores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
ALTER TABLE `asesorempresarial`
  ADD CONSTRAINT `asesorempresarial_ibfk_1` FOREIGN KEY (`Empresa`) REFERENCES `empresa` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `encuesta08`
  ADD CONSTRAINT `encuesta08_ibfk_1` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_2` FOREIGN KEY (`Matricula`) REFERENCES `estudiante` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipos_ibfk_3` FOREIGN KEY (`Id_Proyecto`) REFERENCES `proyecto` (`ProyectoID`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `proyectoasesores`
  ADD CONSTRAINT `proyectoasesores_ibfk_1` FOREIGN KEY (`Id_asesorA`) REFERENCES `asesoracademico` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proyectoasesores_ibfk_2` FOREIGN KEY (`Id_asesorE`) REFERENCES `asesorempresarial` (`AsesorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proyectoasesores_ibfk_3` FOREIGN KEY (`Id_proyecto`) REFERENCES `proyecto` (`ProyectoID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;