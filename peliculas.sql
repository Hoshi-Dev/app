-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2024 a las 00:14:37
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cac_movies`
--
CREATE DATABASE IF NOT EXISTS `cac_movies`;
USE `cac_movies`;
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_pelicula` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `genero` varchar(100) NOT NULL,
  `duracion` varchar(10) NOT NULL,
  `director` varchar(100) NOT NULL,
  `reparto` varchar(255) NOT NULL,
  `sinopsis` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_pelicula`, `titulo`, `fecha_lanzamiento`, `genero`, `duracion`, `director`, `reparto`, `sinopsis`, `imagen`) VALUES
(1, 'El reino del planeta de los simios', '2024-05-10', 'Ciencia ficción/Aventura/Acción', '2h 55m', 'Wes Ball', 'Owen Teague, Freya Allan, Kevin Durand, Peter Macon', 'Ambientada varias generaciones en el futuro tras el reinado de César, en la que los simios son la especie dominante que vive en armonía y los humanos se han visto reducidos a vivir en la sombra. Mientras un nuevo y tiránico líder simio construye su imperi', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kkFn3KM47Qq4Wjhd8GuFfe3LX27.jpg'),
(2, 'Garfield: la película', '2024-05-02', 'Animación/Comedia/Familia/Aventura', '1h 41m', 'Mark Dindal', 'Chris Pratt, Samuel L. Jackson, Hannah Waddingham', 'El mundialmente famoso Garfield, el gato casero que odia los lunes y que adora la lasaña, está a punto de vivir una aventura ¡en el salvaje mundo exterior! Tras una inesperada reunión con su largamente perdido padre – el desaliñado gato callejero Vic – Ga', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6F942quML9yZ3ydCVME45WbmWbN.jpg'),
(3, 'Gladiator 2', '2024-11-20', 'Acción/Drama/Aventura', '2h36m', 'Ridley Scott', 'Paul Mescal, Pedro Pascal, Connie Nielsen', 'Secuela de la película de 2000 \'Gladiator (El gladiador)\'. La película seguirá la continuación de la historia de Lucius, el hijo de Lucilla.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u2LADrvXAyMiBVhVoWhLi8WiXAL.jpg'),
(4, 'El exorcismo de Georgetown', '2024-06-21', 'Terror/Suspenso', '1h 35m', 'Joshua John Miller', 'Russell Crowe, Ryan Simpkins, Sam Worthington', 'Anthony Miller (Russell Crowe) es un actor con problemas que empieza a desmoronarse durante el rodaje de una película de terror sobrenatural. Su distante hija (Ryan Simpkins) se pregunta si su padre está volviendo a sus adicciones del pasado o si hay algo', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/imZhdkfRxvHrzxRejRqodI9sJbr.jpg'),
(5, 'Del revés 2 (Inside Out 2)', '2024-06-13', 'Animación/Familia/Aventura/Comedia/Drama', '1h 36m', 'Kelsey Mann', 'Amy Poehler, Maya Hawke, Kensington Tallman', 'Riley, ahora adolescente, enfrenta una reforma en la Central de sus emociones. Alegría, Tristeza, Ira, Miedo y Asco deben adaptarse a la llegada de nuevas emociones: Ansiedad, Vergüenza, Envidia y Ennui. ¿Cómo manejarán este inesperado cambio?', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mmdBbXCs85JxxKyG664KI46rdC3.jpg'),
(6, 'Twisters', '2024-07-11', 'Acción/Suspense/Aventura', '2h 2m', 'Lee Isaac Chung', 'Daisy Edgar-Jones, Glen Powell, Anthony Ramos', 'Kate Cooper, una ex cazadora de tormentas perseguida por un devastador encuentro con un tornado, es por llamada su amigo Javi de regreso a las llanuras para probar un nuevo e innovador sistema de seguimiento. Allí, se cruza con la encantadora e imprudente', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/50xgtaDR0xJkLSVghdTGUeMoPHP.jpg'),
(7, 'Gru 4. Mi villano favorito', '2024-07-03', 'Animación/Familia/Comedia/Acción', '1h 35m', 'Chris Renaud', 'Steve Carell, Kristen Wiig, Joey King, Will Ferrell', 'Gru, Lucy y las niñas -Margo, Edith y Agnes- dan la bienvenida a un nuevo miembro en la familia: Gru Junior, que parece llegar con el propósito de ser un suplicio para su padre. Gru tendrá que enfrentarse en esta ocasión a su nueva némesis Maxime Le Mal y', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wTpzSDfbUuHPEgqgt5vwVtPHhrb.jpg'),
(8, 'Bad Boys: Ride or Die', '2024-06-07', 'Acción/Crimen/Suspense/Comedia\r\n', '1h 55m', 'Adil El Arbi, Bilall Fallah', 'Will Smith, Martin Lawrence', 'Tras escuchar falsas acusaciones sobre su excapitán y mentor Mike y Marcus deciden investigar el asunto incluso volverse los más buscados de ser necesarios', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5jI2vEHJReAx8iFDmhC2O3yW37w.jpg'),
(9, 'Godzilla y Kong: El nuevo imperio', '2024-03-28', 'Ciencia ficción/Acción/Aventura', '1h 55m', 'Adam Wingard', 'Rebecca Hall, Brian Tyree Henry, Dan Stevens', 'Rebecca Hall', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2YqZ6IyFk7menirwziJvfoVvSOh.jpg'),
(10, 'Civil War', '2024-04-18', 'Bélica/Acción/Drama', '1h 49m', 'Alex Garland', 'Kirsten Dunst, Wagner Moura', 'En un futuro cercano, donde América está sumida en una cruenta guerra civil, un equipo de periodistas y fotógrafos de guerra emprenderá un viaje por carretera en dirección a Washington DC. Su misión: llegar antes de que las fuerzas rebeldes asalten la Cas', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iCOQUVVaPqRuR3JqF71akguf6Mj.jpg'),
(11, 'Kung Fu Panda 4', '2024-03-07', 'Animación/Acción/Familia/Comedia/Fantasía', '1h 34m', 'Mike Mitchell', 'Jack Black, Awkwafina, Viola Davis, Dustin Hoffman', 'Po se prepara para ser el líder espiritual del Valle de la Paz, buscando un sucesor como Guerrero Dragón. Mientras entrena a un nuevo practicante de kung fu, enfrenta al villano llamado \"el Camaleón\", que evoca villanos del pasado, desafiando todo lo que ', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zS8BSQdbOesql0EWbs17kPvLoAT.jpg'),
(12, 'Infiltrada en la NASA', '2024-07-04', 'Comedia/Romance', '1h 50m', 'Liz W. Garcia', 'Emma Roberts, Tom Hopper', 'La fiestera de Florida Rex resulta ser la única esperanza para el programa espacial de la NASA después de que una casualidad la ponga a entrenar con otros candidatos que pueden tener mejores currículos, pero que no tienen su inteligencia, corazón y coraje', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ehFe4plfzYENM2vzSDuUbC66xtx.jpg'),
(13, 'El especialista', '2024-05-03', 'Acción/Comedia', '2h 6m', 'David Leitch', 'Ryan Gosling, Emily Blunt', 'Es un doble de acción, y al igual que todos en la comunidad de especialistas, sale volando, le disparan, se estrella, se tira desde ventanas y cae desde las alturas más extremas, todo para nuestro entretenimiento. Y ahora, tras un accidente que casi acaba', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ceiGl0SNZpR01o5lfYImt2QgKuq.jpg'),
(14, 'Deadpool y Lobezno', '2024-07-25', 'Ciencia ficción/Acción/Comedia', '2h 8m', 'Shawn Levy', 'Ryan Reynolds, Hugh Jackman', 'Tercera entrega de la saga \"Deadpool\".', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bnReVrFK78PWdfv1CA5btoQDt9v.jpg'),
(15, 'Atlas', '2024-05-25', 'Ciencia ficción/Acción', '2h', 'Brad Peyton', 'Jennifer Lopez, Simu Liu', 'Una brillante analista antiterrorista recela de la IA hasta que descubre que podría ser su única esperanza cuando se tuerce una misión para atrapar a un robot rebelde.', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wSnBSv7oHgm1kZmiM8IqithlTmJ.jpg');


--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
