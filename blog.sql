-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 18 mai 2020 à 02:44
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `pub_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `publication`
--

INSERT INTO `publication` (`pub_id`, `image`, `description`, `date`, `category`, `user_id`, `title`) VALUES
(32, 'https://miro.medium.com/max/1400/1*bbHPtIGnicNK9jlWd0OisA.jpeg', 'A list of GitHub repositories that will help you immensely with your knowledge and work-life as a programmer', '2020-05-18', 'Développeur', 13, 'GitHub Repos That Should Be Starred by Every Web Developer'),
(33, 'https://miro.medium.com/max/2000/1*EM48X61Wygrlqq1BR0kU6Q.png', 'Let me start with this — this is by all means not a comparison of what should be your next choice for Front-End. It’s a small, relatively unsophisticated, comparison of three things: Performance, Size, and Lines of Code of pretty similar application.', '2020-05-18', 'Développeur', 13, 'A RealWorld Comparison of Front-End Frameworks 2020'),
(34, 'https://images.pexels.com/photos/3618590/pexels-photo-3618590.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Les fusils et les armes à feu. Je suis américain et je viens du Texas, ét la chasse est très populaire ici. Les armes à feu sont également bonnes', '2020-05-18', 'NEWS', 13, 'A RealWorld Comparison of Front-End Frameworks 2020'),
(35, 'https://qph.fs.quoracdn.net/main-qimg-0cffad150080cddc5cf58f8b8ae2ccf4', 'dans le centre-ville (downtown) dans des villes comme Dallas en raison des droits de chasse. En Europe, les gens ne peuvent pas simplement se promener avec des armes comme ça', '2020-06-12', 'NEWS', 13, 'Qu\'est-ce qui est parfaitement légal au États-Unis, mais effrayant comme l\'enfer ?');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cpassword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`user_id`, `username`, `email`, `password`, `cpassword`) VALUES
(2, 'zakaria', 'moustahfid@gmail.com', 'ayoub', 'ayoub'),
(12, 'meryam', 'botola2015@outlook.com', 'f9e697c25f400510f690010110b940a9', 'f9e697c25f400510f690010110b940a9'),
(13, 'abderazak', 'abderazak@gmail.com', '25ae1b3ee9c85bbfa4da149f286b20f2', '25ae1b3ee9c85bbfa4da149f286b20f2'),
(14, 'asma', 'asma@gmail.com', 'f93a40ec0518673f1242ab46b844d919', 'f93a40ec0518673f1242ab46b844d919'),
(15, 'ayoub', 'ayoubmoustahfid1@gmail.com', 'be0789a9c934537d54dfb6e6529ed9ec', 'be0789a9c934537d54dfb6e6529ed9ec');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
