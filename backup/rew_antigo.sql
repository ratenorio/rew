-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 30-Nov-2022 às 16:03
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rew`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avalia`
--

CREATE TABLE `avalia` (
  `cod_avalia` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `estrelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `capitulos`
--

CREATE TABLE `capitulos` (
  `cod_capitulo` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `texto` mediumtext DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comenta`
--

CREATE TABLE `comenta` (
  `cod_comentario` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `fanart` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `denuncia`
--

CREATE TABLE `denuncia` (
  `cod_denuncia` int(11) NOT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_comentario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `cod_genero` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`cod_genero`, `nome`) VALUES
(1, 'romance'),
(2, 'fantasia'),
(3, 'terror'),
(4, 'poema'),
(5, 'outros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `le`
--

CREATE TABLE `le` (
  `cod_le` int(11) NOT NULL,
  `cod_livro` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `continuar_lendo` int(11) DEFAULT NULL,
  `lista_de_interesses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `cod_livro` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `data_publicacao` datetime DEFAULT NULL,
  `qtd_capitulo` int(11) DEFAULT NULL,
  `sinopse` text DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `cod_genero` int(11) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`cod_livro`, `nome`, `autor`, `data_publicacao`, `qtd_capitulo`, `sinopse`, `cod_usuario`, `cod_genero`, `foto`) VALUES
(1, 'Top 1', 'Ana Laura Ara&uacute;jo dos Santos', '2022-11-18 00:00:00', NULL, '&quot;Nunca foi a inten&ccedil;&atilde;o me apaixonar, mas desde a primeira vez quando sentei atr&aacute;s dela na sala, ela me faz uma simples piada e logo me apaixono...&quot;                                                   ', 1, 1, '2022.11.18-13.03.42jpeg'),
(2, 'A rosa', 'Gabriela Frances', '2022-11-18 00:00:00', NULL, '&quot;Voc&ecirc; fez de mim uma rosa, eu fui dentre todas as outras rosas a que mais te chamou a aten&ccedil;&atilde;o...&quot;                                                   ', 1, 4, '2022.11.18-13.05.08jpeg'),
(3, 'Bolha', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Pois a bolha que eu tanto amei, me fez mais feliz quando me libertei...&quot;                                                    ', 1, 4, '2022.11.18-13.06.18jpeg'),
(4, 'Trai&ccedil;&atilde;o e morte', 'm&uacute;ltiplos autores', '2022-11-18 00:00:00', NULL, 'Contos de mist&eacute;rio                                                   ', 1, 3, '2022.11.18-13.08.22.jpg'),
(5, 'Concep&ccedil;&otilde;es humanas', 'A.k-06', '2022-11-18 00:00:00', NULL, '&quot;Humano, uma mistura de confus&otilde;es&quot;                                                    ', 1, 5, '2022.11.18-13.10.40.jpg'),
(6, 'Matem&aacute;tico', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;N&atilde;o existe matem&aacute;tica nenhuma, na qual explique essa quest&atilde;o ou gr&aacute;fico t&ecirc;nue...&quot;                                                    ', 1, 4, '2022.11.18-13.12.47.jpg'),
(7, 'Desejo', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Eu apenas te queria, voc&ecirc; me compreende, me entende e isso me mata...&quot;                                                    ', 1, 4, '2022.11.18-13.14.03.jpg'),
(8, 'Para sempre', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Eu, apenas eu... S&oacute; tive come&ccedil;o, n&atilde;o tive fim...&quot;                                                    ', 1, 1, '2022.11.18-13.15.54.jpg'),
(9, 'Contrato', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Eu te entreguei tudo que tinha, absolutamente tudo, minha alma, meu beijo, meu corpo, meu desejo, minha companhia...&quot;                                                    ', 1, 4, '2022.11.18-13.18.02.jpg'),
(10, 'Devaneio', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Te vejo, em sil&ecirc;ncio, me atento &agrave; todos os detalhes, at&eacute; os n&atilde;o memor&aacute;veis...&quot;                                                    ', 1, 4, '2022.11.18-13.19.11.jpg'),
(11, 'Mesa', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Cabe tr&ecirc;s, quatro e at&eacute; cinco. Satisfaz o cansa&ccedil;o e atribui alegria...&quot;                                                    ', 1, 4, '2022.11.18-13.20.40.jpg'),
(12, 'Mulheres', 'Jo&atilde;o Vitor de Moraes Torres', '2022-11-18 00:00:00', NULL, '&quot;Com presen&ccedil;as belas e gratificantes, para amar e condizer...&quot;                                                    ', 1, 4, '2022.11.18-13.22.54.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod_usuario` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `biografia` varchar(255) DEFAULT NULL,
  `foto` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod_usuario`, `email`, `senha`, `username`, `biografia`, `foto`) VALUES
(1, 'rai.email', 'if13Dpsyoylmc', 'raissa', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avalia`
--
ALTER TABLE `avalia`
  ADD PRIMARY KEY (`cod_avalia`),
  ADD KEY `FK_Avalia_Usuario` (`cod_usuario`),
  ADD KEY `FK_Avalia_Livro` (`cod_livro`);

--
-- Índices para tabela `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`cod_capitulo`),
  ADD KEY `FK_Capitulos_Livro` (`cod_livro`);

--
-- Índices para tabela `comenta`
--
ALTER TABLE `comenta`
  ADD PRIMARY KEY (`cod_comentario`),
  ADD KEY `FK_comenta_Usuario` (`cod_usuario`),
  ADD KEY `FK_Comenta_Livro` (`cod_livro`);

--
-- Índices para tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD PRIMARY KEY (`cod_denuncia`),
  ADD KEY `FK_Denuncia_Usuario` (`cod_usuario`),
  ADD KEY `FK_Denuncia_Comenta` (`cod_comentario`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`cod_genero`);

--
-- Índices para tabela `le`
--
ALTER TABLE `le`
  ADD PRIMARY KEY (`cod_le`),
  ADD KEY `FK_Le_Livro` (`cod_livro`),
  ADD KEY `FK_Le_Usuario` (`cod_usuario`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`cod_livro`),
  ADD KEY `FK_Livro_Usuario` (`cod_usuario`),
  ADD KEY `FK_Livro_Genero` (`cod_genero`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avalia`
--
ALTER TABLE `avalia`
  MODIFY `cod_avalia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `cod_capitulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comenta`
--
ALTER TABLE `comenta`
  MODIFY `cod_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `denuncia`
--
ALTER TABLE `denuncia`
  MODIFY `cod_denuncia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `cod_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `le`
--
ALTER TABLE `le`
  MODIFY `cod_le` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `cod_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `avalia`
--
ALTER TABLE `avalia`
  ADD CONSTRAINT `FK_Avalia_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Avalia_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `FK_Capitulos_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `comenta`
--
ALTER TABLE `comenta`
  ADD CONSTRAINT `FK_Comenta_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`),
  ADD CONSTRAINT `FK_comenta_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);

--
-- Limitadores para a tabela `denuncia`
--
ALTER TABLE `denuncia`
  ADD CONSTRAINT `FK_Denuncia_Comenta` FOREIGN KEY (`cod_comentario`) REFERENCES `comenta` (`cod_comentario`),
  ADD CONSTRAINT `FK_Denuncia_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);

--
-- Limitadores para a tabela `le`
--
ALTER TABLE `le`
  ADD CONSTRAINT `FK_Le_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_Le_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`) ON DELETE SET NULL;

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `FK_Livro_Genero` FOREIGN KEY (`cod_genero`) REFERENCES `genero` (`cod_genero`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Livro_Usuario` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
