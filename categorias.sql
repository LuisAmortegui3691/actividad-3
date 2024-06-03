-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2018 a las 20:30:36
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
-- Base de datos: `api-udemy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `api` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `palabrasClaves` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `imgBanner` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `api`, `ruta`, `titulo`, `descripcion`, `palabrasClaves`, `icono`, `imgOferta`, `imgBanner`) VALUES
(1, 'Desarrollo', 'Development', 'development', 'Cursos en línea de Desarrollo web y programación | Tutoriales a tu Alcance', 'Aprenda a codificar o crear sitios web desde cero con estos cursos en línea. Los temas incluyen desarrollo web, aplicaciones móviles IOS, desarrollo de Android a juegos y comercio electrónico.', 'aprender, codificar, crear, sitios web, cursos en línea, desarrollo web, aplicaciones móviles, IOS, Android, juegos, comercio electrónico, gratis, gratuito', 'fas fa-code', 'vistas/img/ofertas/desarrollo.jpg', 'vistas/img/banner/desarrollo.jpg'),
(2, 'Negocios', 'Business', 'business', 'Cursos en línea de Negocios | Tutoriales a tu Alcance', 'La mejor colección de cursos de negocios y emprendimiento en línea. Desde iniciar una empresa hasta marketing, publicidad, finanzas y más. Comienza a aprender hoy.', 'colección, cursos de negocios, emprendimiento en línea, iniciar una empresa, marketing, publicidad, finanzas, gratis, gratuito', 'fas fa-chart-line', 'vistas/img/ofertas/business.jpg', 'vistas/img/banner/business.jpg'),
(3, 'Software', 'IT%20%26%20Software', 'it-and-software', 'Cursos en línea de Informática y software | Tutoriales a tu Alcance', 'Los últimos cursos en línea de informática y software. Prepárese para los exámenes de certificación o estudie las últimas arquitecturas de sistemas operativos.', 'cursos en línea de informática, software, exámenes de certificación, últimas arquitecturas, sistemas operativos, gratis, gratuito', 'fas fa-laptop', 'vistas/img/ofertas/it-y-software.jpg', 'vistas/img/banner/it-y-software.jpg'),
(4, 'Oficina', 'Office%20Productivity', 'office-productivity', 'Cursos en línea de Productividad en la oficina | Tutoriales a tu Alcance', 'Mejore sus resultados y avance con estos cursos de productividad de oficina en: Microsoft Excel, Apple, Google, SAP, Intuit, Oracle, Salesforce y otros.', 'cursos de productividad, cursos de oficina, Microsoft Excel, Apple, Google, SAP, Intuit, Oracle, Salesforce, gratis, gratuito', 'fas fa-briefcase', 'vistas/img/ofertas/oficina.jpg', 'vistas/img/banner/oficina.jpg'),
(5, 'D. Personal', 'Personal%20Development', 'personal-development', 'Cursos en línea de Desarrollo personal | Tutoriales a tu Alcance', 'Con los cursos de desarrollo personal en línea, aprenderá a ser más seguro, más feliz, productivo y exitoso. Regístrese hoy y comience a aprender.', 'cursos de desarrollo personal, seguridad, felicidad, productividad, éxito, gratis, gratuito', 'fas fa-book', 'vistas/img/ofertas/personal.jpg', 'vistas/img/banner/personal.jpg'),
(6, 'Diseño', 'Design', 'design', 'Cursos en línea de Diseño | Tutoriales a tu Alcance', 'Los mejores cursos de diseño en línea: aprenda a diseñar sitios web, logotipos, carteles y más. Encuentre un curso y comience a aprender hoy.', 'cursos de diseño, diseñar sitios web, logotipos, carteles, gratis, gratuito', 'fas fa-pen-square', 'vistas/img/ofertas/diseno.jpg', 'vistas/img/banner/diseno.jpg'),
(7, 'Marketing', 'Marketing', 'marketing', 'Cursos en línea de Marketing en redes sociales y correo electrónico | Tutoriales a tu Alcance', 'Aprenda marketing para hacer crecer su negocio. Desarrolle su marketing digital, redes sociales, hacking de crecimiento, contenido y habilidades de marca con estos excelentes cursos.', 'Aprenda marketing, crecer su negocio, marketing digital, redes sociales, hacking de crecimiento, contenido y habilidades de marca, gratis, gratuito', 'fas fa-users', 'vistas/img/ofertas/marketing.jpg', 'vistas/img/banner/marketing.jpg'),
(8, 'Música', 'Music', 'music', 'Cursos en línea de Música | Tutoriales a tu Alcance', 'Aprende música en línea. Los mejores cursos en línea de guitarra, piano, ukelele, autoharp y DJ. Descubre un curso y comienza a aprender.', 'Aprende música en línea, los mejores cursos, guitarra, piano, ukelele, autoharp, DJ, gratis, gratuito', 'fas fa-music', 'vistas/img/ofertas/music.jpg', 'vistas/img/banner/music.jpg'),
(9, 'Salud y Fitness', 'Health%20%26%20Fitness', 'health-and-fitness', 'Cursos en línea de Yoga, fitness y salud | Tutoriales a tu Alcance', 'Obtenga más salud y ajuste con los cursos de fitness en línea. Aprenda yoga, pilates, meditación, tai chi y más. Encuentra un curso y comienza a transformar tu cuerpo.', 'Obtenga más salud, cursos de fitness en línea, Aprenda yoga, pilates, meditación, tai chi, gratis, gratuito', 'fas fa-heartbeat', 'vistas/img/ofertas/salud.jpg', 'vistas/img/banner/salud.jpg'),
(10, 'Fotografía', 'Photography', 'photography', 'Cursos de Fotografía | Tutoriales a tu Alcance', 'Lleva tus habilidades de fotografía al siguiente nivel. Regístrese en nuestros cursos de fotografía en línea gratuitos o de bajo costo y comience a tomar impresionantes fotos hoy.', 'fotografía en línea, cursos de fotografía, gratis, gratuito', 'fas fa-camera', 'vistas/img/ofertas/fotografia.jpg', 'vistas/img/banner/fotografia.jpg'),
(11, 'Estilo de vida', 'Lifestyle', 'lifestyle', 'Cursos en línea de Estilo de vida | Tutoriales a tu Alcance', 'Aprende cómo cocinar, entrenar a tu cachorro, conseguir un trabajo de ensueño y mucho más.', 'Aprende cómo cocinar, entrenar a tu cachorro, conseguir un trabajo de ensueño, gratis, gratuito', 'fas fa-thumbs-up', 'vistas/img/ofertas/lifestyle.jpg', 'vistas/img/banner/lifestyle.jpg'),
(12, 'Idiomas', 'Language', 'language', 'Cursos en línea de Aprendizaje de idiomas | Tutoriales a tu Alcance', 'Con los cursos de idiomas en línea, puede dominar las habilidades que son importantes para usted de forma gratuita o a bajo costo desde su dispositivo móvil, tableta o computadora portátil.', 'cursos de idiomas en línea, dominar las habilidades, forma gratuita, dispositivo móvil, tableta,computadora portátil, gratis, gratuito', 'fas fa-globe', 'vistas/img/ofertas/idiomas.jpg', 'vistas/img/banner/idiomas.jpg'),
(13, 'Formación de Profesorado', 'Teacher%20Training', 'teacher-training', 'Cursos en línea de Formación de Profesorado | Tutoriales a tu Alcance', 'Con los cursos de educación en línea, puede dominar las habilidades que son importantes para usted de forma gratuita o a bajo costo desde su dispositivo móvil, tableta o computadora portátil.', 'cursos de formación de profesorado en línea, dominar las habilidades, forma gratuita, dispositivo móvil, tableta,computadora portátil, gratis, gratuito', 'fas fa-chalkboard-teacher', 'vistas/img/ofertas/profesorado.jpg', 'vistas/img/banner/profesorado.jpg'),
(14, 'Estudios Académicos', 'Academics', 'academics', 'Cursos en línea de Estudios Académicos| Tutoriales a tu Alcance', 'Tome cursos en línea en matemáticas, ciencia, geografía e historia de expertos.', 'cursos de estudios académicos en línea, dominar las habilidades, forma gratuita, dispositivo móvil, tableta,computadora portátil, gratis, gratuito', 'fab fa-react', 'vistas/img/ofertas/academia.jpg', 'vistas/img/banner/academia.jpg'),
(15, 'Preparación para Exámenes', 'Test%20Prep', 'test-prep', 'Cursos en línea de Preparación para Exámenes | Tutoriales a tu Alcance', 'Con los cursos de preparación para exámenes en línea, aprende cómo superar exitósamente esa prueba.', 'cursos de preparación para exámenes en línea, dominar las habilidades, forma gratuita, dispositivo móvil, tableta,computadora portátil, gratis, gratuito', 'fas fa-file-alt', 'vistas/img/ofertas/examenes.jpg', 'vistas/img/banner/examenes.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
