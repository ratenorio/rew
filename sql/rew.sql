-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 16-Nov-2022 às 14:00
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
  `data_publicacao` int(11) DEFAULT NULL,
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
(1, 'Top 1', 'Ana Laura Araujo Dos Santos', 2022, NULL, '&quot;Nunca foi a inten&ccedil;&atilde;o me apaixonar, mas desde a primeira vez quando sentei atr&aacute;s dela na sala ela me fez uma simples uma piada e logo me apaixono...&quot;                                                    ', 1, 1, '2022.11.16-13.56.31jpeg'),
(2, 'A rosa', 'Gabriela Frances', 2022, NULL, '&quot;Voc&ecirc; fez de mim uma rosa, eu fui dentre todas as outras rosas a que mais te chamou aten&ccedil;&atilde;o...&quot;                                                    ', 1, 4, '2022.11.16-13.58.22jpeg'),
(3, 'Bolha', 'Jo&atilde;o Vitor de Moraes Torres', 2022, NULL, '&quot;Pois a bolha que eu tanto amei, me fez mais feliz quando me libertei...&quot;                                                    ', 1, 4, '2022.11.16-13.59.27jpeg');

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
(1, 'raissa.email', 'if13Dpsyoylmc', 'raissa', NULL, NULL);

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
  MODIFY `cod_livro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `FK_Capitulos_Livro` FOREIGN KEY (`cod_livro`) REFERENCES `livro` (`cod_livro`);

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
