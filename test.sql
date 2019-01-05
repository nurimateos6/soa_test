-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-01-2019 a las 14:01:48
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
  `id` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
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
('ID00000', 'lkj', 'lkj', 2, 'lkj', '48e2e79fec9bc01d9a00e0a8fa68b289'),
('ID00001', 'Lol', 'Lol', 2, 'Lol', '9c76408e9b8a7512a8e17a1eed728f07');

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
(333, 'SOA', '1 + 1 = ?', '11', '2', '3', '22', 'b', 4, 0, 0, 0),
(334, 'SOA', 'PREGUNTA2', 'a - 2', 'b - 2', 'c - 2', 'd - 2', 'd', 1, 0, 0, 1),
(335, 'SOA', 'PREGUNTA3', 'a - 3', 'b - 3', 'c - 3', 'd - 3', 'c', 3, 0, 0, 0),
(336, 'SOA', 'PREGUNTA4', 'a - 4', 'b - 4', 'c - 4', 'd - 4', 'a', 3, 0, 0, 0),
(337, 'SOA', 'PREGUNTA5', 'a - 5', 'b - 5', 'c - 5', 'd - 5', 'a', 3, 0, 0, 0),
(338, 'SOA', '1 * 1 = ?', '11', '100', '2', '1', 'd', 4, 0, 0, 0),
(339, 'SOA', '893''38487 * 0 = ?', '0', '8930,38487', '893''384870', '1', 'a', 4, 0, 0, 0),
(340, 'SOA', 'PREGUNTA8', 'a - 8', 'b - 8', 'c - 8', 'd - 8', 'c', 3, 0, 0, 0),
(341, 'SOA', 'PREGUNTA9', 'a - 9', 'b - 9', 'c - 9', 'd - 9', 'd', 3, 0, 0, 0),
(342, 'SOA', 'PREGUNTA10', 'a - 10', 'b - 10', 'c - 10', 'd - 10', 'c', 2, 0, 0, 0),
(343, 'SOA', 'PREGUNTA11', 'a - 11', 'b - 11', 'c - 11', 'd - 11', 'c', 2, 0, 0, 0),
(344, 'SOA', 'PREGUNTA12', 'a - 12', 'b - 12', 'c - 12', 'd - 12', 'd', 4, 0, 0, 0),
(345, 'SOA', 'PREGUNTA13', 'a - 13', 'b - 13', 'c - 13', 'd - 13', 'd', 2, 0, 0, 0),
(346, 'SOA', 'PREGUNTA14', 'a - 14', 'b - 14', 'c - 14', 'd - 14', 'c', 2, 0, 0, 0),
(347, 'SOA', 'PREGUNTA15', 'a - 15', 'b - 15', 'c - 15', 'd - 15', 'd', 1, 0, 0, 1),
(348, 'SOA', 'PREGUNTA16', 'a - 16', 'b - 16', 'c - 16', 'd - 16', 'd', 3, 0, 0, 0),
(349, 'SOA', 'PREGUNTA17', 'a - 17', 'b - 17', 'c - 17', 'd - 17', 'a', 4, 0, 0, 0),
(350, 'SOA', 'PREGUNTA18', 'a - 18', 'b - 18', 'c - 18', 'd - 18', 'c', 1, 0, 0, 1),
(351, 'SOA', 'PREGUNTA19', 'a - 19', 'b - 19', 'c - 19', 'd - 19', 'b', 4, 0, 0, 0),
(352, 'SOA', 'PREGUNTA20', 'a - 20', 'b - 20', 'c - 20', 'd - 20', 'b', 4, 0, 0, 0),
(353, 'SOA', 'PREGUNTA21', 'a - 21', 'b - 21', 'c - 21', 'd - 21', 'a', 4, 0, 0, 0),
(354, 'SOA', 'PREGUNTA22', 'a - 22', 'b - 22', 'c - 22', 'd - 22', 'd', 2, 0, 0, 0),
(355, 'SOA', 'PREGUNTA23', 'a - 23', 'b - 23', 'c - 23', 'd - 23', 'a', 1, 0, 0, 1),
(356, 'SOA', 'PREGUNTA24', 'a - 24', 'b - 24', 'c - 24', 'd - 24', 'd', 2, 0, 0, 0),
(357, 'SOA', 'PREGUNTA25', 'a - 25', 'b - 25', 'c - 25', 'd - 25', 'b', 4, 0, 0, 0),
(358, 'SOA', 'PREGUNTA26', 'a - 26', 'b - 26', 'c - 26', 'd - 26', 'a', 2, 0, 0, 0),
(359, 'SOA', 'PREGUNTA27', 'a - 27', 'b - 27', 'c - 27', 'd - 27', 'b', 1, 0, 0, 1),
(360, 'SOA', 'PREGUNTA28', 'a - 28', 'b - 28', 'c - 28', 'd - 28', 'c', 1, 0, 0, 1),
(361, 'SOA', 'PREGUNTA29', 'a - 29', 'b - 29', 'c - 29', 'd - 29', 'a', 4, 0, 0, 0),
(362, 'SOA', 'PREGUNTA30', 'a - 30', 'b - 30', 'c - 30', 'd - 30', 'd', 3, 0, 0, 0),
(363, 'SOA', 'PREGUNTA31', 'a - 31', 'b - 31', 'c - 31', 'd - 31', 'c', 2, 0, 0, 0),
(364, 'SOA', 'PREGUNTA32', 'a - 32', 'b - 32', 'c - 32', 'd - 32', 'c', 1, 0, 0, 1),
(365, 'SOA', 'PREGUNTA33', 'a - 33', 'b - 33', 'c - 33', 'd - 33', 'a', 4, 0, 0, 0),
(366, 'SOA', 'PREGUNTA34', 'a - 34', 'b - 34', 'c - 34', 'd - 34', 'a', 2, 0, 0, 0),
(367, 'SOA', 'PREGUNTA35', 'a - 35', 'b - 35', 'c - 35', 'd - 35', 'a', 1, 0, 0, 1),
(368, 'SOA', 'PREGUNTA36', 'a - 36', 'b - 36', 'c - 36', 'd - 36', 'b', 3, 0, 0, 0),
(369, 'SOA', 'PREGUNTA37', 'a - 37', 'b - 37', 'c - 37', 'd - 37', 'b', 3, 0, 0, 0),
(370, 'SOA', 'PREGUNTA38', 'a - 38', 'b - 38', 'c - 38', 'd - 38', 'd', 1, 0, 1, 1),
(371, 'SOA', 'PREGUNTA39', 'a - 39', 'b - 39', 'c - 39', 'd - 39', 'c', 4, 0, 0, 0),
(372, 'SOA', 'PREGUNTA40', 'a - 40', 'b - 40', 'c - 40', 'd - 40', 'd', 1, 0, 0, 1),
(373, 'SOA', 'PREGUNTA41', 'a - 41', 'b - 41', 'c - 41', 'd - 41', 'a', 1, 0, 0, 1),
(374, 'SOA', 'PREGUNTA42', 'a - 42', 'b - 42', 'c - 42', 'd - 42', 'b', 2, 0, 0, 0),
(375, 'SOA', 'PREGUNTA43', 'a - 43', 'b - 43', 'c - 43', 'd - 43', 'd', 4, 0, 0, 0),
(376, 'SOA', 'PREGUNTA44', 'a - 44', 'b - 44', 'c - 44', 'd - 44', 'c', 3, 0, 0, 0),
(377, 'SOA', 'PREGUNTA45', 'a - 45', 'b - 45', 'c - 45', 'd - 45', 'd', 3, 0, 0, 0),
(378, 'SOA', 'PREGUNTA46', 'a - 46', 'b - 46', 'c - 46', 'd - 46', 'd', 1, 0, 0, 1),
(379, 'SOA', 'PREGUNTA47', 'a - 47', 'b - 47', 'c - 47', 'd - 47', 'b', 2, 0, 0, 0),
(380, 'SOA', 'PREGUNTA48', 'a - 48', 'b - 48', 'c - 48', 'd - 48', 'd', 3, 0, 0, 0),
(381, 'SOA', 'PREGUNTA49', 'a - 49', 'b - 49', 'c - 49', 'd - 49', 'b', 1, 0, 0, 1),
(382, 'SOA', 'PREGUNTA50', 'a - 50', 'b - 50', 'c - 50', 'd - 50', 'a', 2, 0, 0, 0),
(383, 'SOA', 'PREGUNTA51', 'a - 51', 'b - 51', 'c - 51', 'd - 51', 'b', 1, 0, 0, 1),
(384, 'SOA', 'PREGUNTA52', 'a - 52', 'b - 52', 'c - 52', 'd - 52', 'd', 2, 0, 0, 0),
(385, 'SOA', 'PREGUNTA53', 'a - 53', 'b - 53', 'c - 53', 'd - 53', 'b', 4, 0, 0, 0),
(386, 'SOA', 'PREGUNTA54', 'a - 54', 'b - 54', 'c - 54', 'd - 54', 'd', 2, 0, 0, 0),
(387, 'SOA', 'PREGUNTA55', 'a - 55', 'b - 55', 'c - 55', 'd - 55', 'c', 3, 0, 0, 0),
(388, 'SOA', 'PREGUNTA56', 'a - 56', 'b - 56', 'c - 56', 'd - 56', 'b', 4, 0, 0, 0),
(389, 'SOA', 'PREGUNTA57', 'a - 57', 'b - 57', 'c - 57', 'd - 57', 'b', 2, 0, 0, 0),
(390, 'SOA', 'PREGUNTA58', 'a - 58', 'b - 58', 'c - 58', 'd - 58', 'd', 3, 0, 0, 0),
(391, 'SOA', 'PREGUNTA59', 'a - 59', 'b - 59', 'c - 59', 'd - 59', 'a', 1, 0, 0, 1),
(392, 'SOA', 'PREGUNTA60', 'a - 60', 'b - 60', 'c - 60', 'd - 60', 'b', 2, 0, 0, 0),
(393, 'SOA', 'PREGUNTA61', 'a - 61', 'b - 61', 'c - 61', 'd - 61', 'b', 3, 0, 0, 0),
(394, 'SOA', 'PREGUNTA62', 'a - 62', 'b - 62', 'c - 62', 'd - 62', 'c', 4, 0, 0, 0),
(395, 'SOA', 'PREGUNTA63', 'a - 63', 'b - 63', 'c - 63', 'd - 63', 'd', 4, 0, 0, 0),
(396, 'SOA', 'PREGUNTA64', 'a - 64', 'b - 64', 'c - 64', 'd - 64', 'a', 2, 0, 0, 0),
(397, 'SOA', 'PREGUNTA65', 'a - 65', 'b - 65', 'c - 65', 'd - 65', 'c', 2, 0, 0, 0),
(398, 'SOA', 'PREGUNTA66', 'a - 66', 'b - 66', 'c - 66', 'd - 66', 'b', 1, 0, 0, 1),
(399, 'SOA', 'PREGUNTA67', 'a - 67', 'b - 67', 'c - 67', 'd - 67', 'c', 3, 0, 0, 0),
(400, 'SOA', 'PREGUNTA68', 'a - 68', 'b - 68', 'c - 68', 'd - 68', 'a', 1, 0, 0, 1),
(401, 'SOA', 'PREGUNTA69', 'a - 69', 'b - 69', 'c - 69', 'd - 69', 'b', 3, 0, 0, 0),
(402, 'SOA', 'PREGUNTA70', 'a - 70', 'b - 70', 'c - 70', 'd - 70', 'd', 4, 0, 0, 0),
(403, 'SOA', 'PREGUNTA71', 'a - 71', 'b - 71', 'c - 71', 'd - 71', 'a', 1, 0, 0, 1),
(404, 'SOA', 'PREGUNTA72', 'a - 72', 'b - 72', 'c - 72', 'd - 72', 'c', 3, 0, 0, 0),
(405, 'SOA', 'PREGUNTA73', 'a - 73', 'b - 73', 'c - 73', 'd - 73', 'c', 1, 0, 0, 1),
(406, 'SOA', 'PREGUNTA74', 'a - 74', 'b - 74', 'c - 74', 'd - 74', 'c', 4, 0, 0, 0),
(407, 'SOA', 'PREGUNTA75', 'a - 75', 'b - 75', 'c - 75', 'd - 75', 'd', 1, 0, 1, 1),
(408, 'SOA', 'PREGUNTA76', 'a - 76', 'b - 76', 'c - 76', 'd - 76', 'd', 1, 0, 0, 1),
(409, 'SOA', 'PREGUNTA77', 'a - 77', 'b - 77', 'c - 77', 'd - 77', 'a', 3, 0, 0, 0),
(410, 'SOA', 'PREGUNTA78', 'a - 78', 'b - 78', 'c - 78', 'd - 78', 'b', 4, 0, 0, 0),
(411, 'SOA', 'PREGUNTA79', 'a - 79', 'b - 79', 'c - 79', 'd - 79', 'c', 3, 0, 0, 0),
(412, 'SOA', 'PREGUNTA80', 'a - 80', 'b - 80', 'c - 80', 'd - 80', 'b', 4, 0, 0, 0),
(413, 'SOA', 'PREGUNTA81', 'a - 81', 'b - 81', 'c - 81', 'd - 81', 'd', 1, 0, 0, 1),
(414, 'SOA', 'PREGUNTA82', 'a - 82', 'b - 82', 'c - 82', 'd - 82', 'b', 3, 0, 0, 0),
(415, 'SOA', 'PREGUNTA83', 'a - 83', 'b - 83', 'c - 83', 'd - 83', 'b', 4, 0, 0, 0),
(416, 'SOA', 'PREGUNTA84', 'a - 84', 'b - 84', 'c - 84', 'd - 84', 'b', 3, 0, 0, 0),
(417, 'SOA', 'PREGUNTA85', 'a - 85', 'b - 85', 'c - 85', 'd - 85', 'd', 4, 0, 0, 0),
(418, 'SOA', 'PREGUNTA86', 'a - 86', 'b - 86', 'c - 86', 'd - 86', 'b', 3, 0, 0, 0),
(419, 'SOA', 'PREGUNTA87', 'a - 87', 'b - 87', 'c - 87', 'd - 87', 'c', 3, 0, 0, 0),
(420, 'SOA', 'PREGUNTA88', 'a - 88', 'b - 88', 'c - 88', 'd - 88', 'a', 4, 0, 0, 0),
(421, 'SOA', 'PREGUNTA89', 'a - 89', 'b - 89', 'c - 89', 'd - 89', 'd', 4, 0, 0, 0),
(422, 'SOA', 'PREGUNTA90', 'a - 90', 'b - 90', 'c - 90', 'd - 90', 'd', 1, 0, 0, 1),
(423, 'SOA', 'PREGUNTA91', 'a - 91', 'b - 91', 'c - 91', 'd - 91', 'a', 3, 0, 0, 0),
(424, 'SOA', 'PREGUNTA92', 'a - 92', 'b - 92', 'c - 92', 'd - 92', 'a', 4, 0, 0, 0),
(425, 'SOA', 'PREGUNTA93', 'a - 93', 'b - 93', 'c - 93', 'd - 93', 'c', 2, 0, 0, 0),
(426, 'SOA', 'PREGUNTA94', 'a - 94', 'b - 94', 'c - 94', 'd - 94', 'c', 4, 0, 0, 0),
(427, 'SOA', 'PREGUNTA95', 'a - 95', 'b - 95', 'c - 95', 'd - 95', 'c', 1, 0, 0, 1),
(428, 'SOA', 'PREGUNTA96', 'a - 96', 'b - 96', 'c - 96', 'd - 96', 'd', 3, 0, 0, 0),
(429, 'SOA', 'PREGUNTA97', 'a - 97', 'b - 97', 'c - 97', 'd - 97', 'c', 1, 0, 0, 1),
(430, 'SOA', 'PREGUNTA98', 'a - 98', 'b - 98', 'c - 98', 'd - 98', 'd', 2, 0, 0, 0),
(431, 'SOA', 'PREGUNTA99', 'a - 99', 'b - 99', 'c - 99', 'd - 99', 'a', 4, 0, 0, 0),
(432, 'SOA', 'PREGUNTA100', 'a - 100', 'b - 100', 'c - 100', 'd - 100', 'c', 3, 0, 0, 0),
(433, 'SOA', 'PREGUNTA1', 'a - 1', 'b - 1', 'c - 1', 'd - 1', 'b', 3, 0, 0, 0),
(434, 'SOA', 'PREGUNTA2', 'a - 2', 'b - 2', 'c - 2', 'd - 2', 'a', 2, 0, 0, 0),
(435, 'SOA', 'PREGUNTA3', 'a - 3', 'b - 3', 'c - 3', 'd - 3', 'd', 2, 0, 0, 0),
(436, 'SOA', 'PREGUNTA4', 'a - 4', 'b - 4', 'c - 4', 'd - 4', 'b', 1, 0, 0, 1),
(437, 'SOA', 'PREGUNTA5', 'a - 5', 'b - 5', 'c - 5', 'd - 5', 'b', 4, 0, 0, 0),
(438, 'SOA', 'PREGUNTA6', 'a - 6', 'b - 6', 'c - 6', 'd - 6', 'd', 4, 0, 0, 0),
(439, 'SOA', 'PREGUNTA7', 'a - 7', 'b - 7', 'c - 7', 'd - 7', 'b', 2, 0, 0, 0),
(440, 'SOA', 'PREGUNTA8', 'a - 8', 'b - 8', 'c - 8', 'd - 8', 'c', 3, 0, 0, 0),
(441, 'SOA', 'PREGUNTA9', 'a - 9', 'b - 9', 'c - 9', 'd - 9', 'a', 2, 0, 0, 0),
(442, 'SOA', 'PREGUNTA10', 'a - 10', 'b - 10', 'c - 10', 'd - 10', 'd', 2, 0, 0, 0),
(443, 'SOA', 'PREGUNTA11', 'a - 11', 'b - 11', 'c - 11', 'd - 11', 'b', 4, 0, 0, 0),
(444, 'SOA', 'PREGUNTA12', 'a - 12', 'b - 12', 'c - 12', 'd - 12', 'd', 2, 0, 0, 0),
(445, 'SOA', 'PREGUNTA13', 'a - 13', 'b - 13', 'c - 13', 'd - 13', 'd', 3, 0, 0, 0),
(446, 'SOA', 'PREGUNTA14', 'a - 14', 'b - 14', 'c - 14', 'd - 14', 'b', 1, 0, 0, 1),
(447, 'SOA', 'PREGUNTA15', 'a - 15', 'b - 15', 'c - 15', 'd - 15', 'd', 2, 0, 0, 0),
(448, 'SOA', 'PREGUNTA16', 'a - 16', 'b - 16', 'c - 16', 'd - 16', 'b', 1, 0, 0, 1),
(449, 'SOA', 'PREGUNTA17', 'a - 17', 'b - 17', 'c - 17', 'd - 17', 'c', 1, 0, 0, 0),
(450, 'SOA', 'PREGUNTA18', 'a - 18', 'b - 18', 'c - 18', 'd - 18', 'd', 3, 0, 0, 0),
(451, 'SOA', 'PREGUNTA19', 'a - 19', 'b - 19', 'c - 19', 'd - 19', 'a', 1, 0, 0, 0),
(452, 'SOA', 'PREGUNTA20', 'a - 20', 'b - 20', 'c - 20', 'd - 20', 'a', 4, 0, 0, 0),
(453, 'SOA', 'PREGUNTA21', 'a - 21', 'b - 21', 'c - 21', 'd - 21', 'c', 2, 0, 0, 0),
(454, 'SOA', 'PREGUNTA22', 'a - 22', 'b - 22', 'c - 22', 'd - 22', 'c', 4, 0, 0, 0),
(455, 'SOA', 'PREGUNTA23', 'a - 23', 'b - 23', 'c - 23', 'd - 23', 'a', 1, 0, 0, 0),
(456, 'SOA', 'PREGUNTA24', 'a - 24', 'b - 24', 'c - 24', 'd - 24', 'c', 1, 0, 0, 0),
(457, 'SOA', 'PREGUNTA25', 'a - 25', 'b - 25', 'c - 25', 'd - 25', 'd', 3, 0, 0, 0),
(458, 'SOA', 'PREGUNTA26', 'a - 26', 'b - 26', 'c - 26', 'd - 26', 'c', 2, 0, 0, 0),
(459, 'SOA', 'PREGUNTA27', 'a - 27', 'b - 27', 'c - 27', 'd - 27', 'c', 3, 0, 0, 0),
(460, 'SOA', 'PREGUNTA28', 'a - 28', 'b - 28', 'c - 28', 'd - 28', 'c', 2, 0, 0, 0),
(461, 'SOA', 'PREGUNTA29', 'a - 29', 'b - 29', 'c - 29', 'd - 29', 'c', 2, 0, 0, 0),
(462, 'SOA', 'PREGUNTA30', 'a - 30', 'b - 30', 'c - 30', 'd - 30', 'd', 3, 0, 0, 0),
(463, 'SOA', 'PREGUNTA31', 'a - 31', 'b - 31', 'c - 31', 'd - 31', 'b', 3, 0, 0, 0),
(464, 'SOA', 'PREGUNTA32', 'a - 32', 'b - 32', 'c - 32', 'd - 32', 'c', 3, 0, 0, 0),
(465, 'SOA', 'PREGUNTA33', 'a - 33', 'b - 33', 'c - 33', 'd - 33', 'c', 2, 0, 0, 0),
(466, 'SOA', 'PREGUNTA34', 'a - 34', 'b - 34', 'c - 34', 'd - 34', 'c', 4, 0, 0, 0),
(467, 'SOA', 'PREGUNTA35', 'a - 35', 'b - 35', 'c - 35', 'd - 35', 'd', 4, 0, 0, 0),
(468, 'SOA', 'PREGUNTA36', 'a - 36', 'b - 36', 'c - 36', 'd - 36', 'd', 4, 0, 0, 0),
(469, 'SOA', 'PREGUNTA37', 'a - 37', 'b - 37', 'c - 37', 'd - 37', 'b', 3, 0, 0, 0),
(470, 'SOA', 'PREGUNTA38', 'a - 38', 'b - 38', 'c - 38', 'd - 38', 'a', 4, 0, 0, 0),
(471, 'SOA', 'PREGUNTA39', 'a - 39', 'b - 39', 'c - 39', 'd - 39', 'b', 2, 0, 0, 0),
(472, 'SOA', 'PREGUNTA40', 'a - 40', 'b - 40', 'c - 40', 'd - 40', 'c', 1, 0, 0, 0),
(473, 'SOA', 'PREGUNTA41', 'a - 41', 'b - 41', 'c - 41', 'd - 41', 'b', 2, 0, 0, 0),
(474, 'SOA', 'PREGUNTA42', 'a - 42', 'b - 42', 'c - 42', 'd - 42', 'a', 2, 0, 0, 0),
(475, 'SOA', 'PREGUNTA43', 'a - 43', 'b - 43', 'c - 43', 'd - 43', 'a', 4, 0, 0, 0),
(476, 'SOA', 'PREGUNTA44', 'a - 44', 'b - 44', 'c - 44', 'd - 44', 'a', 2, 0, 0, 0),
(477, 'SOA', 'PREGUNTA45', 'a - 45', 'b - 45', 'c - 45', 'd - 45', 'c', 3, 0, 0, 0),
(478, 'SOA', 'PREGUNTA46', 'a - 46', 'b - 46', 'c - 46', 'd - 46', 'a', 2, 0, 0, 0),
(479, 'SOA', 'PREGUNTA47', 'a - 47', 'b - 47', 'c - 47', 'd - 47', 'c', 1, 0, 0, 0),
(480, 'SOA', 'PREGUNTA48', 'a - 48', 'b - 48', 'c - 48', 'd - 48', 'd', 2, 0, 0, 0),
(481, 'SOA', 'PREGUNTA49', 'a - 49', 'b - 49', 'c - 49', 'd - 49', 'c', 4, 0, 0, 0),
(482, 'SOA', 'PREGUNTA50', 'a - 50', 'b - 50', 'c - 50', 'd - 50', 'd', 4, 0, 0, 0),
(483, 'SOA', 'PREGUNTA51', 'a - 51', 'b - 51', 'c - 51', 'd - 51', 'b', 3, 0, 0, 0),
(484, 'SOA', 'PREGUNTA52', 'a - 52', 'b - 52', 'c - 52', 'd - 52', 'd', 3, 0, 0, 0),
(485, 'SOA', 'PREGUNTA53', 'a - 53', 'b - 53', 'c - 53', 'd - 53', 'c', 1, 0, 0, 0),
(486, 'SOA', 'PREGUNTA54', 'a - 54', 'b - 54', 'c - 54', 'd - 54', 'a', 4, 0, 0, 0),
(487, 'SOA', 'PREGUNTA55', 'a - 55', 'b - 55', 'c - 55', 'd - 55', 'a', 3, 0, 0, 0),
(488, 'SOA', 'PREGUNTA56', 'a - 56', 'b - 56', 'c - 56', 'd - 56', 'b', 1, 0, 0, 0),
(489, 'SOA', 'PREGUNTA57', 'a - 57', 'b - 57', 'c - 57', 'd - 57', 'd', 3, 0, 0, 0),
(490, 'SOA', 'PREGUNTA58', 'a - 58', 'b - 58', 'c - 58', 'd - 58', 'a', 3, 0, 0, 0),
(491, 'SOA', 'PREGUNTA59', 'a - 59', 'b - 59', 'c - 59', 'd - 59', 'a', 3, 0, 0, 0),
(492, 'SOA', 'PREGUNTA60', 'a - 60', 'b - 60', 'c - 60', 'd - 60', 'a', 2, 0, 0, 0),
(493, 'SOA', 'PREGUNTA61', 'a - 61', 'b - 61', 'c - 61', 'd - 61', 'c', 3, 0, 0, 0),
(494, 'SOA', 'PREGUNTA62', 'a - 62', 'b - 62', 'c - 62', 'd - 62', 'c', 4, 0, 0, 0),
(495, 'SOA', 'PREGUNTA63', 'a - 63', 'b - 63', 'c - 63', 'd - 63', 'a', 1, 0, 0, 0),
(496, 'SOA', 'PREGUNTA64', 'a - 64', 'b - 64', 'c - 64', 'd - 64', 'b', 3, 0, 0, 0),
(497, 'SOA', 'PREGUNTA65', 'a - 65', 'b - 65', 'c - 65', 'd - 65', 'a', 3, 0, 0, 0),
(498, 'SOA', 'PREGUNTA66', 'a - 66', 'b - 66', 'c - 66', 'd - 66', 'a', 3, 0, 0, 0),
(499, 'SOA', 'PREGUNTA67', 'a - 67', 'b - 67', 'c - 67', 'd - 67', 'b', 2, 0, 0, 0),
(500, 'SOA', 'PREGUNTA68', 'a - 68', 'b - 68', 'c - 68', 'd - 68', 'd', 2, 0, 0, 0),
(501, 'SOA', 'PREGUNTA69', 'a - 69', 'b - 69', 'c - 69', 'd - 69', 'b', 2, 0, 0, 0),
(502, 'SOA', 'PREGUNTA70', 'a - 70', 'b - 70', 'c - 70', 'd - 70', 'c', 3, 0, 0, 0),
(503, 'SOA', 'PREGUNTA71', 'a - 71', 'b - 71', 'c - 71', 'd - 71', 'c', 3, 0, 0, 0),
(504, 'SOA', 'PREGUNTA72', 'a - 72', 'b - 72', 'c - 72', 'd - 72', 'a', 4, 0, 0, 0),
(505, 'SOA', 'PREGUNTA73', 'a - 73', 'b - 73', 'c - 73', 'd - 73', 'c', 1, 0, 0, 0),
(506, 'SOA', 'PREGUNTA74', 'a - 74', 'b - 74', 'c - 74', 'd - 74', 'd', 1, 0, 0, 0),
(507, 'SOA', 'PREGUNTA75', 'a - 75', 'b - 75', 'c - 75', 'd - 75', 'a', 4, 0, 0, 0),
(508, 'SOA', 'PREGUNTA76', 'a - 76', 'b - 76', 'c - 76', 'd - 76', 'c', 1, 0, 0, 0),
(509, 'SOA', 'PREGUNTA77', 'a - 77', 'b - 77', 'c - 77', 'd - 77', 'b', 4, 0, 0, 0),
(510, 'SOA', 'PREGUNTA78', 'a - 78', 'b - 78', 'c - 78', 'd - 78', 'b', 2, 0, 0, 0),
(511, 'SOA', 'PREGUNTA79', 'a - 79', 'b - 79', 'c - 79', 'd - 79', 'b', 2, 0, 0, 0),
(512, 'SOA', 'PREGUNTA80', 'a - 80', 'b - 80', 'c - 80', 'd - 80', 'a', 2, 0, 0, 0),
(513, 'SOA', 'PREGUNTA81', 'a - 81', 'b - 81', 'c - 81', 'd - 81', 'a', 3, 0, 0, 0),
(514, 'SOA', 'PREGUNTA82', 'a - 82', 'b - 82', 'c - 82', 'd - 82', 'd', 3, 0, 0, 0),
(515, 'SOA', 'PREGUNTA83', 'a - 83', 'b - 83', 'c - 83', 'd - 83', 'a', 2, 0, 0, 0),
(516, 'SOA', 'PREGUNTA84', 'a - 84', 'b - 84', 'c - 84', 'd - 84', 'a', 3, 0, 0, 0),
(517, 'SOA', 'PREGUNTA85', 'a - 85', 'b - 85', 'c - 85', 'd - 85', 'a', 3, 0, 0, 0),
(518, 'SOA', 'PREGUNTA86', 'a - 86', 'b - 86', 'c - 86', 'd - 86', 'c', 3, 0, 0, 0),
(519, 'SOA', 'PREGUNTA87', 'a - 87', 'b - 87', 'c - 87', 'd - 87', 'b', 3, 0, 0, 0),
(520, 'SOA', 'PREGUNTA88', 'a - 88', 'b - 88', 'c - 88', 'd - 88', 'd', 1, 0, 1, 1),
(521, 'SOA', 'PREGUNTA89', 'a - 89', 'b - 89', 'c - 89', 'd - 89', 'c', 3, 0, 0, 0),
(522, 'SOA', 'PREGUNTA90', 'a - 90', 'b - 90', 'c - 90', 'd - 90', 'b', 2, 0, 0, 0),
(523, 'SOA', 'PREGUNTA91', 'a - 91', 'b - 91', 'c - 91', 'd - 91', 'c', 4, 0, 0, 0),
(524, 'SOA', 'PREGUNTA92', 'a - 92', 'b - 92', 'c - 92', 'd - 92', 'd', 3, 0, 0, 0),
(525, 'SOA', 'PREGUNTA93', 'a - 93', 'b - 93', 'c - 93', 'd - 93', 'b', 3, 0, 0, 0),
(526, 'SOA', 'PREGUNTA94', 'a - 94', 'b - 94', 'c - 94', 'd - 94', 'c', 1, 0, 0, 1),
(527, 'SOA', 'PREGUNTA95', 'a - 95', 'b - 95', 'c - 95', 'd - 95', 'd', 2, 0, 0, 0),
(528, 'SOA', 'PREGUNTA96', 'a - 96', 'b - 96', 'c - 96', 'd - 96', 'd', 4, 0, 0, 0),
(529, 'SOA', 'PREGUNTA97', 'a - 97', 'b - 97', 'c - 97', 'd - 97', 'b', 4, 0, 0, 0),
(530, 'SOA', 'PREGUNTA98', 'a - 98', 'b - 98', 'c - 98', 'd - 98', 'd', 4, 0, 0, 0),
(531, 'SOA', 'PREGUNTA99', 'a - 99', 'b - 99', 'c - 99', 'd - 99', 'a', 4, 0, 0, 0),
(532, 'SOA', 'PREGUNTA100', 'a - 100', 'b - 100', 'c - 100', 'd - 100', 'a', 2, 0, 0, 0),
(533, 'soa', 'asdjflsajd', 'alsjfdlkf', 'ljslkfjl', 'lsjdaf', 'asdfdsaf', 'b', 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testalumno`
--

CREATE TABLE `testalumno` (
  `id` int(11) NOT NULL,
  `idalumno` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
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
(91, 'ID00000', 1, 240, 29, 10, 39),
(92, 'ID00000', 2, -5, 0, 1, 1),
(93, 'ID00001', 1, 10, 1, 0, 1),
(94, 'ID00001', 2, 0, 0, 0, 0);

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
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;
--
-- AUTO_INCREMENT de la tabla `testalumno`
--
ALTER TABLE `testalumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `testalumno`
--
ALTER TABLE `testalumno`
  ADD CONSTRAINT `testalumno_ibfk_1` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
