-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2021 a las 23:04:01
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tpe`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `champions`
--

CREATE TABLE `champions` (
  `id_pj` int(250) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `history` varchar(2000) NOT NULL,
  `id_roll` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `champions`
--

INSERT INTO `champions` (`id_pj`, `name`, `description`, `history`, `id_roll`) VALUES
(13, 'Ashe', 'La arquera de hielo', 'Ashe, comandante hija del hielo de la tribu de Avarosa, lidera las hordas más numerosas del norte. Impasible, inteligente e idealista, aunque incómoda en su papel de líder, utiliza los poderes mágicos ancestrales de su linaje para empuñar un arco de Hielo Puro. Su gente cree que Ashe es la heroína mitológica Avarosa reencarnada, y ella espera unificar Freljord una vez más al recuperar sus antiguas tierras tribales.', 15),
(14, 'Ezreal', 'El explorador prodigio', 'Ezreal, un aventurero aficionado a deslizarse y dotado de artes mágicas sin saberlo, saquea catacumbas perdidas, lidia con maldiciones ancestrales y supera con facilidad adversidades imposibles. De valor y chulería sin límites, prefiere improvisar para salir de cualquier situación peliaguda, confiando en parte en su ingenio, pero sobre todo en su guantelete místico de Shurima, que utiliza para desatar devastadoras ondas explosivas arcanas. Una cosa sí es segura: cuando Ezreal se deja ver, los problemas no andan muy por detrás. Ni muy por delante. Seguramente estén por todas partes.', 15),
(15, 'Draven', 'El ejecutor glorioso', 'En Noxus, los guerreros conocidos como \'justicieros\' se enfrentan en recintos donde corre la sangre y se pone a prueba la fortaleza. Pero ninguno ha alcanzado la fama de Draven, un antiguo soldado cuyo sentido del espectáculo y habilidad sin igual con las hachas giratorias son enormemente apreciados por la multitud. Adicto al exhibicionismo de su propia e impetuosa perfección, Draven se ha jurado derrotar a quien sea necesario con tal de asegurarse de que su nombre se coree por todo el imperio para siempre.', 15),
(16, 'Jhin', 'El virtuoso', 'Jhin es un meticuloso criminal psicópata que ve el asesinato como arte. Otrora prisionero jonio, fue liberado gracias a los sombríos tejemanejes del consejo de Jonia. Ahora, el asesino en serie trabaja como sicario de la secta. Con su pistola como pincel, la obra de Jhin muestra un arte brutal, tanto para las víctimas como para los espectadores. Encuentra un cruel placer en la escenificación atroz, lo cual lo convierte en un candidato sin igual para mandar el más poderoso de los mensajes: el terror.', 15),
(17, 'Kai\'Sa', 'La hija del vacio', 'Reclamada por el Vacío cuando era solo una niña, Kai\'Sa logró sobrevivir por pura tenacidad y fuerza de voluntad. Sus experiencias la han convertido en una cazadora letal y, para algunos, el presagio de un futuro que preferirían no vivir para ver. Ahora que ha entrado en una tensa simbiosis con un caparazón viviente del Vacío, pronto llegará el momento de decidir si perdona a aquellos mortales que la llaman monstruo y se alía con ellos para tratar de derrotar a la oscuridad que se avecina... o simplemente deja que su mente olvide y que el Vacío consuma el mundo que la abandonó.', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolls`
--

CREATE TABLE `rolls` (
  `id_roll` int(225) NOT NULL,
  `roll` varchar(45) NOT NULL,
  `description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rolls`
--

INSERT INTO `rolls` (`id_roll`, `roll`, `description`) VALUES
(10, 'Magos', 'Los magos son por lo general campeones a distancia que priorizan habilidades y hechizos poderosos por sobre sus ataque básicos. Tipicamente, los magos se caracterizan por tener una combinación de hechizos de larga distancia, area de efecto (AoE) o de gran utilidad para realizar su trabajo.'),
(11, 'Asesinos', 'Un Asesino es un campeón especializado en matar o desestabilizar objetivos de alto valor estratégico. Orientados a la infiltración, engaño, y movimiento, los Asesinos son cazadores oportunistas que buscan el momento favorable antes de entrar al combate. Independientemente del tamaño del equipo enemigo, el Asesino se especializa en el arte de ocultarse y matar. Atacan cuando llega el momento – ni antes, ni después.'),
(12, 'Tanques', 'Los Tanques son campeones de combate cuerpo a cuerpo que sacrifican el daño a cambio de un poderoso control de masas. Si bien son capaces de enfrentarse a enemigos en combate, el objetivo de un tanque no es matar enemigos; más bien, los tanques se destacan por desestabilizar a los enemigos y desviar el foco hacia ellos mismos, lo que les permite bloquear objetivos específicos (o varios objetivos a la vez), así como eliminar (o pelar ) amenazas de sus aliados.'),
(15, 'Tiradores', 'Los Tiradores son campeones a distancia cuyo poder gira casi exclusivamente en torno a sus ataques básicos: utilizando su alcance para causar daños continuos masivos desde la distancia, los tiradores son capaces de derribar incluso al más duro de los oponentes cuando se coloca detrás de la seguridad de su equipo, y sobresalen en asegurar los objetivos del mapa, como el Dragon, el Baron Nashor y las torretas.'),
(16, 'Luchadores', 'El rol del Luchador es el de combatiente de corto alcance, posee capacidad ofensiva-defensiva balanceada. No poseen la capacidad de absorción de daño de un Tanque ni infligen daño como un Asesino, el daño de un Luchador ejercido de continuo, hace de él una mayor amenaza. Cada Luchador posee una mezcla única de movilidad, daño, disrupción y supervivencia.'),
(17, 'Soportes', 'Los campeones de soporte se centran en ayudar a sus aliados mediente bonificaciones, escudos y/o curas para ellos o bien disrumpiendo las lineas enemigas mediante el uso de Control de masas (CC). Desde la fase de lineas hasta finales de la partida, los soportes otorgan ventajas y crean oportunidades para sus compañeros de equipo puedan capitalizar. Un soporte habilidoso le da a su equipo la ayuda necesaria para poder llevarse la victoria y bien es capaz de cambiar el resultado de la batalla con una buena jugada.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user`, `password`) VALUES
(18, 'tomas', '$2y$10$fWxdfDWNGjFz58.kbY2bRe14.HcRw.5FJs5MDyuxP9H'),
(19, '123', '$2y$10$HIExyzLTmLak7tsUVisS..j130l55n5jqT1JcIaBh94'),
(20, 'lau', '$2y$10$xqadQ05eBKVLE1is0alfBO2IhKD7PgpYq.oAGCw8uBy9a3j.t6b2i'),
(21, 'hola', '$2y$10$W.4qudGliTFNce2RullLwuxzdbxi54lMd8BdvXD6sKd1B6kjLfUN6'),
(22, 'manolo', '$2y$10$65wgnzNMZcSFO7qs8q2.ye3KocfVpwP.f5hPYYiWd7KS.UYfxkZpK');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`id_pj`),
  ADD KEY `id_roll` (`id_roll`);

--
-- Indices de la tabla `rolls`
--
ALTER TABLE `rolls`
  ADD PRIMARY KEY (`id_roll`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `champions`
--
ALTER TABLE `champions`
  MODIFY `id_pj` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `rolls`
--
ALTER TABLE `rolls`
  MODIFY `id_roll` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `champions`
--
ALTER TABLE `champions`
  ADD CONSTRAINT `champions_ibfk_1` FOREIGN KEY (`id_roll`) REFERENCES `rolls` (`id_roll`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
