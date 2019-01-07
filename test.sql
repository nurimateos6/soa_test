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
(538, 'SOA', 'Indica cuál de estos tipos de documento define las reglas sintácticas y la estructura de un XML', 'Cascading Style Sheets - CSS', 'Standard Generalized Markup Language - SGML', 'Document Type Definition - DTD', 'Extensible Markup Language Definition - XMLD', 'c', 1, 0, 0, 0),
(539, 'SOA', 'Indica cuál de los siguientes principios no pertenece a los principios REST', 'Acceso a recursos', 'Uso de hipermedia para conectar recursos', 'Operaciones estándar de acceso a recursos', 'Comunicación con identificación de estado', 'd', 1, 0, 0, 0),
(540, 'SOA', 'Los mensajes SOAP contienen obligatoriamente los elementos o etiquetas', 'Envelope y Body', 'Fault y Header', 'Envelope, Header y Body', 'Envelope, Header, Body y Fault', 'a', 1, 0, 0, 0),
(541, 'SOA', '¿Cuál es la etiqueta raíz de un XML de WSDL?', '<header>', '<binding>', '<resources>', '<definitions>', 'd', 1, 0, 0, 0),
(542, 'SOA', 'El protocolo para la transmisión de mensajes XMLRPC es', 'FTP', 'SMTP', 'UDP', 'HTTP', 'd', 1, 0, 0, 0),
(543, 'SOA', 'UDDI…', 'Es un directorio que contiene un registro de descripciones de Servicios Web', 'Ofrece los mecanismos de comunicación básicos para el envío de mensajes en formato XML, permitiendo la invocación remota de servicios', 'Es un formato ligero para el intercambio de datos', 'Es un servicio Web para la interconexión de terminales', 'a', 1, 0, 0, 0),
(544, 'SOA', 'Un servicio…', 'Es totalmente dependiente de la plataforma que lo ejecuta', 'Unifica la interfaz y la implementación', 'No facilita la comunicación entre aplicaciones', 'Está basado conceptualmente en la separación de interfaz e implementación', 'd', 1, 0, 0, 0),
(545, 'SOA', 'Un servicio y un objeto…', 'Ambos deben ser mantenidos a lo largo de su ciclo de vida, desde su diseño hasta su despliegue', 'Ninguno debe ser mantenido a lo largo de su ciclo de vida, desde su diseño hasta su despliegue', 'El servicio no ha de ser explícitamente mantenido a lo largo de su ciclo de vida, y el objeto sí', 'El servicio tiene que ser explícitamente mantenido a lo largo de su ciclo de vida', 'd', 1, 0, 0, 0),
(546, 'SOA', '¿Cuál de las siguientes operaciones NO son operaciones definidas por REST?', 'POST', 'INSERT', 'PUT', 'GET', 'b', 1, 0, 0, 0),
(547, 'SOA', '¿Cuál de las siguientes NO es una característica de un servicio?', 'Reutilización', 'Descripción', 'Dependencia', 'Modularidad', 'd', 1, 0, 0, 0),
(548, 'SOA', '¿En qué lenguaje está basado WSDL?', 'HTML', 'REST', 'JSON', 'XML', 'd', 1, 0, 0, 0),
(549, 'SOA', 'En JSON los objetos van entre', 'Paréntesis', 'Llaves', 'Corchetes', 'Ninguna de las anteriores es correcta', 'b', 1, 0, 0, 0),
(550, 'SOA', '¿Cuál de los siguientes no es un principio de REST?', 'Acceso a recursos', 'Comunicación sin estado', 'Uso de objetos JavaScript para la comunicación con servidores', 'Uso de hipermedia para conectar recursos', 'b', 1, 0, 0, 0),
(551, 'SOA', '¿Cómo envía SOAP mensajes?', 'Utilizando JSON', 'Utilizando XML', 'No envía mensajes, envía objetos', 'Mediante peticiones GET y POST', 'b', 1, 0, 0, 0),
(552, 'SOA', '¿Cuál no es un patrón de operación en WSDL?', 'nmtoken', 'one-way', 'solict-response', 'request response', 'a', 1, 0, 0, 0),
(553, 'SOA', 'XML es un…', 'Lenguaje de programación', 'Lenguaje de marcado', 'Modelo de lenguaje ensamblador', 'Lenguaje icónico', 'b', 1, 0, 0, 0),
(554, 'SOA', '¿Cuál de estas afirmaciones acerca de XML-RPC es falsa? ', 'XML-RPC permite usar estructuras y arrays como parámetros y respuestas', 'XML-RPC permite hacer llamadas a funciones a través de la red', 'XML-RPC usa PHP para enviar la información entre el cliente y el servidor', 'XML-RPC usa XML para codificar tanto los mensajes como las respuestas', 'c', 1, 0, 0, 0),
(555, 'SOA', 'En JSON', 'Existen funciones para codificar', 'Existen funciones para descodificar', 'Ambas son correctas', 'Ninguna de las anteriores es correcta', 'c', 1, 0, 0, 0),
(556, 'SOA', 'En Rest', 'El cliente accede a recursos ofrecidos por un servidor', 'El cliente accede a operaciones', 'Ambas son correctas', 'Ninguna es correcta', 'a', 1, 0, 0, 0),
(557, 'SOA', 'En SOAP', 'El header es obligatorio', 'El header es opcional', 'Solo puede haber un header', 'El header no puede contener atributos', 'd', 1, 0, 0, 0),
(558, 'SOA', 'WSDL', 'Depende del lenguaje usado', 'Depende del Sistema operativo', 'Depende de los dos', 'No depende de ninguno', 'd', 1, 0, 0, 0),
(559, 'SOA', 'En XML', 'Sirve para describir datos', 'Es independiente del software y del hardware', 'Ambas son correctas', 'Ninguna es correcta', 'c', 1, 0, 0, 0),
(560, 'SOA', 'En XML-RPC', 'Utiliza HTTP para enviar la información entre el cliente y el servidor', 'Utiliza POP para enviar la información entre el cliente y el servidor', 'Utiliza TELNET para enviar la información entre el cliente y el servidor', 'Utiliza FTP para enviar la información entre el cliente y el servidor', 'a', 1, 0, 0, 0),
(561, 'SOA', 'Los procesos de Negocio y Servicios están plasmados en', 'La Arquitectura de Referencia SOA', 'Los servicios de SOA', 'Los pasos de implementación de SOA', 'La seguridad de SOA', 'a', 1, 0, 0, 0),
(562, 'SOA', 'En la Arquitectura de Referencia', 'La empresa no puede complementarla con sus componentes específicos', 'Cada proveedor de soluciones no puede incorporar sus propias herramientas específicas', 'Cada proveedor de soluciones puede incorporar sus propias herramientas específicas', 'No se soporta la arquitectura empresarial', 'c', 1, 0, 0, 0),
(563, 'SOA', '¿Cuál de estos NO es un componente mínimo de la Arquitectura de Referencia?', 'Usuarios de Negocio', 'Servicios de Presentación (Portlets)', 'Procesos de Negocio', 'Aplicaciones software', 'd', 2, 1, 0, 1),
(564, 'SOA', 'Una de las ventajas de las aplicaciones SOA es', 'Una aplicación desarrollada para un dispositivo se puede ajustar a otro con muy poco esfuerzo', 'Tienen un lenguaje común', 'Tienen una metodología basada en componentes', 'No necesitan grandes recursos', 'a', 2, 0, 1, 1),
(565, 'SOA', 'Cuál de las siguientes es INCORRECTA. Una arquitectura SOA tiene que', 'Proveer un lenguaje común entre servicios', 'Proveer una implementación consistente de la finalidad del negocio y una semántica común entre servicios', 'Marcar las pautas de mantenimiento de la arquitectura', 'Soportar un gobierno de control', 'c', 2, 0, 1, 1),
(566, 'SOA', 'Los Portles son', 'Servicios de Presentación', 'Procesos de Negocio', 'Servicios de Negocio', 'Servicios de Información', 'a', 2, 0, 0, 1),
(567, 'SOA', 'Respecto al estándar JSON', 'La extensión de los ficheros es “.json”', 'No puede contener arrays', 'Existen funciones para codificar y decodificar objetos en JSON en un único mensaje', 'El tipo MIME para JSON es “app/json”', 'a', 2, 0, 0, 1),
(568, 'SOA', 'SOAP', 'Utiliza JavaScript para enviar mensajes', 'En SOAP el header es obligatorio', 'El body es obligatorio', 'Si existe el header, el body va delante', 'b', 2, 0, 0, 1),
(569, 'SOA', 'El XML', 'Tiene varias etiquetas raíz', 'No puede contener atributos', 'Cuando el documento XML no respeta las reglas está entonces “bien formado”', 'Se abre con <etiqueta> y se cierra con </etiqueta>', 'd', 2, 0, 0, 1),
(570, 'SOA', 'Sobre el WSDL', 'La subetiqueta <portType> tiene 4 patrones de operación: two-way, request-response, solicit-response y notification', 'La subetiqueta <portType> tiene 4 patrones de operación: one-way, request-response, solicit-response y notification', 'Con el patrón de operación request-response el cliente envía un mensaje y no recibe contestación del servidor. Sólo existe input', 'Con el patrón de operación notification el servidor requiere respuesta del cliente. Existe sólo input', 'b', 2, 0, 0, 1),
(571, 'SOA', 'Elige la opción verdadera', 'XML-RPC usa HTTP para codificar tanto los mensajes como las respuestas', 'XML-RPC usa XML para enviar la información entre el cliente y el servidor', 'XML-RPC no permite usar estructuras como parámetros y respuestas', 'XML-RPC usa HTTP para enviar la información entre el cliente y el servidor', 'd', 2, 0, 0, 1),
(572, 'SOA', 'REST', 'El cliente accede a los recursos ofrecidos por un servidor', 'El cliente accede a las operaciones ofrecidas por un servidor', 'Un recurso es cualquier cosa sin interés para la aplicación', 'Una misma aplicación puede exponer multitud de recursos, pero con una única URIs', 'a', 2, 0, 0, 1),
(573, 'SOA', '¿Cómo es organizada la información en un JSON?', 'Pone los valores sin espacios y de manera aleatoria', 'La información se organiza en pares nombre/valor', 'Solo es posible guardar variables enteras ', 'Los JSON no organiza la información', 'b', 2, 0, 0, 0),
(574, 'SOA', '¿Cuáles son los métodos estándar de HTTP?', 'GET, SQL, JSON, JAVA', 'GET, POST, PUT, DELETE', 'C, C#, SQL, POST', 'POST, PUT, C, JAVA', 'b', 2, 0, 0, 0),
(575, 'SOA', '¿Cuánto es el valor de un “integer” escalar?', 'Double de 64 bits', 'Entero de 32 bits', 'Float de 128 bits', 'Una cadena de caracteres', 'b', 2, 0, 0, 0),
(576, 'SOA', '¿Cuáles son los tipos de operación de WSDL?', 'No tiene tipos de operaciones', 'One-way, requiest-response, solicit-response,notification', 'Types, message, Portype, service', 'Portype, XML', 'b', 2, 0, 0, 0),
(577, 'SOA', '¿Quién fue el precursor de XML?', 'Dennis Ritchie', 'Gabe Newell', 'James Gosling', 'Ninguna es correcta', 'd', 2, 0, 0, 0),
(578, 'SOA', '¿De qué es independiente XML?', 'De un servidor', 'Del software y hardware', 'Del open code', 'De ataques informáticos', 'b', 2, 0, 0, 0),
(579, 'SOA', 'NO es una característica del ESB', 'Gestión', 'Integración', 'Comunicaciones', 'Resolución de errores', 'd', 2, 0, 0, 0),
(580, 'SOA', '¿Qué tipo de servicios proporciona un ESB?', 'De enrutamiento', 'De innovación', 'De mediación', 'Todos los anteriores', 'd', 2, 0, 0, 0),
(581, 'SOA', 'Un ESB', 'Es un patrón de diseño que lo aplican las grandes compañías', 'Es un producto que evoluciona desde una arquitectura', 'Supone un coste muy elevado en empresas pequeñas', 'No tiene uso como aplicaciones ensamblables', 'b', 2, 0, 0, 0),
(582, 'SOA', 'El ESB es una alternativa al', 'BPM', 'EAI', 'Las dos anteriores', 'Ninguna es correcta', 'b', 2, 0, 0, 0),
(583, 'SOA', '¿Sobre qué tipo de arquitectura se basa un ESB?', 'Escalable', 'Distribuida', 'No está basado en ninguna arquitectura', 'Orientada a objetos', 'b', 2, 0, 0, 0),
(584, 'SOA', '¿Qué necesitan los ESB para soportar la interacción entre sus distintos servicios?', 'Middleware orientado a mensajería', 'Sistemas legados', 'Capa de comunicaciones', 'Sockets Web', 'c', 2, 0, 0, 0),
(585, 'SOA', 'La integración se puede realizar mediante protocolos', 'ssh y http', 'jdbc y ftp', 'tcp y udp', 'ip y icmp', 'b', 2, 0, 0, 0),
(586, 'SOA', 'Los ESB', 'Deben tener capacidades de administración', 'No deben tener capacidades de administración', 'No deberían ser capaces de integrarse en sistemas de gestión del software', 'No pueden monitorizar los servicios a los que dan soporte', 'a', 2, 0, 0, 0),
(587, 'SOA', 'Una empresa podría implementar un ESB obedeciendo a los siguientes escenarios básicos', 'Integración de aplicaciones corporativas', 'Infraestructura medular para la arquitectura orientada a servicios', 'Las dos anteriores son correctas', 'Ninguna es correcta', 'c', 2, 0, 0, 0),
(588, 'SOA', 'Como aplicación de infraestructura se podría decir que un ESB es', 'Una arquitectura', 'Un producto', 'Las dos anteriores son correctas', 'Ninguna es correcta', 'c', 3, 0, 0, 0),
(589, 'SOA', 'El ESB da solución a los siguientes patrones de arquitectura', 'Desarrollo de aplicación por composición', 'Event / driven', 'Process / driven', 'Todas son correctas', 'd', 3, 0, 0, 0),
(590, 'SOA', '¿Cuál es la principal diferencia entre los patrones event/driven y process/driven?', 'Event/driven está orientado a gestionar situaciones asíncronas de ejecución', 'Process / driven está orientado a gestionar situaciones asíncronas de ejecución', 'Event / driven está orientado a gestionar situaciones síncronas de ejecución', 'Ninguna es correcta', 'a', 3, 0, 0, 0),
(591, 'SOA', '¿Cuál es el protocolo estándar, genérico y sin estándar que utilizan los servicios web como mecanismo de comunicación?', 'XML', 'WSDL', 'HTTP/HTTPS', 'SOAP', 'c', 3, 0, 0, 0),
(592, 'SOA', 'Es un formato ligero para el intercambio de datos', 'QoS', 'BPEL', 'UDDI', 'JSON', 'd', 3, 0, 0, 0),
(593, 'SOA', 'Rest se basa en…', 'Un protocolo cliente/servidor sin estado, un conjunto de operaciones bien definidas que se aplican a todos los recursos de información, una sintaxis universal para identificar los recursos y el uso de la web', 'Soporte a la definición, ejecución, gestión y análisis de procesos de negocio', 'La separación de interfaz e implementación, es independiente de la plataforma y está orientado a comunicación entre aplicaciones', 'El análisis, modelización, ejecución, monitorización y administración de procesos', 'a', 3, 0, 0, 0),
(594, 'SOA', '___________ es una aplicación que puede ser descrita, publicada, localizada, e invocada a través de una red interna o externa, generalmente Internet', 'La interfaz del servicio', 'Quality of Service (QoS)', 'WSDL', 'Un Servicio Web (WS)', 'd', 3, 0, 0, 0),
(595, 'SOA', '______ es un lenguaje de orquestación, en XML, para describir el comportamiento de un proceso de negocio basado en WS', 'BPM', 'BPEL', 'BPMS', 'REST', 'b', 3, 0, 0, 0),
(596, 'SOA', 'Selecciona la respuesta correcta', 'Un mensaje SOAP no permite intercambiar documentos e invocar servicios remotos', 'Un mensaje SOAP depende del lenguaje y del Sistema Operativo', 'En el JSON la información se organiza en arrays asociativos', 'El JSON es un formato de texto más sencillo de usar que el XML, pero con el defecto de que sus mensajes ocupan más', 'c', 3, 0, 0, 0),
(597, 'SOA', 'Selecciona la respuesta correcta', 'Un mensaje SOAP debe tener obligatoriamente un Header y un Body', 'Un mensaje SOAP contiene información de los errores ocurridos al procesar el mensaje', 'En un mensaje SOAP puede haber varias etiquetas Fault', 'A y B son correctas', 'c', 3, 0, 0, 0),
(598, 'SOA', 'El XML-RPC', 'Permite hacer llamadas a funciones a través de la red', 'Usa HTTP para enviar la información entre el cliente y el servidor', 'La respuesta que genera debe ser un único dato', 'Todas las respuestas anteriores son correctas', 'd', 3, 0, 0, 0),
(599, 'SOA', 'Selecciona la respuesta incorrecta', 'XML-RPC permite usar varios parámetros de diversos tipos en una llamada', 'WDSL tiene 4 subetiquetas: <one-way>, <request-response>, <solicit-response> y <notificacion>', 'El body de un mensaje SOAP contiene los datos enviados en el mensaje', 'Dentro de WDSL, <portype> indica que mensaje son de entrada (inputs) y que mensajes son de salida (outputs)', 'b', 3, 0, 0, 0),
(600, 'SOA', 'Selecciona la respuesta correcta', 'XML es independiente del software y del hardware', 'XML sirve para describir datos', 'Solo se pueden codificar y decodificar objetos en JSON con JavaScript', 'Las etiquetas XML no pueden empezar por XML y se separan por espacios', 'd', 3, 0, 0, 0),
(601, 'SOA', 'Selecciona la respuesta correcta', 'La etiqueta <binding> del WDSL nos indica los puertos que son soportados por cada servicio', 'El tipo MIME para JSON es “application/java”', 'En el REST, el cliente accede a recursos ofrecidos por un servidor, no a operaciones', 'Si el del faultcode del SOAP nos indica la expresión “SOAP-ENV:Client” quiere decir que el servidor no ha podido procesar correctamente el mensaje', 'c', 3, 0, 0, 0),
(602, 'SOA', 'Si codificamos el un objeto mediante JSON la cadena obtenida sería', '{“atributo1”:valor1, ”atributo2”:valor2,…}', '[“atributo1”:valor1, ”atributo2”:valor2,…]', '[{“atributo1”:valor1}, {“atributo2:valor2},…]', '[[“atributo1”]=>valor1,[“atributo2”]=>valor2,…]', 'a', 3, 0, 0, 0),
(603, 'SOA', 'Los métodos de HTTP que se utilizan sobre los recursos en REST son', 'Get y Post', 'Put', 'Delete', 'Todas las opciones son correctas', 'd', 3, 0, 0, 0),
(604, 'SOA', 'En el intercambio de mensajes en SOAP', 'El body va siempre después del header', 'El body solo va despúes del header si existe un header', 'El body va siempre antes del header', 'No hay body', 'b', 3, 0, 0, 0),
(605, 'SOA', 'En el WSDL (Web Service Description Language) cuando el cliente envía un mensaje y no espera respuesta es una operación de tipo', 'One-Way', 'Request-Response', 'Solicit-Response', 'Notification', 'a', 3, 0, 0, 0),
(606, 'SOA', 'En XML', 'No existen los comentarios', 'Solo se puede validar por medio de un DTD', 'Solo puede existir una etiqueta raíz', 'Todas las opciones son correctas', 'c', 3, 0, 0, 0),
(607, 'SOA', 'Al usar XML-RPC', 'Se realiza el intercambio de información entre el cliente y el servidor mediante HTTP', 'Puede haber múltiples respuestas por parte del servidor', 'Se codifica la información mediante JSON', 'Todas las respuestas son booleanas', 'a', 3, 0, 0, 0),
(608, 'SOA', '¿Qué es un portlet?', 'Son los componentes reutilizables de las páginas web', 'Son errores de programación que generan problemas en las operaciones', 'Son programas que manejan los periféricos del ordenador', 'Ninguna de las anteriores es correcta', 'a', 3, 0, 0, 0),
(609, 'SOA', 'Un ejemplo de portlet', 'Proveería un lenguaje común entre servicios', 'Mostraría las publicaciones recientes de un blog', 'Tiene siempre varias etiquetas header', 'Está siempre codificado', 'b', 3, 0, 0, 0),
(610, 'SOA', 'Los procesos de negocio', 'Son softwares de distribución libre', 'Alojan información accesible vía web', 'Incorporan tareas interactivas con actividades automatizadas', 'Son procesos tipo Hardware', 'c', 3, 0, 0, 0),
(611, 'SOA', 'Los servicios de negocio', 'Dennis Ritchie', 'Gabe Newell', 'James Gosling', 'Ninguna es correcta', 'd', 3, 0, 0, 0),
(612, 'SOA', '¿Quién fue el precursor de XML?', 'Son el resultado de transformas las materias primas en productos acabados', 'Generalmente son servicios compuestos por otros servicios', 'Proporcionan información intercambiable entre varias oficinas', 'Proporcionan conexiones a empresas y/o operadores de larga distancia', 'b', 3, 0, 0, 0),
(613, 'SOA', 'Los servicios de información', 'Pueden ser parte de servicios de más alto nivel', 'Acceden directamente a los recursos', 'Poseen una interfaz que permite integrarlos al estándar SOA', 'Todas las respuestas anteriores son correctas', 'd', 4, 0, 0, 0),
(614, 'SOA', 'Los sistemas legados', 'Son sistemas integrados exclusivamente', 'Pueden ser integrados o no integrados', 'Son también conocidos como silo o isla', 'Ninguna de las anteriores es correcta', 'c', 4, 0, 0, 0),
(615, 'SOA', '¿Cual es uno de los principios fundamentales de un sistema soa?', 'Establecimiento de una base común de servicios que favorezca reducciones de coste basado en una reutilización real y efectiva de componentes', 'La duplicación de procesos', 'Simplificación de la integración entre las distintas fuentes de información, cada vez más numerosas y heterogénea', 'A y C son correctas', 'd', 4, 0, 0, 0),
(616, 'SOA', 'Una de las principales características de soa es', 'Flexibilidad', 'Escalabilidad', 'Interoperabilidad', 'Todas las anteriores', 'd', 4, 0, 0, 0),
(617, 'SOA', 'Elige la correcta', 'La semántica de un  servicio  debe  documentarse,  directa  o  indirectamente, por su descripción', 'Cualquier cambio en la implementación de un servicio no afectaría al resto siempre y cuando se mantuviese la interfaz', 'Ninguna de las anteriores', 'A y B', 'd', 4, 0, 0, 0),
(618, 'SOA', 'Que es un soa', 'Un servicio web', 'Un algoritmo orientado a servicios', 'A y B', 'Ninguna de las anteriores', 'a', 4, 0, 0, 0),
(619, 'SOA', 'Segun lo aprendido en esta asignatura ¿Dónde implementarías un soa?', 'Un ordenador sin conexión de ningún tipo', 'Un servidor conectado a la red', 'Ninguna de las anteriores', 'A y C', 'b', 4, 0, 0, 0),
(620, 'SOA', '¿En que paso se conoce el inventario de servicios inicial?', 'Diseño e implantación del ESB', 'Análisis orientado a servicios', 'Despliegue y descubrimiento', 'Conocimiento de la organización', 'd', 4, 0, 0, 0),
(621, 'SOA', 'Fase en la que se acuerda el SLA', 'Conocimiento de la organización', 'Diseño orientado a servicios', 'Diseño e implementación del ESB', 'Análisis orientado a servicios', 'b', 4, 0, 0, 0),
(622, 'SOA', '¿Cuál es la fase en la que se identifican los servicios requeridos para la implementación de la arquitectura?', 'Diseño orientado a servicios', 'Pruebas', 'Análisis orientado a servicios', 'Conocimiento de la organización', 'c', 4, 0, 0, 0),
(623, 'SOA', '¿En qué fase se realiza la codificación de los servicios?', 'Despliegue y descubrimiento', 'Implementación de servicios', 'Pruebas', 'Mantenimiento y monitorización', 'b', 4, 0, 0, 0),
(624, 'SOA', '¿Cuál es la fase en la que se comprueba el funcionamiento del ESB?', 'Pruebas', 'Despliegue y descubrimiento', 'Conocimiento de la organización', 'Mantenimiento y monitorización', 'a', 4, 0, 0, 0),
(625, 'SOA', 'El desarrollo de servicios es incremental, ¿a partir de que fase se tiene que repetir el proceso en una nueva iteración?', 'Análisis orientado a servicios', 'Pruebas', 'Mantenimiento y monitorización', 'Conocimiento de la organización', 'a', 4, 0, 0, 0),
(626, 'SOA', '¿Qué elementos pueden pertenecer a una estructura mínima de SOA?', 'Usuarios, procesos y servicios de negocio', 'Sistemas alargados', 'Servicios de Portales', 'Información de los usuarios y clientes', 'a', 4, 0, 0, 0),
(627, 'SOA', 'En la fase de diseño e implementación del ESB', 'Se define El Sistema de Balance', 'Se realiza la definición del Enterprise Service Bus', 'Se diseñan los procesos de identificación de SOA', 'Se define el contrato o interfaz del servicio', 'b', 4, 0, 0, 0),
(628, 'SOA', 'Se identifican los servicios requeridos para la implantación de la arquitectura en', 'Diseño e Implementación del ESB', 'Diseño Orientado a Servicios', 'Despliegue y descubrimiento', 'Análisis Orientado a Servicios', 'd', 4, 0, 0, 0),
(629, 'SOA', '¿Qué se define en el Diseño Orientado a Servicios?', 'Se define el contrato o interfaz de servicio', 'Los parámetros de entrada, los que devuelve, qué es lo que hace…', 'Las dos anteriores son correctas', 'Ninguna es correcta', 'c', 4, 0, 0, 0),
(630, 'SOA', 'En la Implementación de Servicios', 'Se realizan pruebas de integración de los servicios', 'Se realiza el despliegue del servicio en la arquitectura SOA', 'Se realiza la elección de la tecnología a utilizar de forma justificada', 'Se llevan a cabo las labores de mantenimiento del servicio', 'c', 4, 0, 0, 0),
(631, 'SOA', 'El proceso de desarrollo de servicios es', 'Global y orientado', 'Iterativo e incremental', 'Rápido y con decrementos automáticos', 'Lento y global', 'b', 4, 0, 0, 0),
(632, 'SOA', 'Un servicio es la implementación de una funcionalidad de negocio que', 'Puede ser utilizada por otras aplicaciones o servicios de negocio', 'No ha de ser mantenido a lo largo de su ciclo de vida', 'No ha de ser mantenido hasta su despliegue', 'Depende de la plataforma y está orientado a comunicación entre procesos', 'a', 4, 0, 0, 0),
(633, 'SOA', 'Un Servicio Web', 'Es una aplicación que no puede ser invocada a través de una red interna o externa', 'Es una aplicación que no puede ser descrita, publicada o localizada', 'Es una aplicación que puede ser invocada a través de una red interna o externa', 'No proporciona la plataforma para la integración de los procesos de negocio', 'c', 4, 0, 0, 0),
(634, 'SOA', 'Son requerimientos a la hora de desarrollar o consumir un Servicio Web', 'Representa los datos en formato estándar como XML', 'Utiliza un formato común y extensible de mensaje como SOAP', 'a y b son correctas', 'Ninguna es correcta', 'c', 4, 0, 0, 0),
(635, 'SOA', 'Usando el protocolo cliente/servidor sin estado del REST cada mensaje HTTP', 'Necesita información adicional para comprender la petición', 'Almacena los valores de las comunicaciones entre mensajes en el cliente y el servidor', 'Necesita utilizar cookies y otros mecanismos para no almacenar el estado de la sesión', 'Contiene toda la información necesaria para comprender la petición', 'd', 4, 0, 0, 0),
(636, 'SOA', 'La Gestión de Proceso de Negocio (BMP)', 'Consiste en un conjunto de métodos, técnicas y herramientas que dan soporte a los procesos de negocio', 'Es un formato de intercambio de datos entre procesos', 'Es un protocolo estándar y genérico utilizado como mecanismo de comunicación', 'Ofrece un formato de datos que permite adaptar o transformar la información', 'a', 4, 0, 0, 0),
(637, 'SOA', 'Un servicio', 'Está basado conceptualmente en la separación de interfaz e implementación', 'Es totalmente dependiente de la plataforma que lo ejecute', 'Es una herramienta para el aislamiento de aplicaciones', 'Aúna la interfaz y la implementación', 'a', 4, 0, 0, 0);

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
