-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-12-2018 a las 18:46:25
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `nivel` int(11) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellidos`, `nivel`, `email`, `password`) VALUES
(1, 'al1', 'apellidos alumno1', 1, 'al1', '7ce84b229b752a8acef67c11a6325f49'),
(2, 'al2', 'apellidos alumno2', 3, 'al2', '89eaa1ba9f5cf356652d7b4b2bc89f13'),
(3, 'al3', 'apellidos alumno3', 4, 'al3', 'b707907b9966ab1241bbeefddd143662'),
(4, 'al4', 'apellidos alumno4', 4, 'al4', 'a96f4f2deef15f6c8620c78242f4c74d'),
(5, 'al5', 'apellidos alumno5', 4, 'al5', 'c0227c712708baf44fe7e602bcdd7603'),
(6, 'al6', 'apellidos alumno6', 4, 'al6', '4bf0b36754796d707bfb34729ec5313d'),
(7, 'al7', 'apellidos alumno7', 4, 'al7', 'b2b830bdb56fd4a3bd5fa40d3d20a2ba'),
(8, 'al8', 'apellidos alumno8', 3, 'al8', '44c2629ff6b268b68496fdd57bb2564f'),
(9, 'al9', 'apellidos alumno9', 1, 'al9', '22ad4d5a93847cabf618d3f79f08df2c'),
(10, 'al10', 'apellidos alumno10', 4, 'al10', '2972649f0f03f89b0234ad70f325cae4'),
(11, 'al11', 'apellidos alumno11', 1, 'al11', 'f37bd0e04cbed82f9936d288bfeea009'),
(12, 'al12', 'apellidos alumno12', 2, 'al12', '19ac45911c2c6ef4b14f85dd4eda1098'),
(13, 'al13', 'apellidos alumno13', 3, 'al13', '58e432e7b970828a670037bbfac7d4bd'),
(14, 'al14', 'apellidos alumno14', 2, 'al14', 'e2cee482367e18833399aa47bc284b5b'),
(15, 'al15', 'apellidos alumno15', 3, 'al15', '999451073041d922a63a1650a7f5821c'),
(16, 'al16', 'apellidos alumno16', 3, 'al16', '0d2f0d8c09d96eb111dd8be52d3db835'),
(17, 'al17', 'apellidos alumno17', 4, 'al17', 'b10b74d52c1c8ab912167350e4963e9f'),
(18, 'al18', 'apellidos alumno18', 2, 'al18', '77cff949902373219dbe517a62bdeebe'),
(19, 'al19', 'apellidos alumno19', 3, 'al19', 'bef8e54f341fc49bccb895942d3fd2e4'),
(20, 'al20', 'apellidos alumno20', 2, 'al20', 'a404d60cd4b21b0e969adae0633e071d'),
(21, 'al21', 'apellidos alumno21', 1, 'al21', 'ada6178246185498afeecccf9228f062'),
(22, 'al22', 'apellidos alumno22', 1, 'al22', '2e43fd113ca2bc9d126652619b7a0a34'),
(23, 'al23', 'apellidos alumno23', 4, 'al23', '68049fd17abbd68bf5f58c585fd1f01f'),
(24, 'al24', 'apellidos alumno24', 2, 'al24', '576f7e4b8e3829bae420796c79f746fc'),
(25, 'al25', 'apellidos alumno25', 1, 'al25', 'a7c16d66dd8d521b5f0e00a013dc858d');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `asignatura` varchar(30) NOT NULL,
  `pregunta` varchar(300) DEFAULT NULL,
  `ra` varchar(300) NOT NULL,
  `rb` varchar(300) NOT NULL,
  `rc` varchar(300) NOT NULL,
  `rd` varchar(300) NOT NULL,
  `correcta` varchar(1) NOT NULL,
  `nivel` int(11) NOT NULL,
  `veces_bien` int(11) DEFAULT NULL,
  `veces_mal` int(11) DEFAULT NULL,
  `veces` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `asignatura`, `pregunta`, `ra`, `rb`, `rc`, `rd`, `correcta`, `nivel`, `veces_bien`, `veces_mal`, `veces`) VALUES
(333, 'SOA', '1 + 1 = ?', '11', '2', '3', '22', 'b', 4, 14, 12, 95),
(334, 'SOA', 'PREGUNTA2', 'a - 2', 'b - 2', 'c - 2', 'd - 2', 'd', 1, 17, 10, 42),
(335, 'SOA', 'PREGUNTA3', 'a - 3', 'b - 3', 'c - 3', 'd - 3', 'c', 3, 19, 11, 76),
(336, 'SOA', 'PREGUNTA4', 'a - 4', 'b - 4', 'c - 4', 'd - 4', 'a', 3, 14, 17, 85),
(337, 'SOA', 'PREGUNTA5', 'a - 5', 'b - 5', 'c - 5', 'd - 5', 'a', 3, 19, 17, 74),
(338, 'SOA', '1 * 1 = ?', '11', '100', '2', '1', 'd', 4, 18, 19, 89),
(339, 'SOA', '893''38487 * 0 = ?', '0', '8930,38487', '893''384870', '1', 'a', 4, 14, 12, 61),
(340, 'SOA', 'PREGUNTA8', 'a - 8', 'b - 8', 'c - 8', 'd - 8', 'c', 3, 13, 18, 61),
(341, 'SOA', 'PREGUNTA9', 'a - 9', 'b - 9', 'c - 9', 'd - 9', 'd', 3, 13, 17, 60),
(342, 'SOA', 'PREGUNTA10', 'a - 10', 'b - 10', 'c - 10', 'd - 10', 'c', 2, 12, 14, 51),
(343, 'SOA', 'PREGUNTA11', 'a - 11', 'b - 11', 'c - 11', 'd - 11', 'c', 2, 11, 19, 53),
(344, 'SOA', 'PREGUNTA12', 'a - 12', 'b - 12', 'c - 12', 'd - 12', 'd', 4, 14, 15, 64),
(345, 'SOA', 'PREGUNTA13', 'a - 13', 'b - 13', 'c - 13', 'd - 13', 'd', 2, 18, 19, 42),
(346, 'SOA', 'PREGUNTA14', 'a - 14', 'b - 14', 'c - 14', 'd - 14', 'c', 2, 19, 13, 85),
(347, 'SOA', 'PREGUNTA15', 'a - 15', 'b - 15', 'c - 15', 'd - 15', 'd', 1, 20, 20, 70),
(348, 'SOA', 'PREGUNTA16', 'a - 16', 'b - 16', 'c - 16', 'd - 16', 'd', 3, 19, 13, 61),
(349, 'SOA', 'PREGUNTA17', 'a - 17', 'b - 17', 'c - 17', 'd - 17', 'a', 4, 11, 15, 65),
(350, 'SOA', 'PREGUNTA18', 'a - 18', 'b - 18', 'c - 18', 'd - 18', 'c', 1, 20, 19, 66),
(351, 'SOA', 'PREGUNTA19', 'a - 19', 'b - 19', 'c - 19', 'd - 19', 'b', 4, 18, 11, 92),
(352, 'SOA', 'PREGUNTA20', 'a - 20', 'b - 20', 'c - 20', 'd - 20', 'b', 4, 19, 11, 60),
(353, 'SOA', 'PREGUNTA21', 'a - 21', 'b - 21', 'c - 21', 'd - 21', 'a', 4, 12, 14, 97),
(354, 'SOA', 'PREGUNTA22', 'a - 22', 'b - 22', 'c - 22', 'd - 22', 'd', 2, 13, 19, 72),
(355, 'SOA', 'PREGUNTA23', 'a - 23', 'b - 23', 'c - 23', 'd - 23', 'a', 1, 19, 11, 91),
(356, 'SOA', 'PREGUNTA24', 'a - 24', 'b - 24', 'c - 24', 'd - 24', 'd', 2, 13, 10, 49),
(357, 'SOA', 'PREGUNTA25', 'a - 25', 'b - 25', 'c - 25', 'd - 25', 'b', 4, 16, 11, 85),
(358, 'SOA', 'PREGUNTA26', 'a - 26', 'b - 26', 'c - 26', 'd - 26', 'a', 2, 16, 10, 83),
(359, 'SOA', 'PREGUNTA27', 'a - 27', 'b - 27', 'c - 27', 'd - 27', 'b', 1, 16, 12, 55),
(360, 'SOA', 'PREGUNTA28', 'a - 28', 'b - 28', 'c - 28', 'd - 28', 'c', 1, 16, 18, 67),
(361, 'SOA', 'PREGUNTA29', 'a - 29', 'b - 29', 'c - 29', 'd - 29', 'a', 4, 10, 11, 88),
(362, 'SOA', 'PREGUNTA30', 'a - 30', 'b - 30', 'c - 30', 'd - 30', 'd', 3, 19, 12, 93),
(363, 'SOA', 'PREGUNTA31', 'a - 31', 'b - 31', 'c - 31', 'd - 31', 'c', 2, 12, 19, 78),
(364, 'SOA', 'PREGUNTA32', 'a - 32', 'b - 32', 'c - 32', 'd - 32', 'c', 1, 14, 20, 56),
(365, 'SOA', 'PREGUNTA33', 'a - 33', 'b - 33', 'c - 33', 'd - 33', 'a', 4, 17, 13, 91),
(366, 'SOA', 'PREGUNTA34', 'a - 34', 'b - 34', 'c - 34', 'd - 34', 'a', 2, 17, 12, 100),
(367, 'SOA', 'PREGUNTA35', 'a - 35', 'b - 35', 'c - 35', 'd - 35', 'a', 1, 17, 15, 68),
(368, 'SOA', 'PREGUNTA36', 'a - 36', 'b - 36', 'c - 36', 'd - 36', 'b', 3, 13, 20, 92),
(369, 'SOA', 'PREGUNTA37', 'a - 37', 'b - 37', 'c - 37', 'd - 37', 'b', 3, 17, 19, 70),
(370, 'SOA', 'PREGUNTA38', 'a - 38', 'b - 38', 'c - 38', 'd - 38', 'd', 1, 16, 20, 73),
(371, 'SOA', 'PREGUNTA39', 'a - 39', 'b - 39', 'c - 39', 'd - 39', 'c', 4, 16, 14, 95),
(372, 'SOA', 'PREGUNTA40', 'a - 40', 'b - 40', 'c - 40', 'd - 40', 'd', 1, 11, 14, 93),
(373, 'SOA', 'PREGUNTA41', 'a - 41', 'b - 41', 'c - 41', 'd - 41', 'a', 1, 13, 19, 91),
(374, 'SOA', 'PREGUNTA42', 'a - 42', 'b - 42', 'c - 42', 'd - 42', 'b', 2, 19, 17, 75),
(375, 'SOA', 'PREGUNTA43', 'a - 43', 'b - 43', 'c - 43', 'd - 43', 'd', 4, 19, 17, 77),
(376, 'SOA', 'PREGUNTA44', 'a - 44', 'b - 44', 'c - 44', 'd - 44', 'c', 3, 20, 19, 96),
(377, 'SOA', 'PREGUNTA45', 'a - 45', 'b - 45', 'c - 45', 'd - 45', 'd', 3, 18, 15, 88),
(378, 'SOA', 'PREGUNTA46', 'a - 46', 'b - 46', 'c - 46', 'd - 46', 'd', 1, 11, 20, 77),
(379, 'SOA', 'PREGUNTA47', 'a - 47', 'b - 47', 'c - 47', 'd - 47', 'b', 2, 13, 13, 55),
(380, 'SOA', 'PREGUNTA48', 'a - 48', 'b - 48', 'c - 48', 'd - 48', 'd', 3, 10, 14, 61),
(381, 'SOA', 'PREGUNTA49', 'a - 49', 'b - 49', 'c - 49', 'd - 49', 'b', 1, 16, 10, 86),
(382, 'SOA', 'PREGUNTA50', 'a - 50', 'b - 50', 'c - 50', 'd - 50', 'a', 2, 10, 12, 78),
(383, 'SOA', 'PREGUNTA51', 'a - 51', 'b - 51', 'c - 51', 'd - 51', 'b', 1, 19, 14, 79),
(384, 'SOA', 'PREGUNTA52', 'a - 52', 'b - 52', 'c - 52', 'd - 52', 'd', 2, 18, 18, 44),
(385, 'SOA', 'PREGUNTA53', 'a - 53', 'b - 53', 'c - 53', 'd - 53', 'b', 4, 14, 17, 41),
(386, 'SOA', 'PREGUNTA54', 'a - 54', 'b - 54', 'c - 54', 'd - 54', 'd', 2, 14, 13, 90),
(387, 'SOA', 'PREGUNTA55', 'a - 55', 'b - 55', 'c - 55', 'd - 55', 'c', 3, 17, 17, 85),
(388, 'SOA', 'PREGUNTA56', 'a - 56', 'b - 56', 'c - 56', 'd - 56', 'b', 4, 19, 13, 55),
(389, 'SOA', 'PREGUNTA57', 'a - 57', 'b - 57', 'c - 57', 'd - 57', 'b', 2, 11, 18, 61),
(390, 'SOA', 'PREGUNTA58', 'a - 58', 'b - 58', 'c - 58', 'd - 58', 'd', 3, 12, 11, 97),
(391, 'SOA', 'PREGUNTA59', 'a - 59', 'b - 59', 'c - 59', 'd - 59', 'a', 1, 10, 12, 84),
(392, 'SOA', 'PREGUNTA60', 'a - 60', 'b - 60', 'c - 60', 'd - 60', 'b', 2, 10, 19, 50),
(393, 'SOA', 'PREGUNTA61', 'a - 61', 'b - 61', 'c - 61', 'd - 61', 'b', 3, 12, 18, 43),
(394, 'SOA', 'PREGUNTA62', 'a - 62', 'b - 62', 'c - 62', 'd - 62', 'c', 4, 20, 18, 74),
(395, 'SOA', 'PREGUNTA63', 'a - 63', 'b - 63', 'c - 63', 'd - 63', 'd', 4, 15, 13, 44),
(396, 'SOA', 'PREGUNTA64', 'a - 64', 'b - 64', 'c - 64', 'd - 64', 'a', 2, 14, 13, 79),
(397, 'SOA', 'PREGUNTA65', 'a - 65', 'b - 65', 'c - 65', 'd - 65', 'c', 2, 14, 12, 99),
(398, 'SOA', 'PREGUNTA66', 'a - 66', 'b - 66', 'c - 66', 'd - 66', 'b', 1, 15, 14, 100),
(399, 'SOA', 'PREGUNTA67', 'a - 67', 'b - 67', 'c - 67', 'd - 67', 'c', 3, 11, 10, 78),
(400, 'SOA', 'PREGUNTA68', 'a - 68', 'b - 68', 'c - 68', 'd - 68', 'a', 1, 19, 15, 69),
(401, 'SOA', 'PREGUNTA69', 'a - 69', 'b - 69', 'c - 69', 'd - 69', 'b', 3, 10, 20, 46),
(402, 'SOA', 'PREGUNTA70', 'a - 70', 'b - 70', 'c - 70', 'd - 70', 'd', 4, 11, 11, 99),
(403, 'SOA', 'PREGUNTA71', 'a - 71', 'b - 71', 'c - 71', 'd - 71', 'a', 1, 18, 15, 86),
(404, 'SOA', 'PREGUNTA72', 'a - 72', 'b - 72', 'c - 72', 'd - 72', 'c', 3, 20, 10, 86),
(405, 'SOA', 'PREGUNTA73', 'a - 73', 'b - 73', 'c - 73', 'd - 73', 'c', 1, 14, 14, 84),
(406, 'SOA', 'PREGUNTA74', 'a - 74', 'b - 74', 'c - 74', 'd - 74', 'c', 4, 15, 20, 87),
(407, 'SOA', 'PREGUNTA75', 'a - 75', 'b - 75', 'c - 75', 'd - 75', 'd', 1, 15, 18, 57),
(408, 'SOA', 'PREGUNTA76', 'a - 76', 'b - 76', 'c - 76', 'd - 76', 'd', 1, 19, 14, 87),
(409, 'SOA', 'PREGUNTA77', 'a - 77', 'b - 77', 'c - 77', 'd - 77', 'a', 3, 11, 18, 77),
(410, 'SOA', 'PREGUNTA78', 'a - 78', 'b - 78', 'c - 78', 'd - 78', 'b', 4, 15, 12, 86),
(411, 'SOA', 'PREGUNTA79', 'a - 79', 'b - 79', 'c - 79', 'd - 79', 'c', 3, 11, 13, 84),
(412, 'SOA', 'PREGUNTA80', 'a - 80', 'b - 80', 'c - 80', 'd - 80', 'b', 4, 13, 10, 48),
(413, 'SOA', 'PREGUNTA81', 'a - 81', 'b - 81', 'c - 81', 'd - 81', 'd', 1, 20, 15, 78),
(414, 'SOA', 'PREGUNTA82', 'a - 82', 'b - 82', 'c - 82', 'd - 82', 'b', 3, 14, 16, 73),
(415, 'SOA', 'PREGUNTA83', 'a - 83', 'b - 83', 'c - 83', 'd - 83', 'b', 4, 19, 19, 59),
(416, 'SOA', 'PREGUNTA84', 'a - 84', 'b - 84', 'c - 84', 'd - 84', 'b', 3, 12, 10, 74),
(417, 'SOA', 'PREGUNTA85', 'a - 85', 'b - 85', 'c - 85', 'd - 85', 'd', 4, 16, 16, 88),
(418, 'SOA', 'PREGUNTA86', 'a - 86', 'b - 86', 'c - 86', 'd - 86', 'b', 3, 13, 17, 54),
(419, 'SOA', 'PREGUNTA87', 'a - 87', 'b - 87', 'c - 87', 'd - 87', 'c', 3, 10, 11, 67),
(420, 'SOA', 'PREGUNTA88', 'a - 88', 'b - 88', 'c - 88', 'd - 88', 'a', 4, 11, 18, 74),
(421, 'SOA', 'PREGUNTA89', 'a - 89', 'b - 89', 'c - 89', 'd - 89', 'd', 4, 20, 19, 81),
(422, 'SOA', 'PREGUNTA90', 'a - 90', 'b - 90', 'c - 90', 'd - 90', 'd', 1, 16, 19, 86),
(423, 'SOA', 'PREGUNTA91', 'a - 91', 'b - 91', 'c - 91', 'd - 91', 'a', 3, 18, 18, 60),
(424, 'SOA', 'PREGUNTA92', 'a - 92', 'b - 92', 'c - 92', 'd - 92', 'a', 4, 19, 15, 83),
(425, 'SOA', 'PREGUNTA93', 'a - 93', 'b - 93', 'c - 93', 'd - 93', 'c', 2, 12, 14, 54),
(426, 'SOA', 'PREGUNTA94', 'a - 94', 'b - 94', 'c - 94', 'd - 94', 'c', 4, 17, 14, 93),
(427, 'SOA', 'PREGUNTA95', 'a - 95', 'b - 95', 'c - 95', 'd - 95', 'c', 1, 19, 16, 92),
(428, 'SOA', 'PREGUNTA96', 'a - 96', 'b - 96', 'c - 96', 'd - 96', 'd', 3, 13, 20, 57),
(429, 'SOA', 'PREGUNTA97', 'a - 97', 'b - 97', 'c - 97', 'd - 97', 'c', 1, 19, 13, 62),
(430, 'SOA', 'PREGUNTA98', 'a - 98', 'b - 98', 'c - 98', 'd - 98', 'd', 2, 20, 15, 42),
(431, 'SOA', 'PREGUNTA99', 'a - 99', 'b - 99', 'c - 99', 'd - 99', 'a', 4, 12, 16, 44),
(432, 'SOA', 'PREGUNTA100', 'a - 100', 'b - 100', 'c - 100', 'd - 100', 'c', 3, 16, 11, 50),
(433, 'SOA', 'PREGUNTA1', 'a - 1', 'b - 1', 'c - 1', 'd - 1', 'b', 3, 19, 13, 75),
(434, 'SOA', 'PREGUNTA2', 'a - 2', 'b - 2', 'c - 2', 'd - 2', 'a', 2, 16, 11, 44),
(435, 'SOA', 'PREGUNTA3', 'a - 3', 'b - 3', 'c - 3', 'd - 3', 'd', 2, 13, 19, 63),
(436, 'SOA', 'PREGUNTA4', 'a - 4', 'b - 4', 'c - 4', 'd - 4', 'b', 1, 20, 10, 87),
(437, 'SOA', 'PREGUNTA5', 'a - 5', 'b - 5', 'c - 5', 'd - 5', 'b', 4, 13, 15, 65),
(438, 'SOA', 'PREGUNTA6', 'a - 6', 'b - 6', 'c - 6', 'd - 6', 'd', 4, 15, 16, 58),
(439, 'SOA', 'PREGUNTA7', 'a - 7', 'b - 7', 'c - 7', 'd - 7', 'b', 2, 15, 15, 88),
(440, 'SOA', 'PREGUNTA8', 'a - 8', 'b - 8', 'c - 8', 'd - 8', 'c', 3, 15, 15, 85),
(441, 'SOA', 'PREGUNTA9', 'a - 9', 'b - 9', 'c - 9', 'd - 9', 'a', 2, 18, 19, 51),
(442, 'SOA', 'PREGUNTA10', 'a - 10', 'b - 10', 'c - 10', 'd - 10', 'd', 2, 12, 16, 50),
(443, 'SOA', 'PREGUNTA11', 'a - 11', 'b - 11', 'c - 11', 'd - 11', 'b', 4, 20, 19, 53),
(444, 'SOA', 'PREGUNTA12', 'a - 12', 'b - 12', 'c - 12', 'd - 12', 'd', 2, 18, 12, 93),
(445, 'SOA', 'PREGUNTA13', 'a - 13', 'b - 13', 'c - 13', 'd - 13', 'd', 3, 12, 11, 94),
(446, 'SOA', 'PREGUNTA14', 'a - 14', 'b - 14', 'c - 14', 'd - 14', 'b', 1, 14, 17, 60),
(447, 'SOA', 'PREGUNTA15', 'a - 15', 'b - 15', 'c - 15', 'd - 15', 'd', 2, 15, 20, 48),
(448, 'SOA', 'PREGUNTA16', 'a - 16', 'b - 16', 'c - 16', 'd - 16', 'b', 1, 12, 14, 63),
(449, 'SOA', 'PREGUNTA17', 'a - 17', 'b - 17', 'c - 17', 'd - 17', 'c', 1, 12, 19, 85),
(450, 'SOA', 'PREGUNTA18', 'a - 18', 'b - 18', 'c - 18', 'd - 18', 'd', 3, 11, 18, 76),
(451, 'SOA', 'PREGUNTA19', 'a - 19', 'b - 19', 'c - 19', 'd - 19', 'a', 1, 18, 14, 74),
(452, 'SOA', 'PREGUNTA20', 'a - 20', 'b - 20', 'c - 20', 'd - 20', 'a', 4, 13, 10, 90),
(453, 'SOA', 'PREGUNTA21', 'a - 21', 'b - 21', 'c - 21', 'd - 21', 'c', 2, 10, 15, 72),
(454, 'SOA', 'PREGUNTA22', 'a - 22', 'b - 22', 'c - 22', 'd - 22', 'c', 4, 14, 20, 60),
(455, 'SOA', 'PREGUNTA23', 'a - 23', 'b - 23', 'c - 23', 'd - 23', 'a', 1, 11, 19, 52),
(456, 'SOA', 'PREGUNTA24', 'a - 24', 'b - 24', 'c - 24', 'd - 24', 'c', 1, 18, 15, 99),
(457, 'SOA', 'PREGUNTA25', 'a - 25', 'b - 25', 'c - 25', 'd - 25', 'd', 3, 10, 10, 95),
(458, 'SOA', 'PREGUNTA26', 'a - 26', 'b - 26', 'c - 26', 'd - 26', 'c', 2, 18, 17, 48),
(459, 'SOA', 'PREGUNTA27', 'a - 27', 'b - 27', 'c - 27', 'd - 27', 'c', 3, 13, 14, 78),
(460, 'SOA', 'PREGUNTA28', 'a - 28', 'b - 28', 'c - 28', 'd - 28', 'c', 2, 16, 16, 72),
(461, 'SOA', 'PREGUNTA29', 'a - 29', 'b - 29', 'c - 29', 'd - 29', 'c', 2, 17, 13, 98),
(462, 'SOA', 'PREGUNTA30', 'a - 30', 'b - 30', 'c - 30', 'd - 30', 'd', 3, 18, 13, 100),
(463, 'SOA', 'PREGUNTA31', 'a - 31', 'b - 31', 'c - 31', 'd - 31', 'b', 3, 17, 16, 61),
(464, 'SOA', 'PREGUNTA32', 'a - 32', 'b - 32', 'c - 32', 'd - 32', 'c', 3, 13, 18, 92),
(465, 'SOA', 'PREGUNTA33', 'a - 33', 'b - 33', 'c - 33', 'd - 33', 'c', 2, 15, 19, 91),
(466, 'SOA', 'PREGUNTA34', 'a - 34', 'b - 34', 'c - 34', 'd - 34', 'c', 4, 15, 17, 68),
(467, 'SOA', 'PREGUNTA35', 'a - 35', 'b - 35', 'c - 35', 'd - 35', 'd', 4, 10, 16, 76),
(468, 'SOA', 'PREGUNTA36', 'a - 36', 'b - 36', 'c - 36', 'd - 36', 'd', 4, 12, 20, 56),
(469, 'SOA', 'PREGUNTA37', 'a - 37', 'b - 37', 'c - 37', 'd - 37', 'b', 3, 11, 15, 40),
(470, 'SOA', 'PREGUNTA38', 'a - 38', 'b - 38', 'c - 38', 'd - 38', 'a', 4, 16, 17, 77),
(471, 'SOA', 'PREGUNTA39', 'a - 39', 'b - 39', 'c - 39', 'd - 39', 'b', 2, 13, 16, 58),
(472, 'SOA', 'PREGUNTA40', 'a - 40', 'b - 40', 'c - 40', 'd - 40', 'c', 1, 14, 19, 90),
(473, 'SOA', 'PREGUNTA41', 'a - 41', 'b - 41', 'c - 41', 'd - 41', 'b', 2, 15, 12, 93),
(474, 'SOA', 'PREGUNTA42', 'a - 42', 'b - 42', 'c - 42', 'd - 42', 'a', 2, 11, 17, 53),
(475, 'SOA', 'PREGUNTA43', 'a - 43', 'b - 43', 'c - 43', 'd - 43', 'a', 4, 17, 20, 60),
(476, 'SOA', 'PREGUNTA44', 'a - 44', 'b - 44', 'c - 44', 'd - 44', 'a', 2, 17, 15, 62),
(477, 'SOA', 'PREGUNTA45', 'a - 45', 'b - 45', 'c - 45', 'd - 45', 'c', 3, 11, 13, 96),
(478, 'SOA', 'PREGUNTA46', 'a - 46', 'b - 46', 'c - 46', 'd - 46', 'a', 2, 12, 17, 89),
(479, 'SOA', 'PREGUNTA47', 'a - 47', 'b - 47', 'c - 47', 'd - 47', 'c', 1, 18, 19, 42),
(480, 'SOA', 'PREGUNTA48', 'a - 48', 'b - 48', 'c - 48', 'd - 48', 'd', 2, 13, 10, 82),
(481, 'SOA', 'PREGUNTA49', 'a - 49', 'b - 49', 'c - 49', 'd - 49', 'c', 4, 20, 12, 79),
(482, 'SOA', 'PREGUNTA50', 'a - 50', 'b - 50', 'c - 50', 'd - 50', 'd', 4, 10, 13, 52),
(483, 'SOA', 'PREGUNTA51', 'a - 51', 'b - 51', 'c - 51', 'd - 51', 'b', 3, 14, 10, 86),
(484, 'SOA', 'PREGUNTA52', 'a - 52', 'b - 52', 'c - 52', 'd - 52', 'd', 3, 18, 12, 97),
(485, 'SOA', 'PREGUNTA53', 'a - 53', 'b - 53', 'c - 53', 'd - 53', 'c', 1, 18, 17, 100),
(486, 'SOA', 'PREGUNTA54', 'a - 54', 'b - 54', 'c - 54', 'd - 54', 'a', 4, 14, 12, 73),
(487, 'SOA', 'PREGUNTA55', 'a - 55', 'b - 55', 'c - 55', 'd - 55', 'a', 3, 16, 18, 57),
(488, 'SOA', 'PREGUNTA56', 'a - 56', 'b - 56', 'c - 56', 'd - 56', 'b', 1, 18, 19, 79),
(489, 'SOA', 'PREGUNTA57', 'a - 57', 'b - 57', 'c - 57', 'd - 57', 'd', 3, 12, 12, 76),
(490, 'SOA', 'PREGUNTA58', 'a - 58', 'b - 58', 'c - 58', 'd - 58', 'a', 3, 19, 12, 65),
(491, 'SOA', 'PREGUNTA59', 'a - 59', 'b - 59', 'c - 59', 'd - 59', 'a', 3, 20, 18, 63),
(492, 'SOA', 'PREGUNTA60', 'a - 60', 'b - 60', 'c - 60', 'd - 60', 'a', 2, 13, 18, 76),
(493, 'SOA', 'PREGUNTA61', 'a - 61', 'b - 61', 'c - 61', 'd - 61', 'c', 3, 16, 19, 53),
(494, 'SOA', 'PREGUNTA62', 'a - 62', 'b - 62', 'c - 62', 'd - 62', 'c', 4, 20, 14, 72),
(495, 'SOA', 'PREGUNTA63', 'a - 63', 'b - 63', 'c - 63', 'd - 63', 'a', 1, 10, 20, 85),
(496, 'SOA', 'PREGUNTA64', 'a - 64', 'b - 64', 'c - 64', 'd - 64', 'b', 3, 12, 18, 42),
(497, 'SOA', 'PREGUNTA65', 'a - 65', 'b - 65', 'c - 65', 'd - 65', 'a', 3, 11, 19, 59),
(498, 'SOA', 'PREGUNTA66', 'a - 66', 'b - 66', 'c - 66', 'd - 66', 'a', 3, 18, 13, 69),
(499, 'SOA', 'PREGUNTA67', 'a - 67', 'b - 67', 'c - 67', 'd - 67', 'b', 2, 14, 20, 72),
(500, 'SOA', 'PREGUNTA68', 'a - 68', 'b - 68', 'c - 68', 'd - 68', 'd', 2, 16, 14, 40),
(501, 'SOA', 'PREGUNTA69', 'a - 69', 'b - 69', 'c - 69', 'd - 69', 'b', 2, 17, 17, 40),
(502, 'SOA', 'PREGUNTA70', 'a - 70', 'b - 70', 'c - 70', 'd - 70', 'c', 3, 12, 19, 52),
(503, 'SOA', 'PREGUNTA71', 'a - 71', 'b - 71', 'c - 71', 'd - 71', 'c', 3, 10, 17, 50),
(504, 'SOA', 'PREGUNTA72', 'a - 72', 'b - 72', 'c - 72', 'd - 72', 'a', 4, 16, 20, 58),
(505, 'SOA', 'PREGUNTA73', 'a - 73', 'b - 73', 'c - 73', 'd - 73', 'c', 1, 16, 13, 61),
(506, 'SOA', 'PREGUNTA74', 'a - 74', 'b - 74', 'c - 74', 'd - 74', 'd', 1, 16, 17, 81),
(507, 'SOA', 'PREGUNTA75', 'a - 75', 'b - 75', 'c - 75', 'd - 75', 'a', 4, 18, 16, 67),
(508, 'SOA', 'PREGUNTA76', 'a - 76', 'b - 76', 'c - 76', 'd - 76', 'c', 1, 20, 13, 43),
(509, 'SOA', 'PREGUNTA77', 'a - 77', 'b - 77', 'c - 77', 'd - 77', 'b', 4, 16, 17, 90),
(510, 'SOA', 'PREGUNTA78', 'a - 78', 'b - 78', 'c - 78', 'd - 78', 'b', 2, 10, 15, 73),
(511, 'SOA', 'PREGUNTA79', 'a - 79', 'b - 79', 'c - 79', 'd - 79', 'b', 2, 18, 11, 49),
(512, 'SOA', 'PREGUNTA80', 'a - 80', 'b - 80', 'c - 80', 'd - 80', 'a', 2, 20, 12, 78),
(513, 'SOA', 'PREGUNTA81', 'a - 81', 'b - 81', 'c - 81', 'd - 81', 'a', 3, 18, 10, 63),
(514, 'SOA', 'PREGUNTA82', 'a - 82', 'b - 82', 'c - 82', 'd - 82', 'd', 3, 18, 14, 42),
(515, 'SOA', 'PREGUNTA83', 'a - 83', 'b - 83', 'c - 83', 'd - 83', 'a', 2, 11, 18, 87),
(516, 'SOA', 'PREGUNTA84', 'a - 84', 'b - 84', 'c - 84', 'd - 84', 'a', 3, 16, 15, 40),
(517, 'SOA', 'PREGUNTA85', 'a - 85', 'b - 85', 'c - 85', 'd - 85', 'a', 3, 13, 13, 44),
(518, 'SOA', 'PREGUNTA86', 'a - 86', 'b - 86', 'c - 86', 'd - 86', 'c', 3, 10, 17, 46),
(519, 'SOA', 'PREGUNTA87', 'a - 87', 'b - 87', 'c - 87', 'd - 87', 'b', 3, 10, 17, 98),
(520, 'SOA', 'PREGUNTA88', 'a - 88', 'b - 88', 'c - 88', 'd - 88', 'd', 1, 14, 17, 85),
(521, 'SOA', 'PREGUNTA89', 'a - 89', 'b - 89', 'c - 89', 'd - 89', 'c', 3, 20, 14, 43),
(522, 'SOA', 'PREGUNTA90', 'a - 90', 'b - 90', 'c - 90', 'd - 90', 'b', 2, 10, 16, 88),
(523, 'SOA', 'PREGUNTA91', 'a - 91', 'b - 91', 'c - 91', 'd - 91', 'c', 4, 13, 10, 68),
(524, 'SOA', 'PREGUNTA92', 'a - 92', 'b - 92', 'c - 92', 'd - 92', 'd', 3, 12, 11, 81),
(525, 'SOA', 'PREGUNTA93', 'a - 93', 'b - 93', 'c - 93', 'd - 93', 'b', 3, 20, 12, 55),
(526, 'SOA', 'PREGUNTA94', 'a - 94', 'b - 94', 'c - 94', 'd - 94', 'c', 1, 13, 14, 64),
(527, 'SOA', 'PREGUNTA95', 'a - 95', 'b - 95', 'c - 95', 'd - 95', 'd', 2, 13, 10, 59),
(528, 'SOA', 'PREGUNTA96', 'a - 96', 'b - 96', 'c - 96', 'd - 96', 'd', 4, 19, 12, 69),
(529, 'SOA', 'PREGUNTA97', 'a - 97', 'b - 97', 'c - 97', 'd - 97', 'b', 4, 11, 16, 72),
(530, 'SOA', 'PREGUNTA98', 'a - 98', 'b - 98', 'c - 98', 'd - 98', 'd', 4, 13, 11, 46),
(531, 'SOA', 'PREGUNTA99', 'a - 99', 'b - 99', 'c - 99', 'd - 99', 'a', 4, 16, 17, 63),
(532, 'SOA', 'PREGUNTA100', 'a - 100', 'b - 100', 'c - 100', 'd - 100', 'a', 2, 19, 15, 68),
(533, 'soa', 'asdjflsajd', 'alsjfdlkf', 'ljslkfjl', 'lsjdaf', 'asdfdsaf', 'b', 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testalumno`
--

CREATE TABLE `testalumno` (
  `id` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `nivel` int(1) NOT NULL,
  `puntos` int(10) NOT NULL,
  `correctas` int(11) NOT NULL,
  `incorrectas` int(11) NOT NULL,
  `ntests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `testalumno`
--

INSERT INTO `testalumno` (`id`, `idalumno`, `nivel`, `puntos`, `correctas`, `incorrectas`, `ntests`) VALUES
(1, 1, 1, 3643, 92, 36, 33),
(2, 2, 1, 4786, 53, 67, 16),
(3, 2, 2, 2728, 76, 65, 11),
(4, 2, 3, 3933, 76, 36, 26),
(5, 3, 1, 2414, 60, 23, 15),
(6, 3, 2, 1060, 65, 27, 25),
(7, 3, 3, 1539, 50, 42, 30),
(8, 3, 4, 1691, 54, 45, 25),
(9, 4, 1, 1606, 72, 67, 12),
(10, 4, 2, 3639, 68, 50, 27),
(11, 4, 3, 2672, 67, 23, 33),
(12, 4, 4, 4467, 92, 25, 12),
(13, 5, 1, 2176, 54, 30, 23),
(14, 5, 2, 3327, 67, 42, 10),
(15, 5, 3, 1074, 81, 25, 26),
(16, 5, 4, 1473, 99, 54, 27),
(17, 6, 1, 4027, 61, 32, 21),
(18, 6, 2, 4109, 84, 55, 36),
(19, 6, 3, 2694, 78, 54, 26),
(20, 6, 4, 3532, 79, 61, 32),
(21, 7, 1, 2049, 65, 27, 32),
(22, 7, 2, 2253, 58, 36, 23),
(23, 7, 3, 3772, 73, 40, 21),
(24, 7, 4, 1051, 64, 26, 17),
(25, 8, 1, 2955, 50, 31, 15),
(26, 8, 2, 4445, 82, 58, 26),
(27, 8, 3, 1674, 69, 26, 40),
(28, 9, 1, 4686, 62, 40, 12),
(29, 10, 1, 3847, 62, 35, 14),
(30, 10, 2, 4721, 88, 47, 19),
(31, 10, 3, 4044, 91, 41, 40),
(32, 10, 4, 2473, 96, 20, 28),
(33, 11, 1, 4471, 61, 63, 22),
(34, 12, 1, 1992, 77, 39, 20),
(35, 12, 2, 2813, 82, 58, 26),
(36, 13, 1, 2842, 88, 65, 28),
(37, 13, 2, 3762, 82, 26, 40),
(38, 13, 3, 2628, 98, 41, 22),
(39, 14, 1, 2340, 70, 66, 23),
(40, 14, 2, 2106, 57, 35, 31),
(41, 15, 1, 3192, 61, 66, 37),
(42, 15, 2, 3680, 78, 53, 15),
(43, 15, 3, 1637, 55, 68, 11),
(44, 16, 1, 3577, 85, 62, 29),
(45, 16, 2, 1444, 90, 22, 25),
(46, 16, 3, 1480, 69, 67, 10),
(47, 17, 1, 1794, 58, 26, 37),
(48, 17, 2, 3807, 84, 25, 29),
(49, 17, 3, 3300, 89, 29, 16),
(50, 17, 4, 4854, 67, 36, 38),
(51, 18, 1, 1150, 78, 25, 37),
(52, 18, 2, 1785, 60, 54, 17),
(53, 19, 1, 4174, 82, 52, 35),
(54, 19, 2, 2870, 93, 70, 28),
(55, 19, 3, 3914, 85, 33, 35),
(56, 20, 1, 4390, 80, 45, 12),
(57, 20, 2, 3250, 92, 40, 24),
(58, 21, 1, 2753, 52, 36, 19),
(59, 22, 1, 3149, 100, 44, 18),
(60, 23, 1, 1505, 96, 50, 28),
(61, 23, 2, 4010, 80, 29, 24),
(62, 23, 3, 2171, 73, 35, 28),
(63, 23, 4, 2237, 96, 25, 21),
(64, 24, 1, 4733, 89, 68, 14),
(65, 24, 2, 1872, 100, 44, 26),
(66, 25, 1, 1096, 76, 56, 18);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testalumno`
--
ALTER TABLE `testalumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idalumno` (`idalumno`),
  ADD KEY `idalumno_2` (`idalumno`),
  ADD KEY `idalumno_3` (`idalumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;
--
-- AUTO_INCREMENT de la tabla `testalumno`
--
ALTER TABLE `testalumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
