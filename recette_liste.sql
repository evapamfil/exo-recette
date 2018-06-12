-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 12 juin 2018 à 10:05
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `recette`
--

-- --------------------------------------------------------

--
-- Structure de la table `recette_liste`
--

DROP TABLE IF EXISTS `recette_liste`;
CREATE TABLE IF NOT EXISTS `recette_liste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `time` time NOT NULL,
  `description` text NOT NULL,
  `supprimer` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recette_liste`
--

INSERT INTO `recette_liste` (`id`, `title`, `time`, `description`, `supprimer`) VALUES
(1, 'Tarte au pomme', '00:30:00', 'Etape 1 +++++ ', ''),
(2, 'dsifhydezifyez', '00:00:09', 'fjrihfirhf', ''),
(3, 'gateau au chocolat ', '00:00:01', 'choco', ''),
(4, 'fdkfhdkjfdkff', '00:00:01', 'fd,nfkdnfdkf', ''),
(5, 'fkdjfkdjfdf', '00:00:01', 'fdnfkdnfd', ''),
(6, 'dfde', '00:00:01', 'ggg', ''),
(7, 'gfgfg', '00:00:01', 'fdfdfd', ''),
(8, 'tarte au fraise', '00:00:01', 'fraise', ''),
(9, 'fdfdfd', '00:00:11', 'fsdds', ''),
(10, 'test', '00:00:00', 'test', ''),
(11, 'tarte au fraise', '00:00:50', 'test', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
