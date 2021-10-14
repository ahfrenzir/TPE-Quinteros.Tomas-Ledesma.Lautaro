-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2021 a las 21:26:47
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
(17, 'Kai\'Sa', 'La hija del vacio', 'Reclamada por el Vacío cuando era solo una niña, Kai\'Sa logró sobrevivir por pura tenacidad y fuerza de voluntad. Sus experiencias la han convertido en una cazadora letal y, para algunos, el presagio de un futuro que preferirían no vivir para ver. Ahora que ha entrado en una tensa simbiosis con un caparazón viviente del Vacío, pronto llegará el momento de decidir si perdona a aquellos mortales que la llaman monstruo y se alía con ellos para tratar de derrotar a la oscuridad que se avecina... o simplemente deja que su mente olvide y que el Vacío consuma el mundo que la abandonó.', 15),
(22, 'Volibear', 'La tormenta Incesante', 'Para aquellos que aún lo veneran, Volibear es la encarnación de la tormenta. Destructivo, salvaje y decidido, existe desde antes de que los mortales pusieran pie en las tundras de Freljord y protege con fiereza las tierras que creó junto a sus hermanos semidioses. Ha desarrollado un profundo odio por la civilización y la debilidad que, a sus ojos, ha traído consigo, y lucha para regresar a las costumbres de antaño, cuando la tierra era salvaje y la sangre fluía sin reparos. Con sus dientes, sus garras y su atronadora presencia, acaba con todo aquel que se oponga a su visión.', 16),
(23, 'Vi', ' La agente de piltover', 'Otrora delincuente en las perversas calles de Zaun, Vi es una mujer impulsiva e imponente con muy poco respeto por las figuras de la autoridad. Tras crecer sola, Vi desarrolló y perfeccionó sus instintos de supervivencia, así como un áspero sentido del humor lleno de malicia. Ahora trabaja con los Guardianes de Piltover para mantener la paz y se vale de sus poderosos guanteletes hextech, que pueden golpear a través de las paredes y de los sospechosos con la misma facilidad.', 16),
(24, 'Sett', 'El jefe', 'Sett es una prominente figura en los emergentes círculos criminales jonios, que aseguró su posición al inicio de la guerra con Noxus. A pesar de sus humildes comienzos como luchador en el foso de Navori, no tardó en labrarse una reputación con la ayuda de su desmesurada fuerza y su capacidad para aguantar palizas terribles. Tras abrirse paso entre los contendientes locales, Sett reina ahora por la fuerza en el foso en el que antes luchaba.', 16),
(25, 'Renekton', 'El carnicero de las arenas', 'Renekton es una terrorífica criatura Ascendida movida por la ira y procedente de los desiertos abrasadores de Shurima. En su día fue el guerrero más admirado del imperio, un líder que condujo a los ejércitos de la nación a incontables victorias. Sin embargo, tras la caída del imperio, Renekton quedó sepultado bajo las arenas, donde lentamente sucumbió a la locura mientras el mundo seguía girando y cambiando. Ahora, libre de nuevo, le carcome el ansia de hallar a su hermano Nasus y acabar con él, pues lo culpa en su locura de los siglos pasados entre las tinieblas.', 16),
(26, 'Mordekaiser', ' La pesadilla de hierro', 'Mordekaiser es un sanguinario señor de la guerra proveniente de tiempos olvidados al que los siglos han visto nacer en tres ocasiones y morir en otras dos. Utiliza sus poderes necrománticos para atar almas perdidas a una vida eterna a su servicio. Ya no quedan muchos que recuerden sus conquistas iniciales o comprendan el alcance de su poder. Aquellos que lo hacen, no obstante, temen con angustia el día en el que regrese para alzarse sobre los vivos y los muertos.', 16),
(27, 'Kha´Zix', ' el saqueador del vacio', 'El Vacío crece y el Vacío se adapta; verdades que son más evidentes en Kha\'Zix que en ningún otro de sus innumerables engendros. La evolución impulsa el núcleo de este horror mutante, nacido para sobrevivir y matar a los fuertes. Cuando se esfuerza por hacerlo, crea formas nuevas y más efectivas de contrarrestar y matar a su presa. Una bestia descerebrada en sus comienzos, la inteligencia de Kha\'Zix se ha desarrollado tanto como su forma. Ahora, la criatura planea sus cazas e incluso se aprovecha del terror visceral que engendra en sus víctimas.', 11),
(28, 'Rengar', 'El acechador orgulloso', 'Rengar es un feroz cazador de trofeos vastaya que vive por el placer de perseguir y asesinar criaturas peligrosas. Explora el mundo en busca de las bestias más aterradoras, pero, ante todo, quiere encontrar alguna pista que lo lleve hasta Kha\'Zix, la criatura del Vacío que le arrebató un ojo. Rengar no acosa a su presa por comida ni por gloria, sino únicamente por la belleza de la persecución.', 11),
(29, 'Shaco', 'el bufón siniestro', 'Shaco fue fabricado hace mucho tiempo para entretener a un príncipe solitario, pero ahora la marioneta encantada se regocija en la muerte y el caos. El otrora adorable muñeco fue corrompido por magia oscura y por la pérdida de su amado dueño, de modo que ahora solo se recrea en el dolor de las pobres almas que atormenta. Shaco emplea juguetes y trucos sencillos con efectos devastadores y se regodea con los resultados de sus sanguinarias ocurrencias. Si alguna vez oís una risita misteriosa en mitad de la noche, puede que el bufón siniestro os haya elegido como la siguiente víctima de su macabra diversión.', 11),
(30, 'Zed', 'el maestro de las sombras', 'Zed, despiadado y nada compasivo, es el líder de la Orden de la Sombra, una organización que él mismo creó con el propósito de militarizar las tradiciones marciales y mágicas de Jonia para expulsar a los invasores noxianos. Durante la guerra, la desesperación lo llevó a desbloquear la forma secreta de las sombras, un espíritu mágico tan peligroso y corrupto como poderoso. Zed ha dominado todas las técnicas prohibidas para destruir todo aquello que amenace a su nación o a su nuevo orden.', 11),
(31, 'Talon', 'La sombra de la espada', 'Talon es el cuchillo de la oscuridad, un asesino despiadado capaz de atacar sin previo aviso y huir antes de que salte alarma alguna. Logró granjearse una peligrosa reputación en las terribles calles de Noxus, donde se vio obligado a luchar, matar y robar para sobrevivir. Talon, adoptado por la ilustre familia Du Couteau, ejerce ahora su letal profesión a las órdenes del imperio, asesinando líderes, capitanes y héroes rivales, además de noxianos lo bastante osados como para atraerse la enemistad de sus dirigentes.', 11),
(32, 'Bardo', 'el guardian errante ', 'Bardo, un viajero de más allá de las estrellas, es un agente de la serendipia que lucha para mantener un equilibrio en el que la vida pueda soportar la indiferencia del caos. Muchos habitantes de Runaterra cantan canciones que hablan de su naturaleza extraordinaria, pero todos están de acuerdo en que el vagabundo cósmico se siente atraído por los artefactos de gran poder mágico. Rodeado por un jubiloso coro de meeps, espíritus serviciales, es imposible creer que sus acciones son malévolas, ya que Bardo siempre sirve al bien mayor... a su manera.', 17),
(33, 'Thresh', 'el carcelero implacable', 'Thresh, un ser sádico y astuto, es un ambicioso y trastornado espíritu de las Islas de la Sombra. Otrora guardián de innumerables secretos arcanos, acabó sucumbiendo a un poder por encima de la vida y la muerte. Ahora sobrevive torturando a sus víctimas con prolongados e inimaginables tormentos. Su último suspiro no significa el fin de sus sufrimientos, pues Thresh siembra la agonía en sus mismas almas y las aprisiona en su nefasta linterna para torturarlas durante toda la eternidad.', 17),
(34, 'Sona', 'la virtuosa de las cuerdas', 'Sona es la artista más virtuosa de Demacia con el etwahl de cuerda y solo se comunica a través de sus elegantes acordes y vibrantes melodías. Esta refinada actitud le ha hecho ganarse el favor de la alta sociedad, aunque los hay que sospechan que sus fascinantes notas emanan auténtica magia, un tabú en la cultura demaciana. Silenciosa para los extraños pero comprendida por sus íntimos, Sona puntea sus armonías con el objetivo de curar a sus aliados heridos y acabar con enemigos confiados.', 17),
(35, 'Braum', 'el corazón de Freljord', 'Bendecido con bíceps enormes y un corazón aún más grande, Braum es un héroe muy apreciado en Freljord. Todas las tabernas al norte del Fuerte Helado brindan por su fuerza legendaria. Se dice que taló un bosque de robles en una sola noche y convirtió una montaña entera en escombros. Cargando una puerta acorazada encantada a sus espaldas como escudo, Braum recorre el gélido norte luciendo una sonrisa bigotuda tan grande como sus músculos: un verdadero amigo para todos los necesitados.', 17),
(36, 'Tahm Kench', 'el rey del rio', 'Tahm Kench, al que se le han atribuido diferentes nombres a lo largo de la historia, es un demonio que viaja por los canales de Runaterra colmando su insaciable apetito con las desgracias ajenas. Pese a que pueda parecer cautivador y orgulloso, se pavonea por el mundo físico como un vagabundo en busca de una presa incauta. Su lengua, poderosa como un látigo, es capaz de aturdir incluso a un guerrero pesado desde varios metros de distancia; caer en su ruidoso estómago implica precipitarse a un abismo del que no hay esperanza de regresar.', 17),
(37, 'Veigar', 'el pequeño maestro del mal', 'Entusiasta maestro de la magia negra, Veigar ha hecho suyos poderes a los que pocos mortales se atreven a acercarse. Como espíritu de Ciudad de Bandle, buscó durante mucho tiempo deshacerse de las limitaciones de la magia yordle, así que su atención se posó sobre unos textos arcanos que habían estado escondidos durante siglos. Ahora, dada su terquedad y su curiosidad infinita por los misterios del universo, Veigar es menospreciado a menudo pero, aunque él se ve a sí mismo como una fuerza del mal, posee una moral interior que lleva a algunos a cuestionar sus motivaciones ulteriores.', 10),
(38, 'Vladimir', 'el segador carmesí', 'Un demonio con sed de sangre mortal, Vladimir ha influido en el destino de Noxus desde los primeros días del imperio. Además de alargar su vida de forma sobrenatural, su amplio conocimiento de la hemomancia le posibilita controlar el cuerpo y la mente de otros como propios. Esto le ha permitido construir un culto fanático a su personalidad en los pomposos salones de la aristocracia noxiana... mientras drena la sangre de sus enemigos en callejones oscuros y recónditos.', 10),
(39, 'Aurelion Sol', 'el forjador de estrellas', 'Aurelion Sol solía agraciar al vasto vacío del cosmos con las maravillas celestiales que él mismo ideaba. Ahora, se ve forzado a hacer uso de su increíble poder para satisfacer los deseos de un imperio espacial que lo ha engañado para convertirlo en su esclavo. Aurelion Sol desea regresar a su vida como forjador de estrellas, por lo que no dudará en hacer uso del mismísimo firmamento para recuperar su libertad.', 10),
(40, 'Ryze', 'el hechicero rúnico', '', 10),
(41, 'Twisted Fate', 'el maestro de las cartas', 'Twisted Fate es un tahúr y timador de mala reputación que ha viajado por buena parte del mundo conocido, granjeándose con su encanto y su habilidad con los naipes la admiración y la enemistad de ricos y necios por igual. Raras veces se toma las cosas con seriedad y afronta cada día con sonrisa burlona y actitud despreocupada. En todos los sentidos imaginables, Twisted Fate siempre se guarda un as en la manga.', 10),
(42, 'Malphite', 'el fragmento del monolito', 'Como una criatura enorme de piedra viviente, a Malphite le cuesta imponer el orden en un mundo caótico. Creado como sirviente de fragmentos de un obelisco sobrenatural conocido como el Monolito, usó su increíble fuerza elemental para mantener y proteger a su progenitor, pero acabó por fracasar en su labor. El único superviviente de la destrucción ahora padece a los blandengues de Runaterra y sus naturalezas fluidas, mientras se esfuerza en buscar un nuevo rol digno del último de los de su especie.', 12),
(43, 'Maokai', 'el treant retorcido', 'Maokai es un imponente y feroz treant que lucha contra los horrores antinaturales de las Islas de la Sombra. Las ansias de venganza le inundaron después de que un cataclismo mágico destruyera su hogar, y sobrevive a la podredumbre únicamente por las aguas de vida imbuidas en su duramen. Maokai, antaño un espíritu de la naturaleza pacífico, lucha ahora con fiereza para desterrar la plaga de no vida de las Islas de la Sombra y restituir la anterior belleza de su hogar.', 12),
(44, 'Ornn', 'las llamas de la forja', 'Ornn es el espíritu de Freljord de la forja y la artesanía. Trabaja en la soledad de una enorme forja esculpida en las cavernas de lava bajo el volcán de Dulcehogar. En ella modela objetos de calidad sin igual y depura menas en burbujeantes calderos de roca fundida. Cuando otras deidades (sobre todo Volibear) merodean por la tierra y se entrometen en asuntos de mortales, Ornn se ofrece para poner a estos seres impetuosos en su sitio, ya sea con su fiel martillo o con la furia de las mismísimas montañas.', 12),
(45, 'Poppy', 'la guardiana del martillo', 'En Runaterra hay un gran número de campeones valerosos, pero muy pocos son tan tenaces como Poppy. Esta yordle tan obstinada porta el legendario martillo de Orlon, que la dobla en tamaño, y se ha pasado infinidad de años buscando en secreto al famoso \'\'héroe de Demacia\'\' quien, supuestamente, es el legítimo portador de su arma. Mientras tanto, lucha diligentemente en la batalla, haciendo retroceder a los enemigos del reino con cada golpe giratorio.', 12),
(46, 'Sejuani', 'la furia del norte', 'Sejuani es la brutal e implacable comandante hija del hielo de la tribu Garra Invernal, una de las más temidas de Freljord. La supervivencia de su gente es una constante y desesperada lucha contra los elementos, lo que los obliga a asaltar a noxianos, demacianos y avarosanos por igual para soportar los gélidos inviernos. La propia Sejuani lidera la mayoría de estas peligrosas refriegas desde la montura de su jabalí drüvask, Bristle, haciendo uso de su mayal de hielo puro para congelar y hacer añicos a sus enemigos.', 12);

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
  MODIFY `id_pj` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
