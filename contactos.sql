-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Xerado en: 13 de Nov de 2024 ás 15:13
-- Versión do servidor: 10.4.27-MariaDB
-- Versión do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contactos`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `mensajes_contacto`
--

CREATE TABLE `mensajes_contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `asunto` varchar(100) DEFAULT NULL,
  `comentarios` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A extraer os datos da táboa `mensajes_contacto`
--

INSERT INTO `mensajes_contacto` (`id`, `nombre`, `email`, `telefono`, `asunto`, `comentarios`, `fecha`) VALUES
(1, 'Pedro', 'pedro@gmail.com', '616603360', 'Prueba', 'Este es un comentario adecuado para ti', '2024-11-13 11:28:57'),
(2, 'dsdsds', 'sergio@rer.es', '45454', '', 'Prueba', '2024-11-13 11:29:39'),
(3, 'rererere', 'ererf343434@hotmail.es', 'gfdfds', 'erere', 'erererre', '2024-11-13 11:33:12'),
(4, 'sdsdsd', 'sdsd@hot.es', 'dsdsds', 'asdasds', 'sadasdasd', '2024-11-13 11:33:40'),
(5, 'Ultimo', 'sergio@rer.es', '34343434', 'sewewewe', 'wewewewqrweqrqweqwewqreq', '2024-11-13 13:55:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensajes_contacto`
--
ALTER TABLE `mensajes_contacto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mensajes_contacto`
--
ALTER TABLE `mensajes_contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
