-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Lug 05, 2021 alle 17:15
-- Versione del server: 10.4.18-MariaDB
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ing_soft`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ANALISTA`
--

CREATE TABLE `ANALISTA` (
  `Analista_id` varchar(3) NOT NULL,
  `Password` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ANALISTA`
--

INSERT INTO `ANALISTA` (`Analista_id`, `Password`) VALUES
('A00', '1234'),
('A01', '1234');

-- --------------------------------------------------------

--
-- Struttura della tabella `COMUNE`
--

CREATE TABLE `COMUNE` (
  `ISTAT` int(6) NOT NULL,
  `Responsabile_c` varchar(3) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Provincia_App` varchar(30) NOT NULL,
  `Istituzione` int(4) DEFAULT NULL,
  `Superficie` int(6) DEFAULT NULL,
  `Tipo_Territorio` varchar(15) DEFAULT NULL,
  `Mare` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `COMUNE`
--

INSERT INTO `COMUNE` (`ISTAT`, `Responsabile_c`, `Nome`, `Provincia_App`, `Istituzione`, `Superficie`, `Tipo_Territorio`, `Mare`) VALUES
(21060, 'C00', 'Ora', 'Bolzano', 2021, 15, 'Montuoso', 'No'),
(22061, 'C00', 'Civezzano', 'Trento', 1920, 15, 'Collinare', 'No'),
(22139, 'C01', 'Pergine Valsugana', 'Trento', 1920, 54, 'Pianeggiante', 'No'),
(23071, 'T00', 'San Giovanni Lupatoto', 'Verona', 2021, 0, 'null', 'No'),
(27029, 'C01', 'Portogruaro', 'Venezia', 1923, 102, 'Pianeggiante', 'No'),
(58006, 'C00', 'Anticoli Corrado', 'Roma', 1935, 16, 'Collinare', 'No'),
(58104, 'T00', 'Tivoli', 'Roma', 1920, 68, 'Collinare', 'No'),
(59004, 'T00', 'Castelforte', 'Latina', 1923, 18, 'Collinare', 'No');

-- --------------------------------------------------------

--
-- Struttura della tabella `CONTRATTO`
--

CREATE TABLE `CONTRATTO` (
  `Contratto_id` varchar(3) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Password` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `CONTRATTO`
--

INSERT INTO `CONTRATTO` (`Contratto_id`, `Nome`, `Cognome`, `Password`) VALUES
('C00', 'Virginia', 'Bermudez', '1234'),
('C01', 'Marisa', 'Palombi', '1234'),
('T00', 'Temp', 'Temp', 'temp');

-- --------------------------------------------------------

--
-- Struttura della tabella `DECESSI`
--

CREATE TABLE `DECESSI` (
  `Provincia` varchar(40) NOT NULL,
  `Anno` year(4) NOT NULL,
  `Incidenti` int(6) DEFAULT NULL,
  `Malattie_tumorali` int(6) DEFAULT NULL,
  `Malattie_cardiovascolari` int(6) DEFAULT NULL,
  `Influenza_dec` int(6) DEFAULT NULL,
  `Polmonite_dec` int(6) DEFAULT NULL,
  `Meningite_dec` int(6) DEFAULT NULL,
  `Epatiti_dec` int(6) DEFAULT NULL,
  `Morbillo_dec` int(6) DEFAULT NULL,
  `Tubercolosi_dec` int(6) DEFAULT NULL,
  `Gastroenteriti_dec` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `DECESSI`
--

INSERT INTO `DECESSI` (`Provincia`, `Anno`, `Incidenti`, `Malattie_tumorali`, `Malattie_cardiovascolari`, `Influenza_dec`, `Polmonite_dec`, `Meningite_dec`, `Epatiti_dec`, `Morbillo_dec`, `Tubercolosi_dec`, `Gastroenteriti_dec`) VALUES
('Bologna', 2021, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Bolzano', 2021, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Latina', 2021, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Roma', 2021, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Trento', 2021, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1),
('Venezia', 2021, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
('Verona', 2020, 0, 3, 0, 0, 0, 0, 0, 3, 0, 2),
('Verona', 2021, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `ENGISS`
--

CREATE TABLE `ENGISS` (
  `Eng_id` varchar(3) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Password` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `ENGISS`
--

INSERT INTO `ENGISS` (`Eng_id`, `Nome`, `Cognome`, `Password`) VALUES
('E00', 'Veronica', 'Papini', '1234'),
('E01', 'Alessandro', 'Brun', '1234');

-- --------------------------------------------------------

--
-- Struttura della tabella `EPIDEMIOLOGICI`
--

CREATE TABLE `EPIDEMIOLOGICI` (
  `Comune` int(6) NOT NULL,
  `Data` date NOT NULL,
  `InCura` varchar(20) NOT NULL,
  `Influenza` int(6) DEFAULT NULL,
  `Polmonite` int(6) DEFAULT NULL,
  `Meningite` int(6) DEFAULT NULL,
  `Epatite` int(6) DEFAULT NULL,
  `Morbillo` int(6) DEFAULT NULL,
  `Tubercolosi` int(6) DEFAULT NULL,
  `Gastroenteriti` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `EPIDEMIOLOGICI`
--

INSERT INTO `EPIDEMIOLOGICI` (`Comune`, `Data`, `InCura`, `Influenza`, `Polmonite`, `Meningite`, `Epatite`, `Morbillo`, `Tubercolosi`, `Gastroenteriti`) VALUES
(21060, '2021-04-05', 'Terapia intensiva', 1, 1, 1, 1, 1, 1, 1),
(21060, '2021-06-07', 'In cura Medico Base', 0, 0, 0, 0, 0, 0, 0),
(22061, '2021-04-05', 'Medico di Base', 3, 1, 0, 1, 5, 0, 8),
(22061, '2021-06-07', 'In cura Medico Base', 0, 0, 0, 0, 0, 0, 0),
(22061, '2021-06-07', 'Terapia Intensiva', 1, 1, 0, 0, 0, 0, 0),
(22139, '2021-04-05', 'Terapia intensiva', 1, 1, 1, 1, 1, 1, 1),
(23071, '2021-04-05', 'Medico di Base', 1, 1, 1, 1, 1, 1, 1),
(27029, '2021-04-05', 'Medico di Base', 2, 7, 2, 4, 1, 4, 2),
(58006, '2021-04-05', 'Medico di Base', 3, 5, 0, 1, 1, 3, 1),
(58006, '2021-06-07', 'In cura Medico Base', 1, 0, 1, 0, 2, 0, 0),
(58104, '2021-04-05', 'Terapia intensiva', 1, 1, 1, 1, 1, 1, 1),
(59004, '2021-04-05', 'Terapia intensiva', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `PROVINCIA`
--

CREATE TABLE `PROVINCIA` (
  `Nome_Provincia` varchar(40) NOT NULL,
  `Regione_App` varchar(30) NOT NULL,
  `Superficie` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `PROVINCIA`
--

INSERT INTO `PROVINCIA` (`Nome_Provincia`, `Regione_App`, `Superficie`) VALUES
('Ancona', 'Marche', 1940),
('Aosta', 'Valle d\'Aosta', 3263),
('Aquila', 'Abruzzo', 5034),
('Bari', 'Puglia', 3825),
('Bologna', 'Emilia-Romagna', 3703),
('Bolzano', 'Trentino-Alto Adige', 130),
('Cagliari', 'Sardegna', 4570),
('Campobasso', 'Molise', 2909),
('Catanzaro', 'Calabria', 2391),
('Firenze', 'Toscana', 3514),
('Genova', 'Liguria', 1839),
('Latina', 'Lazio', 150),
('Milano', 'Lombardia', 1579),
('Napoli', 'Campania', 1171),
('Palermo', 'Sicilia', 4992),
('Perugia', 'Umbria', 6334),
('Potenza', 'Basilicata', 6548),
('Roma', 'Lazio', 5352),
('Torino', 'Piemonte', 6831),
('Trento', 'Trentino-Alto Adige', 6207),
('Trieste', 'Friuli Venezia Giulia', 212),
('Venezia', 'Veneto', 2462),
('Verona', 'Veneto', 206);

-- --------------------------------------------------------

--
-- Struttura della tabella `REGIONE`
--

CREATE TABLE `REGIONE` (
  `Nome_Regione` varchar(30) NOT NULL,
  `Capoluogo` varchar(30) NOT NULL,
  `Superficie` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `REGIONE`
--

INSERT INTO `REGIONE` (`Nome_Regione`, `Capoluogo`, `Superficie`) VALUES
('Abruzzo', 'L\'Aquila', 10831),
('Basilicata', 'Potenza', 10073),
('Calabria', 'Catanzaro', 15221),
('Campania', 'Napoli', 13670),
('Emilia-Romagna', 'Bologna', 22452),
('Friuli Venezia Giulia', 'Trieste', 7924),
('Lazio', 'Roma', 17232),
('Liguria', 'Genova', 5461),
('Lombardia', 'Milano', 23887),
('Marche', 'Ancona', 9453),
('Molise', 'Campobasso', 4460),
('Piemonte', 'Torino', 25387),
('Puglia', 'Bari', 19540),
('Sardegna', 'Cagliari', 24100),
('Sicilia', 'Palermo', 25832),
('Toscana', 'Firenze', 22987),
('Trentino-Alto Adige', 'Trento', 13626),
('Umbria', 'Perugia', 8464),
('Valle d\'Aosta', 'Aosta', 3260),
('Veneto', 'Venezia', 18345);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ANALISTA`
--
ALTER TABLE `ANALISTA`
  ADD PRIMARY KEY (`Analista_id`);

--
-- Indici per le tabelle `COMUNE`
--
ALTER TABLE `COMUNE`
  ADD PRIMARY KEY (`ISTAT`) USING BTREE,
  ADD KEY `Comune-Provincia` (`Provincia_App`),
  ADD KEY `comune-contratto` (`Responsabile_c`);

--
-- Indici per le tabelle `CONTRATTO`
--
ALTER TABLE `CONTRATTO`
  ADD PRIMARY KEY (`Contratto_id`);

--
-- Indici per le tabelle `DECESSI`
--
ALTER TABLE `DECESSI`
  ADD PRIMARY KEY (`Provincia`,`Anno`) USING BTREE;

--
-- Indici per le tabelle `ENGISS`
--
ALTER TABLE `ENGISS`
  ADD PRIMARY KEY (`Eng_id`);

--
-- Indici per le tabelle `EPIDEMIOLOGICI`
--
ALTER TABLE `EPIDEMIOLOGICI`
  ADD PRIMARY KEY (`Comune`,`Data`,`InCura`) USING BTREE;

--
-- Indici per le tabelle `PROVINCIA`
--
ALTER TABLE `PROVINCIA`
  ADD PRIMARY KEY (`Nome_Provincia`),
  ADD KEY `Provincia-Regione` (`Regione_App`);

--
-- Indici per le tabelle `REGIONE`
--
ALTER TABLE `REGIONE`
  ADD PRIMARY KEY (`Nome_Regione`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `COMUNE`
--
ALTER TABLE `COMUNE`
  ADD CONSTRAINT `Comune-Provincia` FOREIGN KEY (`Provincia_App`) REFERENCES `PROVINCIA` (`Nome_Provincia`),
  ADD CONSTRAINT `comune-contratto` FOREIGN KEY (`Responsabile_c`) REFERENCES `CONTRATTO` (`Contratto_id`);

--
-- Limiti per la tabella `DECESSI`
--
ALTER TABLE `DECESSI`
  ADD CONSTRAINT `decessi prov- prov` FOREIGN KEY (`Provincia`) REFERENCES `PROVINCIA` (`Nome_Provincia`);

--
-- Limiti per la tabella `EPIDEMIOLOGICI`
--
ALTER TABLE `EPIDEMIOLOGICI`
  ADD CONSTRAINT `Malattie-Comune` FOREIGN KEY (`Comune`) REFERENCES `COMUNE` (`ISTAT`);

--
-- Limiti per la tabella `PROVINCIA`
--
ALTER TABLE `PROVINCIA`
  ADD CONSTRAINT `Provincia-Regione` FOREIGN KEY (`Regione_App`) REFERENCES `REGIONE` (`Nome_Regione`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
