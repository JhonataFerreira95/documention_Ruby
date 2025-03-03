-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Jun-2019 às 03:18
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbiblioteca`
--
CREATE DATABASE dbbiblioteca;

USE dbbiblioteca;
-- --------------------------------------------------------

--
-- Estrutura da tabela `tbaluno`
--

CREATE TABLE `tbaluno` (
  `NuMatricula` int(11) NOT NULL,
  `NoAluno` varchar(50) DEFAULT NULL,
  `TxIngresso` varchar(6) DEFAULT NULL,
  `IdCurso` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbaluno`
--

INSERT INTO `tbaluno` (`NuMatricula`, `NoAluno`, `TxIngresso`, `IdCurso`) VALUES
(1, 'Jose Maria', '2018.1', 2),
(2, 'Lukas Pol', '2018.1', 2),
(3, 'Diego Araújo', '2018.1', 2),
(4, 'Elaine Sheyla', '2018.1', 2),
(5, 'Estevão Henrique', '2018.1', 2),
(6, 'Josenildo', '2019.1', 2),
(7, 'Luiz França', '2019.1', 2),
(8, 'Renata Chagas', '2019.1', 2),
(9, 'Rickson Pessoa', '2019.1', 2),
(10, 'Vinícus Nascimento', '2019.1', 2),
(11, 'Alice Silva', '2017.1', 1),
(12, 'Allan Max', '2017.1', 1),
(13, 'Alysson Cristiano', '2017.1', 1),
(14, 'Ana Júlia', '2017.1', 1),
(15, 'Gilvan Almeida', '2017.1', 1),
(16, 'Laylla Kaynara', '2017.1', 1),
(17, 'Luis Henry', '2017.1', 1),
(18, 'Maria Jardiane', '2017.1', 1),
(19, 'Ana Júlia', '2017.1', 1),
(20, 'Gilvan Almeida', '2017.1', 1),
(21, 'Laylla Kaynara', '2017.1', 1),
(22, 'Luis Henry', '2017.1', 1),
(23, 'Maria Jardiane', '2017.1', 1),
(24, 'Jasmini dos Santos', '2017.1', 3),
(25, 'Pedro Renato', '2019.1', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbautor`
--

CREATE TABLE `tbautor` (
  `IdAutor` int(11) NOT NULL,
  `NoAutor` varchar(50) DEFAULT NULL,
  `IdNacionalidade` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbautor`
--

INSERT INTO `tbautor` (`IdAutor`, `NoAutor`, `IdNacionalidade`) VALUES
(1, 'Turley, Paul', 2),
(2, 'Manzano, José', 1),
(3, 'Coronel, Carlos', 1),
(4, 'Sheldon, Sidney', 2),
(5, 'Netto, Vladimir', 1),
(6, 'Peter, Robert', 2),
(7, 'Harrington, Roger', 2),
(8, 'Ryan, James', 2),
(9, 'Brown, Dan', 2),
(10, 'Finlan, Christopher', 2),
(11, 'Sirin, Vladimir', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbautorobra`
--

CREATE TABLE `tbautorobra` (
  `IdAutorObra` int(11) NOT NULL,
  `IdAutor` int(11) DEFAULT NULL,
  `IdObra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbautorobra`
--

INSERT INTO `tbautorobra` (`IdAutorObra`, `IdAutor`, `IdObra`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 3),
(7, 7, 6),
(8, 4, 7),
(9, 8, 8),
(10, 9, 9),
(11, 9, 10),
(12, 10, 1),
(13, 4, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcurso`
--

CREATE TABLE `tbcurso` (
  `IdCurso` tinyint(4) NOT NULL,
  `NoCurso` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbcurso`
--

INSERT INTO `tbcurso` (`IdCurso`, `NoCurso`) VALUES
(1, 'Informática'),
(2, 'Sistemas para Internet'),
(3, 'Mecatrônica'),
(4, 'Redes de Computadores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbeditora`
--

CREATE TABLE `tbeditora` (
  `IdEditora` tinyint(11) NOT NULL,
  `NoEditora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbeditora`
--

INSERT INTO `tbeditora` (`IdEditora`, `NoEditora`) VALUES
(1, 'Erica'),
(2, 'Produção Independente'),
(3, 'Record'),
(4, 'HarperOne'),
(5, 'Ediciones Urano'),
(6, 'Sextante'),
(7, 'Pearson'),
(8, 'Primeira Pessoa'),
(9, 'Wrox');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbemail`
--

CREATE TABLE `tbemail` (
  `IdEmail` int(11) NOT NULL,
  `TxEmail` varchar(50) DEFAULT NULL,
  `NuMatricula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbemail`
--

INSERT INTO `tbemail` (`IdEmail`, `TxEmail`, `NuMatricula`) VALUES
(1, 'josemaria@gmail.com', 1),
(2, 'lukaspol@gmail.com', 2),
(3, 'diegoaraujo@gmail.com', 3),
(4, 'elaine.sheyla@gmail.com', 4),
(5, 'estevaohenrique@gmail.com', 5),
(6, 'josenildo@yahoo.com', 6),
(7, 'luiz_franca@gmail.com', 7),
(8, 'renata.chagas@gmail.com', 8),
(9, 'rickson.pessoa@gmail.com', 9),
(10, 'vinicus.nascimento@gmail.com', 10),
(11, 'alice.silva@gmail.com', 11),
(12, 'allan.max@gmail.com', 12),
(13, 'alysson_cristiano@gmail.com', 13),
(14, 'ana_julia@gmail.com', 14),
(15, 'gilvanalmeida@gmail.com', 15),
(16, 'laylla.kaynara@gmail.com', 16),
(17, 'luis.henry@gmail.com', 17),
(18, 'maria_jardiane@gmail.com', 18),
(19, 'ana.jlia@gmail.com', 19),
(20, 'gilvan.almeida@gmail.com', 20),
(21, 'laylla.kaynara@gmail.com', 21),
(22, 'luis-henry@gmail.com', 22),
(23, 'maria-jardiane@gmail.com', 23),
(24, 'jasminisantos@gmail.com', 24),
(25, 'pedro-renato@gmail.com', 25),
(26, 'diegoaraujo@gmail.com', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbemprestimo`
--

CREATE TABLE `tbemprestimo` (
  `IdEmprestimo` int(11) NOT NULL,
  `DaEmprestimo` date DEFAULT NULL,
  `DaPrevisaoDevolucao` date NOT NULL,
  `DaDevolucao` date DEFAULT NULL,
  `IdOperador` int(11) DEFAULT NULL,
  `NuMatricula` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbemprestimo`
--

INSERT INTO `tbemprestimo` (`IdEmprestimo`, `DaEmprestimo`, `DaPrevisaoDevolucao`, `DaDevolucao`, `IdOperador`, `NuMatricula`) VALUES
(1, '2019-05-21', '2019-05-23', '2019-05-23', 2030, 1),
(2, '2019-05-21', '2019-05-24', '2019-05-24', 2030, 2),
(3, '2019-06-19', '2019-06-21', '2019-06-21', 2000, 3),
(4, '2019-06-17', '2019-06-20', NULL, 2000, 4),
(5, '2019-06-20', '2019-06-24', '2019-06-25', 2000, 10),
(6, '2019-06-24', '2019-06-26', '2019-06-26', 2030, 20),
(7, '2019-06-17', '2019-06-19', '2019-06-19', 2031, 21),
(8, '2019-06-11', '2019-06-13', '2019-06-13', 2031, 15),
(9, '2019-06-24', '2019-06-26', NULL, 2030, 14),
(10, '2019-06-18', '2019-06-21', '2019-06-24', 2000, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbemprestimoitem`
--

CREATE TABLE `tbemprestimoitem` (
  `IdEmprestimoItem` int(11) NOT NULL,
  `IdObra` int(11) DEFAULT NULL,
  `IdEmprestimo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbemprestimoitem`
--

INSERT INTO `tbemprestimoitem` (`IdEmprestimoItem`, `IdObra`, `IdEmprestimo`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 10, 3),
(5, 5, 4),
(6, 6, 4),
(7, 9, 4),
(8, 8, 5),
(9, 3, 5),
(10, 1, 6),
(11, 7, 6),
(12, 10, 6),
(13, 4, 7),
(14, 7, 7),
(15, 1, 8),
(16, 1, 9),
(17, 10, 9),
(18, 1, 10),
(19, 2, 10),
(20, 3, 10),
(21, 4, 10),
(22, 5, 10),
(23, 6, 10),
(24, 7, 10),
(25, 8, 10),
(26, 9, 10),
(27, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbidioma`
--

CREATE TABLE `tbidioma` (
  `IdIdioma` tinyint(4) NOT NULL,
  `NoIdioma` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbidioma`
--

INSERT INTO `tbidioma` (`IdIdioma`, `NoIdioma`) VALUES
(1, 'Portugês'),
(2, 'Inglês'),
(3, 'Espanhol');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbnacionalidade`
--

CREATE TABLE `tbnacionalidade` (
  `IdNacionalidade` tinyint(4) NOT NULL,
  `NoNacionalidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbnacionalidade`
--

INSERT INTO `tbnacionalidade` (`IdNacionalidade`, `NoNacionalidade`) VALUES
(1, 'Brasileiro'),
(2, 'Americano'),
(3, 'Suiço');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbobra`
--

CREATE TABLE `tbobra` (
  `IdObra` int(11) NOT NULL,
  `NoObra` varchar(150) DEFAULT NULL,
  `NuAno` smallint(6) DEFAULT NULL,
  `NuEdicao` tinyint(4) DEFAULT NULL,
  `VaPreco` decimal(5,2) DEFAULT NULL,
  `IdIdioma` tinyint(4) DEFAULT NULL,
  `IdEditora` tinyint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbobra`
--

INSERT INTO `tbobra` (`IdObra`, `NoObra`, `NuAno`, `NuEdicao`, `VaPreco`, `IdIdioma`, `IdEditora`) VALUES
(1, 'Professional Microsoft SQL Server 2016', 2017, 1, '179.57', 2, 9),
(2, 'Microsoft Essencial Windows 7 Professional', 2010, 2, '103.90', 1, 1),
(3, 'Sistemas de Banco de Dados', 2010, 8, '239.99', 1, 7),
(4, 'Manhã, Tarde e Noite', 2011, 23, '28.78', 1, 3),
(5, 'Lava Jato', 2016, 3, '49.90', 1, 8),
(6, 'How to get Away with Murder', 2017, 10, '44.00', 2, 2),
(7, 'Plano Perfeito', 2011, 1, '36.97', 1, 3),
(8, 'Wait, What?', 2017, 1, '41.00', 2, 4),
(9, 'La Fortaleza Digital', 2009, NULL, '130.00', 3, 5),
(10, 'Ponto de Impacto', 2005, 1, '62.00', 1, 6),
(11, 'Juízo Final', 2011, 1, '29.94', 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tboperador`
--

CREATE TABLE `tboperador` (
  `IdOperador` int(11) NOT NULL,
  `NoOperador` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tboperador`
--

INSERT INTO `tboperador` (`IdOperador`, `NoOperador`) VALUES
(2000, 'Admin'),
(2030, 'Procopio'),
(2031, 'Paiva');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbaluno`
--
ALTER TABLE `tbaluno`
  ADD PRIMARY KEY (`NuMatricula`),
  ADD KEY `CoCurso` (`IdCurso`);

--
-- Indexes for table `tbautor`
--
ALTER TABLE `tbautor`
  ADD PRIMARY KEY (`IdAutor`),
  ADD KEY `IdNacionalidade` (`IdNacionalidade`);

--
-- Indexes for table `tbautorobra`
--
ALTER TABLE `tbautorobra`
  ADD PRIMARY KEY (`IdAutorObra`),
  ADD KEY `IdAutor` (`IdAutor`),
  ADD KEY `IdObra` (`IdObra`);

--
-- Indexes for table `tbcurso`
--
ALTER TABLE `tbcurso`
  ADD PRIMARY KEY (`IdCurso`);

--
-- Indexes for table `tbeditora`
--
ALTER TABLE `tbeditora`
  ADD PRIMARY KEY (`IdEditora`);

--
-- Indexes for table `tbemail`
--
ALTER TABLE `tbemail`
  ADD PRIMARY KEY (`IdEmail`),
  ADD KEY `NuMatricula` (`NuMatricula`);

--
-- Indexes for table `tbemprestimo`
--
ALTER TABLE `tbemprestimo`
  ADD PRIMARY KEY (`IdEmprestimo`),
  ADD KEY `fk_IdOperador` (`IdOperador`),
  ADD KEY `fk_NuMatricula` (`NuMatricula`);

--
-- Indexes for table `tbemprestimoitem`
--
ALTER TABLE `tbemprestimoitem`
  ADD PRIMARY KEY (`IdEmprestimoItem`),
  ADD KEY `fk_IdObra` (`IdObra`),
  ADD KEY `fk_IdEmprestimo` (`IdEmprestimo`);

--
-- Indexes for table `tbidioma`
--
ALTER TABLE `tbidioma`
  ADD PRIMARY KEY (`IdIdioma`);

--
-- Indexes for table `tbnacionalidade`
--
ALTER TABLE `tbnacionalidade`
  ADD PRIMARY KEY (`IdNacionalidade`);

--
-- Indexes for table `tbobra`
--
ALTER TABLE `tbobra`
  ADD PRIMARY KEY (`IdObra`),
  ADD KEY `IdIdioma` (`IdIdioma`),
  ADD KEY `IdEditora` (`IdEditora`);

--
-- Indexes for table `tboperador`
--
ALTER TABLE `tboperador`
  ADD PRIMARY KEY (`IdOperador`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbaluno`
--
ALTER TABLE `tbaluno`
  ADD CONSTRAINT `CoCurso` FOREIGN KEY (`IdCurso`) REFERENCES `tbcurso` (`IdCurso`);

--
-- Limitadores para a tabela `tbautor`
--
ALTER TABLE `tbautor`
  ADD CONSTRAINT `IdNacionalidade` FOREIGN KEY (`IdNacionalidade`) REFERENCES `tbnacionalidade` (`IdNacionalidade`);

--
-- Limitadores para a tabela `tbautorobra`
--
ALTER TABLE `tbautorobra`
  ADD CONSTRAINT `IdAutor` FOREIGN KEY (`IdAutor`) REFERENCES `tbautor` (`IdAutor`),
  ADD CONSTRAINT `IdObra` FOREIGN KEY (`IdObra`) REFERENCES `tbobra` (`IdObra`);

--
-- Limitadores para a tabela `tbemail`
--
ALTER TABLE `tbemail`
  ADD CONSTRAINT `NuMatricula` FOREIGN KEY (`NuMatricula`) REFERENCES `tbaluno` (`NuMatricula`);

--
-- Limitadores para a tabela `tbemprestimo`
--
ALTER TABLE `tbemprestimo`
  ADD CONSTRAINT `fk_IdOperador` FOREIGN KEY (`IdOperador`) REFERENCES `tboperador` (`IdOperador`),
  ADD CONSTRAINT `fk_NuMatricula` FOREIGN KEY (`NuMatricula`) REFERENCES `tbaluno` (`NuMatricula`);

--
-- Limitadores para a tabela `tbemprestimoitem`
--
ALTER TABLE `tbemprestimoitem`
  ADD CONSTRAINT `fk_IdEmprestimo` FOREIGN KEY (`IdEmprestimo`) REFERENCES `tbemprestimo` (`IdEmprestimo`),
  ADD CONSTRAINT `fk_IdObra` FOREIGN KEY (`IdObra`) REFERENCES `tbobra` (`IdObra`);

--
-- Limitadores para a tabela `tbobra`
--
ALTER TABLE `tbobra`
  ADD CONSTRAINT `FK_EditoraObra` FOREIGN KEY (`IdEditora`) REFERENCES `tbeditora` (`IdEditora`),
  ADD CONSTRAINT `IdIdioma` FOREIGN KEY (`IdIdioma`) REFERENCES `tbidioma` (`IdIdioma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
