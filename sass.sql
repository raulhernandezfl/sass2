-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-09-2022 a las 17:48:08
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sass`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

DROP TABLE IF EXISTS `alumno`;
CREATE TABLE IF NOT EXISTS `alumno` (
  `NoControl` int(10) NOT NULL,
  `pass` varchar(8) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `ApellidoP` varchar(100) NOT NULL,
  `ApellidoM` varchar(100) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `NoCarrera1` int(10) NOT NULL,
  `NoSemestre1` int(10) NOT NULL,
  PRIMARY KEY (`NoControl`),
  KEY `fk_ac` (`NoCarrera1`),
  KEY `fk_as` (`NoSemestre1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`NoControl`, `pass`, `Nombre`, `ApellidoP`, `ApellidoM`, `Sexo`, `Telefono`, `Correo`, `NoCarrera1`, `NoSemestre1`) VALUES
(17253002, '12345', 'Joaquin', 'Galindo', 'Trejo', 'Masculino', '5627228245', 'galindotrejojoaquin@gmail.com', 1, 12),
(18253002, '123456', 'Raul', 'Hernandez', 'Flores', 'Masculino', '5580142265', 'joakiiin96@gmail.com', 4, 11),
(18253003, '789456', 'Ivan', 'Oregon', 'Galindo ', 'Masculino', '5627228245', 'galindotrejojoaquin@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

DROP TABLE IF EXISTS `carrera`;
CREATE TABLE IF NOT EXISTS `carrera` (
  `NoCarrera` int(10) NOT NULL,
  `clavec` varchar(10) NOT NULL,
  `Carrera` varchar(100) NOT NULL,
  PRIMARY KEY (`NoCarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`NoCarrera`, `clavec`, `Carrera`) VALUES
(1, 'IGE', 'Ingeniería en Gestión Empresarial'),
(2, 'ARQ', 'Arquitectura'),
(3, 'IND', 'Ingeniería Industrial'),
(4, 'ITICs', 'Ingeniería en Tecnologias de la Información y Comunicación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

DROP TABLE IF EXISTS `dependencia`;
CREATE TABLE IF NOT EXISTS `dependencia` (
  `idDependencia` int(10) NOT NULL,
  `NombreDep` varchar(100) NOT NULL,
  `TitularDep` varchar(100) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  PRIMARY KEY (`idDependencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechainiciotermino`
--

DROP TABLE IF EXISTS `fechainiciotermino`;
CREATE TABLE IF NOT EXISTS `fechainiciotermino` (
  `idFechasIN` int(10) NOT NULL,
  `fechasI` varchar(40) NOT NULL,
  `fechasT` varchar(40) NOT NULL,
  PRIMARY KEY (`idFechasIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasbasignadas`
--

DROP TABLE IF EXISTS `fechasbasignadas`;
CREATE TABLE IF NOT EXISTS `fechasbasignadas` (
  `idFechasBA` int(10) NOT NULL,
  `idFechasBF` int(10) NOT NULL,
  `NoControlF` int(10) NOT NULL,
  PRIMARY KEY (`idFechasBA`),
  KEY `fk_fbafb` (`NoControlF`) USING BTREE,
  KEY `fk_fbafbs` (`idFechasBF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasbimestrales`
--

DROP TABLE IF EXISTS `fechasbimestrales`;
CREATE TABLE IF NOT EXISTS `fechasbimestrales` (
  `idFechasB` int(10) NOT NULL,
  `fechas1` varchar(30) NOT NULL,
  `fechas2` varchar(30) NOT NULL,
  PRIMARY KEY (`idFechasB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasinasignadas`
--

DROP TABLE IF EXISTS `fechasinasignadas`;
CREATE TABLE IF NOT EXISTS `fechasinasignadas` (
  `idFechasINB` int(10) NOT NULL,
  `NoControlB` int(10) NOT NULL,
  KEY `fk_finafit` (`idFechasINB`),
  KEY `fk_finaa` (`NoControlB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

DROP TABLE IF EXISTS `horario`;
CREATE TABLE IF NOT EXISTS `horario` (
  `idHorario` int(10) NOT NULL,
  `horarioI` varchar(40) NOT NULL,
  `horarioT` varchar(40) NOT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarioasignado`
--

DROP TABLE IF EXISTS `horarioasignado`;
CREATE TABLE IF NOT EXISTS `horarioasignado` (
  `idHorario2` int(10) NOT NULL,
  `noControl2` int(10) NOT NULL,
  KEY `fk_hah` (`idHorario2`),
  KEY `fk_haa` (`noControl2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
CREATE TABLE IF NOT EXISTS `modalidad` (
  `idModalidad` int(10) NOT NULL,
  `Modalidad` varchar(30) NOT NULL,
  PRIMARY KEY (`idModalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

DROP TABLE IF EXISTS `periodo`;
CREATE TABLE IF NOT EXISTS `periodo` (
  `idPeriodo` int(10) NOT NULL,
  `Clave` varchar(20) NOT NULL,
  `Periodo` varchar(100) NOT NULL,
  PRIMARY KEY (`idPeriodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`idPeriodo`, `Clave`, `Periodo`) VALUES
(1, 'ENE/JUN', 'Enero/Junio'),
(2, 'AGO/DIC', 'Agosto/Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodoasignado`
--

DROP TABLE IF EXISTS `periodoasignado`;
CREATE TABLE IF NOT EXISTS `periodoasignado` (
  `idPeriodo1` int(10) NOT NULL,
  `NoControlP` int(10) NOT NULL,
  KEY `fk_PAA` (`NoControlP`),
  KEY `fk_PAP` (`idPeriodo1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

DROP TABLE IF EXISTS `programa`;
CREATE TABLE IF NOT EXISTS `programa` (
  `idPrograma` int(10) NOT NULL,
  `NombreP` varchar(200) NOT NULL,
  `NombreR` varchar(200) NOT NULL,
  `Objetivo` varchar(200) NOT NULL,
  `idTipoAct1` int(10) NOT NULL,
  `idModalidad1` int(10) NOT NULL,
  `idDependencia1` int(10) NOT NULL,
  PRIMARY KEY (`idPrograma`),
  KEY `fk_pd` (`idDependencia1`),
  KEY `fk_pta` (`idTipoAct1`),
  KEY `fk_pm` (`idModalidad1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programaseleccionado`
--

DROP TABLE IF EXISTS `programaseleccionado`;
CREATE TABLE IF NOT EXISTS `programaseleccionado` (
  `idPrograma1` int(10) NOT NULL,
  `NoControl1` int(10) NOT NULL,
  KEY `fk_psa` (`NoControl1`),
  KEY `fk_psp` (`idPrograma1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportesbimestrales`
--

DROP TABLE IF EXISTS `reportesbimestrales`;
CREATE TABLE IF NOT EXISTS `reportesbimestrales` (
  `claveReporte` int(10) NOT NULL,
  `nombreR` varchar(20) NOT NULL,
  `bimestre` varchar(20) NOT NULL,
  `archivo` longblob NOT NULL,
  `NoControlRB` int(10) NOT NULL,
  `idFechaBA` int(10) NOT NULL,
  PRIMARY KEY (`claveReporte`),
  KEY `fk_rba` (`NoControlRB`),
  KEY `fk_fbFBA` (`idFechaBA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

DROP TABLE IF EXISTS `semestre`;
CREATE TABLE IF NOT EXISTS `semestre` (
  `NoSemestre` int(10) NOT NULL,
  `Semestre` varchar(100) NOT NULL,
  PRIMARY KEY (`NoSemestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`NoSemestre`, `Semestre`) VALUES
(1, 'PRIMERO'),
(2, 'SEGUNDO'),
(3, 'TERCERO'),
(4, 'CUARTO'),
(5, 'QUINTO'),
(6, 'SEXTO'),
(7, 'SEPTIMO'),
(8, 'OCTAVO'),
(9, 'NOVENO'),
(10, 'DECIMO'),
(11, 'ONCEAVO'),
(12, 'DOCEAVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoactividad`
--

DROP TABLE IF EXISTS `tipoactividad`;
CREATE TABLE IF NOT EXISTS `tipoactividad` (
  `idTipoAct` int(10) NOT NULL,
  `Actividad` varchar(30) NOT NULL,
  PRIMARY KEY (`idTipoAct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_ac` FOREIGN KEY (`NoCarrera1`) REFERENCES `carrera` (`NoCarrera`),
  ADD CONSTRAINT `fk_as` FOREIGN KEY (`NoSemestre1`) REFERENCES `semestre` (`NoSemestre`);

--
-- Filtros para la tabla `fechasbasignadas`
--
ALTER TABLE `fechasbasignadas`
  ADD CONSTRAINT `fk_fbafb` FOREIGN KEY (`NoControlF`) REFERENCES `alumno` (`NoControl`),
  ADD CONSTRAINT `fk_fbafbs` FOREIGN KEY (`idFechasBF`) REFERENCES `fechasbimestrales` (`idFechasB`);

--
-- Filtros para la tabla `fechasinasignadas`
--
ALTER TABLE `fechasinasignadas`
  ADD CONSTRAINT `fk_finaa` FOREIGN KEY (`NoControlB`) REFERENCES `alumno` (`NoControl`),
  ADD CONSTRAINT `fk_finafit` FOREIGN KEY (`idFechasINB`) REFERENCES `fechainiciotermino` (`idFechasIN`);

--
-- Filtros para la tabla `horarioasignado`
--
ALTER TABLE `horarioasignado`
  ADD CONSTRAINT `fk_haa` FOREIGN KEY (`noControl2`) REFERENCES `alumno` (`NoControl`),
  ADD CONSTRAINT `fk_hah` FOREIGN KEY (`idHorario2`) REFERENCES `horario` (`idHorario`);

--
-- Filtros para la tabla `periodoasignado`
--
ALTER TABLE `periodoasignado`
  ADD CONSTRAINT `fk_PAA` FOREIGN KEY (`NoControlP`) REFERENCES `alumno` (`NoControl`),
  ADD CONSTRAINT `fk_PAP` FOREIGN KEY (`idPeriodo1`) REFERENCES `periodo` (`idPeriodo`);

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `fk_pd` FOREIGN KEY (`idDependencia1`) REFERENCES `dependencia` (`idDependencia`),
  ADD CONSTRAINT `fk_pm` FOREIGN KEY (`idModalidad1`) REFERENCES `modalidad` (`idModalidad`),
  ADD CONSTRAINT `fk_pta` FOREIGN KEY (`idTipoAct1`) REFERENCES `tipoactividad` (`idTipoAct`);

--
-- Filtros para la tabla `programaseleccionado`
--
ALTER TABLE `programaseleccionado`
  ADD CONSTRAINT `fk_psa` FOREIGN KEY (`NoControl1`) REFERENCES `alumno` (`NoControl`),
  ADD CONSTRAINT `fk_psp` FOREIGN KEY (`idPrograma1`) REFERENCES `programa` (`idPrograma`);

--
-- Filtros para la tabla `reportesbimestrales`
--
ALTER TABLE `reportesbimestrales`
  ADD CONSTRAINT `fk_fbFBA` FOREIGN KEY (`idFechaBA`) REFERENCES `fechasbasignadas` (`idFechasBA`),
  ADD CONSTRAINT `fk_rba` FOREIGN KEY (`NoControlRB`) REFERENCES `alumno` (`NoControl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
