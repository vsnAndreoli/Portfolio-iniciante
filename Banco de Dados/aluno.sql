-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2022 às 07:13
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `alexandria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `cep` varchar(11) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `celular` varchar(14) NOT NULL,
  `escolaridade` enum('Ensino Fundamental','Ensino Médio','Graduação','Pós-Graduação','Mestrado','Doutorado') NOT NULL,
  `nascimento` date NOT NULL,
  `localTrabalho` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `usuario`, `cpf`, `rg`, `cep`, `endereco`, `email`, `senha`, `telefone`, `celular`, `escolaridade`, `nascimento`, `localTrabalho`) VALUES
(1, 'Ivson Guilherme Andreoli', 'vsn', '123.456.789-10', '123.456.789-', '86200-000', 'Rua Arthur Ferrari', 'ivsonandreoli@gmail.com', '123456', '(43)3258-1692', '(43)99990-8230', 'Graduação', '1997-10-16', 'Desempregado'),
(2, 'Patricia Alessandra Andreoli', 'patriciA', '123.123.123-12', '123.123.123-', '86200-000', 'Rua Arthur Ferrari', 'patriciaandreoli@gmail.com', '123456', '123456', '(43)91234-0000', 'Graduação', '1975-10-24', 'Sonia Marcondes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `carga` smallint(6) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id`, `curso`, `carga`, `ano`) VALUES
(1, 'Curso de Programação de JavaScript', 280, 2022),
(2, 'Curso de Manicure', 280, 2022);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `id` int(11) NOT NULL,
  `curso` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
