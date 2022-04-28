

CREATE DATABASE IF NOT EXISTS `voyage` ;

USE `voyage`;


CREATE TABLE `voyage`.`articles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `voyage`.`articles` (`id`, `continents`, `body`, `image`) VALUES
(1, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', 'plan.jpg'),
(2, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', 'plan.jpg'),
(3, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(4, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(5, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(6, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(7, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(8, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(9, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(10, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(11, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', ''),
(12, 'Le Monde.fr - Actualités et Infos en France et dans le monde', 'Le Monde.fr - 1er site d’information. Les articles du journal et toute l’actualité en continu : International, France, Société, Economie, Culture, Environnement, Blogs ...', '');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `voyage`.`comments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `voyage`.`comments` (`id`, `user_id`, `post_id`, `comment`, `date`) VALUES
(1, 1, 1, 'Guerre en Ukraine en direct : la suspension des livraisons de gaz à la Pologne', '2022-04-28'),
(2, 1, 1, 'Guerre en Ukraine en direct : la suspension des livraisons de gaz à la Pologne', '2022-04-28');

-- -------------------------------------------------------
