-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-08-2018 a las 07:03:36
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `bucarProfesor` (IN `codigo` VARCHAR(5), OUT `nomb` VARCHAR(20))  READS SQL DATA
SELECT nomb=profesor.ProfNom from profesor where profesor.ProfCod=codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscar` (IN `codigo` INT(5), OUT `salir` CHAR(20))  NO SQL
SELECT profesor.ProfNom from profesor where profesor.ProfCod=codigo$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarProfesor` (IN `codigo` VARCHAR(5), OUT `nombre` CHAR(20))  NO SQL
SELECT nombre=profesor.ProfCod FROM profesor where profesor.ProfCod=codigo$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `AlumCod` int(5) NOT NULL,
  `GradCod` int(1) DEFAULT NULL,
  `AlumNom` char(50) DEFAULT NULL,
  `AlumDir` char(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`AlumCod`, `GradCod`, `AlumNom`, `AlumDir`) VALUES
(1002, 1, 'MIGUEL DIAZ', 'Av La Marina 304'),
(1003, 1, 'JOSE SUNIGA', 'Av Rosa Maria 202'),
(1004, 1, 'GERAL SEA', 'Av Rosa Maria 201'),
(1005, 1, 'JOSE EDUARDO MARTINES', 'Calle Garzilazo'),
(1006, 1, 'SEBASTIAN CARI', 'Av Lima 315'),
(1007, 1, 'Carlos Atencio', 'Av La Marina'),
(1008, 1, 'Olivio Juri', 'Av 7 esquinas'),
(1009, 1, 'LORENZO RiOS DAVILA', 'Calle Mariscal Castilla 306'),
(1010, 1, 'HECTOR ASENCIO ALBERDI', 'Av Rosa Maria 201'),
(1011, 1, 'AGUSTIN MOTA CABRAL', 'Calle Mariscal Castilla 202'),
(1012, 1, 'FRANCISCO JAVIER AGUADO', 'Calle Jose Mariategui 201'),
(1013, 1, 'JOSE MIGUEL VILLA', 'Av Gabril Garica Nueva'),
(1014, 1, 'SEBASTIAN GIRONA BARROSA', 'Av Lima 215'),
(1015, 1, 'JOSE IGNACIO MORON', 'Calle Garzilazo de la Vega 2015'),
(1016, 1, 'Jose Benites Ramos', 'Pasaje Marin 121'),
(1017, 1, 'Jose Armando Paredes', 'Av Lima el Cardo'),
(1018, 2, 'MIGUEL DIAZ', 'Av La Marina 304'),
(1019, 2, 'JOSE SUNIGA', 'Av Rosa Maria 202'),
(1020, 2, 'GERAL SEA', 'Av Rosa Maria 201'),
(1021, 2, 'JOSE EDUARDO MARTINES', 'Calle Garzilazo'),
(1022, 2, 'SEBASTIAN CARI', 'Av Lima 315'),
(1023, 2, 'Carlos Atencio', 'Av La Marina'),
(1024, 2, 'Olivio Juri', 'Av 7 esquinas'),
(1025, 2, 'LORENZO RiOS DAVILA', 'Calle Mariscal Castilla 306'),
(1026, 2, 'HECTOR ASENCIO ALBERDI', 'Av Rosa Maria 201'),
(1027, 2, 'AGUSTIN MOTA CABRAL', 'Calle Mariscal Castilla 202'),
(1028, 2, 'FRANCISCO JAVIER AGUADO', 'Calle Jose Mariategui 201'),
(1029, 2, 'JOSE MIGUEL VILLA', 'Av Gabril Garica Nueva'),
(1030, 2, 'SEBASTIAN GIRONA BARROSA', 'Av Lima 215'),
(1031, 2, 'JOSE IGNACIO MORON', 'Calle Garzilazo de la Vega 2015'),
(1032, 2, 'Jose Benites Ramos', 'Pasaje Marin 121'),
(1033, 2, 'Jose Armando Paredes', 'Av Lima el Cardo'),
(1034, 3, 'MIGUEL DIAZ', 'Av La Marina 304'),
(1035, 3, 'JOSE SUNIGA', 'Av Rosa Maria 202'),
(1036, 3, 'GERAL SEA', 'Av Rosa Maria 201'),
(1037, 3, 'JOSE EDUARDO MARTINES', 'Calle Garzilazo'),
(1038, 3, 'SEBASTIAN CARI', 'Av Lima 315'),
(1039, 3, 'Carlos Atencio', 'Av La Marina'),
(1040, 3, 'Olivio Juri', 'Av 7 esquinas'),
(1041, 3, 'LORENZO RiOS DAVILA', 'Calle Mariscal Castilla 306'),
(1042, 3, 'HECTOR ASENCIO ALBERDI', 'Av Rosa Maria 201'),
(1043, 3, 'AGUSTIN MOTA CABRAL', 'Calle Mariscal Castilla 202'),
(1044, 3, 'FRANCISCO JAVIER AGUADO', 'Calle Jose Mariategui 201'),
(1045, 3, 'JOSE MIGUEL VILLA', 'Av Gabril Garica Nueva'),
(1046, 3, 'SEBASTIAN GIRONA BARROSA', 'Av Lima 215'),
(1047, 3, 'JOSE IGNACIO MORON', 'Calle Garzilazo de la Vega 2015'),
(1048, 3, 'Jose Benites Ramos', 'Pasaje Marin 121'),
(1049, 3, 'Jose Armando Paredes', 'Av Lima el Cardo'),
(1050, 4, 'MIGUEL DIAZ', 'Av La Marina 304'),
(1051, 4, 'JOSE SUNIGA', 'Av Rosa Maria 202'),
(1052, 4, 'GERAL SEA', 'Av Rosa Maria 201'),
(1053, 4, 'JOSE EDUARDO MARTINES', 'Calle Garzilazo'),
(1054, 4, 'SEBASTIAN CARI', 'Av Lima 315'),
(1055, 4, 'Carlos Atencio', 'Av La Marina'),
(1056, 4, 'Olivio Juri', 'Av 7 esquinas'),
(1057, 4, 'LORENZO RiOS DAVILA', 'Calle Mariscal Castilla 306'),
(1058, 4, 'HECTOR ASENCIO ALBERDI', 'Av Rosa Maria 201'),
(1059, 4, 'AGUSTIN MOTA CABRAL', 'Calle Mariscal Castilla 202'),
(1060, 4, 'FRANCISCO JAVIER AGUADO', 'Calle Jose Mariategui 201'),
(1061, 4, 'JOSE MIGUEL VILLA', 'Av Gabril Garica Nueva'),
(1062, 4, 'SEBASTIAN GIRONA BARROSA', 'Av Lima 215'),
(1063, 4, 'JOSE IGNACIO MORON', 'Calle Garzilazo de la Vega 2015'),
(1064, 4, 'Jose Benites Ramos', 'Pasaje Marin 121'),
(1065, 4, 'Jose Armando Paredes', 'Av Lima el Cardo'),
(1066, 5, 'MIGUEL DIAZ', 'Av La Marina 304'),
(1067, 5, 'JOSE SUNIGA', 'Av Rosa Maria 202'),
(1068, 5, 'GERAL SEA', 'Av Rosa Maria 201'),
(1069, 5, 'JOSE EDUARDO MARTINES', 'Calle Garzilazo'),
(1070, 5, 'SEBASTIAN CARI', 'Av Lima 315'),
(1071, 5, 'Carlos Atencio', 'Av La Marina'),
(1072, 5, 'Olivio Juri', 'Av 7 esquinas'),
(1073, 5, 'LORENZO RiOS DAVILA', 'Calle Mariscal Castilla 306'),
(1074, 5, 'HECTOR ASENCIO ALBERDI', 'Av Rosa Maria 201'),
(1075, 5, 'AGUSTIN MOTA CABRAL', 'Calle Mariscal Castilla 202'),
(1076, 5, 'FRANCISCO JAVIER AGUADO', 'Calle Jose Mariategui 201'),
(1077, 5, 'JOSE MIGUEL VILLA', 'Av Gabril Garica Nueva'),
(1078, 5, 'SEBASTIAN GIRONA BARROSA', 'Av Lima 215'),
(1079, 5, 'JOSE IGNACIO MORON', 'Calle Garzilazo de la Vega 2015'),
(1080, 5, 'Jose Benites Ramos', 'Pasaje Marin 121'),
(1081, 5, 'Jose Armando Paredes', 'Av Lima el Cardo'),
(1082, 6, 'MIGUEL DIAZ', 'Av La Marina 304'),
(1083, 6, 'JOSE SUNIGA', 'Av Rosa Maria 202'),
(1084, 6, 'GERAL SEA', 'Av Rosa Maria 201'),
(1085, 6, 'JOSE EDUARDO MARTINES', 'Calle Garzilazo'),
(1086, 6, 'SEBASTIAN CARI', 'Av Lima 315'),
(1087, 6, 'Carlos Atencio', 'Av La Marina'),
(1088, 6, 'Olivio Juri', 'Av 7 esquinas'),
(1089, 6, 'LORENZO RiOS DAVILA', 'Calle Mariscal Castilla 306'),
(1090, 6, 'HECTOR ASENCIO ALBERDI', 'Av Rosa Maria 201'),
(1091, 6, 'AGUSTIN MOTA CABRAL', 'Calle Mariscal Castilla 202'),
(1092, 6, 'FRANCISCO JAVIER AGUADO', 'Calle Jose Mariategui 201'),
(1093, 6, 'JOSE MIGUEL VILLA', 'Av Gabril Garica Nueva'),
(1094, 6, 'SEBASTIAN GIRONA BARROSA', 'Av Lima 215'),
(1095, 6, 'JOSE IGNACIO MORON', 'Calle Garzilazo de la Vega 2015'),
(1096, 6, 'Jose Benites Ramos', 'Pasaje Marin 121'),
(1097, 6, 'Jose Armando Paredes', 'Av Lima el Cardo'),
(12345, 1, 'Jose Diego Kari', 'Av Mariscal Castilla 202');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_alum`
--

CREATE TABLE `cuenta_alum` (
  `AlumCod` int(5) NOT NULL,
  `AlumPas` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuenta_alum`
--

INSERT INTO `cuenta_alum` (`AlumCod`, `AlumPas`) VALUES
(1002, '1234'),
(1003, '1234'),
(1004, '1234'),
(1005, '1234'),
(1006, '1234'),
(1007, '1234'),
(1008, '1234'),
(1009, '1234'),
(1010, '1234'),
(1011, '1234'),
(1012, '1234'),
(1013, '1234'),
(1014, '1234'),
(1015, '1234'),
(1016, '1234'),
(1017, '1234'),
(1018, '1234'),
(1019, '1234'),
(1020, '1234'),
(1021, '1234'),
(1022, '1234'),
(1023, '1234'),
(1024, '1234'),
(1025, '1234'),
(1026, '1234'),
(1027, '1234'),
(1028, '1234'),
(1029, '1234'),
(1030, '1234'),
(1031, '1234'),
(1032, '1234'),
(1033, '1234'),
(1034, '1234'),
(1035, '1234'),
(1036, '1234'),
(1037, '1234'),
(1038, '1234'),
(1039, '1234'),
(1040, '1234'),
(1041, '1234'),
(1042, '1234'),
(1043, '1234'),
(1044, '1234'),
(1045, '1234'),
(1046, '1234'),
(1047, '1234'),
(1048, '1234'),
(1049, '1234'),
(1050, '1234'),
(1051, '1234'),
(1052, '1234'),
(1053, '1234'),
(1054, '1234'),
(1055, '1234'),
(1056, '1234'),
(1057, '1234'),
(1058, '1234'),
(1059, '1234'),
(1060, '1234'),
(1061, '1234'),
(1062, '1234'),
(1063, '1234'),
(1064, '1234'),
(1065, '1234'),
(1066, '1234'),
(1067, '1234'),
(1068, '1234'),
(1069, '1234'),
(1070, '1234'),
(1071, '1234'),
(1072, '1234'),
(1073, '1234'),
(1074, '1234'),
(1075, '1234'),
(1076, '1234'),
(1077, '1234'),
(1078, '1234'),
(1079, '1234'),
(1080, '1234'),
(1081, '1234'),
(1082, '1234'),
(1083, '1234'),
(1084, '1234'),
(1085, '1234'),
(1086, '1234'),
(1087, '1234'),
(1088, '1234'),
(1089, '1234'),
(1090, '1234'),
(1091, '1234'),
(1092, '1234'),
(1093, '1234'),
(1094, '1234'),
(1095, '1234'),
(1096, '1234'),
(1097, '1234'),
(12345, '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_prof`
--

CREATE TABLE `cuenta_prof` (
  `ProfCod` int(5) NOT NULL,
  `ProfPas` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuenta_prof`
--

INSERT INTO `cuenta_prof` (`ProfCod`, `ProfPas`) VALUES
(12345, '1234'),
(25263, '1234'),
(25264, '1234'),
(25284, '1234'),
(55555, '1234'),
(56894, '1234'),
(85284, '1234'),
(85684, '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `CurCod` int(2) NOT NULL,
  `CurNom` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`CurCod`, `CurNom`) VALUES
(1, 'Matematica'),
(2, 'Comunicacion'),
(3, 'CTA'),
(4, 'Fisica'),
(5, 'Compresión Lectora'),
(6, 'Razonamiento Verbal'),
(7, 'Razonamiento Matematico'),
(8, 'RRHH'),
(9, 'Educacion Civica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `GradCod` int(1) NOT NULL,
  `GradDesc` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`GradCod`, `GradDesc`) VALUES
(1, 'PRIMER GRADO'),
(2, 'SEGUNDO GRADO'),
(3, 'TERCERO GRADO'),
(4, 'CUARTO GRADO'),
(5, 'QUINTO GRADO'),
(6, 'SEXTO GRADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `AlumCod` int(5) NOT NULL,
  `CurCod` int(2) NOT NULL,
  `ProfCod` int(5) DEFAULT NULL,
  `NotaFinal1` int(2) DEFAULT NULL,
  `NotaFinal2` int(2) DEFAULT NULL,
  `NotaFinal3` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`AlumCod`, `CurCod`, `ProfCod`, `NotaFinal1`, `NotaFinal2`, `NotaFinal3`) VALUES
(1002, 1, 25284, 13, 12, 15),
(1002, 3, 25264, 0, 0, NULL),
(1002, 4, 85684, 0, 0, NULL),
(1002, 6, 25263, 0, 0, NULL),
(1002, 7, 12345, 20, 15, 18),
(1002, 8, 85284, 0, NULL, NULL),
(1002, 9, 56894, 0, NULL, NULL),
(1003, 1, 25284, 0, NULL, NULL),
(1003, 3, 25264, 0, NULL, NULL),
(1003, 4, 85684, 0, NULL, NULL),
(1003, 6, 25263, 0, NULL, NULL),
(1003, 7, 12345, 15, 10, 45),
(1003, 8, 85284, 0, NULL, NULL),
(1003, 9, 56894, 0, NULL, NULL),
(1004, 1, 25284, 0, NULL, NULL),
(1004, 3, 25264, 0, NULL, NULL),
(1004, 4, 85684, 0, NULL, NULL),
(1004, 6, 25263, 0, NULL, NULL),
(1004, 7, 12345, 15, 12, 15),
(1004, 8, 85284, 0, NULL, NULL),
(1004, 9, 56894, 0, NULL, NULL),
(1005, 1, 25284, 0, NULL, NULL),
(1005, 3, 25264, 0, NULL, NULL),
(1005, 4, 85684, 0, NULL, NULL),
(1005, 6, 25263, 0, NULL, NULL),
(1005, 7, 12345, 19, 13, 20),
(1005, 8, 85284, 0, NULL, NULL),
(1005, 9, 56894, 0, NULL, NULL),
(1006, 1, 25284, 0, NULL, NULL),
(1006, 3, 25264, 0, NULL, NULL),
(1006, 4, 85684, 0, NULL, NULL),
(1006, 6, 25263, 0, NULL, NULL),
(1006, 7, 12345, 12, 15, 10),
(1006, 8, 85284, 0, NULL, NULL),
(1006, 9, 56894, 0, NULL, NULL),
(1007, 1, 25284, 0, NULL, NULL),
(1007, 3, 25264, 0, NULL, NULL),
(1007, 4, 85684, 0, NULL, NULL),
(1007, 6, 25263, 0, NULL, NULL),
(1007, 7, 12345, 12, 9, 12),
(1007, 8, 85284, 0, NULL, NULL),
(1007, 9, 56894, 0, NULL, NULL),
(1008, 1, 25284, 0, NULL, NULL),
(1008, 3, 25264, 0, NULL, NULL),
(1008, 4, 85684, 0, NULL, NULL),
(1008, 6, 25263, 0, NULL, NULL),
(1008, 7, 12345, 5, 5, 3),
(1008, 8, 85284, 0, NULL, NULL),
(1008, 9, 56894, 0, NULL, NULL),
(1009, 1, 25284, 0, NULL, NULL),
(1009, 3, 25264, 0, NULL, NULL),
(1009, 4, 85684, 0, NULL, NULL),
(1009, 6, 25263, 0, NULL, NULL),
(1009, 7, 12345, -3, 0, 0),
(1009, 8, 85284, 0, NULL, NULL),
(1009, 9, 56894, 0, NULL, NULL),
(1010, 1, 25284, 0, NULL, NULL),
(1010, 3, 25264, 0, NULL, NULL),
(1010, 4, 85684, 0, NULL, NULL),
(1010, 6, 25263, 0, NULL, NULL),
(1010, 7, 12345, 0, 0, 0),
(1010, 8, 85284, 0, NULL, NULL),
(1010, 9, 56894, 0, NULL, NULL),
(1011, 1, 25284, 0, NULL, NULL),
(1011, 3, 25264, 0, NULL, NULL),
(1011, 4, 85684, 0, NULL, NULL),
(1011, 6, 25263, 0, NULL, NULL),
(1011, 7, 12345, 0, 0, 0),
(1011, 8, 85284, 0, NULL, NULL),
(1011, 9, 56894, 0, NULL, NULL),
(1012, 1, 25284, 0, NULL, NULL),
(1012, 3, 25264, 0, NULL, NULL),
(1012, 4, 85684, 0, NULL, NULL),
(1012, 6, 25263, 0, NULL, NULL),
(1012, 7, 12345, 0, 0, 0),
(1012, 8, 85284, 0, NULL, NULL),
(1012, 9, 56894, 0, NULL, NULL),
(1013, 1, 25284, 0, NULL, NULL),
(1013, 3, 25264, 0, NULL, NULL),
(1013, 4, 85684, 0, NULL, NULL),
(1013, 6, 25263, 0, NULL, NULL),
(1013, 7, 12345, 0, 0, 0),
(1013, 8, 85284, 0, NULL, NULL),
(1013, 9, 56894, 0, NULL, NULL),
(1014, 1, 25284, 0, NULL, NULL),
(1014, 3, 25264, 0, NULL, NULL),
(1014, 4, 85684, 0, NULL, NULL),
(1014, 6, 25263, 0, NULL, NULL),
(1014, 7, 12345, 0, 15, NULL),
(1014, 8, 85284, 0, NULL, NULL),
(1014, 9, 56894, 0, NULL, NULL),
(1015, 1, 25284, 0, NULL, NULL),
(1015, 3, 25264, 0, NULL, NULL),
(1015, 4, 85684, 0, NULL, NULL),
(1015, 6, 25263, 0, NULL, NULL),
(1015, 7, 12345, 0, -1, NULL),
(1015, 8, 85284, 0, NULL, NULL),
(1015, 9, 56894, 0, NULL, NULL),
(1016, 1, 25284, 0, NULL, NULL),
(1016, 3, 25264, 0, NULL, NULL),
(1016, 4, 85684, 0, NULL, NULL),
(1016, 6, 25263, 0, NULL, NULL),
(1016, 7, 12345, 0, NULL, NULL),
(1016, 8, 85284, 0, NULL, NULL),
(1016, 9, 56894, 0, NULL, NULL),
(1017, 1, 25284, 0, NULL, NULL),
(1017, 3, 25264, 0, NULL, NULL),
(1017, 4, 85684, 0, NULL, NULL),
(1017, 6, 25263, 0, NULL, NULL),
(1017, 7, 12345, 0, NULL, NULL),
(1017, 8, 85284, 0, NULL, NULL),
(1017, 9, 56894, 0, NULL, NULL),
(1018, 1, 25263, 0, NULL, NULL),
(1018, 2, 12345, 11, 15, 15),
(1018, 3, 25284, 0, NULL, NULL),
(1018, 4, 85284, 0, NULL, NULL),
(1018, 5, 56894, 0, NULL, NULL),
(1018, 7, 85684, 0, NULL, NULL),
(1018, 9, 25264, 0, NULL, NULL),
(1019, 1, 25263, 0, NULL, NULL),
(1019, 2, 12345, 12, 12, 11),
(1019, 3, 25284, 0, NULL, NULL),
(1019, 4, 85284, 0, NULL, NULL),
(1019, 5, 56894, 0, NULL, NULL),
(1019, 7, 85684, 0, NULL, NULL),
(1019, 9, 25264, 0, NULL, NULL),
(1020, 1, 25263, 0, NULL, NULL),
(1020, 2, 12345, 17, 15, 11),
(1020, 3, 25284, 0, NULL, NULL),
(1020, 4, 85284, 0, NULL, NULL),
(1020, 5, 56894, 0, NULL, NULL),
(1020, 7, 85684, 0, NULL, NULL),
(1020, 9, 25264, 0, NULL, NULL),
(1021, 1, 25263, 0, NULL, NULL),
(1021, 2, 12345, 15, NULL, NULL),
(1021, 3, 25284, 0, NULL, NULL),
(1021, 4, 85284, 0, NULL, NULL),
(1021, 5, 56894, 0, NULL, NULL),
(1021, 7, 85684, 0, NULL, NULL),
(1021, 9, 25264, 0, NULL, NULL),
(1022, 1, 25263, 0, NULL, NULL),
(1022, 2, 12345, 0, NULL, NULL),
(1022, 3, 25284, 0, NULL, NULL),
(1022, 4, 85284, 0, NULL, NULL),
(1022, 5, 56894, 0, NULL, NULL),
(1022, 7, 85684, 0, NULL, NULL),
(1022, 9, 25264, 0, NULL, NULL),
(1023, 1, 25263, 0, NULL, NULL),
(1023, 2, 12345, 0, NULL, NULL),
(1023, 3, 25284, 0, NULL, NULL),
(1023, 4, 85284, 0, NULL, NULL),
(1023, 5, 56894, 0, NULL, NULL),
(1023, 7, 85684, 0, NULL, NULL),
(1023, 9, 25264, 0, NULL, NULL),
(1024, 1, 25263, 0, NULL, NULL),
(1024, 2, 12345, 0, NULL, NULL),
(1024, 3, 25284, 0, NULL, NULL),
(1024, 4, 85284, 0, NULL, NULL),
(1024, 5, 56894, 0, NULL, NULL),
(1024, 7, 85684, 0, NULL, NULL),
(1024, 9, 25264, 0, NULL, NULL),
(1025, 1, 25263, 0, NULL, NULL),
(1025, 2, 12345, 0, NULL, NULL),
(1025, 3, 25284, 0, NULL, NULL),
(1025, 4, 85284, 0, NULL, NULL),
(1025, 5, 56894, 0, NULL, NULL),
(1025, 7, 85684, 0, NULL, NULL),
(1025, 9, 25264, 0, NULL, NULL),
(1026, 1, 25263, 0, NULL, NULL),
(1026, 2, 12345, 0, NULL, NULL),
(1026, 3, 25284, 0, NULL, NULL),
(1026, 4, 85284, 0, NULL, NULL),
(1026, 5, 56894, 0, NULL, NULL),
(1026, 7, 85684, 0, NULL, NULL),
(1026, 9, 25264, 0, NULL, NULL),
(1027, 1, 25263, 0, NULL, NULL),
(1027, 2, 12345, 0, NULL, NULL),
(1027, 3, 25284, 0, NULL, NULL),
(1027, 4, 85284, 0, NULL, NULL),
(1027, 5, 56894, 0, NULL, NULL),
(1027, 7, 85684, 0, NULL, NULL),
(1027, 8, 12345, 15, 15, 15),
(1027, 9, 25264, 0, NULL, NULL),
(1028, 1, 25263, 0, NULL, NULL),
(1028, 2, 12345, 0, NULL, NULL),
(1028, 3, 25284, 0, NULL, NULL),
(1028, 4, 85284, 0, NULL, NULL),
(1028, 5, 56894, 0, NULL, NULL),
(1028, 7, 85684, 0, NULL, NULL),
(1028, 9, 25264, 0, NULL, NULL),
(1029, 1, 25263, 0, NULL, NULL),
(1029, 2, 12345, 0, NULL, NULL),
(1029, 3, 25284, 0, NULL, NULL),
(1029, 4, 85284, 0, NULL, NULL),
(1029, 5, 56894, 0, NULL, NULL),
(1029, 7, 85684, 0, NULL, NULL),
(1029, 9, 25264, 0, NULL, NULL),
(1030, 1, 25263, 0, NULL, NULL),
(1030, 2, 12345, 0, NULL, NULL),
(1030, 3, 25284, 0, NULL, NULL),
(1030, 4, 85284, 0, NULL, NULL),
(1030, 5, 56894, 0, NULL, NULL),
(1030, 7, 85684, 0, NULL, NULL),
(1030, 9, 25264, 0, NULL, NULL),
(1031, 1, 25263, 0, NULL, NULL),
(1031, 2, 12345, 0, NULL, NULL),
(1031, 3, 25284, 0, NULL, NULL),
(1031, 4, 85284, 0, NULL, NULL),
(1031, 5, 56894, 0, NULL, NULL),
(1031, 7, 85684, 0, NULL, NULL),
(1031, 9, 25264, 0, NULL, NULL),
(1032, 1, 25263, 0, NULL, NULL),
(1032, 2, 12345, 0, NULL, NULL),
(1032, 3, 25284, 0, NULL, NULL),
(1032, 4, 85284, 0, NULL, NULL),
(1032, 5, 56894, 0, NULL, NULL),
(1032, 7, 85684, 0, NULL, NULL),
(1032, 9, 25264, 0, NULL, NULL),
(1033, 1, 25263, 0, NULL, NULL),
(1033, 2, 12345, 0, NULL, NULL),
(1033, 3, 25284, 0, NULL, NULL),
(1033, 4, 85284, 0, NULL, NULL),
(1033, 5, 56894, 0, NULL, NULL),
(1033, 7, 85684, 0, NULL, NULL),
(1033, 9, 25264, 0, NULL, NULL),
(1034, 2, 25284, 0, NULL, NULL),
(1034, 3, 25264, 0, NULL, NULL),
(1034, 5, 85284, 0, NULL, NULL),
(1034, 6, 25263, 0, NULL, NULL),
(1034, 7, 12345, 0, 0, 0),
(1034, 8, 56894, 0, NULL, NULL),
(1034, 9, 85684, 0, NULL, NULL),
(1035, 2, 25284, 0, NULL, NULL),
(1035, 3, 25264, 0, NULL, NULL),
(1035, 5, 85284, 0, NULL, NULL),
(1035, 6, 25263, 0, NULL, NULL),
(1035, 7, 12345, 5, 11, 5),
(1035, 8, 56894, 0, NULL, NULL),
(1035, 9, 85684, 0, NULL, NULL),
(1036, 2, 25284, 0, NULL, NULL),
(1036, 3, 25264, 0, NULL, NULL),
(1036, 5, 85284, 0, NULL, NULL),
(1036, 6, 25263, 0, NULL, NULL),
(1036, 7, 12345, 0, 0, 0),
(1036, 8, 56894, 0, NULL, NULL),
(1036, 9, 85684, 0, NULL, NULL),
(1037, 2, 25284, 0, NULL, NULL),
(1037, 3, 25264, 0, NULL, NULL),
(1037, 5, 85284, 0, NULL, NULL),
(1037, 6, 25263, 0, NULL, NULL),
(1037, 7, 12345, 0, 0, 0),
(1037, 8, 56894, 0, NULL, NULL),
(1037, 9, 85684, 0, NULL, NULL),
(1038, 2, 25284, 0, NULL, NULL),
(1038, 3, 25264, 0, NULL, NULL),
(1038, 5, 85284, 0, NULL, NULL),
(1038, 6, 25263, 0, NULL, NULL),
(1038, 7, 12345, 0, 0, 0),
(1038, 8, 56894, 0, NULL, NULL),
(1038, 9, 85684, 0, NULL, NULL),
(1039, 2, 25284, 0, NULL, NULL),
(1039, 3, 25264, 0, NULL, NULL),
(1039, 5, 85284, 0, NULL, NULL),
(1039, 6, 25263, 0, NULL, NULL),
(1039, 7, 12345, 0, 0, 0),
(1039, 8, 56894, 0, NULL, NULL),
(1039, 9, 85684, 0, NULL, NULL),
(1040, 2, 25284, 0, NULL, NULL),
(1040, 3, 25264, 0, NULL, NULL),
(1040, 5, 85284, 0, NULL, NULL),
(1040, 6, 25263, 0, NULL, NULL),
(1040, 7, 12345, 0, 0, 0),
(1040, 8, 56894, 0, NULL, NULL),
(1040, 9, 85684, 0, NULL, NULL),
(1041, 2, 25284, 0, NULL, NULL),
(1041, 3, 25264, 0, NULL, NULL),
(1041, 5, 85284, 0, NULL, NULL),
(1041, 6, 25263, 0, NULL, NULL),
(1041, 7, 12345, 0, 0, 0),
(1041, 8, 56894, 0, NULL, NULL),
(1041, 9, 85684, 0, NULL, NULL),
(1042, 2, 25284, 0, NULL, NULL),
(1042, 3, 25264, 0, NULL, NULL),
(1042, 5, 85284, 0, NULL, NULL),
(1042, 6, 25263, 0, NULL, NULL),
(1042, 7, 12345, 0, 0, 0),
(1042, 8, 56894, 0, NULL, NULL),
(1042, 9, 85684, 0, NULL, NULL),
(1043, 2, 25284, 0, NULL, NULL),
(1043, 3, 25264, 0, NULL, NULL),
(1043, 5, 85284, 0, NULL, NULL),
(1043, 6, 25263, 0, NULL, NULL),
(1043, 7, 12345, 0, NULL, NULL),
(1043, 8, 56894, 0, NULL, NULL),
(1043, 9, 85684, 0, NULL, NULL),
(1044, 2, 25284, 0, NULL, NULL),
(1044, 3, 25264, 0, NULL, NULL),
(1044, 5, 85284, 0, NULL, NULL),
(1044, 6, 25263, 0, NULL, NULL),
(1044, 7, 12345, 0, NULL, NULL),
(1044, 8, 56894, 0, NULL, NULL),
(1044, 9, 85684, 0, NULL, NULL),
(1045, 2, 25284, 0, NULL, NULL),
(1045, 3, 25264, 0, NULL, NULL),
(1045, 5, 85284, 0, NULL, NULL),
(1045, 6, 25263, 0, NULL, NULL),
(1045, 7, 12345, 0, NULL, NULL),
(1045, 8, 56894, 0, NULL, NULL),
(1045, 9, 85684, 0, NULL, NULL),
(1046, 2, 25284, 0, NULL, NULL),
(1046, 3, 25264, 0, NULL, NULL),
(1046, 5, 85284, 0, NULL, NULL),
(1046, 6, 25263, 0, NULL, NULL),
(1046, 7, 12345, 0, NULL, NULL),
(1046, 8, 56894, 0, NULL, NULL),
(1046, 9, 85684, 0, NULL, NULL),
(1047, 2, 25284, 0, NULL, NULL),
(1047, 3, 25264, 0, NULL, NULL),
(1047, 5, 85284, 0, NULL, NULL),
(1047, 6, 25263, 0, NULL, NULL),
(1047, 7, 12345, 0, NULL, NULL),
(1047, 8, 56894, 0, NULL, NULL),
(1047, 9, 85684, 0, NULL, NULL),
(1048, 2, 25284, 0, NULL, NULL),
(1048, 3, 25264, 0, NULL, NULL),
(1048, 5, 85284, 0, NULL, NULL),
(1048, 6, 25263, 0, NULL, NULL),
(1048, 7, 12345, 0, NULL, NULL),
(1048, 8, 56894, 0, NULL, NULL),
(1048, 9, 85684, 0, NULL, NULL),
(1049, 2, 25284, 0, NULL, NULL),
(1049, 3, 25264, 0, NULL, NULL),
(1049, 5, 85284, 0, NULL, NULL),
(1049, 6, 25263, 0, NULL, NULL),
(1049, 7, 12345, 0, NULL, NULL),
(1049, 8, 56894, 0, NULL, NULL),
(1049, 9, 85684, 0, NULL, NULL),
(1050, 3, 56894, 0, NULL, NULL),
(1050, 4, 25284, 0, NULL, NULL),
(1050, 5, 85284, 0, NULL, NULL),
(1050, 6, 12345, 0, NULL, NULL),
(1050, 7, 25263, 0, NULL, NULL),
(1050, 8, 85684, 0, NULL, NULL),
(1050, 9, 25264, 0, NULL, NULL),
(1051, 3, 56894, 0, NULL, NULL),
(1051, 4, 25284, 0, NULL, NULL),
(1051, 5, 85284, 0, NULL, NULL),
(1051, 6, 12345, 0, NULL, NULL),
(1051, 7, 25263, 0, NULL, NULL),
(1051, 8, 85684, 0, NULL, NULL),
(1051, 9, 25264, 0, NULL, NULL),
(1052, 3, 56894, 0, NULL, NULL),
(1052, 4, 25284, 0, NULL, NULL),
(1052, 5, 85284, 0, NULL, NULL),
(1052, 6, 12345, 0, NULL, NULL),
(1052, 7, 25263, 0, NULL, NULL),
(1052, 8, 85684, 0, NULL, NULL),
(1052, 9, 25264, 0, NULL, NULL),
(1053, 3, 56894, 0, NULL, NULL),
(1053, 4, 25284, 0, NULL, NULL),
(1053, 5, 85284, 0, NULL, NULL),
(1053, 6, 12345, 0, NULL, NULL),
(1053, 7, 25263, 0, NULL, NULL),
(1053, 8, 85684, 0, NULL, NULL),
(1053, 9, 25264, 0, NULL, NULL),
(1054, 3, 56894, 0, NULL, NULL),
(1054, 4, 25284, 0, NULL, NULL),
(1054, 5, 85284, 0, NULL, NULL),
(1054, 6, 12345, 0, NULL, NULL),
(1054, 7, 25263, 0, NULL, NULL),
(1054, 8, 85684, 0, NULL, NULL),
(1054, 9, 25264, 0, NULL, NULL),
(1055, 3, 56894, 0, NULL, NULL),
(1055, 4, 25284, 0, NULL, NULL),
(1055, 5, 85284, 0, NULL, NULL),
(1055, 6, 12345, 0, NULL, NULL),
(1055, 7, 25263, 0, NULL, NULL),
(1055, 8, 85684, 0, NULL, NULL),
(1055, 9, 25264, 0, NULL, NULL),
(1056, 3, 56894, 0, NULL, NULL),
(1056, 4, 25284, 0, NULL, NULL),
(1056, 5, 85284, 0, NULL, NULL),
(1056, 6, 12345, 0, NULL, NULL),
(1056, 7, 25263, 0, NULL, NULL),
(1056, 8, 85684, 0, NULL, NULL),
(1056, 9, 25264, 0, NULL, NULL),
(1057, 3, 56894, 0, NULL, NULL),
(1057, 4, 25284, 0, NULL, NULL),
(1057, 5, 85284, 0, NULL, NULL),
(1057, 6, 12345, 0, NULL, NULL),
(1057, 7, 25263, 0, NULL, NULL),
(1057, 8, 85684, 0, NULL, NULL),
(1057, 9, 25264, 0, NULL, NULL),
(1058, 3, 56894, 0, NULL, NULL),
(1058, 4, 25284, 0, NULL, NULL),
(1058, 5, 85284, 0, NULL, NULL),
(1058, 6, 12345, 0, NULL, NULL),
(1058, 7, 25263, 0, NULL, NULL),
(1058, 8, 85684, 0, NULL, NULL),
(1058, 9, 25264, 0, NULL, NULL),
(1059, 3, 56894, 0, NULL, NULL),
(1059, 4, 25284, 0, NULL, NULL),
(1059, 5, 85284, 0, NULL, NULL),
(1059, 6, 12345, 0, NULL, NULL),
(1059, 7, 25263, 0, NULL, NULL),
(1059, 8, 85684, 0, NULL, NULL),
(1059, 9, 25264, 0, NULL, NULL),
(1060, 3, 56894, 0, NULL, NULL),
(1060, 4, 25284, 0, NULL, NULL),
(1060, 5, 85284, 0, NULL, NULL),
(1060, 6, 12345, 0, NULL, NULL),
(1060, 7, 25263, 0, NULL, NULL),
(1060, 8, 85684, 0, NULL, NULL),
(1060, 9, 25264, 0, NULL, NULL),
(1061, 3, 56894, 0, NULL, NULL),
(1061, 4, 25284, 0, NULL, NULL),
(1061, 5, 85284, 0, NULL, NULL),
(1061, 6, 12345, 0, NULL, NULL),
(1061, 7, 25263, 0, NULL, NULL),
(1061, 8, 85684, 0, NULL, NULL),
(1061, 9, 25264, 0, NULL, NULL),
(1062, 3, 56894, 0, NULL, NULL),
(1062, 4, 25284, 0, NULL, NULL),
(1062, 5, 85284, 0, NULL, NULL),
(1062, 6, 12345, 0, NULL, NULL),
(1062, 7, 25263, 0, NULL, NULL),
(1062, 8, 85684, 0, NULL, NULL),
(1062, 9, 25264, 0, NULL, NULL),
(1063, 3, 56894, 0, NULL, NULL),
(1063, 4, 25284, 0, NULL, NULL),
(1063, 5, 85284, 0, NULL, NULL),
(1063, 6, 12345, 0, NULL, NULL),
(1063, 7, 25263, 0, NULL, NULL),
(1063, 8, 85684, 0, NULL, NULL),
(1063, 9, 25264, 0, NULL, NULL),
(1064, 3, 56894, 0, NULL, NULL),
(1064, 4, 25284, 0, NULL, NULL),
(1064, 5, 85284, 0, NULL, NULL),
(1064, 6, 12345, 0, NULL, NULL),
(1064, 7, 25263, 0, NULL, NULL),
(1064, 8, 85684, 0, NULL, NULL),
(1064, 9, 25264, 0, NULL, NULL),
(1065, 3, 56894, 0, NULL, NULL),
(1065, 4, 25284, 0, NULL, NULL),
(1065, 5, 85284, 0, NULL, NULL),
(1065, 6, 12345, 0, NULL, NULL),
(1065, 7, 25263, 0, NULL, NULL),
(1065, 8, 85684, 0, NULL, NULL),
(1065, 9, 25264, 0, NULL, NULL),
(1066, 1, 56894, 0, NULL, NULL),
(1066, 2, 25284, 0, NULL, NULL),
(1066, 3, 25263, 0, NULL, NULL),
(1066, 5, 25264, 0, NULL, NULL),
(1066, 7, 85284, 0, NULL, NULL),
(1066, 8, 85684, 0, NULL, NULL),
(1066, 9, 12345, 0, NULL, NULL),
(1067, 1, 56894, 0, NULL, NULL),
(1067, 2, 25284, 0, NULL, NULL),
(1067, 3, 25263, 0, NULL, NULL),
(1067, 5, 25264, 0, NULL, NULL),
(1067, 7, 85284, 0, NULL, NULL),
(1067, 8, 85684, 0, NULL, NULL),
(1067, 9, 12345, 0, NULL, NULL),
(1068, 1, 56894, 0, NULL, NULL),
(1068, 2, 25284, 0, NULL, NULL),
(1068, 3, 25263, 0, NULL, NULL),
(1068, 5, 25264, 0, NULL, NULL),
(1068, 7, 85284, 0, NULL, NULL),
(1068, 8, 85684, 0, NULL, NULL),
(1068, 9, 12345, 0, NULL, NULL),
(1069, 1, 56894, 0, NULL, NULL),
(1069, 2, 25284, 0, NULL, NULL),
(1069, 3, 25263, 0, NULL, NULL),
(1069, 5, 25264, 0, NULL, NULL),
(1069, 7, 85284, 0, NULL, NULL),
(1069, 8, 85684, 0, NULL, NULL),
(1069, 9, 12345, 0, NULL, NULL),
(1070, 1, 56894, 0, NULL, NULL),
(1070, 2, 25284, 0, NULL, NULL),
(1070, 3, 25263, 0, NULL, NULL),
(1070, 5, 25264, 0, NULL, NULL),
(1070, 7, 85284, 0, NULL, NULL),
(1070, 8, 85684, 0, NULL, NULL),
(1070, 9, 12345, 0, NULL, NULL),
(1071, 1, 56894, 0, NULL, NULL),
(1071, 2, 25284, 0, NULL, NULL),
(1071, 3, 25263, 0, NULL, NULL),
(1071, 5, 25264, 0, NULL, NULL),
(1071, 7, 85284, 0, NULL, NULL),
(1071, 8, 85684, 0, NULL, NULL),
(1071, 9, 12345, 0, NULL, NULL),
(1072, 1, 56894, 0, NULL, NULL),
(1072, 2, 25284, 0, NULL, NULL),
(1072, 3, 25263, 0, NULL, NULL),
(1072, 5, 25264, 0, NULL, NULL),
(1072, 7, 85284, 0, NULL, NULL),
(1072, 8, 85684, 0, NULL, NULL),
(1072, 9, 12345, 0, NULL, NULL),
(1073, 1, 56894, 0, NULL, NULL),
(1073, 2, 25284, 0, NULL, NULL),
(1073, 3, 25263, 0, NULL, NULL),
(1073, 5, 25264, 0, NULL, NULL),
(1073, 7, 85284, 0, NULL, NULL),
(1073, 8, 85684, 0, NULL, NULL),
(1073, 9, 12345, 0, NULL, NULL),
(1074, 1, 56894, 0, NULL, NULL),
(1074, 2, 25284, 0, NULL, NULL),
(1074, 3, 25263, 0, NULL, NULL),
(1074, 5, 25264, 0, NULL, NULL),
(1074, 7, 85284, 0, NULL, NULL),
(1074, 8, 85684, 0, NULL, NULL),
(1074, 9, 12345, 0, NULL, NULL),
(1075, 1, 56894, 0, NULL, NULL),
(1075, 2, 25284, 0, NULL, NULL),
(1075, 3, 25263, 0, NULL, NULL),
(1075, 5, 25264, 0, NULL, NULL),
(1075, 7, 85284, 0, NULL, NULL),
(1075, 8, 85684, 0, NULL, NULL),
(1075, 9, 12345, 0, NULL, NULL),
(1076, 1, 56894, 0, NULL, NULL),
(1076, 2, 25284, 0, NULL, NULL),
(1076, 3, 25263, 0, NULL, NULL),
(1076, 5, 25264, 0, NULL, NULL),
(1076, 7, 85284, 0, NULL, NULL),
(1076, 8, 85684, 0, NULL, NULL),
(1076, 9, 12345, 0, NULL, NULL),
(1077, 1, 56894, 0, NULL, NULL),
(1077, 2, 25284, 0, NULL, NULL),
(1077, 3, 25263, 0, NULL, NULL),
(1077, 5, 25264, 0, NULL, NULL),
(1077, 7, 85284, 0, NULL, NULL),
(1077, 8, 85684, 0, NULL, NULL),
(1077, 9, 12345, 0, NULL, NULL),
(1078, 1, 56894, 0, NULL, NULL),
(1078, 2, 25284, 0, NULL, NULL),
(1078, 3, 25263, 0, NULL, NULL),
(1078, 5, 25264, 0, NULL, NULL),
(1078, 7, 85284, 0, NULL, NULL),
(1078, 8, 85684, 0, NULL, NULL),
(1078, 9, 12345, 0, NULL, NULL),
(1079, 1, 56894, 0, NULL, NULL),
(1079, 2, 25284, 0, NULL, NULL),
(1079, 3, 25263, 0, NULL, NULL),
(1079, 5, 25264, 0, NULL, NULL),
(1079, 7, 85284, 0, NULL, NULL),
(1079, 8, 85684, 0, NULL, NULL),
(1079, 9, 12345, 0, NULL, NULL),
(1080, 1, 56894, 0, NULL, NULL),
(1080, 2, 25284, 0, NULL, NULL),
(1080, 3, 25263, 0, NULL, NULL),
(1080, 5, 25264, 0, NULL, NULL),
(1080, 7, 85284, 0, NULL, NULL),
(1080, 8, 85684, 0, NULL, NULL),
(1080, 9, 12345, 0, NULL, NULL),
(1081, 1, 56894, 0, NULL, NULL),
(1081, 2, 25284, 0, NULL, NULL),
(1081, 3, 25263, 0, NULL, NULL),
(1081, 5, 25264, 0, NULL, NULL),
(1081, 7, 85284, 0, NULL, NULL),
(1081, 8, 85684, 0, NULL, NULL),
(1081, 9, 12345, 0, NULL, NULL),
(1082, 1, 56894, 0, NULL, NULL),
(1082, 2, 85684, 0, NULL, NULL),
(1082, 3, 25264, 0, NULL, NULL),
(1082, 4, 85284, 0, NULL, NULL),
(1082, 6, 12345, 0, NULL, NULL),
(1082, 7, 25284, 0, NULL, NULL),
(1082, 8, 25263, 0, NULL, NULL),
(1083, 1, 56894, 0, NULL, NULL),
(1083, 2, 85684, 0, NULL, NULL),
(1083, 3, 25264, 0, NULL, NULL),
(1083, 4, 85284, 0, NULL, NULL),
(1083, 6, 12345, 0, NULL, NULL),
(1083, 7, 25284, 0, NULL, NULL),
(1083, 8, 25263, 0, NULL, NULL),
(1084, 1, 56894, 0, NULL, NULL),
(1084, 2, 85684, 0, NULL, NULL),
(1084, 3, 25264, 0, NULL, NULL),
(1084, 4, 85284, 0, NULL, NULL),
(1084, 6, 12345, 0, NULL, NULL),
(1084, 7, 25284, 0, NULL, NULL),
(1084, 8, 25263, 0, NULL, NULL),
(1085, 1, 56894, 0, NULL, NULL),
(1085, 2, 85684, 0, NULL, NULL),
(1085, 3, 25264, 0, NULL, NULL),
(1085, 4, 85284, 0, NULL, NULL),
(1085, 6, 12345, 0, NULL, NULL),
(1085, 7, 25284, 0, NULL, NULL),
(1085, 8, 25263, 0, NULL, NULL),
(1086, 1, 56894, 0, NULL, NULL),
(1086, 2, 85684, 0, NULL, NULL),
(1086, 3, 25264, 0, NULL, NULL),
(1086, 4, 85284, 0, NULL, NULL),
(1086, 6, 12345, 0, NULL, NULL),
(1086, 7, 25284, 0, NULL, NULL),
(1086, 8, 25263, 0, NULL, NULL),
(1087, 1, 56894, 0, NULL, NULL),
(1087, 2, 85684, 0, NULL, NULL),
(1087, 3, 25264, 0, NULL, NULL),
(1087, 4, 85284, 0, NULL, NULL),
(1087, 6, 12345, 0, NULL, NULL),
(1087, 7, 25284, 0, NULL, NULL),
(1087, 8, 25263, 0, NULL, NULL),
(1088, 1, 56894, 0, NULL, NULL),
(1088, 2, 85684, 0, NULL, NULL),
(1088, 3, 25264, 0, NULL, NULL),
(1088, 4, 85284, 0, NULL, NULL),
(1088, 6, 12345, 0, NULL, NULL),
(1088, 7, 25284, 0, NULL, NULL),
(1088, 8, 25263, 0, NULL, NULL),
(1089, 1, 56894, 0, NULL, NULL),
(1089, 2, 85684, 0, NULL, NULL),
(1089, 3, 25264, 0, NULL, NULL),
(1089, 4, 85284, 0, NULL, NULL),
(1089, 6, 12345, 0, NULL, NULL),
(1089, 7, 25284, 0, NULL, NULL),
(1089, 8, 25263, 0, NULL, NULL),
(1090, 1, 56894, 0, NULL, NULL),
(1090, 2, 85684, 0, NULL, NULL),
(1090, 3, 25264, 0, NULL, NULL),
(1090, 4, 85284, 0, NULL, NULL),
(1090, 6, 12345, 0, NULL, NULL),
(1090, 7, 25284, 0, NULL, NULL),
(1090, 8, 25263, 0, NULL, NULL),
(1091, 1, 56894, 0, NULL, NULL),
(1091, 2, 85684, 0, NULL, NULL),
(1091, 3, 25264, 0, NULL, NULL),
(1091, 4, 85284, 0, NULL, NULL),
(1091, 6, 12345, 0, NULL, NULL),
(1091, 7, 25284, 0, NULL, NULL),
(1091, 8, 25263, 0, NULL, NULL),
(1092, 1, 56894, 0, NULL, NULL),
(1092, 2, 85684, 0, NULL, NULL),
(1092, 3, 25264, 0, NULL, NULL),
(1092, 4, 85284, 0, NULL, NULL),
(1092, 6, 12345, 0, NULL, NULL),
(1092, 7, 25284, 0, NULL, NULL),
(1092, 8, 25263, 0, NULL, NULL),
(1093, 1, 56894, 0, NULL, NULL),
(1093, 2, 85684, 0, NULL, NULL),
(1093, 3, 25264, 0, NULL, NULL),
(1093, 4, 85284, 0, NULL, NULL),
(1093, 6, 12345, 0, NULL, NULL),
(1093, 7, 25284, 0, NULL, NULL),
(1093, 8, 25263, 0, NULL, NULL),
(1094, 1, 56894, 0, NULL, NULL),
(1094, 2, 85684, 0, NULL, NULL),
(1094, 3, 25264, 0, NULL, NULL),
(1094, 4, 85284, 0, NULL, NULL),
(1094, 6, 12345, 0, NULL, NULL),
(1094, 7, 25284, 0, NULL, NULL),
(1094, 8, 25263, 0, NULL, NULL),
(1095, 1, 56894, 0, NULL, NULL),
(1095, 2, 85684, 0, NULL, NULL),
(1095, 3, 25264, 0, NULL, NULL),
(1095, 4, 85284, 0, NULL, NULL),
(1095, 6, 12345, 0, NULL, NULL),
(1095, 7, 25284, 0, NULL, NULL),
(1095, 8, 25263, 0, NULL, NULL),
(1096, 1, 56894, 0, NULL, NULL),
(1096, 2, 85684, 0, NULL, NULL),
(1096, 3, 25264, 0, NULL, NULL),
(1096, 4, 85284, 0, NULL, NULL),
(1096, 6, 12345, 0, NULL, NULL),
(1096, 7, 25284, 0, NULL, NULL),
(1096, 8, 25263, 0, NULL, NULL),
(1097, 1, 56894, 0, NULL, NULL),
(1097, 2, 85684, 0, NULL, NULL),
(1097, 3, 25264, 0, NULL, NULL),
(1097, 4, 85284, 0, NULL, NULL),
(1097, 6, 12345, 0, NULL, NULL),
(1097, 7, 25284, 0, NULL, NULL),
(1097, 8, 25263, 0, NULL, NULL),
(12345, 5, 25284, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `ProfCod` int(5) NOT NULL,
  `ProfNom` char(20) DEFAULT NULL,
  `ProfDir` char(20) DEFAULT NULL,
  `ProfTelf` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`ProfCod`, `ProfNom`, `ProfDir`, `ProfTelf`) VALUES
(12345, 'Jose Carlos A', 'Av Venezula 205', '95642356'),
(25263, 'Marco Aedo', 'Calle Siempre Viva S', '91641355'),
(25264, 'Jimena Salas', 'Calle San Felipe 205', '91641356'),
(25284, 'Dario Fuentes A', 'Calle San Martin 205', '92641356'),
(55555, 'Nuevo', NULL, NULL),
(56894, 'Eduardo Nunes', 'Calle Villaran Costa', '95812356'),
(85284, 'Valeria Mendoza', 'Calle Nicolas de Pie', '95641356'),
(85684, 'Maria Bellido M', 'Calle Simon Bolivar', '95642356');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `profesorgradocurso`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `profesorgradocurso` (
`ProfCod` int(5)
,`ProfNom` char(20)
,`CurCod` int(2)
,`CurNom` char(30)
,`GradCod` int(1)
,`COUNT(AlumCod)` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `profesornota`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `profesornota` (
`ProfCod` int(5)
,`ProfNom` char(20)
,`CurCod` int(2)
,`CurNom` char(30)
,`AlumCod` int(5)
,`AlumNom` char(50)
,`GradCod` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaalumno`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaalumno` (
`AlumCod` int(5)
,`AlumNom` char(50)
,`CurNom` char(30)
,`ProfNom` char(20)
,`GradDesc` char(25)
,`NotaFinal1` int(2)
,`NotaFinal2` int(2)
,`NotaFinal3` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistag`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistag` (
`ProfCod` int(5)
,`ProfNom` char(20)
,`CurCod` int(2)
,`CurNom` char(30)
,`AlumCod` int(5)
,`AlumNom` char(50)
,`GradCod` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistag2`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistag2` (
`ProfCod` int(5)
,`ProfNom` char(20)
,`CurCod` int(2)
,`CurNom` char(30)
,`AlumCod` int(5)
,`AlumNom` char(50)
,`GradCod` int(1)
,`NotaFinal1` int(2)
,`NotaFinal2` int(2)
,`NotaFinal3` int(2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistaprofesor`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistaprofesor` (
`ProfCod` int(5)
,`ProfNom` char(20)
,`CurCod` int(2)
,`CurNom` char(30)
,`GradCod` int(1)
,`GradDesc` char(25)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `profesorgradocurso`
--
DROP TABLE IF EXISTS `profesorgradocurso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `profesorgradocurso`  AS  select `vistag`.`ProfCod` AS `ProfCod`,`vistag`.`ProfNom` AS `ProfNom`,`vistag`.`CurCod` AS `CurCod`,`vistag`.`CurNom` AS `CurNom`,`vistag`.`GradCod` AS `GradCod`,count(`vistag`.`AlumCod`) AS `COUNT(AlumCod)` from `vistag` group by `vistag`.`CurCod`,`vistag`.`GradCod` order by `vistag`.`ProfCod` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `profesornota`
--
DROP TABLE IF EXISTS `profesornota`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `profesornota`  AS  select `vistag`.`ProfCod` AS `ProfCod`,`vistag`.`ProfNom` AS `ProfNom`,`vistag`.`CurCod` AS `CurCod`,`vistag`.`CurNom` AS `CurNom`,`vistag`.`AlumCod` AS `AlumCod`,`vistag`.`AlumNom` AS `AlumNom`,`vistag`.`GradCod` AS `GradCod` from `vistag` group by `vistag`.`GradCod`,`vistag`.`CurCod` order by `vistag`.`GradCod` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaalumno`
--
DROP TABLE IF EXISTS `vistaalumno`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaalumno`  AS  select `alumno`.`AlumCod` AS `AlumCod`,`alumno`.`AlumNom` AS `AlumNom`,`curso`.`CurNom` AS `CurNom`,`profesor`.`ProfNom` AS `ProfNom`,`grado`.`GradDesc` AS `GradDesc`,`nota`.`NotaFinal1` AS `NotaFinal1`,`nota`.`NotaFinal2` AS `NotaFinal2`,`nota`.`NotaFinal3` AS `NotaFinal3` from ((((`alumno` left join `grado` on((`alumno`.`GradCod` = `grado`.`GradCod`))) left join `nota` on((`nota`.`AlumCod` = `alumno`.`AlumCod`))) left join `curso` on((`nota`.`CurCod` = `curso`.`CurCod`))) left join `profesor` on((`nota`.`ProfCod` = `profesor`.`ProfCod`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistag`
--
DROP TABLE IF EXISTS `vistag`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistag`  AS  select `nota`.`ProfCod` AS `ProfCod`,`profesor`.`ProfNom` AS `ProfNom`,`nota`.`CurCod` AS `CurCod`,`curso`.`CurNom` AS `CurNom`,`nota`.`AlumCod` AS `AlumCod`,`alumno`.`AlumNom` AS `AlumNom`,`alumno`.`GradCod` AS `GradCod` from (((`nota` left join `alumno` on((`nota`.`AlumCod` = `alumno`.`AlumCod`))) left join `curso` on((`nota`.`CurCod` = `curso`.`CurCod`))) left join `profesor` on((`nota`.`ProfCod` = `profesor`.`ProfCod`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistag2`
--
DROP TABLE IF EXISTS `vistag2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistag2`  AS  select `nota`.`ProfCod` AS `ProfCod`,`profesor`.`ProfNom` AS `ProfNom`,`nota`.`CurCod` AS `CurCod`,`curso`.`CurNom` AS `CurNom`,`nota`.`AlumCod` AS `AlumCod`,`alumno`.`AlumNom` AS `AlumNom`,`alumno`.`GradCod` AS `GradCod`,`nota`.`NotaFinal1` AS `NotaFinal1`,`nota`.`NotaFinal2` AS `NotaFinal2`,`nota`.`NotaFinal3` AS `NotaFinal3` from (((`nota` left join `alumno` on((`nota`.`AlumCod` = `alumno`.`AlumCod`))) left join `curso` on((`nota`.`CurCod` = `curso`.`CurCod`))) left join `profesor` on((`nota`.`ProfCod` = `profesor`.`ProfCod`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistaprofesor`
--
DROP TABLE IF EXISTS `vistaprofesor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vistaprofesor`  AS  select `nota`.`ProfCod` AS `ProfCod`,`profesor`.`ProfNom` AS `ProfNom`,`nota`.`CurCod` AS `CurCod`,`curso`.`CurNom` AS `CurNom`,`grado`.`GradCod` AS `GradCod`,`grado`.`GradDesc` AS `GradDesc` from ((((`nota` left join `curso` on((`nota`.`CurCod` = `curso`.`CurCod`))) left join `profesor` on((`nota`.`ProfCod` = `profesor`.`ProfCod`))) left join `alumno` on((`nota`.`AlumCod` = `alumno`.`AlumCod`))) left join `grado` on((`alumno`.`GradCod` = `grado`.`GradCod`))) group by `nota`.`CurCod`,`grado`.`GradCod` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`AlumCod`),
  ADD KEY `IX_Relationship4` (`GradCod`);

--
-- Indices de la tabla `cuenta_alum`
--
ALTER TABLE `cuenta_alum`
  ADD PRIMARY KEY (`AlumCod`);

--
-- Indices de la tabla `cuenta_prof`
--
ALTER TABLE `cuenta_prof`
  ADD PRIMARY KEY (`ProfCod`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`CurCod`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`GradCod`);

--
-- Indices de la tabla `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`AlumCod`,`CurCod`),
  ADD KEY `IX_Relationship9` (`ProfCod`),
  ADD KEY `Relationship8` (`CurCod`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`ProfCod`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `Relationship4` FOREIGN KEY (`GradCod`) REFERENCES `grado` (`GradCod`);

--
-- Filtros para la tabla `cuenta_alum`
--
ALTER TABLE `cuenta_alum`
  ADD CONSTRAINT `Relationship12` FOREIGN KEY (`AlumCod`) REFERENCES `alumno` (`AlumCod`);

--
-- Filtros para la tabla `cuenta_prof`
--
ALTER TABLE `cuenta_prof`
  ADD CONSTRAINT `Relationship14` FOREIGN KEY (`ProfCod`) REFERENCES `profesor` (`ProfCod`);

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `Relationship7` FOREIGN KEY (`AlumCod`) REFERENCES `alumno` (`AlumCod`),
  ADD CONSTRAINT `Relationship8` FOREIGN KEY (`CurCod`) REFERENCES `curso` (`CurCod`),
  ADD CONSTRAINT `Relationship9` FOREIGN KEY (`ProfCod`) REFERENCES `profesor` (`ProfCod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
