-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2021 a las 23:38:43
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
  `id_pj` int(200) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) NOT NULL,
  `history` varchar(1000) NOT NULL,
  `id_roll` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `champions`
--

INSERT INTO `champions` (`id_pj`, `name`, `description`, `history`, `id_roll`) VALUES
(1, 'Ashe', 'la arquera de hielo.', 'Ashe, comandante hija del hielo de la tribu de Avarosa, lidera las hordas más numerosas del norte. Impasible, inteligente e idealista, aunque incómoda en su papel de líder, utiliza los poderes mágicos ancestrales de su linaje para empuñar un arco de Hielo Puro. Su gente cree que Ashe es la heroína mitológica Avarosa reencarnada, y ella espera unificar Freljord una vez más al recuperar sus antiguas tierras tribales.', 5),
(2, 'Ezreal', ' el explorador prodigio', 'Ezreal, un aventurero aficionado a deslizarse y dotado de artes mágicas sin saberlo, saquea catacumbas perdidas, lidia con maldiciones ancestrales y supera con facilidad adversidades imposibles. De valor y chulería sin límites, prefiere improvisar para salir de cualquier situación peliaguda, confiando en parte en su ingenio, pero sobre todo en su guantelete místico de Shurima, que utiliza para desatar devastadoras ondas explosivas arcanas. Una cosa sí es segura: cuando Ezreal se deja ver, los problemas no andan muy por detrás. Ni muy por delante. Seguramente estén por todas partes.', 5),
(3, 'Jhin', 'el virtuoso', 'Jhin es un meticuloso criminal psicópata que ve el asesinato como arte. Otrora prisionero jonio, fue liberado gracias a los sombríos tejemanejes del consejo de Jonia. Ahora, el asesino en serie trabaja como sicario de la secta. Con su pistola como pincel, la obra de Jhin muestra un arte brutal, tanto para las víctimas como para los espectadores. Encuentra un cruel placer en la escenificación atroz, lo cual lo convierte en un candidato sin igual para mandar el más poderoso de los mensajes: el terror.', 5),
(4, 'Draven', ' el ejecutor glorioso.', 'En Noxus, los guerreros conocidos como \'justicieros\' se enfrentan en recintos donde corre la sangre y se pone a prueba la fortaleza. Pero ninguno ha alcanzado la fama de Draven, un antiguo soldado cuyo sentido del espectáculo y habilidad sin igual con las hachas giratorias son enormemente apreciados por la multitud. Adicto al exhibicionismo de su propia e impetuosa perfección, Draven se ha jurado derrotar a quien sea necesario con tal de asegurarse de que su nombre se coree por todo el imperio para siempre.', 5),
(5, 'Jinx', 'La bala perdida.', 'Jinx, una criminal perturbada e impulsiva de Zaun, vive para sembrar el caos sin importarle las consecuencias. Provoca las explosiones más ruidosas y cegadoras con su arsenal de armas letales para dejar un rastro de terror y destrucción a su paso. Jinx aborrece el aburrimiento y disfruta dejando su peculiar impronta allá donde va.', 5),
(8, 'Veigar', 'el pequeño maestro del mal.', 'Entusiasta maestro de la magia negra, Veigar ha hecho suyos poderes a los que pocos mortales se atreven a acercarse. Como espíritu de Ciudad de Bandle, buscó durante mucho tiempo deshacerse de las limitaciones de la magia yordle, así que su atención se posó sobre unos textos arcanos que habían estado escondidos durante siglos. Ahora, dada su terquedad y su curiosidad infinita por los misterios del universo, Veigar es menospreciado a menudo pero, aunque él se ve a sí mismo como una fuerza del mal, posee una moral interior que lleva a algunos a cuestionar sus motivaciones ulteriores.', 1),
(9, 'Aurelion Sol', ' el forjador de las estrellas.', 'Aurelion Sol solía agraciar al vasto vacío del cosmos con las maravillas celestiales que él mismo ideaba. Ahora, se ve forzado a hacer uso de su increíble poder para satisfacer los deseos de un imperio espacial que lo ha engañado para convertirlo en su esclavo. Aurelion Sol desea regresar a su vida como forjador de estrellas, por lo que no dudará en hacer uso del mismísimo firmamento para recuperar su libertad.', 1),
(10, 'LeBlanc', ' la embaucadora', 'Misteriosa incluso para el resto de miembros de la camarilla de la Rosa Negra, LeBlanc es uno de los muchos nombres que usa una mujer pálida que ha manipulado a la gente y a los sucesos desde los primeros días de Noxus. Con el uso de la magia para reflejarse, la hechicera puede aparecérsele a cualquiera, donde sea e, incluso, en varios sitios a la vez. Siempre está conspirando donde nadie la ve y sus verdaderos motivos son tan inescrutables como su identidad cambiante.', 1),
(11, 'Orianna', ' la dama mecánica.', 'Orianna, antaño una chica curiosa de carne y hueso, es ahora una maravilla tecnológica compuesta exclusivamente de engranajes. Cayó gravemente enferma tras un accidente en los distritos inferiores de Zaun y su cuerpo moribundo tuvo que ser reemplazado pieza a pieza con mecanismos de extrema precisión. Con su extraordinaria esfera de metal, que ella misma construyó como medio de protección y compañía, Orianna es hoy libre para explorar las maravillas de Piltover... y más allá.', 1),
(12, 'Vladimir', ' el segador carmesí.', 'Un demonio con sed de sangre mortal, Vladimir ha influido en el destino de Noxus desde los primeros días del imperio. Además de alargar su vida de forma sobrenatural, su amplio conocimiento de la hemomancia le posibilita controlar el cuerpo y la mente de otros como propios. Esto le ha permitido construir un culto fanático a su personalidad en los pomposos salones de la aristocracia noxiana... mientras drena la sangre de sus enemigos en callejones oscuros y recónditos.', 1),
(13, 'Talon', ' La sombra de la espada', 'Talon es el cuchillo de la oscuridad, un asesino despiadado capaz de atacar sin previo aviso y huir antes de que salte alarma alguna. Logró granjearse una peligrosa reputación en las terribles calles de Noxus, donde se vio obligado a luchar, matar y robar para sobrevivir. Talon, adoptado por la ilustre familia Du Couteau, ejerce ahora su letal profesión a las órdenes del imperio, asesinando líderes, capitanes y héroes rivales, además de noxianos lo bastante osados como para atraerse la enemistad de sus dirigentes.', 3),
(14, 'Zed', ' el maestro de las sombras', 'Zed, despiadado y nada compasivo, es el líder de la Orden de la Sombra, una organización que él mismo creó con el propósito de militarizar las tradiciones marciales y mágicas de Jonia para expulsar a los invasores noxianos. Durante la guerra, la desesperación lo llevó a desbloquear la forma secreta de las sombras, un espíritu mágico tan peligroso y corrupto como poderoso. Zed ha dominado todas las técnicas prohibidas para destruir todo aquello que amenace a su nación o a su nuevo orden.', 3),
(17, 'Shaco', ' el bufón siniestro', 'Shaco fue fabricado hace mucho tiempo para entretener a un príncipe solitario, pero ahora la marioneta encantada se regocija en la muerte y el caos. El otrora adorable muñeco fue corrompido por magia oscura y por la pérdida de su amado dueño, de modo que ahora solo se recrea en el dolor de las pobres almas que atormenta. Shaco emplea juguetes y trucos sencillos con efectos devastadores y se regodea con los resultados de sus sanguinarias ocurrencias. Si alguna vez oís una risita misteriosa en mitad de la noche, puede que el bufón siniestro os haya elegido como la siguiente víctima de su macabra diversión.', 3),
(18, 'Rengar', ' El acechador orgulloso', 'Rengar es un feroz cazador de trofeos vastaya que vive por el placer de perseguir y asesinar criaturas peligrosas. Explora el mundo en busca de las bestias más aterradoras, pero, ante todo, quiere encontrar alguna pista que lo lleve hasta Kha\'Zix, la criatura del Vacío que le arrebató un ojo. Rengar no acosa a su presa por comida ni por gloria, sino únicamente por la belleza de la persecución.', 3),
(19, 'Malphite', ' el fragmento del monolito.', 'Como una criatura enorme de piedra viviente, a Malphite le cuesta imponer el orden en un mundo caótico. Creado como sirviente de fragmentos de un obelisco sobrenatural conocido como el Monolito, usó su increíble fuerza elemental para mantener y proteger a su progenitor, pero acabó por fracasar en su labor. El único superviviente de la destrucción ahora padece a los blandengues de Runaterra y sus naturalezas fluidas, mientras se esfuerza en buscar un nuevo rol digno del último de los de su especie.', 4),
(20, 'Maokai', ' el treant retorcido.', 'Maokai es un imponente y feroz treant que lucha contra los horrores antinaturales de las Islas de la Sombra. Las ansias de venganza le inundaron después de que un cataclismo mágico destruyera su hogar, y sobrevive a la podredumbre únicamente por las aguas de vida imbuidas en su duramen. Maokai, antaño un espíritu de la naturaleza pacífico, lucha ahora con fiereza para desterrar la plaga de no vida de las Islas de la Sombra y restituir la anterior belleza de su hogar.', 4),
(23, 'Ornn', ' las llamas de la forja.', 'Ornn es el espíritu de Freljord de la forja y la artesanía. Trabaja en la soledad de una enorme forja esculpida en las cavernas de lava bajo el volcán de Dulcehogar. En ella modela objetos de calidad sin igual y depura menas en burbujeantes calderos de roca fundida. Cuando otras deidades (sobre todo Volibear) merodean por la tierra y se entrometen en asuntos de mortales, Ornn se ofrece para poner a estos seres impetuosos en su sitio, ya sea con su fiel martillo o con la furia de las mismísimas montañas.', 4),
(24, 'Sion', 'el coloso no muerto.', 'Sion fue un héroe de guerra en el pasado y los noxianos lo veneraban porque había arrebatado la vida de un rey demaciano con sus simples manos. No obstante, se le denegó su viaje al más allá, pues fue revivido para servir a su imperio incluso después de muerto. Sus masacres indiscriminadas se sucedieron contra todos aquellos que se interpusieran en su camino, sin importar su facción, lo que demostró que ya no quedaba ni rastro de humanidad en su interior. Pese a todo, Sion lucha desenfrenadamente provisto únicamente de una armadura remachada a su piel putrefacta, pugnando por recordar su verdadero yo entre hachazo y hachazo.', 4),
(25, 'Shen', 'el ojo del crepúsculo.', 'Shen, el Ojo del Crepúsculo, es el cabecilla de los sigilosos guerreros de Jonia conocidos como Kinkou. Su objetivo es mantenerse libre de las ataduras de cualquier emoción, prejuicio o ego, y avanza por el camino invisible del juicio desapasionado, entre el reino espiritual y el mundo físico. La tarea de Shen reside en hacer cumplir el equilibrio entre ambos mundos, y hará uso de sus espadas de acero y energía arcana ante todo aquel que ose amenazar dicha armonía.', 4),
(26, 'Kha´Zix', ' el saqueador del vacio', 'El Vacío crece y el Vacío se adapta; verdades que son más evidentes en Kha\'Zix que en ningún otro de sus innumerables engendros. La evolución impulsa el núcleo de este horror mutante, nacido para sobrevivir y matar a los fuertes. Cuando se esfuerza por hacerlo, crea formas nuevas y más efectivas de contrarrestar y matar a su presa. Una bestia descerebrada en sus comienzos, la inteligencia de Kha\'Zix se ha desarrollado tanto como su forma. Ahora, la criatura planea sus cazas e incluso se aprovecha del terror visceral que engendra en sus víctimas.', 3),
(27, 'Bardo', ' el guardián errante.', 'Bardo, un viajero de más allá de las estrellas, es un agente de la serendipia que lucha para mantener un equilibrio en el que la vida pueda soportar la indiferencia del caos. Muchos habitantes de Runaterra cantan canciones que hablan de su naturaleza extraordinaria, pero todos están de acuerdo en que el vagabundo cósmico se siente atraído por los artefactos de gran poder mágico. Rodeado por un jubiloso coro de meeps, espíritus serviciales, es imposible creer que sus acciones son malévolas, ya que Bardo siempre sirve al bien mayor... a su manera.', 6),
(28, 'Leona', ' el amanecer radiante.', 'Imbuida del fuego del sol, Leona es una guerrera sagrada de los Solari que defiende el Monte Targon con su Hoja del cénit y su Escudo del amanecer. Su piel brilla como las estrellas y sus ojos resplandecen con el poder del aspecto celestial de su interior. Con su armadura de oro y con el peso de una terrible carga de conocimiento ancestral, Leona otorga la iluminación a unos y la muerte a otros.', 6),
(29, 'Pyke', ' el destripador de los puertos.', 'A Pyke, un conocido arponero de los muelles del matadero de Aguas Estancadas, le esperaba la muerte en el estómago de una gigantesca criatura marina... y sin embargo, regresó. Desde entonces acecha en los fríos y húmedos callejones y caminos de la que fue su ciudad natal, donde usa sus dones sobrenaturales para dar una rápida y truculenta muerte a quienes se ganan la vida explotando a otros. Cómo son las cosas: una ciudad que se enorgullece de cazar monstruos ahora tiene un monstruo que caza a sus habitantes.', 6),
(30, 'Soraka', ' la hija de las estrellas.', 'Soraka, una nómada proveniente de las dimensiones celestiales más allá del monte Targon, dejó a un lado su inmortalidad para proteger a las razas mortales de sus propios instintos asesinos. Su cometido es difundir las virtudes de la compasión y la misericordia entre todos los seres con los que se cruza, e incluso sanar a aquellos que desean hacerle daño. Pese a los problemas que ha presenciado Soraka hasta la fecha, sigue creyendo firmemente que los pueblos de Runaterra no han alcanzado todo su potencial.', 6),
(31, 'Taric', ' el escudo de Valoran.', 'Taric es el Aspecto del Protector, y gracias a su increíble poder es el guardián de la vida, el amor y la belleza en Runaterra. Caído en desgracia debido a la negligencia de su deber y exiliado de su hogar, Demacia, Taric ascendió al Monte Targon buscando la redención, y lo que encontró en la cima fue la llamada de las estrellas. Imbuido con el poder del Targon ancestral, el Escudo de Valoran no descansa en su deber de vigilar la traicionera corrupción del Vacío', 6),
(32, 'Mordekaiser', ' La pesadilla de hierro', 'El Vacío crece y el Vacío se adapta; verdades que son más evidentes en Kha\'Zix que en ningún otro de sus innumerables engendros. La evolución impulsa el núcleo de este horror mutante, nacido para sobrevivir y matar a los fuertes. Cuando se esfuerza por hacerlo, crea formas nuevas y más efectivas de contrarrestar y matar a su presa. Una bestia descerebrada en sus comienzos, la inteligencia de Kha\'Zix se ha desarrollado tanto como su forma. Ahora, la criatura planea sus cazas e incluso se aprovecha del terror visceral que engendra en sus víctimas.', 2),
(33, 'Renekton', ' El carnicero de las arenas', 'Renekton es una terrorífica criatura Ascendida movida por la ira y procedente de los desiertos abrasadores de Shurima. En su día fue el guerrero más admirado del imperio, un líder que condujo a los ejércitos de la nación a incontables victorias. Sin embargo, tras la caída del imperio, Renekton quedó sepultado bajo las arenas, donde lentamente sucumbió a la locura mientras el mundo seguía girando y cambiando. Ahora, libre de nuevo, le carcome el ansia de hallar a su hermano Nasus y acabar con él, pues lo culpa en su locura de los siglos pasados entre las tinieblas.', 2),
(34, 'Sett', ' El jefe', 'Sett es una prominente figura en los emergentes círculos criminales jonios, que aseguró su posición al inicio de la guerra con Noxus. A pesar de sus humildes comienzos como luchador en el foso de Navori, no tardó en labrarse una reputación con la ayuda de su desmesurada fuerza y su capacidad para aguantar palizas terribles. Tras abrirse paso entre los contendientes locales, Sett reina ahora por la fuerza en el foso en el que antes luchaba.', 2),
(35, 'Vi', ' La agente de Piltover', 'Otrora delincuente en las perversas calles de Zaun, Vi es una mujer impulsiva e imponente con muy poco respeto por las figuras de la autoridad. Tras crecer sola, Vi desarrolló y perfeccionó sus instintos de supervivencia, así como un áspero sentido del humor lleno de malicia. Ahora trabaja con los Guardianes de Piltover para mantener la paz y se vale de sus poderosos guanteletes hextech, que pueden golpear a través de las paredes y de los sospechosos con la misma facilidad.', 2),
(36, 'Volibear', ' La tormenta Incesante', 'Para aquellos que aún lo veneran, Volibear es la encarnación de la tormenta. Destructivo, salvaje y decidido, existe desde antes de que los mortales pusieran pie en las tundras de Freljord y protege con fiereza las tierras que creó junto a sus hermanos semidioses. Ha desarrollado un profundo odio por la civilización y la debilidad que, a sus ojos, ha traído consigo, y lucha para regresar a las costumbres de antaño, cuando la tierra era salvaje y la sangre fluía sin reparos. Con sus dientes, sus garras y su atronadora presencia, acaba con todo aquel que se oponga a su visión.', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolls`
--

CREATE TABLE `rolls` (
  `id_roll` int(11) NOT NULL,
  `roll` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rolls`
--

INSERT INTO `rolls` (`id_roll`, `roll`, `description`) VALUES
(1, 'Magos', 'Los magos son por lo general campeones a distancia que priorizan habilidades y hechizos poderosos por sobre sus ataque básicos. Tipicamente, los magos se caracterizan por tener una combinación de hechizos de larga distancia, area de efecto (AoE) o de gran utilidad para realizar su trabajo.\r\n'),
(2, 'Luchadores', 'El rol del Luchador es el de combatiente de corto alcance, posee capacidad ofensiva-defensiva balanceada. No poseen la capacidad de absorción de daño de un Tanque ni infligen daño como un Asesino, el daño de un Luchador ejercido de continuo, hace de él una mayor amenaza. Cada Luchador posee una mezcla única de movilidad, daño, disrupción y supervivencia.\r\n'),
(3, 'Asesinos', 'Un Asesino es un campeón especializado en matar o desestabilizar objetivos de alto valor estratégico. Orientados a la infiltración, engaño, y movimiento, los Asesinos son cazadores oportunistas que buscan el momento favorable antes de entrar al combate. Independientemente del tamaño del equipo enemigo, el Asesino se especializa en el arte de ocultarse y matar. Atacan cuando llega el momento – ni antes, ni después.\r\n'),
(4, 'Tanques', 'Los Tanques son campeones de combate cuerpo a cuerpo que sacrifican el daño a cambio de un poderoso control de masas. Si bien son capaces de enfrentarse a enemigos en combate, el objetivo de un tanque no es matar enemigos; más bien, los tanques se destacan por desestabilizar a los enemigos y desviar el foco hacia ellos mismos, lo que les permite bloquear objetivos específicos (o varios objetivos a la vez), así como eliminar (o pelar ) amenazas de sus aliados.\r\n'),
(5, 'Tiradores', 'Los Tiradores son campeones a distancia cuyo poder gira casi exclusivamente en torno a sus ataques básicos: utilizando su alcance para causar daños continuos masivos desde la distancia, los tiradores son capaces de derribar incluso al más duro de los oponentes cuando se coloca detrás de la seguridad de su equipo, y sobresalen en asegurar los objetivos del mapa, como el Dragon, el Baron Nashor y las torretas.\r\n'),
(6, 'Soportes', 'Los campeones de soporte se centran en ayudar a sus aliados mediante bonificaciones, escudos y/o curas para ellos o bien disrumpiendo las lineas enemigas mediante el uso de Control de masas (CC). Desde la fase de lineas hasta finales de la partida, los soportes otorgan ventajas y crean oportunidades para sus compañeros de equipo puedan capitalizar. Un soporte habilidoso le da a su equipo la ayuda necesaria para poder llevarse la victoria y bien es capaz de cambiar el resultado de la batalla con una buena jugada.\r\n\r\n');

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `champions`
--
ALTER TABLE `champions`
  MODIFY `id_pj` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `champions`
--
ALTER TABLE `champions`
  ADD CONSTRAINT `champions_ibfk_1` FOREIGN KEY (`id_roll`) REFERENCES `rolls` (`id_roll`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
