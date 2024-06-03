-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2018 a las 20:30:47
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
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `api` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `api`, `ruta`) VALUES
(1, 'Cursos gratis de Desarrollo', 1, 'Development', 'development-free'),
(2, 'Desarrollo web', 1, 'Web%20Development', 'web-development'),
(3, 'Aplicaciones móviles', 1, 'Mobile%20Apps', 'mobile-apps'),
(4, 'Lenguajes de programación', 1, 'Programming%20Languages', 'programming-languages'),
(5, 'Desarrollo de videoluegos', 1, 'Game%20Development', 'game-development'),
(6, 'Bases de datos', 1, 'Databases', 'databases'),
(7, 'Testeo de software', 1, 'Software%20Testing', 'software-testing'),
(8, 'Ingeniería de software', 1, 'Software%20Engineering', 'software-engineering'),
(9, 'Herramientas de desarrollo', 1, 'Development%20Tools', 'development-tools'),
(10, 'Comercio electrónico', 1, 'E-Commerce', 'e-commerce'),
(11, 'Cursos gratis de Negocios', 2, 'Business', 'business-free'),
(12, 'Finanzas', 2, 'Finance', 'finance'),
(13, 'Emprendimiento', 2, 'Entrepreneurship', 'entrepreneurship'),
(14, 'Comunicación', 2, 'Communications', 'communications'),
(15, 'Gestión empresarial', 2, 'Management', 'management'),
(16, 'Ventas', 2, 'Sales', 'sales'),
(17, 'Estrategia', 2, 'Strategy', 'strategy'),
(18, 'Operaciones', 2, 'Operations', 'operations'),
(19, 'Gestión de proyectos', 2, 'Project%20Management', 'project-management'),
(20, 'Derecho empresarial', 2, 'Business%20Law', 'business-law'),
(21, 'Datos y análisis', 2, 'Data%20%26%20Analytics', 'data-and-analytics'),
(22, 'Negocios desde casa', 2, 'Home%20Business', 'home-business'),
(23, 'Recursos humanos', 2, 'Human%20Resources', 'human-resources'),
(24, 'Industria', 2, 'Industry', 'industry'),
(25, 'Medios de comunicación', 2, 'Media', 'media'),
(26, 'Bienes inmuebles', 2, 'Real%20Estate', 'real-estate'),
(27, 'Cursos gratis de IT y Software', 3, 'IT%20%26%20Software', 'it-and-software-free'),
(28, 'Certificaciones de IT', 3, 'IT%20Certification', 'it-certification'),
(29, 'Redes y seguridad', 3, 'Network%20%26%20Security', 'network-and-security'),
(30, 'Hardware', 3, 'Hardware', 'hardware'),
(31, 'Sistemas operativos', 3, 'Operating%20Systems', 'operating-systems'),
(32, 'Cursos gratis de Productividad', 4, 'Office%20Productivity', 'office-productivity-free'),
(33, 'Microsoft', 4, 'Microsoft', 'microsoft'),
(34, 'Apple', 4, 'Apple', 'apple'),
(35, 'Google', 4, 'Google', 'google'),
(36, 'SAP', 4, 'SAP', 'sap'),
(37, 'Intuit', 4, 'Intuit', 'intuit'),
(38, 'Salesforce', 4, 'Salesforce', 'salesforce'),
(39, 'Oracle', 4, 'Oracle', 'oracle'),
(40, 'Cursos gratis de Desarrollo personal', 5, 'Personal%20Development', 'personal-development-free'),
(41, 'Transformación personal', 5, 'Personal%20Transformation', 'personal-transformation'),
(42, 'Productividad', 5, 'Productivity', 'productivity'),
(43, 'Liderazgo', 5, 'Leadership', 'leadership'),
(44, 'Finanzas personales', 5, 'Personal%20Finance', 'personal-finance'),
(45, 'Desarrollo profesional', 5, 'Career%20Development', 'career-development'),
(46, 'Paternidad y relaciones', 5, 'Parenting%20%26%20Relationships', 'parenting-and-relationships'),
(47, 'Felicidad', 5, 'Happiness', 'happiness'),
(48, 'Religión y espiritualidad', 5, 'Religion%20%26%20Spirituality', 'religion-and-spirituality'),
(49, 'Desarrollo de marca personal', 5, 'Personal%20Brand%20Building', 'personal-brand-building'),
(50, 'Creatividad', 5, 'Creativity', 'creativity'),
(51, 'influencia', 5, 'Influence', 'influence'),
(52, 'Autoestima', 5, 'Self%20Esteem', 'self-esteem'),
(53, 'Gestión del estrés', 5, 'Stress%20Management', 'stress-management'),
(54, 'Memoria y técnicas de estudio', 5, 'Memory%20%26%20Study%20Skills', 'memory-and-study-skills'),
(55, 'Motivación', 5, 'Motivation', 'motivation'),
(56, 'Cursos gratis de Diseño', 6, 'Design', 'design-free'),
(57, 'Diseño web', 6, 'Web%20Design', 'web-design'),
(58, 'Diseño gáfico', 6, 'Graphic%20Design', 'graphic-design'),
(59, 'Herramientas de diseño', 6, 'Design%20Tools', 'design-tools'),
(60, 'Experiencia de usuario', 6, 'User%20Experience', 'user-experience'),
(61, 'Diseño de juegos', 6, 'Game%20Design', 'game-design'),
(62, 'Desing Thinking', 6, 'Design%20Thinking', 'design-thinking'),
(63, '3D y animación', 6, '3D%20%26%20Animation', '3d-and-animation'),
(64, 'Moda', 6, 'Fashion', 'fashion'),
(65, 'Diseño arquitectónico', 6, 'Architectural%20Design', 'architectural-design'),
(66, 'Diseño de interiores', 6, 'Interior%20Design', 'interior-design'),
(67, 'Cursos gratis de Marketing', 7, 'Marketing', 'marketing-free'),
(68, 'Marketing digital', 7, 'Digital%20Marketing', 'digital-marketing'),
(69, 'Optimización de motores de búsqueda', 7, 'Search%20Engine%20Optimization', 'search-engine-optimization'),
(70, 'Marketing de redes sociales', 7, 'Social%20Media%20Marketing', 'social-media-marketing'),
(71, 'Creación de marca', 7, 'Branding', 'branding'),
(72, 'Fundamentos de marketing', 7, 'Marketing%20Fundamentals', 'marketing-fundamentals'),
(73, 'Análisis y automatización', 7, 'Analytics%20%26%20Automation', 'analytics-and-automation'),
(74, 'Relaciones públicas', 7, 'Public%20Relations', 'public-relations'),
(75, 'Publicidad', 7, 'Advertising', 'advertising'),
(76, 'Marketing con vídeo y móviles', 7, 'Video%20%26%20Mobile%20Marketing', 'video-mobile-marketing'),
(77, 'Merketing de contenidos', 7, 'Content%20Marketing', 'content-marketing'),
(78, 'Marketing tradicional', 7, 'Non-Digital%20Marketing', 'non-digital-marketing'),
(79, 'Estrategia de posicionamiento', 7, 'Growth%20Hacking', 'growth-hacking'),
(80, 'Marketing de afiliados', 7, 'Affiliate%20Marketing', 'affiliate-marketing'),
(81, 'Marketing de producto', 7, 'Product%20Marketing', 'product-marketing'),
(82, 'Cursos gratis de Música', 8, 'Music', 'music-free'),
(83, 'Instrumentos', 8, 'Instruments', 'instruments'),
(84, 'Producción', 8, 'Production', 'production'),
(85, 'Fundamentos sobre música', 8, 'Music%20Fundamentals', 'music-fundamentals'),
(86, 'Vocal', 8, 'Vocal', 'vocal'),
(87, 'Técnicas musicales', 8, 'Music%20Techniques', 'music-techniques'),
(88, 'Software de música', 8, 'Music%20Software', 'music-software'),
(89, 'Cursos gratis de Salud y fitness', 9, 'Health%20%26%20Fitness', 'health-and-fitness-free'),
(90, 'Fitness', 9, 'Fitness', 'fitness'),
(91, 'Salud general', 9, 'General%20Health', 'general-health'),
(92, 'Deportes', 9, 'Sports', 'sports'),
(93, 'Nutrición', 9, 'Nutrition', 'nutrition'),
(94, 'Yoga', 9, 'Yoga', 'yoga'),
(95, 'Salud mental', 9, 'Mental%20Health', 'mental-health'),
(96, 'Dietética', 9, 'Dieting', 'dieting'),
(97, 'Defensa personal', 9, 'Self%20Defense', 'self-defense'),
(98, 'Seguridad y primeros auxilios', 9, 'Safety%20%26%20First%20Aid', 'safety-and-first-aid'),
(99, 'Baile', 9, 'Dance', 'dance'),
(100, 'Meditación', 9, 'Meditation', 'meditation'),
(101, 'Cursos gratis de Fotografía', 10, 'Photography', 'photography-free'),
(102, 'Fotografía digital', 10, 'Digital%20Photography', 'digital-photography'),
(103, 'Fundamentos de fotografía', 10, 'Photography%20Fundamentals', 'photography-fundamentals'),
(104, 'Retratos', 10, 'Portraits', 'portraits'),
(105, 'Paisajes', 10, 'Landscape', 'landscape'),
(106, 'Blanco y negro', 10, 'Black%20%26%20White', 'black-and-white'),
(107, 'Herramientas de fotografía', 10, 'Photography%20Tools', 'photography-tools'),
(108, 'Fotografía móvil', 10, 'Mobile%20Photography', 'mobile-photography'),
(109, 'Fotografía de viajes', 10, 'Travel%20Photography', 'travel-photography'),
(110, 'Fotografía comercial', 10, 'Commercial%20Photography', 'commercial-photography'),
(111, 'Fotografía para bodas', 10, 'Wedding%20Photography', 'wedding-photography'),
(112, 'Fotografía de naturaleza', 10, 'Wildlife%20Photography', 'wildlife-photography'),
(113, 'Diseño de vídeo', 10, 'Video%20Design', 'video-design'),
(114, 'Cursos gratis de Estilo de vida', 11, 'Lifestyle', 'lifestyle-free'),
(115, 'Artes y manualidades', 11, 'Arts%20%26%20Crafts', 'arts-and-crafts'),
(116, 'Comida y bebida', 11, 'Food%20%26%20Beverage', 'food-and-beverage'),
(117, 'Belleza y maquillaje', 11, 'Beauty%20%26%20Makeup', 'beauty-and-makeup'),
(118, 'Viajes', 11, 'Travel', 'travel'),
(119, 'Juegos', 11, 'Gaming', 'gaming'),
(120, 'Bricolaje', 11, 'Home%20Improvement', 'home-improvement'),
(121, 'Cuidado y entrenamiento de mascotas', 11, 'Pet%20Care%20%26%20Training', 'pet-care-and-training'),
(122, 'Cursos gratis de Idiomas', 12, 'Language', 'language-free'),
(123, 'Inglés', 12, 'English', 'english'),
(124, 'Español', 12, 'Spanish', 'spanish'),
(125, 'Alemán', 12, 'German', 'german'),
(126, 'Francés', 12, 'French', 'french'),
(127, 'Japonés', 12, 'Japanese', 'japanese'),
(128, 'Portugués', 12, 'Portuguese', 'portuguese'),
(129, 'Chino', 12, 'Chinese', 'chinese'),
(130, 'Ruso', 12, 'Russian', 'russian'),
(131, 'Latín', 12, 'Latin', 'latin'),
(132, 'Árabe', 12, 'Arabic', 'arabic'),
(133, 'Hebreo', 12, 'Hebrew', 'hebrew'),
(134, 'Italiano', 12, 'Italian', 'italian'),
(135, 'Cursos gratis de formación de profesorado', 13, 'Teacher%20Training', 'teacher-training-free'),
(136, 'Diseño educativo', 13, 'Instructional%20Design', 'instructional-design'),
(137, 'Desarrollo educativo', 13, 'Educational%20Development', 'educational-development'),
(138, 'Herramientas de enseñanza', 13, 'Teaching%20Tools', 'teaching-tools'),
(139, 'Cursos gratis de Estudios Académicos', 14, 'Academics', 'academics-free'),
(140, 'Ciencias Sociales', 14, 'Social%20Science', 'social-science'),
(141, 'Matemáticas y Ciencias', 14, 'Math%20%26%20Science', 'math-and-science'),
(142, 'Humanidades', 14, 'Humanities', 'humanities'),
(143, 'Cursos gratis para preparación de exámenes', 15, 'Test%20Prep', 'test-prep-free'),
(144, 'Examen de acceso a programas de posgrado', 15, 'Grad%20Entry%20Exam', 'grad-entry-exam'),
(145, 'Examen de acceso a la universidad', 15, 'College%20Entry%20Exam', 'college-entry-exam'),
(146, 'Técnicas de preparación para exámenes', 15, 'Test%20Taking%20Skills', 'test-taking-skills');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
