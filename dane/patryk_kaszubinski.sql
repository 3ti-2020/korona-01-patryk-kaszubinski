-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Maj 2020, 15:04
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `patryk_kaszubinski`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `boss`
--

CREATE TABLE `boss` (
  `ID` int(6) UNSIGNED NOT NULL,
  `Nazwa` varchar(30) NOT NULL,
  `Tryb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `boss`
--

INSERT INTO `boss` (`ID`, `Nazwa`, `Tryb`) VALUES
(1, 'Oko Cthulhu', 'Prehardmodowy'),
(2, 'Skeletron', 'Prehardmodowy'),
(3, 'Wall of flesh', 'Prehardmodowy'),
(4, 'Destroyer', 'Hardmodowy'),
(5, 'Plantera', 'Hardmodowy'),
(6, 'Moon Lord', 'Hardmodowy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npc`
--

CREATE TABLE `npc` (
  `ID` int(6) UNSIGNED NOT NULL,
  `Nazwa` varchar(30) NOT NULL,
  `Wyglad` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `npc`
--

INSERT INTO `npc` (`ID`, `Nazwa`, `Wyglad`) VALUES
(1, 'Goblin', 'Lochy'),
(2, 'Truffle', 'Biom Grzybowy'),
(3, 'Arms Dealer', 'W zwyklym domku'),
(4, 'Guide', 'W zwyklym domku');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `boss`
--
ALTER TABLE `boss`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `boss`
--
ALTER TABLE `boss`
  MODIFY `ID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `npc`
--
ALTER TABLE `npc`
  MODIFY `ID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
