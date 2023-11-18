-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 23:15:08
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `questionary-db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `civil_status`
--

CREATE TABLE `civil_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `civil_status`
--

INSERT INTO `civil_status` (`id`, `value`) VALUES
(1, 'Soltero (a)'),
(2, 'Casado (a)'),
(3, 'Unión libre'),
(4, 'Separado (a)'),
(5, 'Divorciado (a)'),
(6, 'Viudo (a)'),
(7, 'Sacerdote / Monja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duration_job`
--

CREATE TABLE `duration_job` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `duration_job`
--

INSERT INTO `duration_job` (`id`, `value`) VALUES
(1, 'Si lleva menos de un año marque esta opción'),
(2, 'Si lleva más de un año marque esta opcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `education_level`
--

CREATE TABLE `education_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `education_level`
--

INSERT INTO `education_level` (`id`, `value`) VALUES
(1, 'Ninguno'),
(2, 'Primaria incompleta'),
(3, 'Primaria completa'),
(4, 'Bachillerato incompleto'),
(5, 'Bachillerato completo'),
(6, 'Técnico / tecnológico incompleto'),
(7, 'Técnico / tecnológico completo'),
(8, 'Profesional incompleto'),
(9, 'Profesional completo'),
(10, 'Carrera militar / policía'),
(11, 'Post-grado incompleto'),
(12, 'Post-grado completo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `options`
--

INSERT INTO `options` (`id`, `value`) VALUES
(1, 'Siempre'),
(2, 'Casi Siempre'),
(3, 'Algunas veces'),
(4, 'Casi nunca'),
(5, 'Nunca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_information`
--

CREATE TABLE `personal_information` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_contract_id` int(10) UNSIGNED NOT NULL,
  `type_charge_id` int(10) UNSIGNED NOT NULL,
  `duration_job_id` int(10) UNSIGNED NOT NULL,
  `civil_status_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `type_salary_id` int(10) UNSIGNED NOT NULL,
  `type_housing_id` int(10) UNSIGNED NOT NULL,
  `education_level_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `year_of_birth` date DEFAULT NULL,
  `profession` varchar(255) NOT NULL,
  `stratum` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `num_person_economic` int(10) UNSIGNED NOT NULL,
  `city_job` varchar(20) NOT NULL,
  `department_job` varchar(20) NOT NULL,
  `name_job` varchar(255) NOT NULL,
  `name_department_job` varchar(50) NOT NULL,
  `num_hour_job` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questionary`
--

CREATE TABLE `questionary` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `questionary`
--

INSERT INTO `questionary` (`id`, `name`, `description`) VALUES
(1, 'CUESTIONARIO DE FACTORES DE RIESGO PSICOSOCIAL INTRALABORAL FORMA A', 'Este cuestionario de factores psicosociales busca conocer su opinión sobre algunos aspectos de su trabajo.\r\n\r\nLe agradecemos que usted se sirva contestar a las siguientes preguntas de forma absolutamente sincera. Las respuestas que usted de al cuestionario, no son ni buenas, ni  malas, lo importante es que reflejen su manera de pensar sobre su trabajo.\r\n\r\nAl responder por favor lea cuidadosamente cada pregunta, luego piense como es su trabajo y responda a todas las preguntas, en cada una de ellas marque una sola respuesta. Seleccione la casilla de la respuesta que refleje mejor su trabajo. Si se equivoca en una respuesta táchela y escriba la correcta.\r\n\r\nTenga presente que el cuestionario NO lo evalúa a usted como trabajador, sino busca conocer cómo es el trabajo que le han asignado.\r\n\r\nSus respuestas serán manejadas de forma absolutamente confidencial.\r\n\r\nSi tiene dudas respecto a una pregunta, solicite mayor explicación a la persona que le entregó el cuestionario.\r\n\r\nEl cuestionario no tiene límite de tiempo; sin embargo, aproximadamente usted requerirá 1 hora para contestar todas las preguntas.'),
(2, 'CUESTIONARIO DE FACTORES DE RIESGO PSICOSOCIAL INTRALABORAL FORMA B', 'Este cuestionario de factores psicosociales busca conocer su opinión sobre algunos aspectos de su trabajo.\r\n\r\nLe agradecemos que usted se sirva contestar a las siguientes preguntas de forma absolutamente sincera. Las respuestas que usted de al cuestionario, no son ni buenas, ni malas, lo importante es que reflejen su manera de pensar sobre su trabajo.\r\n\r\nAl responder por favor lea cuidadosamente cada pregunta, luego piense como es su trabajo y responda a todas las preguntas, en cada una de ellas marque una sola respuesta. Seleccione la casilla de la respuesta que refleje mejor su trabajo. Si se equivoca en una respuesta táchela y escriba la correcta.\r\n\r\nSus respuestas serán manejadas de forma absolutamente confidencial.\r\n\r\nSi tiene dudas respecto a una pregunta, solicite mayor explicación a la persona que le entregó el cuestionario.\r\n\r\nEl cuestionario no tiene límite de tiempo; sin embargo, aproximadamente usted requerirá 1 hora para contestar todas las preguntas.'),
(3, 'CUESTIONARIO DE FACTORES PSICOSOCIALES EXTRALABORALES\r\n', 'Este cuestionario de factores psicosociales busca conocer su opinión sobre algunos aspectos de su vida familiar y personal.\r\n\r\nLe agradecemos que usted se sirva contestar a las siguientes preguntas de forma absolutamente sincera. Las respuestas que usted de al cuestionario, no son ni buenas, ni malas, lo importante es que reflejen su manera de pensar sobre las condiciones de su vida familiar y personal.\r\n\r\nSus respuestas serán manejadas de forma absolutamente confidencial.\r\n\r\nEs muy importante que usted responda a todas las preguntas y en cada una de ellas marque una sola respuesta.\r\n\r\nPor favor lea cuidadosamente cada pregunta y conteste seleccionando la casilla de la respuesta que mejor se ajuste a su modo de pensar. Si se equivoca en una respuesta táchela y escriba la correcta.\r\n\r\nSi tiene dudas respecto a una pregunta, solicite mayor explicación a la persona que le entregó el cuestionario.\r\n\r\nEl cuestionario no tiene límite de tiempo; sin embargo, e l tiempo aproximado que usted requiere para contestar todas las preguntas es de 10 minutos.'),
(4, 'CUESTIONARIO PARA LA EVALUACIÓN DEL ESTRÉS – TERCERA VERSIÓN', 'Seleccione la casilla que indique la frecuencia con que se le han presentado los siguientes malestares en los últimos tres meses.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `questionary_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id`, `questionary_id`, `value`) VALUES
(3, 1, 'El ruido en el lugar donde trabajo es molesto'),
(4, 1, 'En el lugar donde trabajo hace mucho frío'),
(5, 1, 'En el lugar donde trabajo hace mucho calor'),
(6, 1, 'El aire en el lugar donde trabajo es fresco y agradable'),
(7, 1, 'La luz del sitio donde trabajo es agradable'),
(8, 1, 'El espacio donde trabajo es cómodo'),
(9, 1, 'En mi trabajo me preocupa estar expuesto a sustancias químicas que afecten mi salud'),
(10, 1, 'Mi trabajo me exige hacer mucho esfuerzo'),
(11, 1, 'Los equipos o herramientas con los que trabajo son cómodos'),
(12, 1, 'En mi trabajo me preocupa estar expuesto a microbios, animales o plantas que afecten mi salud'),
(13, 1, 'Me preocupa accidentarme en mi trabajo'),
(14, 1, 'El lugar donde trabajo es limpio y ordenado'),
(15, 1, 'Por la cantidad de trabajo que tengo debo quedarme tiempo adicional'),
(16, 1, 'Me alcanza el tiempo de trabajo para tener al día mis deberes'),
(17, 1, 'Por la cantidad de trabajo que tengo debo trabajar sin parar'),
(18, 1, 'Mi trabajo me exige hacer mucho esfuerzo mental'),
(19, 1, 'Mi trabajo me exige estar muy concentrado'),
(20, 1, 'Mi trabajo me exige memorizar mucha información'),
(21, 1, 'En mi trabajo tengo que tomar decisiones difíciles muy rápido'),
(22, 1, 'Mi trabajo me exige atender a muchos asuntos al mismo tiempo'),
(23, 1, 'Mi trabajo requiere que me fije en pequeños detalles'),
(24, 1, 'En mi trabajo respondo por cosas de mucho valor'),
(25, 1, 'En mi trabajo respondo por dinero de la empresa'),
(26, 1, 'Como parte de mis funciones debo responder por la seguridad de otros'),
(27, 1, 'Respondo ante mi jefe por los resultados de toda mi área de trabajo'),
(28, 1, 'Mi trabajo me exige cuidar la salud de otras personas'),
(29, 1, 'En el trabajo me dan órdenes contradictorias'),
(30, 1, 'En mi trabajo me piden hacer cosas innecesarias'),
(31, 1, 'En mi trabajo se presentan situaciones en las que debo pasar por alto normas o procedimientos'),
(32, 1, 'En mi trabajo tengo que hacer cosas que se podrían hacer de una forma más práctica'),
(33, 1, 'Trabajo en horario de noche'),
(34, 1, 'En mi trabajo es posible tomar pausas para descansar'),
(35, 1, 'Mi trabajo me exige laborar en días de descanso, festivos o fines de semana'),
(36, 1, 'En mi trabajo puedo tomar fines de semana o días de descanso al mes'),
(37, 1, 'Cuando estoy en casa sigo pensando en el trabajo'),
(38, 1, 'Discuto con mi familia o amigos por causa de mi trabajo'),
(39, 1, 'Debo atender asuntos de trabajo cuando estoy en casa'),
(40, 1, 'Por mi trabajo el tiempo que paso con mi familia y amigos es muy poco'),
(41, 1, 'Mi trabajo me permite desarrollar mis habilidades'),
(42, 1, 'Mi trabajo me permite aplicar mis conocimientos'),
(43, 1, 'Mi trabajo me permite aprender nuevas cosas'),
(44, 1, 'Me asignan el trabajo teniendo en cuenta mis\r\ncapacidades'),
(45, 1, 'Puedo tomar pausas cuando las necesito'),
(46, 1, 'Puedo decidir cuánto trabajo hago en el día'),
(47, 1, 'Puedo decidir la velocidad a la que trabajo'),
(48, 1, 'Puedo cambiar el orden de las actividades en mi trabajo'),
(49, 1, 'Puedo parar un momento mi trabajo para atender algún asunto personal'),
(50, 1, 'Los cambios en mi trabajo han sido beneficiosos'),
(51, 1, 'Me explican claramente los cambios que ocurren en mi trabajo'),
(52, 1, 'Puedo dar sugerencias sobre los cambios que ocurren en mi trabajo'),
(53, 1, 'Cuando se presentan cambios en mi trabajo se tienen en cuenta mis ideas y sugerencias'),
(54, 1, 'Los cambios que se presentan en mi trabajo dificultan mi labor'),
(55, 1, 'Me informan con claridad cuáles son mis funciones'),
(56, 1, 'Me informan cuáles son las decisiones que puedo tomar en mi trabajo'),
(57, 1, 'Me explican claramente los resultados que debo lograr en mi trabajo'),
(58, 1, 'Me explican claramente el efecto de mi trabajo en la empresa'),
(59, 1, 'Me explican claramente los objetivos de mi trabajo'),
(60, 1, 'Me informan claramente quien me puede orientar para hacer mi trabajo'),
(61, 1, 'Me informan claramente con quien puedo resolver los asuntos de trabajo'),
(62, 1, 'La empresa me permite asistir a capacitaciones relacionadas con mi trabajo'),
(63, 1, 'Recibo capacitación útil para hacer mi trabajo'),
(64, 1, 'Recibo capacitación que me ayuda a hacer mejor mi trabajo'),
(65, 1, 'Mi jefe me da instrucciones claras'),
(66, 1, 'Mi jefe ayuda a organizar mejor el trabajo'),
(67, 1, 'Mi jefe tiene en cuenta mis puntos de vista y opiniones'),
(68, 1, 'Mi jefe me anima para hacer mejor mi trabajo'),
(69, 1, 'Mi jefe distribuye las tareas de forma que me facilita el trabajo'),
(70, 1, 'Mi jefe me comunica a tiempo la información relacionada con el trabajo'),
(71, 1, 'La orientación que me da mi jefe me ayuda a hacer mejor el trabajo'),
(72, 1, 'Mi jefe me ayuda a progresar en el trabajo'),
(73, 1, 'Mi jefe me ayuda a sentirme bien en el trabajo'),
(74, 1, 'Mi jefe ayuda a solucionar los problemas que se presentan en el trabajo'),
(75, 1, 'Siento que puedo confiar en mi jefe'),
(76, 1, 'Mi jefe me escucha cuando tengo problemas de trabajo'),
(77, 1, 'Mi jefe me brinda su apoyo cuando lo necesito'),
(78, 1, 'Me agrada el ambiente de mi grupo de trabajo'),
(79, 1, 'En mi grupo de trabajo me tratan de forma respetuosa'),
(80, 1, 'Siento que puedo confiar en mis compañeros de trabajo'),
(81, 1, 'Me siento a gusto con mis compañeros de trabajo'),
(82, 1, 'En mi grupo de trabajo algunas personas me maltratan'),
(83, 1, 'Entre compañeros solucionamos los problemas de forma respetuosa'),
(84, 1, 'Hay integración en mi grupo de trabajo'),
(85, 1, 'Mi grupo de trabajo es muy unido'),
(86, 1, 'Las personas en mi trabajo me hacen sentir parte del grupo'),
(87, 1, 'Cuando tenemos que realizar trabajo de grupo los compañeros colaboran'),
(88, 1, 'Es fácil poner de acuerdo al grupo para hacer el trabajo'),
(89, 1, 'Mis compañeros de trabajo me ayudan cuando tengo dificultades'),
(90, 1, 'En mi trabajo las personas nos apoyamos unos a otros'),
(91, 1, 'Algunos compañeros de trabajo me escuchan cuando tengo problemas'),
(92, 1, 'Me informan sobre lo que hago bien en mi trabajo'),
(93, 1, 'Me informan sobre lo que debo mejorar en mi trabajo'),
(94, 1, 'La información que recibo sobre mi rendimiento en el trabajo es clara'),
(95, 1, 'La forma como evalúan mi trabajo en la empresa me ayuda a mejorar'),
(96, 1, 'Me informan a tiempo sobre lo que debo mejorar en el trabajo'),
(97, 1, 'En la empresa confían en mi trabajo'),
(98, 1, 'En la empresa me pagan a tiempo mi salario'),
(99, 1, 'El pago que recibo es el que me ofreció la empresa'),
(100, 1, 'El pago que recibo es el que merezco por el trabajo que realizo'),
(101, 1, 'En mi trabajo tengo posibilidades de progresar'),
(102, 1, 'Las personas que hacen bien el trabajo pueden progresar en la empresa'),
(103, 1, 'La empresa se preocupa por el bienestar de los trabajadores'),
(104, 1, 'Mi trabajo en la empresa es estable'),
(105, 1, 'El trabajo que hago me hace sentir bien'),
(106, 1, 'Siento orgullo de trabajar en esta empresa'),
(107, 1, 'Hablo bien de la empresa con otras personas'),
(108, 1, 'Atiendo clientes o usuarios muy enojados'),
(109, 1, 'Atiendo clientes o usuarios muy preocupados'),
(110, 1, 'Atiendo clientes o usuarios muy tristes'),
(111, 1, 'Mi trabajo me exige atender personas muy enfermas'),
(112, 1, 'Mi trabajo me exige atender personas muy necesitadas de ayuda'),
(113, 1, 'Atiendo clientes o usuarios que me maltratan'),
(114, 1, 'Para hacer mi trabajo debo demostrar sentimientos distintos a los míos'),
(115, 1, 'Mi trabajo me exige atender situaciones de violencia'),
(116, 1, 'Mi trabajo me exige atender situaciones muy tristes o dolorosas'),
(117, 1, 'Tengo colaboradores que comunican tarde los asuntos de trabajo'),
(118, 1, 'Tengo colaboradores que tienen comportamientos irrespetuosos'),
(119, 1, 'Tengo colaboradores que dificultan la organización del trabajo'),
(120, 1, 'Tengo colaboradores que guardan silencio cuando les piden opiniones'),
(121, 1, 'Tengo colaboradores que dificultan el logro de los resultados del trabajo'),
(122, 1, 'Tengo colaboradores que expresan de forma irrespetuosa sus desacuerdos'),
(123, 1, 'Tengo colaboradores que cooperan poco cuando se necesita'),
(124, 1, 'Tengo colaboradores que me preocupan por su desempeño'),
(125, 1, 'Tengo colaboradores que ignoran las sugerencias para mejorar su trabajo'),
(135, 2, 'El ruido en el lugar donde trabajo es molesto'),
(136, 2, 'En el lugar donde trabajo hace mucho frío'),
(137, 2, 'En el lugar donde trabajo hace mucho calor'),
(138, 2, 'El aire en el lugar donde trabajo es fresco y agradable'),
(139, 2, 'La luz del sitio donde trabajo es agradable'),
(140, 2, 'El espacio donde trabajo es cómodo'),
(141, 2, 'En mi trabajo me preocupa estar expuesto a sustancias químicas que afecten mi salud'),
(142, 2, 'Mi trabajo me exige hacer mucho esfuerzo físico'),
(143, 2, 'Los equipos o herramientas con los que trabajo son cómodos'),
(144, 2, 'En mi trabajo me preocupa estar expuesto a microbios, animales o plantas que afecten mi salud'),
(145, 2, 'Me preocupa accidentarme en mi trabajo'),
(146, 2, 'El lugar donde trabajo es limpio y ordenado'),
(147, 2, 'Por la cantidad de trabajo que tengo debo quedarme tiempo adicional'),
(148, 2, 'Me alcanza el tiempo de trabajo para tener al día mis deberes'),
(149, 2, 'Por la cantidad de trabajo que tengo debo trabajar sin parar'),
(150, 2, 'Mi trabajo me exige hacer mucho esfuerzo mental'),
(151, 2, 'Mi trabajo me exige estar muy concentrado'),
(152, 2, 'Mi trabajo me exige memorizar mucha información'),
(153, 2, 'En mi trabajo tengo que hacer cálculos matemáticos'),
(154, 2, 'Mi trabajo requiere que me fije en pequeños detalles'),
(155, 2, 'Trabajo en horario de noche'),
(156, 2, 'En mi trabajo es posible tomar pausas para descansar'),
(157, 2, 'Mi trabajo me exige laborar en días de descanso, festivos o fines de semana'),
(158, 2, 'En mi trabajo puedo tomar fines de semana o días de descanso al mes'),
(159, 2, 'Cuando estoy en casa sigo pensando en el trabajo'),
(160, 2, 'Discuto con mi familia o amigos por causa de mi trabajo'),
(161, 2, 'Debo atender asuntos de trabajo cuando estoy en casa'),
(162, 2, 'Por mi trabajo, el tiempo que paso con mi familia y amigos es muy poco'),
(163, 2, 'En mi trabajo puedo hacer cosas nuevas'),
(164, 2, 'Mi trabajo me permite desarrollar mis habilidades'),
(165, 2, 'Mi trabajo me permite aplicar mis conocimientos'),
(166, 2, 'Mi trabajo me permite aprender nuevas cosas'),
(167, 2, 'Puedo tomar pausas cuando las necesito'),
(168, 2, 'Puedo decidir cuánto trabajo hago en el día'),
(169, 2, 'Puedo decidir la velocidad a la que trabajo'),
(170, 2, 'Puedo cambiar el orden de las actividades en mi trabajo'),
(171, 2, 'Puedo parar un momento mi trabajo para atender algún asunto personal'),
(172, 2, 'Me explican claramente los cambios que ocurren en mi trabajo'),
(173, 2, 'Puedo dar sugerencias sobre los cambios que ocurren en mi trabajo'),
(174, 2, 'Cuando se presentan cambios en mi trabajo, se tienen en cuenta mis ideas y sugerencias'),
(175, 2, 'Me informan con claridad cuáles son mis funciones'),
(176, 2, 'Me informan cuáles son las decisiones que puedo tomar en mi trabajo'),
(177, 2, 'Me explican claramente los resultados que debo lograr en mi trabajo'),
(178, 2, 'Me explican claramente los objetivos de mi trabajo'),
(179, 2, 'Me informan claramente con quién puedo resolver los asuntos de trabajo'),
(180, 2, 'La empresa me permite asistir a capacitaciones relacionadas con mi trabajo'),
(181, 2, 'Recibo capacitación útil para hacer mi trabajo'),
(182, 2, 'Recibo capacitación que me ayuda a hacer mejor mi trabajo'),
(183, 2, 'Mi jefe ayuda a organizar mejor el trabajo'),
(184, 2, 'Mi jefe tiene en cuenta mis puntos de vista y opiniones'),
(185, 2, 'Mi jefe me anima para hacer mejor mi trabajo'),
(186, 2, 'Mi jefe distribuye las tareas de forma que me facilita el trabajo'),
(187, 2, 'Mi jefe me comunica a tiempo la información relacionada con el trabajo'),
(188, 2, 'La orientación que me da mi jefe me ayuda a hacer mejor el trabajo'),
(189, 2, 'Mi jefe me ayuda a progresar en el trabajo'),
(190, 2, 'Mi jefe me ayuda a sentirme bien en el trabajo'),
(191, 2, 'Mi jefe ayuda a solucionar los problemas que se presentan en el trabajo'),
(192, 2, 'Mi jefe me trata con respeto'),
(193, 2, 'Siento que puedo confiar en mi jefe'),
(194, 2, 'Mi jefe me escucha cuando tengo problemas de trabajo'),
(195, 2, 'Mi jefe me brinda su apoyo cuando lo necesito'),
(196, 2, 'Me agrada el ambiente de mi grupo de trabajo'),
(197, 2, 'En mi grupo de trabajo me tratan de forma respetuosa'),
(198, 2, 'Siento que puedo confiar en mis compañeros de trabajo'),
(199, 2, 'Me siento a gusto con mis compañeros de trabajo'),
(200, 2, 'En mi grupo de trabajo algunas personas me maltratan'),
(201, 2, 'Entre compañeros solucionamos los problemas de forma respetuosa'),
(202, 2, 'Mi grupo de trabajo es muy unido'),
(203, 2, 'Cuando tenemos que realizar trabajo de grupo, los compañeros colaboran'),
(204, 2, 'Es fácil poner de acuerdo al grupo para hacer el trabajo'),
(205, 2, 'Mis compañeros de trabajo me ayudan cuando tengo dificultades'),
(206, 2, 'En mi trabajo, las personas nos apoyamos unos a otros'),
(207, 2, 'Algunos compañeros de trabajo me escuchan cuando tengo problemas'),
(208, 2, 'Me informan sobre lo que hago bien en mi trabajo'),
(209, 2, 'Me informan sobre lo que debo mejorar en mi trabajo'),
(210, 2, 'La información que recibo sobre mi rendimiento en el trabajo es clara'),
(211, 2, 'La forma como evalúan mi trabajo en la empresa me ayuda a mejorar'),
(212, 2, 'Me informan a tiempo sobre lo que debo mejorar en el trabajo'),
(213, 2, 'En la empresa me pagan a tiempo mi salario'),
(214, 2, 'El pago que recibo es el que me ofreció la empresa'),
(215, 2, 'El pago que recibo es el que merezco por el trabajo que realizo'),
(216, 2, 'En mi trabajo tengo posibilidades de progresar'),
(217, 2, 'Las personas que hacen bien el trabajo pueden progresar en la empresa'),
(218, 2, 'La empresa se preocupa por el bienestar de los trabajadores'),
(219, 2, 'Mi trabajo en la empresa es estable'),
(220, 2, 'El trabajo que hago me hace sentir bien'),
(221, 2, 'Siento orgullo de trabajar en esta empresa'),
(222, 2, 'Hablo bien de la empresa con otras personas'),
(223, 2, 'Atiendo clientes o usuarios muy enojados'),
(224, 2, 'Atiendo clientes o usuarios muy preocupados'),
(225, 2, 'Atiendo clientes o usuarios muy tristes'),
(226, 2, 'Mi trabajo me exige atender personas muy enfermas'),
(227, 2, 'Mi trabajo me exige atender personas muy necesitadas de ayuda'),
(228, 2, 'Atiendo clientes o usuarios que me maltratan'),
(229, 2, 'Mi trabajo me exige atender situaciones de violencia'),
(230, 2, 'Mi trabajo me exige atender situaciones muy tristes o dolorosas'),
(231, 2, 'Puedo expresar tristeza o enojo frente a las personas que atiendo'),
(232, 3, 'Es fácil trasportarme entre mi casa y el trabajo'),
(233, 3, 'Tengo que tomar varios medios de transporte para llegar a mi lugar de trabajo'),
(234, 3, 'Paso mucho tiempo viajando de ida y regreso al trabajo'),
(235, 3, 'Me trasporto cómodamente entre mi casa y el trabajo'),
(236, 3, 'La zona donde vivo es segura'),
(237, 3, 'En la zona donde vivo se presentan hurtos y mucha delincuencia'),
(238, 3, 'Desde donde vivo me es rápido llegar al centro  médico donde me atienden'),
(239, 3, 'Cerca a mi vivienda las vías están en buenas condiciones'),
(240, 3, 'Cerca a mi vivienda encuentro másivamente transporte'),
(241, 3, 'Las vias de mi vivienda son buenas'),
(242, 3, 'En mi vivienda hay servicios de agua y luz'),
(243, 3, 'Las vias de mi vivienda me permiten descansar cuando lo requiero'),
(244, 3, 'Las vias de mi vivienda me permiten estar coámodo'),
(245, 3, 'Me queda tiempo para actividades de recreación'),
(246, 3, 'Fuera del trabajo tengo tiempo suficiente para descansar'),
(247, 3, 'Tengo tiempo para atender mis asuntos personales y del hogar'),
(248, 3, 'Tengo tiempo para compartir con mi familia o amigos'),
(249, 3, 'Tengo buena comunicación con las personas cercanas'),
(250, 3, 'Las relaciones con mis amigos son buenas'),
(251, 3, 'Converso con personas cercanas sobre diferentes temas'),
(252, 3, 'Mis amigos están dispuestos a escucharme cuando tengo problemas'),
(253, 3, 'Cuestiono con el apoyo de mi familia cuando tengo problemas'),
(254, 3, 'Puedo talk con personas cercanas sobre las cosas que me pasan'),
(255, 3, 'Mis problemas personales o familiares afectan mi trabajo'),
(256, 3, 'La opción con mi familia cercana es cordial'),
(257, 3, 'Mis problemas personales o familiares me quitan la energía que necesito para trabajar'),
(258, 3, 'Los problemas con mis familiares los resolvemos de manera amistosa'),
(259, 3, 'Mis problemas personales o familiares afectan mis relaciones en el trabajo'),
(260, 3, 'El dinero que ganamos en el hogar alcanza para cubrir los gastos básicos'),
(261, 3, 'Tengo otros compromisos másivos que afectan mucho el presupuesto familiar'),
(262, 3, 'En mi hogar tenemos deudas másivas de pagar'),
(263, 4, 'Problemas gastrointestinales, úlcera péptica, acidez, problemas digestivos o del colon.'),
(264, 4, 'Problemas respiratorios.'),
(265, 4, 'Dolor de cabeza.'),
(266, 4, 'Trastornos del sueño como somnolencia durante el día o desvelo en la noche.'),
(267, 4, 'Palpitaciones en el pecho o problemas cardíacos.'),
(268, 4, 'Cambios fuertes del apetito.'),
(269, 4, 'Problemas relacionados con la función de los órganos genitales (impotencia, frigidez).'),
(270, 4, 'Dificultad en las relaciones familiares.'),
(271, 4, 'Dificultad para permanecer quieto o dificultad para iniciar actividades.'),
(272, 4, 'Dificultad en las relaciones con otras personas.'),
(273, 4, 'Sensación de aislamiento y desinterés.'),
(274, 4, 'Sentimiento de sobrecarga de trabajo.'),
(275, 4, 'Dificultad para concentrarse, olvidos frecuentes.'),
(276, 4, 'Aumento en el número de accidentes de trabajo.'),
(277, 4, 'Sentimiento de frustración, de no haber hecho lo que se quería en la vida.'),
(278, 4, 'Cansancio, tedio o desgano.'),
(279, 4, 'Disminución del rendimiento en el trabajo o poca creatividad.'),
(280, 4, 'Deseo de no asistir al trabajo.'),
(281, 4, 'Bajo compromiso o poco interés con lo que se hace.'),
(282, 4, 'Dificultad para tomar decisiones.'),
(283, 4, 'Deseo de cambiar de empleo.'),
(284, 4, 'Sentimiento de soledad y miedo.'),
(285, 4, 'Sentimiento de irritabilidad, actitudes y pensamientos negativos.'),
(286, 4, 'Sentimiento de angustia, preocupación o tristeza.'),
(287, 4, 'Consumo de drogas para aliviar la tensión o los nervios.'),
(288, 4, 'Sentimientos de que \"no vale nada\", o \"no sirve para nada\".'),
(289, 4, 'Consumo de bebidas alcohólicas o café o cigarrillo.'),
(290, 4, 'Sentimiento de que está perdiendo la razón.'),
(291, 4, 'Comportamientos rígidos, obstinación o terquedad.'),
(292, 4, 'Sensación de no poder manejar los problemas de la vida.'),
(293, 4, 'Dolores en el cuello y espalda o tensión muscular.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions_options`
--

CREATE TABLE `questions_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `questions_id` int(10) UNSIGNED NOT NULL,
  `options_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `questions_options`
--

INSERT INTO `questions_options` (`id`, `questions_id`, `options_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 4, 1),
(7, 4, 2),
(8, 4, 3),
(9, 4, 4),
(10, 4, 5),
(11, 5, 1),
(12, 5, 2),
(13, 5, 3),
(14, 5, 4),
(15, 5, 5),
(16, 6, 1),
(17, 6, 2),
(18, 6, 3),
(19, 6, 4),
(20, 6, 5),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 4),
(25, 7, 5),
(26, 8, 1),
(27, 8, 2),
(28, 8, 3),
(29, 8, 4),
(30, 8, 5),
(31, 9, 1),
(32, 9, 2),
(33, 9, 3),
(34, 9, 4),
(35, 9, 5),
(36, 10, 1),
(37, 10, 2),
(38, 10, 3),
(39, 10, 4),
(40, 10, 5),
(41, 11, 1),
(42, 11, 2),
(43, 11, 3),
(44, 11, 4),
(45, 11, 5),
(46, 12, 1),
(47, 12, 2),
(48, 12, 3),
(49, 12, 4),
(50, 12, 5),
(51, 13, 1),
(52, 13, 2),
(53, 13, 3),
(54, 13, 4),
(55, 13, 5),
(56, 14, 1),
(57, 14, 2),
(58, 14, 3),
(59, 14, 4),
(60, 14, 5),
(61, 15, 1),
(62, 15, 2),
(63, 15, 3),
(64, 15, 4),
(65, 15, 5),
(66, 16, 1),
(67, 16, 2),
(68, 16, 3),
(69, 16, 4),
(70, 15, 5),
(71, 17, 1),
(72, 17, 2),
(73, 17, 3),
(74, 17, 4),
(75, 17, 5),
(76, 18, 1),
(77, 18, 2),
(78, 18, 3),
(79, 18, 4),
(80, 18, 5),
(81, 19, 1),
(82, 19, 2),
(83, 19, 3),
(84, 19, 4),
(85, 19, 5),
(86, 20, 1),
(87, 20, 2),
(88, 20, 3),
(89, 20, 4),
(90, 20, 5),
(91, 21, 1),
(92, 21, 2),
(93, 21, 3),
(94, 21, 4),
(95, 21, 5),
(96, 22, 1),
(97, 22, 2),
(98, 22, 3),
(99, 22, 4),
(100, 22, 5),
(101, 23, 1),
(102, 23, 2),
(103, 23, 3),
(104, 23, 4),
(105, 23, 5),
(106, 24, 1),
(107, 24, 2),
(108, 24, 3),
(109, 24, 4),
(110, 24, 5),
(111, 25, 1),
(112, 25, 2),
(113, 25, 3),
(114, 25, 4),
(115, 25, 5),
(116, 26, 1),
(117, 26, 2),
(118, 26, 3),
(119, 26, 4),
(120, 26, 5),
(121, 27, 1),
(122, 27, 2),
(123, 27, 3),
(124, 27, 4),
(125, 27, 5),
(126, 28, 1),
(127, 28, 2),
(128, 28, 3),
(129, 28, 4),
(130, 28, 5),
(131, 29, 1),
(132, 29, 2),
(133, 29, 3),
(134, 29, 4),
(135, 29, 5),
(136, 30, 1),
(137, 30, 2),
(138, 30, 3),
(139, 30, 4),
(140, 30, 5),
(141, 31, 1),
(142, 31, 2),
(143, 31, 3),
(144, 31, 4),
(145, 31, 5),
(146, 32, 1),
(147, 32, 2),
(148, 32, 3),
(149, 32, 4),
(150, 32, 5),
(151, 33, 1),
(152, 33, 2),
(153, 33, 3),
(154, 33, 4),
(155, 33, 5),
(156, 34, 1),
(157, 34, 2),
(158, 34, 3),
(159, 34, 4),
(160, 34, 5),
(161, 35, 1),
(162, 35, 2),
(163, 35, 3),
(164, 35, 4),
(165, 35, 5),
(166, 36, 1),
(167, 36, 2),
(168, 36, 3),
(169, 36, 4),
(170, 36, 5),
(171, 37, 1),
(172, 37, 2),
(173, 37, 3),
(174, 37, 4),
(175, 37, 5),
(176, 38, 1),
(177, 38, 2),
(178, 38, 3),
(179, 38, 4),
(180, 38, 5),
(181, 39, 1),
(182, 39, 2),
(183, 39, 3),
(184, 39, 4),
(185, 39, 5),
(186, 40, 1),
(187, 40, 2),
(188, 40, 3),
(189, 40, 4),
(190, 40, 5),
(191, 41, 1),
(192, 41, 2),
(193, 41, 3),
(194, 41, 4),
(195, 41, 5),
(196, 42, 1),
(197, 42, 2),
(198, 42, 3),
(199, 42, 4),
(200, 42, 5),
(201, 43, 1),
(202, 43, 2),
(203, 43, 3),
(204, 43, 4),
(205, 43, 5),
(206, 44, 1),
(207, 44, 2),
(208, 44, 3),
(209, 44, 4),
(210, 44, 5),
(211, 45, 1),
(212, 45, 2),
(213, 45, 3),
(214, 45, 4),
(215, 45, 5),
(216, 46, 1),
(217, 46, 2),
(218, 46, 3),
(219, 46, 4),
(220, 46, 5),
(221, 47, 1),
(222, 47, 2),
(223, 47, 3),
(224, 47, 4),
(225, 47, 5),
(226, 48, 1),
(227, 48, 2),
(228, 48, 3),
(229, 48, 4),
(230, 48, 5),
(231, 49, 1),
(232, 49, 2),
(233, 49, 3),
(234, 49, 4),
(235, 49, 5),
(236, 50, 1),
(237, 50, 2),
(238, 50, 3),
(239, 50, 4),
(240, 50, 5),
(241, 51, 1),
(242, 51, 2),
(243, 51, 3),
(244, 51, 4),
(245, 51, 5),
(246, 52, 1),
(247, 52, 2),
(248, 52, 3),
(249, 52, 4),
(250, 52, 5),
(251, 53, 1),
(252, 53, 2),
(253, 53, 3),
(254, 53, 4),
(255, 53, 5),
(256, 54, 1),
(257, 54, 2),
(258, 54, 3),
(259, 54, 4),
(260, 54, 5),
(261, 55, 1),
(262, 55, 2),
(263, 55, 3),
(264, 55, 4),
(265, 55, 5),
(266, 56, 1),
(267, 56, 2),
(268, 56, 3),
(269, 56, 4),
(270, 56, 5),
(271, 57, 1),
(272, 57, 2),
(273, 57, 3),
(274, 57, 4),
(275, 57, 5),
(276, 58, 1),
(277, 58, 2),
(278, 58, 3),
(279, 58, 4),
(280, 58, 5),
(281, 59, 1),
(282, 59, 2),
(283, 59, 3),
(284, 59, 4),
(285, 59, 5),
(286, 60, 1),
(287, 60, 2),
(288, 60, 3),
(289, 60, 4),
(290, 60, 5),
(291, 61, 1),
(292, 61, 2),
(293, 61, 3),
(294, 61, 4),
(295, 61, 5),
(296, 62, 1),
(297, 62, 2),
(298, 62, 3),
(299, 62, 4),
(300, 62, 5),
(301, 63, 1),
(302, 63, 2),
(303, 63, 3),
(304, 63, 4),
(305, 63, 5),
(306, 64, 1),
(307, 64, 2),
(308, 64, 3),
(309, 64, 4),
(310, 64, 5),
(311, 65, 1),
(312, 65, 2),
(313, 65, 3),
(314, 65, 4),
(315, 65, 5),
(316, 66, 1),
(317, 66, 2),
(318, 66, 3),
(319, 66, 4),
(320, 66, 5),
(321, 67, 1),
(322, 67, 2),
(323, 67, 3),
(324, 67, 4),
(325, 67, 5),
(326, 68, 1),
(327, 68, 2),
(328, 68, 3),
(329, 68, 4),
(330, 68, 5),
(331, 69, 1),
(332, 69, 2),
(333, 69, 3),
(334, 69, 4),
(335, 69, 5),
(336, 70, 1),
(337, 70, 2),
(338, 70, 3),
(339, 70, 4),
(340, 70, 5),
(341, 71, 1),
(342, 71, 2),
(343, 71, 3),
(344, 71, 4),
(345, 71, 5),
(346, 72, 1),
(347, 72, 2),
(348, 72, 3),
(349, 72, 4),
(350, 72, 5),
(351, 73, 1),
(352, 73, 2),
(353, 73, 3),
(354, 73, 4),
(355, 73, 5),
(356, 74, 1),
(357, 74, 2),
(358, 74, 3),
(359, 74, 4),
(360, 74, 5),
(361, 75, 1),
(362, 75, 2),
(363, 75, 3),
(364, 75, 4),
(365, 75, 5),
(366, 76, 1),
(367, 76, 2),
(368, 76, 3),
(369, 76, 4),
(370, 76, 5),
(371, 77, 1),
(372, 77, 2),
(373, 77, 3),
(374, 77, 4),
(375, 77, 5),
(376, 78, 1),
(377, 78, 2),
(378, 78, 3),
(379, 78, 4),
(380, 78, 5),
(381, 79, 1),
(382, 79, 2),
(383, 79, 3),
(384, 79, 4),
(385, 79, 5),
(386, 80, 1),
(387, 80, 2),
(388, 80, 3),
(389, 80, 4),
(390, 80, 5),
(391, 81, 1),
(392, 81, 2),
(393, 81, 3),
(394, 81, 4),
(395, 81, 5),
(396, 82, 1),
(397, 82, 2),
(398, 82, 3),
(399, 82, 4),
(400, 82, 5),
(401, 83, 1),
(402, 83, 2),
(403, 83, 3),
(404, 83, 4),
(405, 83, 5),
(406, 84, 1),
(407, 84, 2),
(408, 84, 3),
(409, 84, 4),
(410, 84, 5),
(411, 85, 1),
(412, 85, 2),
(413, 85, 3),
(414, 85, 4),
(415, 85, 5),
(416, 86, 1),
(417, 86, 2),
(418, 86, 3),
(419, 86, 4),
(420, 86, 5),
(421, 87, 1),
(422, 87, 2),
(423, 87, 3),
(424, 87, 4),
(425, 87, 5),
(426, 88, 1),
(427, 88, 2),
(428, 88, 3),
(429, 88, 4),
(430, 88, 5),
(431, 89, 1),
(432, 89, 2),
(433, 89, 3),
(434, 89, 4),
(435, 89, 5),
(436, 90, 1),
(437, 90, 2),
(438, 90, 3),
(439, 90, 4),
(440, 90, 5),
(441, 91, 1),
(442, 91, 2),
(443, 91, 3),
(444, 91, 4),
(445, 91, 5),
(446, 92, 1),
(447, 92, 2),
(448, 92, 3),
(449, 92, 4),
(450, 92, 5),
(451, 93, 1),
(452, 93, 2),
(453, 93, 3),
(454, 93, 4),
(455, 93, 5),
(456, 94, 1),
(457, 94, 2),
(458, 94, 3),
(459, 94, 4),
(460, 94, 5),
(461, 95, 1),
(462, 95, 2),
(463, 95, 3),
(464, 95, 4),
(465, 95, 5),
(466, 96, 1),
(467, 96, 2),
(468, 96, 3),
(469, 96, 4),
(470, 96, 5),
(471, 97, 1),
(472, 97, 2),
(473, 97, 3),
(474, 97, 4),
(475, 97, 5),
(476, 98, 1),
(477, 98, 2),
(478, 98, 3),
(479, 98, 4),
(480, 98, 5),
(481, 99, 1),
(482, 99, 2),
(483, 99, 3),
(484, 99, 4),
(485, 99, 5),
(486, 100, 1),
(487, 100, 2),
(488, 100, 3),
(489, 100, 4),
(490, 100, 5),
(491, 101, 1),
(492, 101, 2),
(493, 101, 3),
(494, 101, 4),
(495, 101, 5),
(496, 102, 1),
(497, 102, 2),
(498, 102, 3),
(499, 102, 4),
(500, 102, 5),
(501, 103, 1),
(502, 103, 2),
(503, 103, 3),
(504, 103, 4),
(505, 103, 5),
(506, 104, 1),
(507, 104, 2),
(508, 104, 3),
(509, 104, 4),
(510, 104, 5),
(511, 105, 1),
(512, 105, 2),
(513, 105, 3),
(514, 105, 4),
(515, 105, 5),
(516, 106, 1),
(517, 106, 2),
(518, 106, 3),
(519, 106, 4),
(520, 106, 5),
(521, 107, 1),
(522, 107, 2),
(523, 107, 3),
(524, 107, 4),
(525, 107, 5),
(526, 108, 1),
(527, 108, 2),
(528, 108, 3),
(529, 108, 4),
(530, 108, 5),
(531, 109, 1),
(532, 109, 2),
(533, 109, 3),
(534, 109, 4),
(535, 109, 5),
(536, 110, 1),
(537, 110, 2),
(538, 110, 3),
(539, 110, 4),
(540, 110, 5),
(541, 111, 1),
(542, 111, 2),
(543, 111, 3),
(544, 111, 4),
(545, 111, 5),
(546, 112, 1),
(547, 112, 2),
(548, 112, 3),
(549, 112, 4),
(550, 112, 5),
(551, 113, 1),
(552, 113, 2),
(553, 113, 3),
(554, 113, 4),
(555, 113, 5),
(556, 114, 1),
(557, 114, 2),
(558, 114, 3),
(559, 114, 4),
(560, 114, 5),
(561, 115, 1),
(562, 115, 2),
(563, 115, 3),
(564, 115, 4),
(565, 115, 5),
(566, 116, 1),
(567, 116, 2),
(568, 116, 3),
(569, 116, 4),
(570, 116, 5),
(571, 117, 1),
(572, 117, 2),
(573, 117, 3),
(574, 117, 4),
(575, 117, 5),
(576, 118, 1),
(577, 118, 2),
(578, 118, 3),
(579, 118, 4),
(580, 118, 5),
(581, 119, 1),
(582, 119, 2),
(583, 119, 3),
(584, 119, 4),
(585, 119, 5),
(586, 120, 1),
(587, 120, 2),
(588, 120, 3),
(589, 120, 4),
(590, 120, 5),
(591, 121, 1),
(592, 121, 2),
(593, 121, 3),
(594, 121, 4),
(595, 121, 5),
(596, 122, 1),
(597, 122, 2),
(598, 122, 3),
(599, 122, 4),
(600, 122, 5),
(601, 123, 1),
(602, 123, 2),
(603, 123, 3),
(604, 123, 4),
(605, 123, 5),
(606, 124, 1),
(607, 124, 2),
(608, 124, 3),
(609, 124, 4),
(610, 124, 5),
(611, 125, 1),
(612, 125, 2),
(613, 125, 3),
(614, 125, 4),
(615, 125, 5),
(616, 135, 1),
(617, 135, 2),
(618, 135, 3),
(619, 135, 4),
(620, 135, 5),
(621, 136, 1),
(622, 136, 2),
(623, 136, 3),
(624, 136, 4),
(625, 136, 5),
(626, 137, 1),
(627, 137, 2),
(628, 137, 3),
(629, 137, 4),
(630, 137, 5),
(631, 138, 1),
(632, 138, 2),
(633, 138, 3),
(634, 138, 4),
(635, 138, 5),
(636, 139, 1),
(637, 139, 2),
(638, 139, 3),
(639, 139, 4),
(640, 139, 5),
(641, 140, 1),
(642, 140, 2),
(643, 140, 3),
(644, 140, 4),
(645, 140, 5),
(646, 141, 1),
(647, 141, 2),
(648, 141, 3),
(649, 141, 4),
(650, 141, 5),
(651, 142, 1),
(652, 142, 2),
(653, 142, 3),
(654, 142, 4),
(655, 142, 5),
(656, 143, 1),
(657, 143, 2),
(658, 143, 3),
(659, 143, 4),
(660, 143, 5),
(661, 144, 1),
(662, 144, 2),
(663, 144, 3),
(664, 144, 4),
(665, 144, 5),
(666, 145, 1),
(667, 145, 2),
(668, 145, 3),
(669, 145, 4),
(670, 145, 5),
(671, 146, 1),
(672, 146, 2),
(673, 146, 3),
(674, 146, 4),
(675, 146, 5),
(676, 147, 1),
(677, 147, 2),
(678, 147, 3),
(679, 147, 4),
(680, 147, 5),
(681, 148, 1),
(682, 148, 2),
(683, 148, 3),
(684, 148, 4),
(685, 148, 5),
(686, 149, 1),
(687, 149, 2),
(688, 149, 3),
(689, 149, 4),
(690, 149, 5),
(691, 150, 1),
(692, 150, 2),
(693, 150, 3),
(694, 150, 4),
(695, 150, 5),
(696, 151, 1),
(697, 151, 2),
(698, 151, 3),
(699, 151, 4),
(700, 151, 5),
(701, 152, 1),
(702, 152, 2),
(703, 152, 3),
(704, 152, 4),
(705, 152, 5),
(706, 153, 1),
(707, 153, 2),
(708, 153, 3),
(709, 153, 4),
(710, 153, 5),
(711, 154, 1),
(712, 154, 2),
(713, 154, 3),
(714, 154, 4),
(715, 154, 5),
(716, 155, 1),
(717, 155, 2),
(718, 155, 3),
(719, 155, 4),
(720, 155, 5),
(721, 156, 1),
(722, 156, 2),
(723, 156, 3),
(724, 156, 4),
(725, 156, 5),
(726, 157, 1),
(727, 157, 2),
(728, 157, 3),
(729, 157, 4),
(730, 157, 5),
(731, 158, 1),
(732, 158, 2),
(733, 158, 3),
(734, 158, 4),
(735, 158, 5),
(736, 159, 1),
(737, 159, 2),
(738, 159, 3),
(739, 159, 4),
(740, 159, 5),
(741, 160, 1),
(742, 160, 2),
(743, 160, 3),
(744, 160, 4),
(745, 160, 5),
(746, 161, 1),
(747, 161, 2),
(748, 161, 3),
(749, 161, 4),
(750, 161, 5),
(751, 162, 1),
(752, 162, 2),
(753, 162, 3),
(754, 162, 4),
(755, 162, 5),
(756, 163, 1),
(757, 163, 2),
(758, 163, 3),
(759, 163, 4),
(760, 163, 5),
(761, 164, 1),
(762, 164, 2),
(763, 164, 3),
(764, 164, 4),
(765, 164, 5),
(766, 165, 1),
(767, 165, 2),
(768, 165, 3),
(769, 165, 4),
(770, 165, 5),
(771, 166, 1),
(772, 166, 2),
(773, 166, 3),
(774, 166, 4),
(775, 166, 5),
(776, 167, 1),
(777, 167, 2),
(778, 167, 3),
(779, 167, 4),
(780, 167, 5),
(781, 168, 1),
(782, 168, 2),
(783, 168, 3),
(784, 168, 4),
(785, 168, 5),
(786, 169, 1),
(787, 169, 2),
(788, 169, 3),
(789, 169, 4),
(790, 169, 5),
(791, 170, 1),
(792, 170, 2),
(793, 170, 3),
(794, 170, 4),
(795, 170, 5),
(796, 171, 1),
(797, 171, 2),
(798, 171, 3),
(799, 171, 4),
(800, 171, 5),
(801, 172, 1),
(802, 172, 2),
(803, 172, 3),
(804, 172, 4),
(805, 172, 5),
(806, 173, 1),
(807, 173, 2),
(808, 173, 3),
(809, 173, 4),
(810, 173, 5),
(811, 174, 1),
(812, 174, 2),
(813, 174, 3),
(814, 174, 4),
(815, 174, 5),
(816, 175, 1),
(817, 175, 2),
(818, 175, 3),
(819, 175, 4),
(820, 175, 5),
(821, 176, 1),
(822, 176, 2),
(823, 176, 3),
(824, 176, 4),
(825, 176, 5),
(826, 177, 1),
(827, 177, 2),
(828, 177, 3),
(829, 177, 4),
(830, 177, 5),
(831, 178, 1),
(832, 178, 2),
(833, 178, 3),
(834, 178, 4),
(835, 178, 5),
(836, 179, 1),
(837, 179, 2),
(838, 179, 3),
(839, 179, 4),
(840, 179, 5),
(841, 180, 1),
(842, 180, 2),
(843, 180, 3),
(844, 180, 4),
(845, 180, 5),
(846, 181, 1),
(847, 181, 2),
(848, 181, 3),
(849, 181, 4),
(850, 181, 5),
(851, 182, 1),
(852, 182, 2),
(853, 182, 3),
(854, 182, 4),
(855, 182, 5),
(856, 183, 1),
(857, 183, 2),
(858, 183, 3),
(859, 183, 4),
(860, 183, 5),
(861, 184, 1),
(862, 184, 2),
(863, 184, 3),
(864, 184, 4),
(865, 184, 5),
(866, 185, 1),
(867, 185, 2),
(868, 185, 3),
(869, 185, 4),
(870, 185, 5),
(871, 186, 1),
(872, 186, 2),
(873, 186, 3),
(874, 186, 4),
(875, 186, 5),
(876, 187, 1),
(877, 187, 2),
(878, 187, 3),
(879, 187, 4),
(880, 187, 5),
(881, 188, 1),
(882, 188, 2),
(883, 188, 3),
(884, 188, 4),
(885, 188, 5),
(886, 189, 1),
(887, 189, 2),
(888, 189, 3),
(889, 189, 4),
(890, 189, 5),
(891, 190, 1),
(892, 190, 2),
(893, 190, 3),
(894, 190, 4),
(895, 190, 5),
(896, 191, 1),
(897, 191, 2),
(898, 191, 3),
(899, 191, 4),
(900, 191, 5),
(901, 192, 1),
(902, 192, 2),
(903, 192, 3),
(904, 192, 4),
(905, 192, 5),
(906, 193, 1),
(907, 193, 2),
(908, 193, 3),
(909, 193, 4),
(910, 193, 5),
(911, 194, 1),
(912, 194, 2),
(913, 194, 3),
(914, 194, 4),
(915, 194, 5),
(916, 195, 1),
(917, 195, 2),
(918, 195, 3),
(919, 195, 4),
(920, 195, 5),
(921, 196, 1),
(922, 196, 2),
(923, 196, 3),
(924, 196, 4),
(925, 196, 5),
(926, 197, 1),
(927, 197, 2),
(928, 197, 3),
(929, 197, 4),
(930, 197, 5),
(931, 198, 1),
(932, 198, 2),
(933, 198, 3),
(934, 198, 4),
(935, 198, 5),
(936, 199, 1),
(937, 199, 2),
(938, 199, 3),
(939, 199, 4),
(940, 199, 5),
(941, 200, 1),
(942, 200, 2),
(943, 200, 3),
(944, 200, 4),
(945, 200, 5),
(946, 201, 1),
(947, 201, 2),
(948, 201, 3),
(949, 201, 4),
(950, 201, 5),
(951, 202, 1),
(952, 202, 2),
(953, 202, 3),
(954, 202, 4),
(955, 202, 5),
(956, 203, 1),
(957, 203, 2),
(958, 203, 3),
(959, 203, 4),
(960, 203, 5),
(961, 204, 1),
(962, 204, 2),
(963, 204, 3),
(964, 204, 4),
(965, 204, 5),
(966, 205, 1),
(967, 205, 2),
(968, 205, 3),
(969, 205, 4),
(970, 205, 5),
(971, 206, 1),
(972, 206, 2),
(973, 206, 3),
(974, 206, 4),
(975, 206, 5),
(976, 207, 1),
(977, 207, 2),
(978, 207, 3),
(979, 207, 4),
(980, 207, 5),
(981, 208, 1),
(982, 208, 2),
(983, 208, 3),
(984, 208, 4),
(985, 208, 5),
(986, 209, 1),
(987, 209, 2),
(988, 209, 3),
(989, 209, 4),
(990, 209, 5),
(991, 210, 1),
(992, 210, 2),
(993, 210, 3),
(994, 210, 4),
(995, 210, 5),
(996, 211, 1),
(997, 211, 2),
(998, 211, 3),
(999, 211, 4),
(1000, 211, 5),
(1001, 212, 1),
(1002, 212, 2),
(1003, 212, 3),
(1004, 212, 4),
(1005, 212, 5),
(1006, 213, 1),
(1007, 213, 2),
(1008, 213, 3),
(1009, 213, 4),
(1010, 213, 5),
(1011, 214, 1),
(1012, 214, 2),
(1013, 214, 3),
(1014, 214, 4),
(1015, 214, 5),
(1016, 215, 1),
(1017, 215, 2),
(1018, 215, 3),
(1019, 215, 4),
(1020, 215, 5),
(1021, 216, 1),
(1022, 216, 2),
(1023, 216, 3),
(1024, 216, 4),
(1025, 216, 5),
(1026, 217, 1),
(1027, 217, 2),
(1028, 217, 3),
(1029, 217, 4),
(1030, 217, 5),
(1031, 218, 1),
(1032, 218, 2),
(1033, 218, 3),
(1034, 218, 4),
(1035, 218, 5),
(1036, 219, 1),
(1037, 219, 2),
(1038, 219, 3),
(1039, 219, 4),
(1040, 219, 5),
(1041, 220, 1),
(1042, 220, 2),
(1043, 220, 3),
(1044, 220, 4),
(1045, 220, 5),
(1046, 221, 1),
(1047, 221, 2),
(1048, 221, 3),
(1049, 221, 4),
(1050, 221, 5),
(1051, 222, 1),
(1052, 222, 2),
(1053, 222, 3),
(1054, 222, 4),
(1055, 222, 5),
(1056, 223, 1),
(1057, 223, 2),
(1058, 223, 3),
(1059, 223, 4),
(1060, 223, 5),
(1061, 224, 1),
(1062, 224, 2),
(1063, 224, 3),
(1064, 224, 4),
(1065, 224, 5),
(1066, 225, 1),
(1067, 225, 2),
(1068, 225, 3),
(1069, 225, 4),
(1070, 225, 5),
(1071, 226, 1),
(1072, 226, 2),
(1073, 226, 3),
(1074, 226, 4),
(1075, 226, 5),
(1076, 227, 1),
(1077, 227, 2),
(1078, 227, 3),
(1079, 227, 4),
(1080, 227, 5),
(1081, 228, 1),
(1082, 228, 2),
(1083, 228, 3),
(1084, 228, 4),
(1085, 228, 5),
(1086, 229, 1),
(1087, 229, 2),
(1088, 229, 3),
(1089, 229, 4),
(1090, 229, 5),
(1091, 230, 1),
(1092, 230, 2),
(1093, 230, 3),
(1094, 230, 4),
(1095, 230, 5),
(1096, 231, 1),
(1097, 231, 2),
(1098, 231, 3),
(1099, 231, 4),
(1100, 231, 5),
(1101, 232, 1),
(1102, 232, 2),
(1103, 232, 3),
(1104, 232, 4),
(1105, 232, 5),
(1106, 233, 1),
(1107, 233, 2),
(1108, 233, 3),
(1109, 233, 4),
(1110, 233, 5),
(1111, 234, 1),
(1112, 234, 2),
(1113, 234, 3),
(1114, 234, 4),
(1115, 234, 5),
(1116, 235, 1),
(1117, 235, 2),
(1118, 235, 3),
(1119, 235, 4),
(1120, 235, 5),
(1121, 236, 1),
(1122, 236, 2),
(1123, 236, 3),
(1124, 236, 4),
(1125, 236, 5),
(1126, 237, 1),
(1127, 237, 2),
(1128, 237, 3),
(1129, 237, 4),
(1130, 237, 5),
(1131, 238, 1),
(1132, 238, 2),
(1133, 238, 3),
(1134, 238, 4),
(1135, 238, 5),
(1136, 239, 1),
(1137, 239, 2),
(1138, 239, 3),
(1139, 239, 4),
(1140, 239, 5),
(1141, 240, 1),
(1142, 240, 2),
(1143, 240, 3),
(1144, 240, 4),
(1145, 240, 5),
(1146, 241, 1),
(1147, 241, 2),
(1148, 241, 3),
(1149, 241, 4),
(1150, 241, 5),
(1151, 242, 1),
(1152, 242, 2),
(1153, 242, 3),
(1154, 242, 4),
(1155, 242, 5),
(1156, 243, 1),
(1157, 243, 2),
(1158, 243, 3),
(1159, 243, 4),
(1160, 243, 5),
(1161, 244, 1),
(1162, 244, 2),
(1163, 244, 3),
(1164, 244, 4),
(1165, 244, 5),
(1166, 245, 1),
(1167, 245, 2),
(1168, 245, 3),
(1169, 245, 4),
(1170, 245, 5),
(1171, 246, 1),
(1172, 246, 2),
(1173, 246, 3),
(1174, 246, 4),
(1175, 246, 5),
(1176, 247, 1),
(1177, 247, 2),
(1178, 247, 3),
(1179, 247, 4),
(1180, 247, 5),
(1181, 248, 1),
(1182, 248, 2),
(1183, 248, 3),
(1184, 248, 4),
(1185, 248, 5),
(1186, 249, 1),
(1187, 249, 2),
(1188, 249, 3),
(1189, 249, 4),
(1190, 249, 5),
(1191, 250, 1),
(1192, 250, 2),
(1193, 250, 3),
(1194, 250, 4),
(1195, 250, 5),
(1196, 251, 1),
(1197, 251, 2),
(1198, 251, 3),
(1199, 251, 4),
(1200, 251, 5),
(1201, 252, 1),
(1202, 252, 2),
(1203, 252, 3),
(1204, 252, 4),
(1205, 252, 5),
(1206, 253, 1),
(1207, 253, 2),
(1208, 253, 3),
(1209, 253, 4),
(1210, 253, 5),
(1211, 254, 1),
(1212, 254, 2),
(1213, 254, 3),
(1214, 254, 4),
(1215, 254, 5),
(1216, 255, 1),
(1217, 255, 2),
(1218, 255, 3),
(1219, 255, 4),
(1220, 255, 5),
(1221, 256, 1),
(1222, 256, 2),
(1223, 256, 3),
(1224, 256, 4),
(1225, 256, 5),
(1226, 257, 1),
(1227, 257, 2),
(1228, 257, 3),
(1229, 257, 4),
(1230, 257, 5),
(1231, 258, 1),
(1232, 258, 2),
(1233, 258, 3),
(1234, 258, 4),
(1235, 258, 5),
(1236, 259, 1),
(1237, 259, 2),
(1238, 259, 3),
(1239, 259, 4),
(1240, 259, 5),
(1241, 260, 1),
(1242, 260, 2),
(1243, 260, 3),
(1244, 260, 4),
(1245, 260, 5),
(1246, 261, 1),
(1247, 261, 2),
(1248, 261, 3),
(1249, 261, 4),
(1250, 261, 5),
(1251, 262, 1),
(1252, 262, 2),
(1253, 262, 3),
(1254, 262, 4),
(1255, 293, 2),
(1256, 293, 3),
(1257, 293, 5),
(1258, 263, 1),
(1259, 263, 2),
(1260, 263, 3),
(1261, 263, 5),
(1262, 264, 1),
(1263, 264, 2),
(1264, 264, 3),
(1265, 264, 5),
(1266, 265, 1),
(1267, 265, 2),
(1268, 265, 3),
(1269, 265, 5),
(1270, 266, 1),
(1271, 266, 2),
(1272, 266, 3),
(1273, 266, 5),
(1274, 267, 1),
(1275, 267, 2),
(1276, 267, 3),
(1277, 267, 5),
(1278, 268, 1),
(1279, 268, 2),
(1280, 268, 3),
(1281, 268, 5),
(1282, 269, 1),
(1283, 269, 2),
(1284, 269, 3),
(1285, 269, 5),
(1286, 270, 1),
(1287, 270, 2),
(1288, 270, 3),
(1289, 270, 5),
(1290, 271, 1),
(1291, 271, 2),
(1292, 271, 3),
(1293, 271, 5),
(1294, 272, 1),
(1295, 272, 2),
(1296, 272, 3),
(1297, 272, 5),
(1298, 273, 1),
(1299, 273, 2),
(1300, 273, 3),
(1301, 273, 5),
(1302, 274, 1),
(1303, 274, 2),
(1304, 274, 3),
(1305, 274, 5),
(1306, 275, 1),
(1307, 275, 2),
(1308, 275, 3),
(1309, 275, 5),
(1310, 276, 1),
(1311, 276, 2),
(1312, 276, 3),
(1313, 276, 5),
(1314, 277, 1),
(1315, 277, 2),
(1316, 277, 3),
(1317, 277, 5),
(1318, 278, 1),
(1319, 278, 2),
(1320, 278, 3),
(1321, 278, 5),
(1322, 279, 1),
(1323, 279, 2),
(1324, 279, 3),
(1325, 279, 5),
(1326, 280, 1),
(1327, 280, 2),
(1328, 280, 3),
(1329, 280, 5),
(1330, 281, 1),
(1331, 281, 2),
(1332, 281, 3),
(1333, 281, 5),
(1334, 282, 1),
(1335, 282, 2),
(1336, 282, 3),
(1337, 282, 5),
(1338, 283, 1),
(1339, 283, 2),
(1340, 283, 3),
(1341, 283, 5),
(1342, 284, 1),
(1343, 284, 2),
(1344, 284, 3),
(1345, 284, 5),
(1346, 285, 1),
(1347, 285, 2),
(1348, 285, 3),
(1349, 285, 5),
(1350, 286, 1),
(1351, 286, 2),
(1352, 286, 3),
(1353, 286, 5),
(1354, 287, 1),
(1355, 287, 2),
(1356, 287, 3),
(1357, 287, 5),
(1358, 288, 1),
(1359, 288, 2),
(1360, 288, 3),
(1361, 288, 5),
(1362, 289, 1),
(1363, 289, 2),
(1364, 289, 3),
(1365, 289, 5),
(1366, 290, 1),
(1367, 290, 2),
(1368, 290, 3),
(1369, 290, 5),
(1370, 291, 1),
(1371, 291, 2),
(1372, 291, 3),
(1373, 291, 5),
(1374, 292, 1),
(1375, 292, 2),
(1376, 292, 3),
(1377, 292, 5),
(1378, 293, 1),
(1379, 262, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `response`
--

CREATE TABLE `response` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `questions_id` int(10) UNSIGNED NOT NULL,
  `options_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_charge`
--

CREATE TABLE `type_charge` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type_charge`
--

INSERT INTO `type_charge` (`id`, `value`) VALUES
(1, 'Jefatura - tiene personal a cargo'),
(2, 'Profesional, analista, técnico, tecnólogo'),
(3, 'Auxiliar, asistente administrativo, asistente técnico'),
(4, 'Operario, operador, ayudante, servicios generales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_contract`
--

CREATE TABLE `type_contract` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type_contract`
--

INSERT INTO `type_contract` (`id`, `value`) VALUES
(1, 'Temporal de menos de 1 año'),
(2, 'Temporal de 1 año o más'),
(3, 'Término indefinido'),
(4, 'Cooperado (cooperativa)'),
(5, 'Prestación de servicios'),
(6, 'No sé');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_housing`
--

CREATE TABLE `type_housing` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type_housing`
--

INSERT INTO `type_housing` (`id`, `value`) VALUES
(1, 'Propia'),
(2, 'En arriendo'),
(3, 'Familiar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_salary`
--

CREATE TABLE `type_salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `type_salary`
--

INSERT INTO `type_salary` (`id`, `value`) VALUES
(1, 'Fijo (diario, semanal, quincenal o mensual)'),
(2, 'Una parte fija y otra variable'),
(3, 'Todo variable (a destajo, por producción, por \r\ncomisión)\r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `identification` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `identification`, `email`, `role`, `password`) VALUES
(1, '1234567890', 'correo@correo.com', 'user', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `civil_status`
--
ALTER TABLE `civil_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `duration_job`
--
ALTER TABLE `duration_job`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `education_level`
--
ALTER TABLE `education_level`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Usuario_FKIndex3` (`education_level_id`),
  ADD KEY `Usuario_FKIndex5` (`type_housing_id`),
  ADD KEY `Usuario_FKIndex6` (`type_salary_id`),
  ADD KEY `Personal_information_FKIndex7` (`users_id`),
  ADD KEY `Personal_information_FKIndex6` (`civil_status_id`),
  ADD KEY `Personal_information_FKIndex9` (`duration_job_id`),
  ADD KEY `Personal_information_FKIndex10` (`type_charge_id`),
  ADD KEY `Personal_information_FKIndex8` (`type_contract_id`);

--
-- Indices de la tabla `questionary`
--
ALTER TABLE `questionary`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Question_FKIndex2` (`questionary_id`) USING BTREE;

--
-- Indices de la tabla `questions_options`
--
ALTER TABLE `questions_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Question_Option_FKIndex1` (`options_id`),
  ADD KEY `Question_Option_FKIndex2` (`questions_id`);

--
-- Indices de la tabla `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Response_FKIndex2` (`options_id`),
  ADD KEY `Response_FKIndex3` (`questions_id`),
  ADD KEY `Response_FKIndex4` (`users_id`);

--
-- Indices de la tabla `type_charge`
--
ALTER TABLE `type_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_contract`
--
ALTER TABLE `type_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_housing`
--
ALTER TABLE `type_housing`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_salary`
--
ALTER TABLE `type_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `civil_status`
--
ALTER TABLE `civil_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `duration_job`
--
ALTER TABLE `duration_job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `education_level`
--
ALTER TABLE `education_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questionary`
--
ALTER TABLE `questionary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT de la tabla `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1380;

--
-- AUTO_INCREMENT de la tabla `response`
--
ALTER TABLE `response`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `type_charge`
--
ALTER TABLE `type_charge`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `type_contract`
--
ALTER TABLE `type_contract`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `type_housing`
--
ALTER TABLE `type_housing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `type_salary`
--
ALTER TABLE `type_salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personal_information`
--
ALTER TABLE `personal_information`
  ADD CONSTRAINT `personal_information_ibfk_1` FOREIGN KEY (`education_level_id`) REFERENCES `education_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_information_ibfk_2` FOREIGN KEY (`type_housing_id`) REFERENCES `type_housing` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_information_ibfk_3` FOREIGN KEY (`type_salary_id`) REFERENCES `type_salary` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_information_ibfk_4` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_information_ibfk_5` FOREIGN KEY (`civil_status_id`) REFERENCES `civil_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_information_ibfk_6` FOREIGN KEY (`duration_job_id`) REFERENCES `duration_job` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_information_ibfk_7` FOREIGN KEY (`type_charge_id`) REFERENCES `type_charge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_information_ibfk_8` FOREIGN KEY (`type_contract_id`) REFERENCES `type_contract` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`questionary_id`) REFERENCES `questionary` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `questions_options`
--
ALTER TABLE `questions_options`
  ADD CONSTRAINT `questions_options_ibfk_1` FOREIGN KEY (`options_id`) REFERENCES `options` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `questions_options_ibfk_2` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `response_ibfk_1` FOREIGN KEY (`options_id`) REFERENCES `options` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `response_ibfk_2` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `response_ibfk_3` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
