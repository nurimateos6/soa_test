-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-01-2019 a las 18:22:08
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
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(11) DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`, `apellidos`, `nivel`, `email`, `password`) VALUES
('ID00000', 'admin', 'admin', 1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('ID00001', 'al1', 'al1', 1, 'al1', '7ce84b229b752a8acef67c11a6325f49'),
('ID00002', 'al2', 'al2', 1, 'al2', '89eaa1ba9f5cf356652d7b4b2bc89f13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `asignatura` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pregunta` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ra` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `rb` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `rc` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `rd` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `correcta` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(11) NOT NULL,
  `veces_bien` int(11) DEFAULT NULL,
  `veces_mal` int(11) DEFAULT NULL,
  `veces` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `asignatura`, `pregunta`, `ra`, `rb`, `rc`, `rd`, `correcta`, `nivel`, `veces_bien`, `veces_mal`, `veces`) VALUES
(538, 'SOA', 'Indica cu?l de estos tipos de documento define las reglas sint?cticas y la estructura de un XML', 'Cascading Style Sheets - CSS', 'Standard Generalized Markup Language - SGML', 'Document Type Definition - DTD', 'Extensible Markup Language Definition - XMLD', 'c', 1, 0, 0, 0),
(539, 'SOA', 'Indica cu?l de los siguientes principios no pertenece a los principios REST', 'Acceso a recursos', 'Uso de hipermedia para conectar recursos', 'Operaciones est?ndar de acceso a recursos', 'Comunicaci?n con identificaci?n de estado', 'd', 1, 0, 0, 0),
(540, 'SOA', 'Los mensajes SOAP contienen obligatoriamente los elementos o etiquetas', 'Envelope y Body', 'Fault y Header', 'Envelope, Header y Body', 'Envelope, Header, Body y Fault', 'a', 1, 0, 0, 0),
(541, 'SOA', '?Cu?l es la etiqueta ra?z de un XML de WSDL?', '<header>', '<binding>', '<resources>', '<definitions>', 'd', 1, 0, 0, 0),
(542, 'SOA', 'El protocolo para la transmisi?n de mensajes XMLRPC es', 'FTP', 'SMTP', 'UDP', 'HTTP', 'd', 1, 0, 0, 0),
(543, 'SOA', 'UDDI?', 'Es un directorio que contiene un registro de descripciones de Servicios Web', 'Ofrece los mecanismos de comunicaci?n b?sicos para el env?o de mensajes en formato XML, permitiendo la invocaci?n remota de servicios', 'Es un formato ligero para el intercambio de datos', 'Es un servicio Web para la interconexi?n de terminales', 'a', 1, 0, 0, 0),
(544, 'SOA', 'Un servicio?', 'Es totalmente dependiente de la plataforma que lo ejecuta', 'Unifica la interfaz y la implementaci?n', 'No facilita la comunicaci?n entre aplicaciones', 'Est? basado conceptualmente en la separaci?n de interfaz e implementaci?n', 'd', 1, 0, 0, 0),
(545, 'SOA', 'Un servicio y un objeto?', 'Ambos deben ser mantenidos a lo largo de su ciclo de vida, desde su dise?o hasta su despliegue', 'Ninguno debe ser mantenido a lo largo de su ciclo de vida, desde su dise?o hasta su despliegue', 'El servicio no ha de ser expl?citamente mantenido a lo largo de su ciclo de vida, y el objeto s?', 'El servicio tiene que ser expl?citamente mantenido a lo largo de su ciclo de vida', 'd', 1, 0, 0, 0),
(546, 'SOA', '?Cu?l de las siguientes operaciones NO son operaciones definidas por REST?', 'POST', 'INSERT', 'PUT', 'GET', 'b', 1, 0, 0, 0),
(547, 'SOA', '?Cu?l de las siguientes NO es una caracter?stica de un servicio?', 'Reutilizaci?n', 'Descripci?n', 'Dependencia', 'Modularidad', 'd', 1, 0, 0, 0),
(548, 'SOA', '?En qu? lenguaje est? basado WSDL?', 'HTML', 'REST', 'JSON', 'XML', 'd', 1, 0, 0, 0),
(549, 'SOA', 'En JSON los objetos van entre', 'Par?ntesis', 'Llaves', 'Corchetes', 'Ninguna de las anteriores es correcta', 'b', 1, 0, 0, 0),
(550, 'SOA', '?Cu?l de los siguientes no es un principio de REST?', 'Acceso a recursos', 'Comunicaci?n sin estado', 'Uso de objetos JavaScript para la comunicaci?n con servidores', 'Uso de hipermedia para conectar recursos', 'b', 1, 0, 0, 0),
(551, 'SOA', '?C?mo env?a SOAP mensajes?', 'Utilizando JSON', 'Utilizando XML', 'No env?a mensajes, env?a objetos', 'Mediante peticiones GET y POST', 'b', 1, 0, 0, 0),
(552, 'SOA', '?Cu?l no es un patr?n de operaci?n en WSDL?', 'nmtoken', 'one-way', 'solict-response', 'request response', 'a', 1, 0, 0, 0),
(553, 'SOA', 'XML es un?', 'Lenguaje de programaci?n', 'Lenguaje de marcado', 'Modelo de lenguaje ensamblador', 'Lenguaje ic?nico', 'b', 1, 0, 0, 0),
(554, 'SOA', '?Cu?l de estas afirmaciones acerca de XML-RPC es falsa? ', 'XML-RPC permite usar estructuras y arrays como par?metros y respuestas', 'XML-RPC permite hacer llamadas a funciones a trav?s de la red', 'XML-RPC usa PHP para enviar la informaci?n entre el cliente y el servidor', 'XML-RPC usa XML para codificar tanto los mensajes como las respuestas', 'c', 1, 0, 0, 0),
(555, 'SOA', 'En JSON', 'Existen funciones para codificar', 'Existen funciones para descodificar', 'Ambas son correctas', 'Ninguna de las anteriores es correcta', 'c', 1, 0, 0, 0),
(556, 'SOA', 'En Rest', 'El cliente accede a recursos ofrecidos por un servidor', 'El cliente accede a operaciones', 'Ambas son correctas', 'Ninguna es correcta', 'a', 1, 0, 0, 0),
(557, 'SOA', 'En SOAP', 'El header es obligatorio', 'El header es opcional', 'Solo puede haber un header', 'El header no puede contener atributos', 'd', 1, 0, 0, 0),
(558, 'SOA', 'WSDL', 'Depende del lenguaje usado', 'Depende del Sistema operativo', 'Depende de los dos', 'No depende de ninguno', 'd', 1, 0, 0, 0),
(559, 'SOA', 'En XML', 'Sirve para describir datos', 'Es independiente del software y del hardware', 'Ambas son correctas', 'Ninguna es correcta', 'c', 1, 0, 0, 0),
(560, 'SOA', 'En XML-RPC', 'Utiliza HTTP para enviar la informaci?n entre el cliente y el servidor', 'Utiliza POP para enviar la informaci?n entre el cliente y el servidor', 'Utiliza TELNET para enviar la informaci?n entre el cliente y el servidor', 'Utiliza FTP para enviar la informaci?n entre el cliente y el servidor', 'a', 1, 0, 0, 0),
(561, 'SOA', 'Los procesos de Negocio y Servicios est?n plasmados en', 'La Arquitectura de Referencia SOA', 'Los servicios de SOA', 'Los pasos de implementaci?n de SOA', 'La seguridad de SOA', 'a', 1, 0, 0, 0),
(562, 'SOA', 'En la Arquitectura de Referencia', 'La empresa no puede complementarla con sus componentes espec?ficos', 'Cada proveedor de soluciones no puede incorporar sus propias herramientas espec?ficas', 'Cada proveedor de soluciones puede incorporar sus propias herramientas espec?ficas', 'No se soporta la arquitectura empresarial', 'c', 1, 0, 0, 0),
(563, 'SOA', '?Cu?l de estos NO es un componente m?nimo de la Arquitectura de Referencia?', 'Usuarios de Negocio', 'Servicios de Presentaci?n (Portlets)', 'Procesos de Negocio', 'Aplicaciones software', 'd', 2, 0, 0, 0),
(564, 'SOA', 'Una de las ventajas de las aplicaciones SOA es', 'Una aplicaci?n desarrollada para un dispositivo se puede ajustar a otro con muy poco esfuerzo', 'Tienen un lenguaje com?n', 'Tienen una metodolog?a basada en componentes', 'No necesitan grandes recursos', 'a', 2, 0, 0, 0),
(565, 'SOA', 'Cu?l de las siguientes es INCORRECTA. Una arquitectura SOA tiene que', 'Proveer un lenguaje com?n entre servicios', 'Proveer una implementaci?n consistente de la finalidad del negocio y una sem?ntica com?n entre servicios', 'Marcar las pautas de mantenimiento de la arquitectura', 'Soportar un gobierno de control', 'c', 2, 0, 0, 0),
(566, 'SOA', 'Los Portles son', 'Servicios de Presentaci?n', 'Procesos de Negocio', 'Servicios de Negocio', 'Servicios de Informaci?n', 'a', 2, 0, 0, 0),
(567, 'SOA', 'Respecto al est?ndar JSON', 'La extensi?n de los ficheros es ?.json?', 'No puede contener arrays', 'Existen funciones para codificar y decodificar objetos en JSON en un ?nico mensaje', 'El tipo MIME para JSON es ?app/json?', 'a', 2, 0, 0, 0),
(568, 'SOA', 'SOAP', 'Utiliza JavaScript para enviar mensajes', 'En SOAP el header es obligatorio', 'El body es obligatorio', 'Si existe el header, el body va delante', 'b', 2, 0, 0, 0),
(569, 'SOA', 'El XML', 'Tiene varias etiquetas ra?z', 'No puede contener atributos', 'Cuando el documento XML no respeta las reglas est? entonces ?bien formado?', 'Se abre con <etiqueta> y se cierra con </etiqueta>', 'd', 2, 0, 0, 0),
(570, 'SOA', 'Sobre el WSDL', 'La subetiqueta <portType> tiene 4 patrones de operaci?n: two-way, request-response, solicit-response y notification', 'La subetiqueta <portType> tiene 4 patrones de operaci?n: one-way, request-response, solicit-response y notification', 'Con el patr?n de operaci?n request-response el cliente env?a un mensaje y no recibe contestaci?n del servidor. S?lo existe input', 'Con el patr?n de operaci?n notification el servidor requiere respuesta del cliente. Existe s?lo input', 'b', 2, 0, 0, 0),
(571, 'SOA', 'Elige la opci?n verdadera', 'XML-RPC usa HTTP para codificar tanto los mensajes como las respuestas', 'XML-RPC usa XML para enviar la informaci?n entre el cliente y el servidor', 'XML-RPC no permite usar estructuras como par?metros y respuestas', 'XML-RPC usa HTTP para enviar la informaci?n entre el cliente y el servidor', 'd', 2, 0, 0, 0),
(572, 'SOA', 'REST', 'El cliente accede a los recursos ofrecidos por un servidor', 'El cliente accede a las operaciones ofrecidas por un servidor', 'Un recurso es cualquier cosa sin inter?s para la aplicaci?n', 'Una misma aplicaci?n puede exponer multitud de recursos, pero con una ?nica URIs', 'a', 2, 0, 0, 0),
(573, 'SOA', '?C?mo es organizada la informaci?n en un JSON?', 'Pone los valores sin espacios y de manera aleatoria', 'La informaci?n se organiza en pares nombre/valor', 'Solo es posible guardar variables enteras ', 'Los JSON no organiza la informaci?n', 'b', 2, 0, 0, 0),
(574, 'SOA', '?Cu?les son los m?todos est?ndar de HTTP?', 'GET, SQL, JSON, JAVA', 'GET, POST, PUT, DELETE', 'C, C#, SQL, POST', 'POST, PUT, C, JAVA', 'b', 2, 0, 0, 0),
(575, 'SOA', '?Cu?nto es el valor de un ?integer? escalar?', 'Double de 64 bits', 'Entero de 32 bits', 'Float de 128 bits', 'Una cadena de caracteres', 'b', 2, 0, 0, 0),
(576, 'SOA', '?Cu?les son los tipos de operaci?n de WSDL?', 'No tiene tipos de operaciones', 'One-way, requiest-response, solicit-response,notification', 'Types, message, Portype, service', 'Portype, XML', 'b', 2, 0, 0, 0),
(577, 'SOA', '?Qui?n fue el precursor de XML?', 'Dennis Ritchie', 'Gabe Newell', 'James Gosling', 'Ninguna es correcta', 'd', 2, 0, 0, 0),
(578, 'SOA', '?De qu? es independiente XML?', 'De un servidor', 'Del software y hardware', 'Del open code', 'De ataques inform?ticos', 'b', 2, 0, 0, 0),
(579, 'SOA', 'NO es una caracter?stica del ESB', 'Gesti?n', 'Integraci?n', 'Comunicaciones', 'Resoluci?n de errores', 'd', 2, 0, 0, 0),
(580, 'SOA', '?Qu? tipo de servicios proporciona un ESB?', 'De enrutamiento', 'De innovaci?n', 'De mediaci?n', 'Todos los anteriores', 'd', 2, 0, 0, 0),
(581, 'SOA', 'Un ESB', 'Es un patr?n de dise?o que lo aplican las grandes compa??as', 'Es un producto que evoluciona desde una arquitectura', 'Supone un coste muy elevado en empresas peque?as', 'No tiene uso como aplicaciones ensamblables', 'b', 2, 0, 0, 0),
(582, 'SOA', 'El ESB es una alternativa al', 'BPM', 'EAI', 'Las dos anteriores', 'Ninguna es correcta', 'b', 2, 0, 0, 0),
(583, 'SOA', '?Sobre qu? tipo de arquitectura se basa un ESB?', 'Escalable', 'Distribuida', 'No est? basado en ninguna arquitectura', 'Orientada a objetos', 'b', 2, 0, 0, 0),
(584, 'SOA', '?Qu? necesitan los ESB para soportar la interacci?n entre sus distintos servicios?', 'Middleware orientado a mensajer?a', 'Sistemas legados', 'Capa de comunicaciones', 'Sockets Web', 'c', 2, 0, 0, 0),
(585, 'SOA', 'La integraci?n se puede realizar mediante protocolos', 'ssh y http', 'jdbc y ftp', 'tcp y udp', 'ip y icmp', 'b', 2, 0, 0, 0),
(586, 'SOA', 'Los ESB', 'Deben tener capacidades de administraci?n', 'No deben tener capacidades de administraci?n', 'No deber?an ser capaces de integrarse en sistemas de gesti?n del software', 'No pueden monitorizar los servicios a los que dan soporte', 'a', 2, 0, 0, 0),
(587, 'SOA', 'Una empresa podr?a implementar un ESB obedeciendo a los siguientes escenarios b?sicos', 'Integraci?n de aplicaciones corporativas', 'Infraestructura medular para la arquitectura orientada a servicios', 'Las dos anteriores son correctas', 'Ninguna es correcta', 'c', 2, 0, 0, 0),
(588, 'SOA', 'Como aplicaci?n de infraestructura se podr?a decir que un ESB es', 'Una arquitectura', 'Un producto', 'Las dos anteriores son correctas', 'Ninguna es correcta', 'c', 3, 0, 0, 0),
(589, 'SOA', 'El ESB da soluci?n a los siguientes patrones de arquitectura', 'Desarrollo de aplicaci?n por composici?n', 'Event / driven', 'Process / driven', 'Todas son correctas', 'd', 3, 0, 0, 0),
(590, 'SOA', '?Cu?l es la principal diferencia entre los patrones event/driven y process/driven?', 'Event/driven est? orientado a gestionar situaciones as?ncronas de ejecuci?n', 'Process / driven est? orientado a gestionar situaciones as?ncronas de ejecuci?n', 'Event / driven est? orientado a gestionar situaciones s?ncronas de ejecuci?n', 'Ninguna es correcta', 'a', 3, 0, 0, 0),
(591, 'SOA', '?Cu?l es el protocolo est?ndar, gen?rico y sin est?ndar que utilizan los servicios web como mecanismo de comunicaci?n?', 'XML', 'WSDL', 'HTTP/HTTPS', 'SOAP', 'c', 3, 0, 0, 0),
(592, 'SOA', 'Es un formato ligero para el intercambio de datos', 'QoS', 'BPEL', 'UDDI', 'JSON', 'd', 3, 0, 0, 0),
(593, 'SOA', 'Rest se basa en?', 'Un protocolo cliente/servidor sin estado, un conjunto de operaciones bien definidas que se aplican a todos los recursos de informaci?n, una sintaxis universal para identificar los recursos y el uso de la web', 'Soporte a la definici?n, ejecuci?n, gesti?n y an?lisis de procesos de negocio', 'La separaci?n de interfaz e implementaci?n, es independiente de la plataforma y est? orientado a comunicaci?n entre aplicaciones', 'El an?lisis, modelizaci?n, ejecuci?n, monitorizaci?n y administraci?n de procesos', 'a', 3, 0, 0, 0),
(594, 'SOA', '___________ es una aplicaci?n que puede ser descrita, publicada, localizada, e invocada a trav?s de una red interna o externa, generalmente Internet', 'La interfaz del servicio', 'Quality of Service (QoS)', 'WSDL', 'Un Servicio Web (WS)', 'd', 3, 0, 0, 0),
(595, 'SOA', '______ es un lenguaje de orquestaci?n, en XML, para describir el comportamiento de un proceso de negocio basado en WS', 'BPM', 'BPEL', 'BPMS', 'REST', 'b', 3, 0, 0, 0),
(596, 'SOA', 'Selecciona la respuesta correcta', 'Un mensaje SOAP no permite intercambiar documentos e invocar servicios remotos', 'Un mensaje SOAP depende del lenguaje y del Sistema Operativo', 'En el JSON la informaci?n se organiza en arrays asociativos', 'El JSON es un formato de texto m?s sencillo de usar que el XML, pero con el defecto de que sus mensajes ocupan m?s', 'c', 3, 0, 0, 0),
(597, 'SOA', 'Selecciona la respuesta correcta', 'Un mensaje SOAP debe tener obligatoriamente un Header y un Body', 'Un mensaje SOAP contiene informaci?n de los errores ocurridos al procesar el mensaje', 'En un mensaje SOAP puede haber varias etiquetas Fault', 'A y B son correctas', 'c', 3, 0, 0, 0),
(598, 'SOA', 'El XML-RPC', 'Permite hacer llamadas a funciones a trav?s de la red', 'Usa HTTP para enviar la informaci?n entre el cliente y el servidor', 'La respuesta que genera debe ser un ?nico dato', 'Todas las respuestas anteriores son correctas', 'd', 3, 0, 0, 0),
(599, 'SOA', 'Selecciona la respuesta incorrecta', 'XML-RPC permite usar varios par?metros de diversos tipos en una llamada', 'WDSL tiene 4 subetiquetas: <one-way>, <request-response>, <solicit-response> y <notificacion>', 'El body de un mensaje SOAP contiene los datos enviados en el mensaje', 'Dentro de WDSL, <portype> indica que mensaje son de entrada (inputs) y que mensajes son de salida (outputs)', 'b', 3, 0, 0, 0),
(600, 'SOA', 'Selecciona la respuesta correcta', 'XML es independiente del software y del hardware', 'XML sirve para describir datos', 'Solo se pueden codificar y decodificar objetos en JSON con JavaScript', 'Las etiquetas XML no pueden empezar por XML y se separan por espacios', 'd', 3, 0, 0, 0),
(601, 'SOA', 'Selecciona la respuesta correcta', 'La etiqueta <binding> del WDSL nos indica los puertos que son soportados por cada servicio', 'El tipo MIME para JSON es ?application/java?', 'En el REST, el cliente accede a recursos ofrecidos por un servidor, no a operaciones', 'Si el del faultcode del SOAP nos indica la expresi?n ?SOAP-ENV:Client? quiere decir que el servidor no ha podido procesar correctamente el mensaje', 'c', 3, 0, 0, 0),
(602, 'SOA', 'Si codificamos el un objeto mediante JSON la cadena obtenida ser?a', '{?atributo1?:valor1, ?atributo2?:valor2,?}', '[?atributo1?:valor1, ?atributo2?:valor2,?]', '[{?atributo1?:valor1}, {?atributo2:valor2},?]', '[[?atributo1?]=>valor1,[?atributo2?]=>valor2,?]', 'a', 3, 0, 0, 0),
(603, 'SOA', 'Los m?todos de HTTP que se utilizan sobre los recursos en REST son', 'Get y Post', 'Put', 'Delete', 'Todas las opciones son correctas', 'd', 3, 0, 0, 0),
(604, 'SOA', 'En el intercambio de mensajes en SOAP', 'El body va siempre despu?s del header', 'El body solo va desp?es del header si existe un header', 'El body va siempre antes del header', 'No hay body', 'b', 3, 0, 0, 0),
(605, 'SOA', 'En el WSDL (Web Service Description Language) cuando el cliente env?a un mensaje y no espera respuesta es una operaci?n de tipo', 'One-Way', 'Request-Response', 'Solicit-Response', 'Notification', 'a', 3, 0, 0, 0),
(606, 'SOA', 'En XML', 'No existen los comentarios', 'Solo se puede validar por medio de un DTD', 'Solo puede existir una etiqueta ra?z', 'Todas las opciones son correctas', 'c', 3, 0, 0, 0),
(607, 'SOA', 'Al usar XML-RPC', 'Se realiza el intercambio de informaci?n entre el cliente y el servidor mediante HTTP', 'Puede haber m?ltiples respuestas por parte del servidor', 'Se codifica la informaci?n mediante JSON', 'Todas las respuestas son booleanas', 'a', 3, 0, 0, 0),
(608, 'SOA', '?Qu? es un portlet?', 'Son los componentes reutilizables de las p?ginas web', 'Son errores de programaci?n que generan problemas en las operaciones', 'Son programas que manejan los perif?ricos del ordenador', 'Ninguna de las anteriores es correcta', 'a', 3, 0, 0, 0),
(609, 'SOA', 'Un ejemplo de portlet', 'Proveer?a un lenguaje com?n entre servicios', 'Mostrar?a las publicaciones recientes de un blog', 'Tiene siempre varias etiquetas header', 'Est? siempre codificado', 'b', 3, 0, 0, 0),
(610, 'SOA', 'Los procesos de negocio', 'Son softwares de distribuci?n libre', 'Alojan informaci?n accesible v?a web', 'Incorporan tareas interactivas con actividades automatizadas', 'Son procesos tipo Hardware', 'c', 3, 0, 0, 0),
(611, 'SOA', 'Los servicios de negocio', 'Dennis Ritchie', 'Gabe Newell', 'James Gosling', 'Ninguna es correcta', 'd', 3, 0, 0, 0),
(612, 'SOA', '?Qui?n fue el precursor de XML?', 'Son el resultado de transformas las materias primas en productos acabados', 'Generalmente son servicios compuestos por otros servicios', 'Proporcionan informaci?n intercambiable entre varias oficinas', 'Proporcionan conexiones a empresas y/o operadores de larga distancia', 'b', 3, 0, 0, 0),
(613, 'SOA', 'Los servicios de informaci?n', 'Pueden ser parte de servicios de m?s alto nivel', 'Acceden directamente a los recursos', 'Poseen una interfaz que permite integrarlos al est?ndar SOA', 'Todas las respuestas anteriores son correctas', 'd', 4, 0, 0, 0),
(614, 'SOA', 'Los sistemas legados', 'Son sistemas integrados exclusivamente', 'Pueden ser integrados o no integrados', 'Son tambi?n conocidos como silo o isla', 'Ninguna de las anteriores es correcta', 'c', 4, 0, 0, 0),
(615, 'SOA', '?Cual es uno de los principios fundamentales de un sistema soa?', 'Establecimiento de una base com?n de servicios que favorezca reducciones de coste basado en una reutilizaci?n real y efectiva de componentes', 'La duplicaci?n de procesos', 'Simplificaci?n de la integraci?n entre las distintas fuentes de informaci?n, cada vez m?s numerosas y heterog?nea', 'A y C son correctas', 'd', 4, 0, 0, 0),
(616, 'SOA', 'Una de las principales caracter?sticas de soa es', 'Flexibilidad', 'Escalabilidad', 'Interoperabilidad', 'Todas las anteriores', 'd', 4, 0, 0, 0),
(617, 'SOA', 'Elige la correcta', 'La sem?ntica de un  servicio  debe  documentarse,  directa  o  indirectamente, por su descripci?n', 'Cualquier cambio en la implementaci?n de un servicio no afectar?a al resto siempre y cuando se mantuviese la interfaz', 'Ninguna de las anteriores', 'A y B', 'd', 4, 0, 0, 0),
(618, 'SOA', 'Que es un soa', 'Un servicio web', 'Un algoritmo orientado a servicios', 'A y B', 'Ninguna de las anteriores', 'a', 4, 0, 0, 0),
(619, 'SOA', 'Segun lo aprendido en esta asignatura ?D?nde implementar?as un soa?', 'Un ordenador sin conexi?n de ning?n tipo', 'Un servidor conectado a la red', 'Ninguna de las anteriores', 'A y C', 'b', 4, 0, 0, 0),
(620, 'SOA', '?En que paso se conoce el inventario de servicios inicial?', 'Dise?o e implantaci?n del ESB', 'An?lisis orientado a servicios', 'Despliegue y descubrimiento', 'Conocimiento de la organizaci?n', 'd', 4, 0, 0, 0),
(621, 'SOA', 'Fase en la que se acuerda el SLA', 'Conocimiento de la organizaci?n', 'Dise?o orientado a servicios', 'Dise?o e implementaci?n del ESB', 'An?lisis orientado a servicios', 'b', 4, 0, 0, 0),
(622, 'SOA', '?Cu?l es la fase en la que se identifican los servicios requeridos para la implementaci?n de la arquitectura?', 'Dise?o orientado a servicios', 'Pruebas', 'An?lisis orientado a servicios', 'Conocimiento de la organizaci?n', 'c', 4, 0, 0, 0),
(623, 'SOA', '?En qu? fase se realiza la codificaci?n de los servicios?', 'Despliegue y descubrimiento', 'Implementaci?n de servicios', 'Pruebas', 'Mantenimiento y monitorizaci?n', 'b', 4, 0, 0, 0),
(624, 'SOA', '?Cu?l es la fase en la que se comprueba el funcionamiento del ESB?', 'Pruebas', 'Despliegue y descubrimiento', 'Conocimiento de la organizaci?n', 'Mantenimiento y monitorizaci?n', 'a', 4, 0, 0, 0),
(625, 'SOA', 'El desarrollo de servicios es incremental, ?a partir de que fase se tiene que repetir el proceso en una nueva iteraci?n?', 'An?lisis orientado a servicios', 'Pruebas', 'Mantenimiento y monitorizaci?n', 'Conocimiento de la organizaci?n', 'a', 4, 0, 0, 0),
(626, 'SOA', '?Qu? elementos pueden pertenecer a una estructura m?nima de SOA?', 'Usuarios, procesos y servicios de negocio', 'Sistemas alargados', 'Servicios de Portales', 'Informaci?n de los usuarios y clientes', 'a', 4, 0, 0, 0),
(627, 'SOA', 'En la fase de dise?o e implementaci?n del ESB', 'Se define El Sistema de Balance', 'Se realiza la definici?n del Enterprise Service Bus', 'Se dise?an los procesos de identificaci?n de SOA', 'Se define el contrato o interfaz del servicio', 'b', 4, 0, 0, 0),
(628, 'SOA', 'Se identifican los servicios requeridos para la implantaci?n de la arquitectura en', 'Dise?o e Implementaci?n del ESB', 'Dise?o Orientado a Servicios', 'Despliegue y descubrimiento', 'An?lisis Orientado a Servicios', 'd', 4, 0, 0, 0),
(629, 'SOA', '?Qu? se define en el Dise?o Orientado a Servicios?', 'Se define el contrato o interfaz de servicio', 'Los par?metros de entrada, los que devuelve, qu? es lo que hace?', 'Las dos anteriores son correctas', 'Ninguna es correcta', 'c', 4, 0, 0, 0),
(630, 'SOA', 'En la Implementaci?n de Servicios', 'Se realizan pruebas de integraci?n de los servicios', 'Se realiza el despliegue del servicio en la arquitectura SOA', 'Se realiza la elecci?n de la tecnolog?a a utilizar de forma justificada', 'Se llevan a cabo las labores de mantenimiento del servicio', 'c', 4, 0, 0, 0),
(631, 'SOA', 'El proceso de desarrollo de servicios es', 'Global y orientado', 'Iterativo e incremental', 'R?pido y con decrementos autom?ticos', 'Lento y global', 'b', 4, 0, 0, 0),
(632, 'SOA', 'Un servicio es la implementaci?n de una funcionalidad de negocio que', 'Puede ser utilizada por otras aplicaciones o servicios de negocio', 'No ha de ser mantenido a lo largo de su ciclo de vida', 'No ha de ser mantenido hasta su despliegue', 'Depende de la plataforma y est? orientado a comunicaci?n entre procesos', 'a', 4, 0, 0, 0),
(633, 'SOA', 'Un Servicio Web', 'Es una aplicaci?n que no puede ser invocada a trav?s de una red interna o externa', 'Es una aplicaci?n que no puede ser descrita, publicada o localizada', 'Es una aplicaci?n que puede ser invocada a trav?s de una red interna o externa', 'No proporciona la plataforma para la integraci?n de los procesos de negocio', 'c', 4, 0, 0, 0),
(634, 'SOA', 'Son requerimientos a la hora de desarrollar o consumir un Servicio Web', 'Representa los datos en formato est?ndar como XML', 'Utiliza un formato com?n y extensible de mensaje como SOAP', 'a y b son correctas', 'Ninguna es correcta', 'c', 4, 0, 0, 0),
(635, 'SOA', 'Usando el protocolo cliente/servidor sin estado del REST cada mensaje HTTP', 'Necesita informaci?n adicional para comprender la petici?n', 'Almacena los valores de las comunicaciones entre mensajes en el cliente y el servidor', 'Necesita utilizar cookies y otros mecanismos para no almacenar el estado de la sesi?n', 'Contiene toda la informaci?n necesaria para comprender la petici?n', 'd', 4, 0, 0, 0),
(636, 'SOA', 'La Gesti?n de Proceso de Negocio (BMP)', 'Consiste en un conjunto de m?todos, t?cnicas y herramientas que dan soporte a los procesos de negocio', 'Es un formato de intercambio de datos entre procesos', 'Es un protocolo est?ndar y gen?rico utilizado como mecanismo de comunicaci?n', 'Ofrece un formato de datos que permite adaptar o transformar la informaci?n', 'a', 4, 0, 0, 0),
(637, 'SOA', 'Un servicio', 'Est? basado conceptualmente en la separaci?n de interfaz e implementaci?n', 'Es totalmente dependiente de la plataforma que lo ejecute', 'Es una herramienta para el aislamiento de aplicaciones', 'A?na la interfaz y la implementaci?n', 'a', 4, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testalumno`
--

CREATE TABLE `testalumno` (
  `id` int(11) NOT NULL,
  `idalumno` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(1) NOT NULL,
  `puntos` int(10) NOT NULL,
  `correctas` int(11) NOT NULL,
  `incorrectas` int(11) NOT NULL,
  `ntests` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `testalumno`
--

INSERT INTO `testalumno` (`id`, `idalumno`, `nivel`, `puntos`, `correctas`, `incorrectas`, `ntests`) VALUES
(96, 'ID00000', 1, 0, 0, 0, 0),
(100, 'ID00001', 1, 0, 0, 0, 0),
(101, 'ID00002', 1, 0, 0, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=638;
--
-- AUTO_INCREMENT de la tabla `testalumno`
--
ALTER TABLE `testalumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
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
