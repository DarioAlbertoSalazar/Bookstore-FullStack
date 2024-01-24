-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (x86_64)
--
-- Host: localhost    Database: storebooks
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `idauthors` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idauthors`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Alejandro','Dumas'),(2,'Gustave','Flaubert'),(3,'Isaac','Asimov'),(4,'Gordon','Doherty'),(5,'Oliver','Bowden'),(6,'Luis','Perez de Sevilla'),(7,'Fernando','Nachon'),(8,'Cassandra','Clare'),(9,'J.R.R','Tolkien'),(10,'George','R.R Martin'),(11,'Diana','Gabaldon'),(12,'Max','Brooks'),(13,'H.G','Wells'),(14,'Augusto Basto','Roa'),(15,'Simone','Beauvoir'),(16,'Jose','Rodrigues Dos Santos'),(17,'Stanislaw','Lem'),(18,'Laura','Erre'),(19,'Victor','Hugo Manzanilla'),(20,'Bill','Woodicth'),(21,'David','Burkus'),(22,'Walter','Isaacson'),(23,'Chris','Jarmey'),(24,'John','Garth'),(25,'John','Howe'),(26,'Peter','Tieryas'),(27,'J.R','Rowling');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(2500) DEFAULT NULL,
  `published_year` int DEFAULT NULL,
  `num_pages` int DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `idauthors` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'La dama de las camelias','La dama de las camelias, publicada por primera vez en 1848, es una novela firmada por Alexandre Dumas (hijo). La obra está inspirada en un hecho real de la vida de Alexandre, donde narra con extraordinaria maestría el apasionado romance que sostuvo con Marie Duplessis, Joven y célebre cortesana de París, quien mantuvo distintas relaciones con grandes personajes de la vida social de su época. La novela pertenece al movimiento literario que se conocería más tarde como realismo, siendo una de las primeras que formarían parte de la transición del romanticismo. El compositor italiano Giuseppe Verdi se basó en esta novela para crear su afamada ópera La traviata (La extraviada).',2022,214,'Editores mexicanos unidos','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9786071438324_f16f.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',1),(2,'Madame Bovary','Emma, la protagonista de esta historia, en su anhelo por escapar de una monótona vida campestre, se casa con un médico rural de apellido Bovary, cuya mediocridad y deslucimiento la impulsan a ir en busca de sus propios deseos, atraída por irreales lujos y amores idílicos. Así, sin darse cuenta, comienza a extinguirse, Junto con su sueño romántico, en la vorágine de un placer esclavizante. Madame Bovary es, sin duda, el más bello logro de Flaubert y una de las obras maestras más sobresalientes de la historia de la literatura. En ella captura, a través de su personaje, la esencia de los valores de una sociedad burguesa que, conducida únicamente por sus impulsos, antepone lo material a lo espiritual y se encuentra gobernada por la sensualidad de una existencia cuyo único sentido y fin es el goce personal.',2022,439,'Editores mexicanos unidos','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9786071438300_1b68.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',2),(3,'Yo, robot (BG)','Yo, robot mezcla hechos científicos con ciencia ficción en un equilibrio perfecto que consolidó a Isaac Asimov como el padre del género de la ciencia ficción. Ésta es su obra más aclamada. Las tres leyes de la robótica son: 1. Un robot no debe dañar a un ser humano o, por su inacción, dejar que un ser humano sufra daño. 2. Un robot debe obedecer las órdenes que le son dadas por un ser humano, excepto cuando estas órdenes se oponen a la Primera Ley. 3. Un robot debe proteger su propia existencia hasta donde esa protección no entre en conflicto con la Primera o Segunda Ley. Con estas tres sencillas directrices, Isaac Asimov cambió la manera en que percibimos a los robots. Una investigación llevada a cabo por un periodista acerca de la trayectoria de la robopsicóloga Susan Calvin da pie a los nueve relatos que componen esta novela. Yo, robot presenta una crónica del desarrollo de estas máquinas, desde sus orígenes primitivos hasta su perfeccionamiento último en un futuro no tan lejano, un tiempo en el que el hombre quizá se vuelva obsoleto...',2022,376,'Gandhi editores','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9786073824668_79df.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',3),(4,'Assassins Creed Odyssey','Grecia, siglo V a.C. Kassandra es una mercenaria de sangre espartana, condenada a muerte por su familia, al exilio. Ahora se embarcará en un viaje épico para convertirse en una heroína legendaria y descubrir la verdad sobre su misterioso linaje.',2019,320,'Minotauro','https://www.gandhi.com.mx/media/catalog/product/9/7/9786070760938_675d.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',4),(5,'Assassins Creed Origins: Desert Oath','Egipto, 70 a.C., un asesino despiadado acecha la Tierra. Su misión: encontrar y destruir a los últimos miembros de una orden antigua, el Medjay, para erradicar la línea de sangre. En la pacífica Siwa, el protector de la ciudad se va abruptamente, dejando a su hijo adolescente, Bayek, con preguntas sobre su propio futuro y un sentido de propósito que sabe que debe cumplir. Bayek sale en busca de respuestas, su viaje lo lleva por el Nilo y atraviesa un Egipto en estado de confusión, enfrentando los peligros y los misterios del camino del Medjay.',2019,320,'Minotauro','https://www.gandhi.com.mx/media/catalog/product/9/7/9786070762727_faac.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',5),(6,'Assassins Creed. Brotherhood','La ciudad de Roma, que una vez fue poderosa capital de un esplendoroso imperio, está ahora en ruinas y devastada por el sufrimiento que inflige la tiranía de los Borgia. Solo el maestro asesino, Ezio Auditore podrá liberar al pueblo del yugo de los Borgia. No lo tendrá fácil, pues César Borgia amenaza con conquistar Italia.Ezio se adentrará en una época traicionera, donde la conspiración está en todas partes, incluso dentro de la Hermandad.  Assassins Creed es una de las franquicias de videojuegos más jugados en todo el mundo, con más de 90 millones de copias vendidas.',2019,400,'Minotauro','https://www.gandhi.com.mx/media/catalog/product/9/7/9786070763267_d987.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',5),(7,'Assassins Creed. The Secret Crusade','El padre de Marco Polo, Nicolás, está a punto de revelar la historia de Altar, uno de los mejores Assassins de la Hermandad. Altar se embarca en una misión que le lleva por Tierra Santa y le muestra el verdadero significado del Credo de los Assassins. Para demostrar su compromiso, Altar debe derrotar a nueve enemigos mortales, incluido el líder templario, Robert de Sablé. Por primera vez, se cuenta la vida de Altar: un viaje que cambiará el curso de la historia; su batalla continua con la conspiración templaria; una vida familiar tan trágica como reveladora y la máxima traición de un viejo amigo.',2020,352,'Minotauro','https://www.gandhi.com.mx/media/catalog/product/9/7/9786070765216_0568.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',5),(8,'El ataque ( y tu perro ...: ¿esta infectado? )','Se acabó, te dije que no ibas a sobrevivir. La voz de su padre empezó a hablar desde algún profundo rincón de su cabeza. Te van a devorar vivo. Te vas a pudrir por la eternidad. Cualquiera podría asegurar que un perro jamás agrediría a su amo, pero ¿cómo reaccionarías si de repente tu mejor amigo tratara de acabar contigo y con quien se le ponga enfrente? La probabilidad de escapar a un ataque de esta (anti)naturaleza se reduce significativamente… en especial si tu mascota está infectada por un extraño virus que tiene efectos mortales en los humanos.',2019,232,' Universo de libros','https://www.gandhi.com.mx/media/catalog/product/9/7/9786078638147_1.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',6),(9,'Diario de un pendejo','Fernando Nachón se considera a sí mismo como sicopata, vicioso, lecra social, depresivo, puerco burgués, playboy, sádico y anticristiano. Su literatura se nutre de esas características hasta convertirse en un desbordado río de aguas negras que, paradójicamente, purifica al autor y a quien se atreve a leerlo.',2009,232,'Fontamara','https://www.gandhi.com.mx/media/catalog/product/9/7/9789684767614.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',7),(10,'El Señor de las Sombras','En el mundo de los cazadores de sombras hay una ley inquebrantable: Nunca te enamores de tu parabatai.Emma Carstairs ha descubierto que sus sentimientos por Julian no solo están prohibidos, sino que incluso pueden tener consecuencias destructivas a gran escala. Debe alejarse de él, tiene que enfriar sus sentimientos. Pero ¿cómo hacerlo justo en el momento en que Julian la necesita más que nunca?Su única esperanza es el Libro Negro de los Muertos, un compendio de hechizos con un terrible poder. ',2017,688,'Destino','https://www.gandhi.com.mx/media/catalog/product/9/7/9786070745102_239a.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',8),(11,'EL SEÑOR DE LOS ANILLOS III: EL RETORNO DEL REY','Los ejércitos del señor oscuro van extendiendo cada vez más su maléfica sombra por la tierra media. Hombres, elfos y enanos unen sus fuerzas para presentar batalla a Sauron y sus huestes. Ajenos a estos preparativos, Frodo y Sam siguen adentrándose en el país de Mordor en su heroico viaje para destruir el anillo de poder en las grietas del destino. -un final triunfante... Un gran trabajo, tanto en la concepción como en la ejecución-. Daily telegraph -un trabajo extraordinariamente imaginativo, parte saga, parte alegoría, y emocionante en su totalidad-. The times',2012,66,'Booket','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9788445000687_ba3c.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',9),(12,'Festín de cuervos ( Canción de hielo y fuego 4 )','Luego de siglos de guerras descarnadas, los siete poderes que dividen la tierra han alcanzado una difícil tregua. Pero no pasa mucho tiempo antes de que los sobrevivientes, los proscritos, los renegados y los carroñeros de los Siete Reinos se reúnan...Festín de cuervos es el cuarto volumen de Canción de hielo y fuego, la monumental saga de fantasía épica del escritor George R. R. Martin que ha vendido más de 20 millones de ejemplares en todo el mundo.La saga que inspiró la filmación de la aclamada serie televisiva de HBO: Game of Thrones.',2015,872,'Debolsillo','https://www.gandhi.com.mx/media/catalog/product/9/7/9786071137463_db3a.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',10),(13,'Forastera ( Forastera 1 )','En esta primera parte de la saga de Claire Randall que continúa con Atrapada en el tiempo, Viajera y Tambores de otoño, Diana Gabaldon ha escrito una historia de amor diferente, en la que los encuentros fortuitos y el juego equívoco del tiempo se conjugan en un intrigante final.',2021,768,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073805711_9f80.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',11),(14,'Guerra Mundial Z','La crónica de cómo la humanidad se enfrentó a la peor amenaza jamás vista. El final estaba cerca, muy pocos vivieron para contarlo.Sobrevivimos al apocalipsis zombi, sin embargo ¿cuántos de nosotros todavía viven atormentados por los recuerdos de estos tiempos terribles? Hemos derrotado a los muertos vivientes, pero ¿a qué precio? ¿Es solo una victoria temporal? ¿Sigue nuestra especie en peligro de extinción?Contada a través de las voces de aquellos que fueron testigos del horror, Guerra Mundial Z es el único documento que existe acerca de la pandemia que estuvo a punto de acabar con la humanidad. Tiene más creatividad e ímpetu que estanterías enteras de nuevos títulos de ficción USA Today',2018,472,'Debolsillo','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073170161_5dc3.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',12),(15,'HOMBRE INVISIBLE, INVISIBLE MAN','El hombre invisible (The Invisible Man es el título original en inglés) es una famosa novela de ciencia ficción escrita por H. G. Wells. La obra fue originalmente publicada en entregas en la revista Pearson’s Magazine en 1897 y como novela el mismo año. El hombre invisible del título es Griffin, un científico que teoriza que si se cambia el índice refractivo de una persona para coincidir exactamente con el del aire y su cuerpo no absorbe ni refleja la luz, entonces no será visible. Griffin logra llevar a cabo este proceso consigo mismo, pero luego no puede volver a ser visible, llegando a un estado mental inestable como resultado.',2017,288,'Plutón ediciones','https://www.gandhi.com.mx/media/catalog/product/9/7/9788417079147.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',13),(16,'HIJO DEL HOMBRE','Hijo de hombre (1960) colocó a Augusto Roa Bastos como precursor de la modernidad literaria en el continente. Con una estructura que altera el discurso cronológico y los planos espaciales, Roa Bastos construye un relato estremecedor sobre las marcas que dejó en el pueblo paraguayo una historia trágica y a la vez grandiosa. Los personajes que recorren estas páginas viven, a la luz del legado de sus muertos y el pasado, una realidad que los va tragando lenta pero inexorablemente, signada por la pobreza,la represión desmedida, la explotación y el abandono, ecos de episodios atroces como la Guerra de la Triple Alianza,la Dictadura Perpetua o la guerra del Chaco.',2010,2,'Eterna cadencia','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9789871673278_a7a6.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',14),(17,'El segundo sexo','Esta nueva edición, con el prólogo que escribió María Moreno en 1999, demuestra que aún queda mucho por hacer y que la voz de Simone de Beauvoir sigue más vigente que nunca.',2022,728,'Debolsillo','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073811101_6a5d.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',15),(18,'El secreto de Spinoza','La firmeza de un hombre que vivió marginado. Spinoza, uno de los mayores filósofos de la historia, inspira esta magnífica novela sobre el final de la Edad de las Tinieblas en Europa.Ámsterdam, 1640. Un judío es expulsado de la sinagoga por cuestionar las Sagradas Escrituras. ',2023,632,'Espasa México','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073906845_3597.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',16),(19,'El Silmarillion (NE)','El Silmarillion cuenta la historia de la Primera Edad, el antiguo drama del que hablan los personajes de El Señor de los Anillos, y en cuyos acontecimientos algunos de ellos tomaron parte, como Elrond y Galadriel Una obra de auténtica imaginación, una visión inspirada, legendaria o mítica, del interminable conflicto entre el deseo de poder y la capacidad de crear. ',2022,416,'Minotauro','https://www.gandhi.com.mx/media/catalog/product/9/7/9788445012796_7995.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',9),(20,'LA FIEBRE DEL HENO','Una agencia de detectives requiere los servicios de un astronauta norteamericano retirado para que ayude a esclarecer una serie de misteriosas muertes acaecidas en un balneario de Nápoles. Varias personas han enloquecido y algunas se han suicidado sin que se conozca motivo para ello. Otras parecen haber muerto accidentalmente. Todas las víctimas eran extranjeras, viajaban solas, rondaban la cincuentena y padecían algún tipo de alergia. ',2018,224,'Impedimenta','https://www.gandhi.com.mx/media/catalog/product/9/7/9788417115494.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',17),(21,'LA GUERRA DE LOS MUNDOS','La invasión de la Tierra por los marcianos ha iniciado. Los marcianos miran a los seres humanos como a hormigas, con una mezcla de indiferencia y desprecio; pero, cuando toda esperanza parece perdida, son destruidos por un medio tan pequeño como inesperado. En esta historia se describen distintas situaciones que te transportarán a un mundo donde lo fantástico y lo cotidiano se combinan para mostrar la soberbia y la fragilidad humanas.',2013,22,'Editores mexicanos unidos','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9786071411174_7e57.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',13),(22,'La máquina del tiempo','Obra que se halla en los inicios de la novela de ciencia-ficción, La máquina del tiempo (1895) sigue conservando el mismo poder de fascinación y vigor narrativo que le valieron el éxito inmediato en el momento de su publicación. ',2021,144,'Alianza editorial','https://www.gandhi.com.mx/media/catalog/product/9/7/9788491811442_3333.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',13),(23,'TU NEGOCIO SIEMPRE A LA MODA','Laura eRRe te llevará de la mano para recorrer el camino del emprendimiento. A lo largo de estos 7 capítulos, encontrarás historias de otros emprendedores y herramientas prácticas que ha elegido y adaptado para ayudar a miles de negocios a ser innovadores, escalables, rentables y sostenibles. ',2021,208,'Fashion startup lab','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9786079944704_c5e7.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',18),(24,'Emprendedor','Emprender es un juego en donde tienes todo en contra. Más del 90% de los emprendimientos fracasan. Solo un pequeño porcentaje de emprendedores tienen éxito. Aún después de convertirse en ese pequeño grupo de emprendedores con negocios exitosos, muchos terminan siendo esclavos de su negocio: estaban buscando la libertad que promete el emprendimiento, y construyeron una operación que depende de ellos: se convirtieron en autoempleados. ',2021,252,'The Agustin agency','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9781950604173_4fa0.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',19),(25,'Atrévete a fracasar','La guía para conseguir el éxito a partir del fracaso.Aprender de tus errores es la única manera de estar seguro de que no vas a cometerlos otra vez, pero ¿y si pudieras usar cada uno de ellos, grandes y pequeños, para crear un negocio, una carrera o una vida exitosa? ES POSIBLE.',2021,224,'Aguilar','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073191807_3b11.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',20),(26,'Dirige desde cualquier lugar','Estamos entrando en una nueva era de trabajo remoto, pero ¿cómo pueden los líderes asegurarse de que su negocio funcione como antes cuando la manera de trabajar se ha vuelto tan diferente?Los más recientes estudios demuestran que las personas son más productivas y comprometidas cuando tienen la libertad de trabajar desde cualquier lugar, lo que significa que los líderes deben desarrollar habilidades de liderazgo en todo terreno.',2021,200,'Conecta','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073802130_fb10.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',21),(27,'Steve Jobs. Lecciones de liderazgo','Las claves de liderazgo de Steve Jobs recogidas por el autor de su biografía. Las personas que están lo suficientemente locas como para pensar que pueden cambiar el mundo son las que lo cambian.Anuncio Piensa diferente de Apple (1997).',2021,112,'Debate','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073807661_f02c.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',22),(28,'El libro conciso del cuerpo en movimiento','LIBRO DE REFERENCIA ACERCA DEL ESTUDIO DEL MOVIMIENTO DEL CUERPO HUMANO ,REFERENCIA LOS SISTEMAS MUSCULO ESQUELETICOS,,ENFOCADO A ESTUDIANTES DE MEDICINA,FISIOTERAPEUTAS,MASAJISTAS ETC.',2009,192,'Paidotribo','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9788480190336_1163.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',23),(29,'Atlas conciso de los músculos','un libro muy completo mostrando huesos, musculos,perfectamente explicados ,para estudiantes de medicina,fisioterapia etc....',2018,312,'Paidotribo','https://www.gandhi.com.mx/media/catalog/product/t/m/tmp9788499106045_d4bf.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',23),(30,'Los mundos de J. R. R. Tolkien','En este nuevo libro de John Garth, reconocido experto en Tolkien, se investigan los lugares que sirvieron de inspiración al autor de El Señor de los Anillos para crear sus localizaciones ficticias y otros aspectos de la Tierra Media. ',2020,208,'Minotauro','https://www.gandhi.com.mx/media/catalog/product/9/7/9788445009000_967b.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',24),(31,'Cuaderno de viaje de la Tierra Media','Cuaderno de viaje de la Tierra Media ofrece un paseo por la Tierra Media de Tolkien, visitando los lugares fundamentales en sus historias, pero también otros situados al otro lado de la colina o más allá del horizonte',2022,192,'Minotauro','https://www.gandhi.com.mx/media/catalog/product/9/7/9788445005576_f1fd.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',25),(32,'El imperio Mecha Samurái','Vuelve el premiado autor de Estados Unidos de Japón. ¡La nueva generación de autores de ciencia ficción que estábamos esperando!Hideo Kojima, creador de Metal Gear SolidAlemania y Japón han ganado la Segunda Guerra Mundial y controlan Estados Unidos. Makoto Fujimoto es un joven con un sueño: convertirse en piloto de mecha',2019,620,'Nova casa editorial','https://www.gandhi.com.mx/media/catalog/product/9/7/9788417347413_dcaa.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',26),(33,'LUCKY STARR 1','En este volumen se recogen tres de las aventuras protagonizadas por David Starr, intrépido e ingenioso cruzado de la justicia interestelar, nacido de la pluma de uno de los autores más galardonados e influyentes de la ciencia-ficción contemporánea: Isaac Asimov.',2010,208,'Alamut','https://www.gandhi.com.mx/media/catalog/product/9/7/9788498890563.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',3),(34,'Harry Potter y la piedra filosofal','Harry Potter y la piedra filosofal es el primer volumen de la ya clásica serie de novelas fantásticas de la autora británica J.K. Rowling.Con las manos temblorosas, Harry le dio la vuelta al sobre y vio un sello de lacre púrpura con un escudo de armas: un león, un águila, un tejón y una serpiente, que rodeaban una gran letra H.Harry Potter nunca ha oído hablar de Hogwarts hasta que empiezan a caer cartas en el felpudo del número 4 de Privet Drive.',2020,288,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073800280_491e.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',27),(35,'Harry Potter y el cáliz de fuego','Tras otro abominable verano con los Dursley, Harry se dispone a iniciar el cuarto curso en Hogwarts, la famosa escuela de magia y hechicería.',2020,672,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073800273_c3b1.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',27),(36,'Harry Potter y el misterio del príncipe','En medio de graves acontecimientos que asolan el país, Harry inicia su sexto curso en Hogwarts. El equipo de quidditch, los exámenes y las chicas lo mantienen ocupado, pero la tranquilidad dura poco.',2020,576,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073800327_4ffe.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',27),(37,'Harry Potter y la Orden del Fénix (edición Ravenclaw de 20 aniversario) ( Harry Potter )','Celebra el 20 aniversario de Harry Potter con esta edición especial de Harry Potter y la Orden del Fénix.El director cree que no es conveniente que eso continúe ocurriendo. Quiere que te enseñe a cerrar tu mente al Señor Tenebroso. Son malos tiempos para Hogwarts.',2022,976,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9788418174629_7d44.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',27),(38,'Harry Potter y las reliquias de la muerte','La fecha crucial se acerca. Cuando cumpla diecisiete años, Harry perderá el encantamiento protector que lo mantiene a salvo.',2020,704,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073800334_64cf.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',27),(39,'Harry Potter y la cámara secreta','Harry Potter y la cámara secreta, el segundo volumen de la ya clásica serie de novelas fantásticas de la autora británica J.K. Rowling.Hay una conspiración, Harry Potter. Una conspiración para hacer que este año sucedan las cosas más terribles en el Colegio Hogwarts de Magia y Hechicería.El verano de Harry Potter ha incluido el peor cumpleaños de su vida, las funestas advertencias de un elfo doméstico llamado Dobby y el rescate de casa de los Dursley protagonizado por su amigo Ron Weasley al volante de un coche mágico volador. ',2020,320,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073800341_8a1e.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',27),(40,'Harry Potter y el prisionero de Azkaban','El desafío es enorme, pero Harry, Ron y Hermione son capaces de enfrentarse a todo esto y mucho más.',2020,384,'Salamandra','https://www.gandhi.com.mx/media/catalog/product/9/7/9786073800310_4279.jpg?optimize=high&bg-color=255,255,255&fit=bounds&height=478&width=300&canvas=300:478',27);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-24 15:15:31
