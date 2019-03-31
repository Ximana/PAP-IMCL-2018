-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13/12/2018 às 07:24
-- Versão do servidor: 10.1.32-MariaDB
-- Versão do PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pt`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `artigo`
--

CREATE TABLE `artigo` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `imagem` varchar(200) DEFAULT 'Não definido'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `artigo`
--

INSERT INTO `artigo` (`codigo`, `descricao`, `imagem`) VALUES
(1, 'Paasta de documentos', 'Não definido'),
(2, 'PC', 'Não definido'),
(3, 'Celular', 'Não definido'),
(4, 'Mala', 'Não definido'),
(5, 'pt', 'Não definido'),
(6, 'bd', ''),
(7, 'sss', 'NÃ£o definido'),
(8, 'sss', 'NÃ£o definido'),
(9, 'art                      \r\n                       ', '9'),
(10, 'AA', '10.jpg'),
(11, 'pasta                       \r\n                    ', '11.png'),
(12, 'pasta                       \r\n                    ', '12.png'),
(13, 'pasta                       \r\n                    ', '13.png'),
(14, 'aaa    ', '14.jpg'),
(15, 'Carteira', '15.jpg'),
(16, 'TESTE', 'padrao.png '),
(17, 'ggggg', 'padrao.png '),
(18, '', 'padrao.png '),
(19, '', 'padrao.png '),
(20, '', '20.png '),
(21, '', 'padrao.png '),
(22, '', '22.png '),
(23, 'Carteira', 'padrao.png '),
(24, 'zzzzzzz', '24.png '),
(25, '', 'padrao.png '),
(26, '', 'padrao.png '),
(27, '', 'padrao.png '),
(28, 'bbbbbbbb', '28.png '),
(29, 'nnnnnn', 'padrao.png '),
(30, 'DocumentoTeste', '30.png '),
(31, 'Documento2', 'padrao.png '),
(32, 'Livro1', 'padrao.png '),
(33, 'Documento3', 'padrao.png '),
(34, 'Pacote1', 'padrao.png '),
(35, 'Diamante', '35.png '),
(36, 'Electronico1', 'padrao.png '),
(37, 'Diverso', 'padrao.png '),
(38, 'Parque', 'padrao.png '),
(39, '', 'padrao.png '),
(40, 'TESTE', 'padrao.png '),
(41, 'TESTE', 'padrao.png '),
(42, 'pppppppp', 'padrao.png '),
(43, 'qqqqqqqqqqqqqqqqqq', '43.png '),
(44, 'joao', 'padrao.png '),
(45, 'mmmmmmm', '45.png '),
(46, 'Testando', '46.png '),
(47, 'Diverso teste', '47.png '),
(48, 'Diverso teste', 'padrao.png '),
(49, '', ' '),
(50, 'Diverso teste', ' '),
(51, 'Pasta escolar', '51.png '),
(52, 'telefonem', 'padrao.png '),
(53, 'tiiudshjshdhgdsiujidsds', '53.jpg '),
(54, 'Diverso achado', '54.png ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `artigocategoria`
--

CREATE TABLE `artigocategoria` (
  `codigo` int(11) NOT NULL,
  `codigo do artigo` int(11) NOT NULL,
  `codigo da categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `artigocategoria`
--

INSERT INTO `artigocategoria` (`codigo`, `codigo do artigo`, `codigo da categoria`) VALUES
(1, 3, 2),
(2, 4, 3),
(3, 2, 5),
(4, 1, 4),
(5, 15, 1),
(6, 11, 2),
(7, 16, 1),
(14, 23, 1),
(15, 24, 1),
(19, 28, 1),
(20, 29, 1),
(21, 30, 1),
(22, 31, 1),
(23, 32, 3),
(24, 33, 1),
(25, 34, 2),
(26, 35, 4),
(27, 36, 5),
(28, 37, 6),
(29, 38, 1),
(31, 40, 3),
(32, 41, 1),
(33, 42, 1),
(34, 43, 1),
(35, 44, 1),
(36, 45, 1),
(37, 46, 1),
(39, 48, 6),
(41, 50, 4),
(42, 51, 2),
(43, 52, 4),
(44, 53, 3),
(45, 54, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `Outras informacoes` varchar(255) NOT NULL DEFAULT 'Sem descrição'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `categoria`
--

INSERT INTO `categoria` (`codigo`, `descricao`, `Outras informacoes`) VALUES
(1, 'Documento', 'Sem descrição'),
(2, 'Pacote Fechado', 'Sem descrição'),
(3, 'Livro', 'Sem descrição'),
(4, 'Objecto de Valor', 'Sem descrição'),
(5, 'Electronico', 'Sem descrição'),
(6, 'Diverso', 'Sem descrição');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `codigo` int(11) NOT NULL,
  `imagem` varchar(50) NOT NULL,
  `nome completo` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `login`
--

INSERT INTO `login` (`codigo`, `imagem`, `nome completo`, `usuario`, `senha`, `nivel`) VALUES
(1, 'paulo1-1.jpg', 'Paulo Ximana', 'ximana', '1234', 'Admin'),
(2, 'usuario1.png', 'Tiago Mota', 'mota', '1234', 'Admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data` date NOT NULL,
  `lido` enum('sim','nao') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `mensagem`
--

INSERT INTO `mensagem` (`codigo`, `nome`, `telefone`, `email`, `mensagem`, `data`, `lido`) VALUES
(1, 'paulo', '3333', 'joao@hotmail.com', 'ddddddddddddddddddddddddddddddddddddddddddd', '0000-00-00', 'nao'),
(2, 'paulo', '3333', 'pauloximana@hotmail.com', 'jhvljh', '2018-11-29', 'nao'),
(3, 'hnhhh', '9999', 'bbb@jj', '.hkgggggggggggggggggggggggg', '2018-12-01', 'nao');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `codigo` int(11) NOT NULL,
  `codigo do artigo` int(11) NOT NULL,
  `codigo do usuario` int(11) NOT NULL,
  `classificacao` enum('achado','perdido') NOT NULL,
  `data` date NOT NULL,
  `local` varchar(255) NOT NULL,
  `data da ocorrencia` date NOT NULL,
  `entregue` enum('sim','nao') NOT NULL DEFAULT 'nao',
  `publicado` enum('sim','nao') NOT NULL DEFAULT 'nao'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`codigo`, `codigo do artigo`, `codigo do usuario`, `classificacao`, `data`, `local`, `data da ocorrencia`, `entregue`, `publicado`) VALUES
(4, 10, 5, 'perdido', '0000-00-00', 'a()', '0000-00-00', 'nao', 'sim'),
(5, 10, 5, 'perdido', '0000-00-00', 'a', '2018-10-19', 'nao', 'sim'),
(6, 11, 6, 'perdido', '2018-10-31', 'a', '2018-10-19', 'nao', 'nao'),
(7, 12, 7, 'achado', '2018-10-31', 'a', '2018-10-19', 'nao', 'nao'),
(8, 13, 8, 'perdido', '2018-10-31', 'a', '2018-10-19', 'nao', 'nao'),
(9, 14, 9, 'achado', '2018-10-31', 'a', '2018-10-19', 'nao', 'nao'),
(10, 15, 3, 'perdido', '2018-11-13', 'Parque de diversao', '2018-11-19', 'nao', 'nao'),
(11, 16, 10, 'perdido', '2018-11-15', 'Parque de diverÃ§Ãµes', '2018-11-23', 'nao', 'nao'),
(12, 17, 11, '', '0000-00-00', 'Parque de diverÃ§Ãµes', '2018-11-23', 'nao', 'nao'),
(13, 18, 12, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(14, 19, 13, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(15, 20, 14, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(16, 21, 15, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(17, 22, 16, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(18, 23, 17, 'perdido', '2018-11-15', 'Parque de diverÃ§Ãµes', '2018-11-23', 'nao', 'nao'),
(19, 24, 18, 'perdido', '2018-11-03', 'Parque de diverÃ§Ãµes', '2018-11-23', 'nao', 'nao'),
(20, 25, 19, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(21, 26, 20, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(22, 27, 21, '', '0000-00-00', '', '2018-11-23', 'nao', 'nao'),
(23, 28, 22, 'perdido', '2018-11-09', 'Parque de diverÃ§Ãµes', '2018-11-23', 'nao', 'nao'),
(24, 29, 23, 'achado', '2018-11-09', 'Parque de diverÃ§Ãµes', '2018-11-23', 'nao', 'nao'),
(25, 30, 24, 'perdido', '2018-11-15', 'Shopping', '2018-11-24', 'nao', 'nao'),
(26, 31, 25, 'achado', '2018-11-16', 'Parque de diverÃ§Ãµes', '2018-11-24', 'nao', 'sim'),
(27, 32, 26, 'perdido', '2018-11-16', 'Shopping', '2018-11-24', 'nao', 'nao'),
(28, 33, 27, 'perdido', '2018-11-08', 'Parque de diverÃ§Ãµes', '2018-11-24', 'nao', 'nao'),
(29, 34, 28, 'perdido', '2018-11-10', 'Parque de diverÃ§Ãµes', '2018-11-24', 'nao', 'nao'),
(30, 35, 29, 'perdido', '2018-11-09', 'Parque de diverÃ§Ãµes', '2018-11-24', 'nao', 'sim'),
(31, 36, 30, 'perdido', '2018-11-16', 'Parque de diverÃ§Ãµes', '2018-11-24', 'nao', 'sim'),
(32, 37, 31, 'perdido', '2018-11-30', 'Parque de diverÃ§Ãµes', '2018-11-24', 'nao', 'sim'),
(33, 38, 32, 'perdido', '2018-11-10', 'Parque', '2018-11-24', 'sim', 'sim'),
(34, 39, 33, '', '0000-00-00', 'Parque', '2018-11-24', 'nao', 'nao'),
(35, 40, 34, 'perdido', '2012-09-08', 'Estacionamento', '2018-11-24', 'nao', 'sim'),
(36, 41, 35, 'perdido', '2018-11-09', 'Parque', '2018-11-28', 'nao', 'sim'),
(37, 42, 36, 'perdido', '2018-11-02', 'Parque', '2018-11-28', 'nao', 'sim'),
(39, 44, 38, 'perdido', '2018-11-29', 'Parque', '2018-11-29', 'nao', 'sim'),
(40, 45, 39, 'achado', '2018-11-29', 'Parque', '2018-11-29', 'nao', 'sim'),
(42, 47, 41, '', '0000-00-00', '', '2018-11-29', 'nao', 'nao'),
(44, 49, 43, '', '0000-00-00', '', '2018-11-29', 'nao', 'nao'),
(46, 51, 45, 'achado', '2018-11-24', 'Estacionamento', '2018-11-29', 'nao', 'nao'),
(47, 52, 46, 'perdido', '2018-11-17', 'Nao sei', '2018-11-29', 'sim', 'nao'),
(48, 53, 47, 'achado', '2018-11-27', 'Estacionamento', '2018-11-29', 'sim', 'sim'),
(49, 54, 48, 'achado', '2018-12-01', 'Parque', '2018-12-01', 'sim', 'sim'),
(50, 43, 28, 'achado', '2018-12-12', 'BB', '2018-12-02', 'sim', 'sim');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `codigo` int(11) NOT NULL COMMENT 'Chave primaria',
  `imagem` varchar(100) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `genero` varchar(15) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabela apenas para usuarios';

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`codigo`, `imagem`, `nome`, `genero`, `telefone`, `email`) VALUES
(1, '', 'Paulo', 'Masculino', '923232323', 'pauloximana@hotmail.com'),
(2, '', 'Ximana', 'Masculino', '99323494', 'ximana@gmail.com'),
(3, '', 'Marcia', 'Femenino', '993223000', 'marcia@gmail.com'),
(4, '', 'Tiago Mota', 'Masculino', '99999999', 'Paulo@gmail.com'),
(5, '', 'Tiago Mota', 'Masculino', '99999999', 'Paulo@gmail.com'),
(6, '', 'nome', 'Masculino', '99999999', 'Paulo@gmail.com'),
(7, '', 'nome', 'Masculino', '99999999', 'Paulo@gmail.com'),
(8, '', 'nome', 'Masculino', '99999999', 'Paulo@gmail.com'),
(9, '', 'nome', 'Masculino', '99999999', 'Paulo@gmail.com'),
(10, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(11, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(12, '', '', 'Nao definido', '', ''),
(13, '', '', 'Nao definido', '', ''),
(14, '', '', 'Nao definido', '', ''),
(15, '', '', 'Nao definido', '', ''),
(16, '', '', 'Nao definido', '', ''),
(17, '', 'paulo', 'Femenino', '11111', 'pauloximana@hotmail.com'),
(18, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(19, '', '', 'Nao definido', '', ''),
(20, '', '', 'Nao definido', '', ''),
(21, '', '', 'Nao definido', '', ''),
(22, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(23, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(24, '', 'bilhete', 'Masculino', 'dddd', 'pauloximana@hotmail.com'),
(25, '', 'paulo', 'Femenino', '11111', 'pauloximana@hotmail.com'),
(26, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(27, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(28, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(29, '', 'bilhete', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(30, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(31, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(32, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(33, '', '', 'Nao definido', '', ''),
(34, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(35, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(36, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(37, '', 'paulo', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(38, '', 'joao', 'Masculino', '11111', 'joao@hotmail.com'),
(39, '', 'toni', 'Femenino', '9879', ''),
(40, '', 'Tiago', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(41, '', 'Dilson', 'Masculino', '11111', 'pauloximana@hotmail.com'),
(42, '', 'Miltom', 'Masculino', '11111', ''),
(43, '', '', 'Nao definido', '', ''),
(44, '', 'Milton', 'Masculino', '9879', 'joao@hotmail.com'),
(45, '', 'Milton Francisco', 'Femenino', '999999', 'niltonmilton@hotmail.com'),
(46, '', 'paulo', 'Masculino', '99999999', 'villegasstorm@hotmail.com'),
(47, '', 'Tiago Mota', 'Masculino', '93938233', 'trfjnfxjshd@gmail'),
(48, '', 'Dilson', 'Masculino', '11111', 'joao@hotmail.com');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `artigo`
--
ALTER TABLE `artigo`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `artigocategoria`
--
ALTER TABLE `artigocategoria`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `1 para muitos` (`codigo da categoria`),
  ADD KEY `codigo do artigo` (`codigo do artigo`);

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codigo do usuario` (`codigo do usuario`),
  ADD KEY `codigo do artigo` (`codigo do artigo`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `artigo`
--
ALTER TABLE `artigo`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `artigocategoria`
--
ALTER TABLE `artigocategoria`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Chave primaria', AUTO_INCREMENT=49;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `artigocategoria`
--
ALTER TABLE `artigocategoria`
  ADD CONSTRAINT `1 para muitos` FOREIGN KEY (`codigo da categoria`) REFERENCES `categoria` (`codigo`),
  ADD CONSTRAINT `artigocategoria_ibfk_1` FOREIGN KEY (`codigo do artigo`) REFERENCES `artigo` (`codigo`);

--
-- Restrições para tabelas `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`codigo do usuario`) REFERENCES `usuario` (`codigo`),
  ADD CONSTRAINT `ocorrencia_ibfk_2` FOREIGN KEY (`codigo do artigo`) REFERENCES `artigo` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
