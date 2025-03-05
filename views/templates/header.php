<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Admin</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="router.php?action=home">Accueil</a></li>
            <?php if (!isset($_SESSION['user'])): ?>
                <li><a href="router.php?action=login">Connexion</a></li>
                <li><a href="router.php?action=register">Inscription</a></li>
            <?php else: ?>
                <li><a href="router.php?action=prestations">Prestations</a></li>
                <li><a href="router.php?action=categories">Catégories</a></li>
                <li><a href="router.php?action=tarifs">Tarifs</a></li>
                <?php if ($_SESSION['user']['role'] === 'admin'): ?>
                    <li><a href="router.php?action=admin">Admin</a></li>
                <?php endif; ?>
                <li><a href="logout.php">Déconnexion</a></li>
            <?php endif; ?>
        </ul>
    </nav>
</header>