-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/03/2026 às 13:09
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `amelie`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `imagem`) VALUES
(1, '', '', '13-03-2026-08-35-41-1.png'),
(2, '', '', '13-03-2026-08-35-49-2.png'),
(3, '', '', '13-03-2026-08-35-57-3.png'),
(4, '', '', '13-03-2026-08-36-05-4.png'),
(5, '', '', '13-03-2026-08-36-20-5.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `logo` varchar(80) NOT NULL,
  `icone` varchar(80) NOT NULL,
  `instagram` varchar(80) NOT NULL,
  `twitter` varchar(80) NOT NULL,
  `linkedin` varchar(80) NOT NULL,
  `facebook` varchar(80) NOT NULL,
  `youtube` varchar(80) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `titulo_servicos` varchar(50) NOT NULL,
  `subtitulo_servicos` varchar(255) NOT NULL,
  `titulo_trabalhos` varchar(50) NOT NULL,
  `subtitulo_trabalhos` varchar(255) NOT NULL,
  `titulo_equipe` varchar(50) NOT NULL,
  `subtitulo_equipe` varchar(255) NOT NULL,
  `titulo_contato` varchar(50) NOT NULL,
  `subtitulo_contato` varchar(255) NOT NULL,
  `texto_rodape` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`id`, `nome`, `email`, `senha`, `telefone`, `endereco`, `logo`, `icone`, `instagram`, `twitter`, `linkedin`, `facebook`, `youtube`, `cor`, `titulo_servicos`, `subtitulo_servicos`, `titulo_trabalhos`, `subtitulo_trabalhos`, `titulo_equipe`, `subtitulo_equipe`, `titulo_contato`, `subtitulo_contato`, `texto_rodape`) VALUES
(1, 'Amelie', 'admin@gmail.com', '12345678', '(11) 11940-0289', 'Rua das Flores, 19', 'logo.png', 'icone.png', '@ameliepatisserie', '@ameliepatisserie', 'Amelie Patisserie', 'Amelie Patisserie', 'Amelie Patisserie', '#4d3222ff', 'Serviços', 'Sabores artesanais preparados com cuidado para tornar cada momento mais especial.', 'Trabalhos', 'Criações que unem sabor, arte e delicadeza.', 'Equipe', 'Pessoas apaixonadas por transformar ingredientes em momentos doces.', 'Contate-nos', 'Preencha os Campos abaixo para entrar em contato conosco!', 'Amelie Patisserie © 2026 • Fait avec amour et un soupçon de magie • Feito artesanalmente com manteiga e carinho • Rua dos Sabores, 123 • Ter–Dom 8h às 19h • Todos os direitos reservados ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`id`, `nome`, `cargo`, `imagem`) VALUES
(1, 'Amélie Dubois', 'Chef Confeiteira ', '13-03-2026-08-54-38-1.png'),
(2, 'Sophie Laurent ', 'Padeira Artesanal', '13-03-2026-08-55-02-5.png'),
(3, 'Claire Moreau ', 'Auxiliar de Confeitaria', '13-03-2026-08-55-40-4.png'),
(4, 'Camille Bernard ', 'Gerente de Atendimento', '13-03-2026-08-56-05-2.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Pães Artesanais', '<font face=\"courier new\">Na <strong data-start=\"28\" data-end=\"49\">Amelie Patisserie</strong>, nossos pães são preparados diariamente com ingredientes selecionados e seguindo técnicas artesanais que valorizam o sabor e a qualidade. Cada pão é feito com cuidado, respeitando o tempo de preparo para garantir uma textura macia por dentro e crocante por fora. Do pão tradicional aos especiais, nosso objetivo é oferecer produtos sempre frescos, perfeitos para acompanhar o café da manhã, o lanche da tarde ou qualquer momento do dia.</font>', '13-03-2026-08-44-43-1.png', '', 'Imagem'),
(2, 'Confeitaria e Doces Finos ', '<font face=\"courier new\">Nossa confeitaria reúne uma variedade de bolos, tortas, croissants e sobremesas inspiradas na delicadeza da tradicional pâtisserie francesa. Cada doce é preparado com atenção aos detalhes, combinando sabores equilibrados, ingredientes de qualidade e uma apresentação elegante. Na Amelie Patisserie, buscamos transformar cada sobremesa em uma pequena experiência gastronômica, perfeita para adoçar o dia ou celebrar momentos especiais.</font>', '13-03-2026-08-45-22-2.png', '', 'Imagem'),
(3, 'Bolos por Encomenda', '<font face=\"courier new\">Criamos bolos personalizados para aniversários, festas e diversas comemorações. Cada encomenda é feita de forma especial, respeitando o estilo, o sabor e as preferências de cada cliente. Trabalhamos com diferentes recheios, coberturas e decorações para garantir que cada bolo seja único e torne a ocasião ainda mais memorável. Nosso compromisso é unir beleza, sabor e qualidade em cada criação.</font>', '13-03-2026-08-46-05-3.png', '', 'Imagem'),
(4, 'Café e Lanches', '<font face=\"courier new\">Oferecemos um ambiente ideal para uma pausa agradável durante o dia, com cafés, bebidas quentes e lanches preparados na hora. Nossas opções combinam perfeitamente com os pães e doces da casa, criando momentos de conforto e sabor. Seja para começar o dia, fazer uma pausa no trabalho ou encontrar amigos, a Amelie Patisserie é o lugar perfeito para aproveitar um café especial acompanhado de deliciosas opções de lanche.</font>', '13-03-2026-08-46-30-4.png', '', 'Imagem'),
(5, 'Chocolates Artesanais', '<font face=\"courier new\">Nossos chocolates artesanais são preparados com ingredientes cuidadosamente selecionados e muito carinho em cada etapa da produção. Produzimos bombons, trufas e outras especialidades que destacam o sabor intenso do chocolate e uma textura delicada. Além de deliciosos, nossos chocolates também são pensados para presentear, com uma apresentação elegante que transforma cada caixa em um gesto especial. Cada criação reflete a dedicação da Amelie Patisserie em oferecer doces que encantam tanto pelo sabor quanto pela aparência. </font>', '13-03-2026-08-47-08-5.png', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `exibir` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `titulo`, `subtitulo`, `descricao`, `imagem`, `video`, `exibir`) VALUES
(1, 'Sobre ', 'Tradição francesa, sabor artesanal e momentos doces todos os dias.', '<p data-start=\"126\" data-end=\"391\"><font face=\"courier new\">A Amelie Patisserie nasceu da paixão pela confeitaria artesanal e pela elegância das tradicionais pâtisseries francesas. Nosso propósito é transformar ingredientes de qualidade em pães, doces e sobremesas preparados diariamente com cuidado e dedicação.</font></p>\r\n<p data-start=\"393\" data-end=\"656\"><font face=\"courier new\">Cada receita é feita com atenção aos detalhes, buscando oferecer sabor, frescor e aquela sensação acolhedora que só um doce bem feito pode trazer. Inspirados pela tradição, mas sempre abertos à criatividade, queremos que cada visita seja uma experiência especial.</font></p><p data-start=\"393\" data-end=\"656\"><br></p>', '13-03-2026-08-42-29-2.png', '', 'Imagem');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trabalhos`
--

CREATE TABLE `trabalhos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `exibir` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `trabalhos`
--

INSERT INTO `trabalhos` (`id`, `titulo`, `descricao`, `imagem`, `video`, `exibir`, `link`) VALUES
(1, 'Visite Amélie Maison', '<font face=\"courier new\">Uma seleção especial de pães artesanais e doces preparados diariamente. Produtos frescos, feitos com ingredientes selecionados e o cuidado que transforma cada receita em uma experiência única.</font>', '13-03-2026-08-50-42-1.png', '', 'Imagem', ''),
(2, 'Do forno para sua mesa', '<font face=\"courier new\">Pães recém-assados, com aroma e textura irresistíveis. Na Amelie Patisserie, cada produto sai do forno pronto para levar sabor e aconchego diretamente para a sua mesa.</font>', '13-03-2026-08-51-20-2.png', '', 'Imagem', ''),
(3, 'Croissant quentinho e fresquinho', '<font face=\"courier new\">Nosso croissant artesanal é preparado com massa leve e folhada, assado até alcançar o ponto perfeito de crocância por fora e maciez por dentro.</font>', '13-03-2026-08-51-50-3.png', '', 'Imagem', ''),
(4, 'Pães artesanais e clássicos da pâtisserie ', '<font face=\"courier new\">Croissants e pain au chocolat feitos com técnicas tradicionais da confeitaria, garantindo sabor, qualidade e aquele toque especial que só produtos artesanais têm.</font>', '13-03-2026-08-52-28-4.png', '', 'Imagem', ''),
(5, 'Tudo muito fresquinho', 'Cada produto é preparado com carinho e atenção aos detalhes, garantindo sempre pães e doces frescos, saborosos e perfeitos para qualquer momento do dia.', '13-03-2026-08-53-18-5.png', '', 'Imagem', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `trabalhos`
--
ALTER TABLE `trabalhos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
