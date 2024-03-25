-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Mar 2024, 13:30
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `authh`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passwordHash` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `passwordHash`) VALUES
(1, 'jcieszynski@firma.pl', '$argon2i$v=19$m=65536,t=4,p=1$Z1Q0cW43VDdXU3VmL3NCSA$gEMbuqFdV+Iprv3ul70IEEbtGG7S69KCJOhdhqJ/CSM'),
(2, 'jkowalski@firma.pl', '$argon2i$v=19$m=16,t=2,p=1$WlRzakd3S0t0WDQ4VEtHaQ$XdQ7pWltvMqWanNJ5rGVRg\r\n'),
(3, 'jk@firma.pl', '$argon2i$v=19$m=16,t=2,p=1$RTNqSXFESGZaZU1hT2lOWQ$dhv8UTOzByauKZHkA12TUA'),
(4, '3222@firma.pl', '12345'),
(8, '322@firma.pl', '12345'),
(10, '1223@firma.pl', '12345'),
(12, '11111@gmail.com', '12345'),
(15, '222222@firma.pl', '123'),
(17, '333@pl', '123'),
(19, '545458485@pl', '$argon2i$v=19$m=65536,t=4,p=1$ZHpkOERSb1VRczZydEtnZg$GahjecjVBd62/JfZqt0YCOTsp257xtSNimFmOGVPOig'),
(21, 'jcieszyn45435345ski@firma.pl', '$argon2i$v=19$m=65536,t=4,p=1$aWRmSXpibFFjV3l6Rm1DUQ$2NrUzVh7RK1wXsRg2OWrnycGfVNzxRf/uaXQCzLLWBc'),
(22, '1@pl', '123'),
(23, '9@PL', '$argon2i$v=19$m=65536,t=4,p=1$cXVTYm1oR0QwbGR4b1RGWA$0mxkxpZych6KCygjxIGdkDIxm0a8wndgYxWTbuzkqj8');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
