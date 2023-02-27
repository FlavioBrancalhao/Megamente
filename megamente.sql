-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Jan-2023 às 22:18
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `megamente`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `codigo` text NOT NULL,
  `linguagem` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `biblioteca`
--

INSERT INTO `biblioteca` (`id`, `titulo`, `descricao`, `codigo`, `linguagem`) VALUES
(6, 'favtion script', 'Script do favition para svgs ', '<script src=\"https://kit.fontawesome.com/45271f6a9b.js\" crossorigin=\"anonymous\"></script>', 'html'),
(7, 'Conexão com Banco php', 'Conexão com banco php e mysql no php my admin.', '<?php\n\n    $servidor = \"localhost\";\n    $acesso =\"root\";\n    $senha = \"\";\n    $db = \"megamente\";\n\n    $conexao = mysqli_connect($servidor,$acesso, $senha,$db);\n\n    $query = \"SELECT * FROM biblioteca\";\n    $consulta_biblioteca = mysqli_query($conexao, $query);', 'PHP'),
(16, 'Index do php', 'Index utilizado para movimentar entre as paginas sem remover o header no php', '<?php\r\ninclude \'header.php\';\r\n\r\n@$pagina = $_GET[\'pagina\'];\r\n\r\nswitch ($pagina) {\r\n    \r\n    case\'acessa\': \r\n        include \'view/acessa.php\'; \r\n            break;\r\n\r\n    case\'novo_livro\': \r\n        include \'view/novo_livro.php\'; \r\n            break;    \r\n    case\'home\':\r\n        include \'view/home.php\';\r\n        break;\r\n\r\n    default:\r\n        include \'view/home.php\';\r\n            break;\r\n}\r\n\r\n\r\ninclude \'footer.php\';\r\n', 'PHP'),
(17, 'Fomrs para envio no php', 'utilizando tags html para fazer o envio das informações para uma pagina php, utilizando o método post com nome do arquivo em action, e o botão com o type submit para enviar.', '<form method=\"post\" action=\"processa_novo.php\">\r\n    <br>\r\n    <label>Titulo</label>\r\n    <br>\r\n    <br>\r\n    <input type=\"text\" name=\"titulo\" placeholder=\"Qual titulo desse livro\">\r\n     \r\n    <input type=\"submit\" class=\"submitar\" value=\"Publicar\">\r\n    <a href=\"?pagina=home\" class=\"submitar2\">Cancelar</a>\r\n    \r\n</form>', 'HTML');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
