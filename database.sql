-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 18 déc. 2024 à 15:26
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant_entreprise2`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
                         `num_ticket` varchar(10) NOT NULL,
                         `num_prest` int(11) NOT NULL,
                         `nb_prest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `achat`
--

INSERT INTO `achat` (`num_ticket`, `num_prest`, `nb_prest`) VALUES
                                                                ('T01', 1, 1),
                                                                ('T01', 7, 2),
                                                                ('T02', 1, 1),
                                                                ('T02', 4, 2),
                                                                ('T02', 9, 3),
                                                                ('T03', 6, 1),
                                                                ('T03', 8, 1),
                                                                ('T04', 1, 1),
                                                                ('T04', 4, 2),
                                                                ('T04', 7, 1),
                                                                ('T05', 6, 3),
                                                                ('T06', 3, 1),
                                                                ('T07', 2, 3),
                                                                ('T08', 1, 2),
                                                                ('T08', 7, 3),
                                                                ('T09', 1, 1),
                                                                ('T09', 5, 2),
                                                                ('T09', 8, 3),
                                                                ('T10', 1, 1),
                                                                ('T10', 9, 4),
                                                                ('T11', 3, 1),
                                                                ('T11', 7, 2),
                                                                ('T12', 1, 2),
                                                                ('T12', 4, 3),
                                                                ('T13', 9, 4),
                                                                ('T14', 6, 4),
                                                                ('T15', 2, 1),
                                                                ('T15', 7, 3),
                                                                ('T15', 8, 2),
                                                                ('T16', 2, 1),
                                                                ('T16', 9, 2),
                                                                ('T17', 6, 2),
                                                                ('T18', 6, 1),
                                                                ('T19', 1, 2),
                                                                ('T19', 9, 4),
                                                                ('T20', 6, 2),
                                                                ('T21', 1, 3),
                                                                ('T21', 8, 3),
                                                                ('T22', 2, 1),
                                                                ('T22', 7, 1),
                                                                ('T23', 6, 2),
                                                                ('T24', 1, 3),
                                                                ('T25', 3, 2),
                                                                ('T25', 9, 2),
                                                                ('T26', 6, 1),
                                                                ('T27', 2, 1),
                                                                ('T27', 7, 2),
                                                                ('T28', 6, 4),
                                                                ('T29', 3, 3),
                                                                ('T29', 9, 3),
                                                                ('T30', 1, 1),
                                                                ('T30', 7, 1),
                                                                ('T30', 9, 1),
                                                                ('T31', 6, 1),
                                                                ('T32', 2, 1),
                                                                ('T33', 3, 2),
                                                                ('T34', 6, 1),
                                                                ('T34', 7, 1),
                                                                ('T35', 3, 1),
                                                                ('T35', 7, 2),
                                                                ('T36', 6, 1),
                                                                ('T37', 3, 1),
                                                                ('T37', 8, 2),
                                                                ('T38', 2, 1),
                                                                ('T38', 7, 1),
                                                                ('T39', 1, 1),
                                                                ('T39', 5, 2),
                                                                ('T40', 1, 3),
                                                                ('T40', 4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
                             `num_categ` int(11) NOT NULL,
                             `lib_categ` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`num_categ`, `lib_categ`) VALUES
                                                       (1, 'Petits revenus'),
                                                       (2, 'Revenus moyens'),
                                                       (3, 'Gros revenus'),
                                                       (4, 'Visiteurs');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
                          `num_carte` varchar(10) NOT NULL,
                          `nom` varchar(255) NOT NULL,
                          `num_categ` int(11) NOT NULL,
                          `caution` decimal(10,2) NOT NULL,
                          `date_carte` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`num_carte`, `nom`, `num_categ`, `caution`, `date_carte`) VALUES
                                                                                    ('C1', 'Nina Mcdowell', 3, 6.00, '2022-08-27'),
                                                                                    ('C10', 'Francesca Briggs', 2, 9.00, '2022-08-16'),
                                                                                    ('C11', 'Abdul Weiss', 2, 9.00, '2022-09-19'),
                                                                                    ('C12', 'Rinah Reilly', 1, 8.00, '2022-09-11'),
                                                                                    ('C13', 'Kimberley Bryan', 1, 9.00, '2022-09-17'),
                                                                                    ('C14', 'Galena Keller', 1, 7.00, '2022-08-16'),
                                                                                    ('C15', 'Francesca Briggs', 1, 9.00, '2022-08-16'),
                                                                                    ('C2', 'Murphy Lane', 2, 9.00, '2022-08-15'),
                                                                                    ('C3', 'Hillary Garza', 2, 7.00, '2022-09-07'),
                                                                                    ('C4', 'Ciaran Ball', 3, 6.00, '2022-09-11'),
                                                                                    ('C5', 'Kirsten Norton', 3, 7.00, '2022-09-28'),
                                                                                    ('C6', 'Abdul Weiss', 3, 9.00, '2022-09-19'),
                                                                                    ('C7', 'Rinah Reilly', 1, 8.00, '2022-09-11'),
                                                                                    ('C8', 'Kimberley Bryan', 3, 9.00, '2022-09-17'),
                                                                                    ('C9', 'Galena Keller', 4, 7.00, '2022-08-16');

-- --------------------------------------------------------

--
-- Structure de la table `depot`
--

CREATE TABLE `depot` (
                         `num_carte` varchar(10) NOT NULL,
                         `date_depot` date NOT NULL,
                         `montant` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `depot`
--

INSERT INTO `depot` (`num_carte`, `date_depot`, `montant`) VALUES
                                                               ('C1', '2022-09-01', 5.00),
                                                               ('C1', '2022-10-13', 30.00),
                                                               ('C10', '2022-08-18', 5.00),
                                                               ('C10', '2022-09-01', 25.00),
                                                               ('C10', '2022-09-14', 30.00),
                                                               ('C10', '2022-10-14', 25.00),
                                                               ('C12', '2022-09-14', 80.00),
                                                               ('C12', '2022-09-16', 30.00),
                                                               ('C13', '2022-09-23', 40.00),
                                                               ('C13', '2022-10-01', 20.00),
                                                               ('C14', '2022-08-17', 20.00),
                                                               ('C14', '2022-09-14', 30.00),
                                                               ('C15', '2022-08-18', 30.00),
                                                               ('C15', '2022-09-23', 30.00),
                                                               ('C15', '2022-12-01', 45.00),
                                                               ('C2', '2022-09-05', 20.00),
                                                               ('C2', '2022-09-07', 30.00),
                                                               ('C2', '2022-11-03', 15.00),
                                                               ('C3', '2022-09-10', 40.00),
                                                               ('C4', '2022-09-12', 20.00),
                                                               ('C4', '2022-10-03', 30.00),
                                                               ('C6', '2022-09-23', 60.00),
                                                               ('C7', '2022-09-14', 5.00),
                                                               ('C7', '2022-10-05', 20.00),
                                                               ('C7', '2022-11-14', 30.00),
                                                               ('C8', '2022-09-22', 20.00),
                                                               ('C8', '2022-09-30', 30.00),
                                                               ('C9', '2022-08-20', 5.00),
                                                               ('C9', '2022-09-02', 20.00);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `depotsparusager`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `depotsparusager` (
                                   `num_carte` varchar(10)
    ,`montant_total` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `moyennedepots`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `moyennedepots` (
                                 `num_carte` varchar(10)
    ,`moyenne_montant` decimal(14,6)
);

-- --------------------------------------------------------

--
-- Structure de la table `prestation`
--

CREATE TABLE `prestation` (
                              `num_prest` int(11) NOT NULL,
                              `lib_prest` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prestation`
--

INSERT INTO `prestation` (`num_prest`, `lib_prest`) VALUES
                                                        (1, 'Plat principal'),
                                                        (2, 'Plat + Dessert'),
                                                        (3, 'Entrée + Plat'),
                                                        (4, 'Supplément Entrée'),
                                                        (5, 'Supplément dessert'),
                                                        (6, 'Repas complet'),
                                                        (7, 'Alcool'),
                                                        (8, 'Apéritif'),
                                                        (9, 'Soda');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `recette_supplement_entree`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `recette_supplement_entree` (
                                             `Recette Totale Supplément Entrée` decimal(42,2)
);

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

CREATE TABLE `tarif` (
                         `num_prest` int(11) NOT NULL,
                         `num_categ` int(11) NOT NULL,
                         `prix` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tarif`
--

INSERT INTO `tarif` (`num_prest`, `num_categ`, `prix`) VALUES
                                                           (1, 1, 2.50),
                                                           (1, 2, 2.70),
                                                           (1, 3, 3.10),
                                                           (1, 4, 5.00),
                                                           (2, 1, 3.10),
                                                           (2, 2, 3.80),
                                                           (2, 3, 4.50),
                                                           (2, 4, 7.00),
                                                           (3, 1, 2.90),
                                                           (3, 2, 3.10),
                                                           (3, 3, 3.70),
                                                           (3, 4, 6.50),
                                                           (4, 1, 0.20),
                                                           (4, 2, 0.40),
                                                           (4, 3, 0.90),
                                                           (4, 4, 1.20),
                                                           (5, 1, 0.15),
                                                           (5, 2, 0.30),
                                                           (5, 3, 0.70),
                                                           (5, 4, 1.10),
                                                           (6, 1, 3.80),
                                                           (6, 2, 4.00),
                                                           (6, 3, 4.30),
                                                           (6, 4, 9.00),
                                                           (7, 1, 1.20),
                                                           (7, 2, 1.30),
                                                           (7, 3, 1.50),
                                                           (7, 4, 2.00),
                                                           (8, 1, 1.30),
                                                           (8, 2, 1.40),
                                                           (8, 3, 1.60),
                                                           (8, 4, 2.10),
                                                           (9, 1, 0.80),
                                                           (9, 2, 0.90),
                                                           (9, 3, 1.00),
                                                           (9, 4, 1.30);

-- --------------------------------------------------------

--
-- Structure de la table `ticket`
--

CREATE TABLE `ticket` (
                          `num_ticket` varchar(10) NOT NULL,
                          `num_carte` varchar(10) NOT NULL,
                          `date_achat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ticket`
--

INSERT INTO `ticket` (`num_ticket`, `num_carte`, `date_achat`) VALUES
                                                                   ('T01', 'C1', '2022-10-03'),
                                                                   ('T02', 'C1', '2022-10-05'),
                                                                   ('T03', 'C1', '2022-10-10'),
                                                                   ('T04', 'C1', '2022-10-11'),
                                                                   ('T05', 'C1', '2022-11-02'),
                                                                   ('T06', 'C2', '2022-10-11'),
                                                                   ('T07', 'C2', '2022-10-13'),
                                                                   ('T08', 'C2', '2022-11-02'),
                                                                   ('T09', 'C2', '2022-11-10'),
                                                                   ('T10', 'C2', '2022-11-14'),
                                                                   ('T11', 'C3', '2022-10-11'),
                                                                   ('T12', 'C3', '2022-10-20'),
                                                                   ('T13', 'C3', '2022-10-24'),
                                                                   ('T14', 'C4', '2022-11-02'),
                                                                   ('T15', 'C4', '2022-11-15'),
                                                                   ('T16', 'C4', '2022-11-24'),
                                                                   ('T17', 'C4', '2022-12-12'),
                                                                   ('T18', 'C6', '2022-12-27'),
                                                                   ('T19', 'C6', '2022-11-14'),
                                                                   ('T20', 'C7', '2022-12-19'),
                                                                   ('T21', 'C7', '2022-11-22'),
                                                                   ('T22', 'C7', '2022-11-10'),
                                                                   ('T23', 'C7', '2022-11-08'),
                                                                   ('T24', 'C7', '2022-10-12'),
                                                                   ('T25', 'C8', '2022-11-22'),
                                                                   ('T26', 'C8', '2022-10-18'),
                                                                   ('T27', 'C9', '2022-12-19'),
                                                                   ('T28', 'C9', '2022-11-22'),
                                                                   ('T29', 'C10', '2022-10-20'),
                                                                   ('T30', 'C10', '2022-10-17'),
                                                                   ('T31', 'C10', '2022-10-14'),
                                                                   ('T32', 'C12', '2022-12-08'),
                                                                   ('T33', 'C12', '2022-11-23'),
                                                                   ('T34', 'C12', '2022-11-21'),
                                                                   ('T35', 'C12', '2022-10-19'),
                                                                   ('T36', 'C13', '2022-11-23'),
                                                                   ('T37', 'C13', '2022-11-15'),
                                                                   ('T38', 'C14', '2022-10-12'),
                                                                   ('T39', 'C14', '2022-09-21'),
                                                                   ('T40', 'C15', '2022-09-01');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `usagers_ayant_achete_supplement_entree`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `usagers_ayant_achete_supplement_entree` (
                                                          `Numéro de Ticket` varchar(10)
    ,`Numéro de Carte` varchar(10)
    ,`Nom Usager` varchar(255)
    ,`Prestation` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure de la vue `depotsparusager`
--
DROP TABLE IF EXISTS `depotsparusager`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `depotsparusager`  AS SELECT `depot`.`num_carte` AS `num_carte`, sum(`depot`.`montant`) AS `montant_total` FROM `depot` GROUP BY `depot`.`num_carte` ;

-- --------------------------------------------------------

--
-- Structure de la vue `moyennedepots`
--
DROP TABLE IF EXISTS `moyennedepots`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `moyennedepots`  AS SELECT `depot`.`num_carte` AS `num_carte`, avg(`depot`.`montant`) AS `moyenne_montant` FROM `depot` GROUP BY `depot`.`num_carte` ;

-- --------------------------------------------------------

--
-- Structure de la vue `recette_supplement_entree`
--
DROP TABLE IF EXISTS `recette_supplement_entree`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recette_supplement_entree`  AS SELECT sum(`a`.`nb_prest` * `t`.`prix`) AS `Recette Totale Supplément Entrée` FROM ((`achat` `a` join `prestation` `p` on(`a`.`num_prest` = `p`.`num_prest`)) join `tarif` `t` on(`a`.`num_prest` = `t`.`num_prest`)) WHERE `p`.`lib_prest` = 'Supplément Entrée' ;

-- --------------------------------------------------------

--
-- Structure de la vue `usagers_ayant_achete_supplement_entree`
--
DROP TABLE IF EXISTS `usagers_ayant_achete_supplement_entree`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usagers_ayant_achete_supplement_entree`  AS SELECT `t`.`num_ticket` AS `Numéro de Ticket`, `t`.`num_carte` AS `Numéro de Carte`, `c`.`nom` AS `Nom Usager`, `p`.`lib_prest` AS `Prestation` FROM (((`achat` `a` join `ticket` `t` on(`a`.`num_ticket` = `t`.`num_ticket`)) join `prestation` `p` on(`a`.`num_prest` = `p`.`num_prest`)) join `client` `c` on(`t`.`num_carte` = `c`.`num_carte`)) WHERE `p`.`lib_prest` = 'Supplément Entrée' ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
    ADD PRIMARY KEY (`num_ticket`,`num_prest`),
  ADD KEY `num_prest` (`num_prest`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
    ADD PRIMARY KEY (`num_categ`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
    ADD PRIMARY KEY (`num_carte`),
  ADD KEY `num_categ` (`num_categ`);

--
-- Index pour la table `depot`
--
ALTER TABLE `depot`
    ADD PRIMARY KEY (`num_carte`,`date_depot`);

--
-- Index pour la table `prestation`
--
ALTER TABLE `prestation`
    ADD PRIMARY KEY (`num_prest`);

--
-- Index pour la table `tarif`
--
ALTER TABLE `tarif`
    ADD PRIMARY KEY (`num_prest`,`num_categ`),
  ADD KEY `num_categ` (`num_categ`);

--
-- Index pour la table `ticket`
--
ALTER TABLE `ticket`
    ADD PRIMARY KEY (`num_ticket`),
  ADD KEY `num_carte` (`num_carte`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
    ADD CONSTRAINT `achat_ibfk_1` FOREIGN KEY (`num_ticket`) REFERENCES `ticket` (`num_ticket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `achat_ibfk_2` FOREIGN KEY (`num_prest`) REFERENCES `prestation` (`num_prest`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
    ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`num_categ`) REFERENCES `categorie` (`num_categ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `depot`
--
ALTER TABLE `depot`
    ADD CONSTRAINT `depot_ibfk_1` FOREIGN KEY (`num_carte`) REFERENCES `client` (`num_carte`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tarif`
--
ALTER TABLE `tarif`
    ADD CONSTRAINT `tarif_ibfk_1` FOREIGN KEY (`num_prest`) REFERENCES `prestation` (`num_prest`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tarif_ibfk_2` FOREIGN KEY (`num_categ`) REFERENCES `categorie` (`num_categ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ticket`
--
ALTER TABLE `ticket`
    ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`num_carte`) REFERENCES `client` (`num_carte`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
