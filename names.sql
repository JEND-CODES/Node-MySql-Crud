-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 10 oct. 2020 à 00:30
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `web_app`
--

-- --------------------------------------------------------

--
-- Structure de la table `names`
--

CREATE TABLE `names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `images` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `names`
--

INSERT INTO `names` (`id`, `name`, `descriptions`, `images`, `date_added`) VALUES
(1, 'Post 1', 'Lorem ipsum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium...', 'https://www.visittheusa.fr/sites/default/files/styles/4_3_2800x2100_/public/images/attraction_image/2017-02/MustSEE_GWonderLake_Denali_Alaska_Web72DPI_2.jpg?itok=S4f-Y4lx', '2020-10-07 12:25:49'),
(9, 'Post 2', 'Lorem ipsum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium...', 'https://www.visittheusa.fr/sites/default/files/styles/4_3_2800x2100_/public/images/attraction_image/2017-02/MustSEE_Glenn%20Highway_Alaska_Web72DPI_0.jpg?itok=mXKHYEPK', '2020-10-07 12:32:24'),
(37, 'Post 3', 'Lorem ipsum sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium...', 'https://www.visittheusa.fr/sites/default/files/styles/4_3_2800x2100_/public/images/attraction_image/2017-02/MustSEE_Katmai%20National%20Park_Alaska_Web72DPI_1.jpg?itok=HVqOfbaf', '2020-10-10 00:22:45');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `names`
--
ALTER TABLE `names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
