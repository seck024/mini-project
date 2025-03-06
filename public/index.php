<?php
require_once __DIR__ . '/../config/config.php';
require_once __DIR__ . '/../ router.php';

// Démarrer la session
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
require_once __DIR__ . '/../ router.php';

// Vérifier si l'utilisateur est connecté
$user = isset($_SESSION['user']) ? $_SESSION['user'] : null;

// Inclure la page d'accueil
require_once __DIR__ . '/../views/home.php';
?>