<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}


// Vérifier si l'utilisateur est administrateur
if (!isset($_SESSION['user']) || $_SESSION['user']['role'] !== 'admin') {
    die("Accès refusé. Vous devez être administrateur pour accéder à cette page.");
}

// Inclusion des fichiers nécessaires
require_once "controllers/AdminController.php";
require_once "controllers/UserController.php";
require_once "controllers/PrestationController.php";
require_once "controllers/CategoryController.php";
require_once "controllers/TarifController.php";

// Récupération de l'action admin
$adminAction = isset($_GET['admin_action']) ? htmlspecialchars($_GET['admin_action']) : 'dashboard';

switch ($adminAction) {
    case 'dashboard':
        require "views/admin_dashboard.php";
        break;

    case 'manage_users':
        $userController = new UserController();
        $users = $userController->getAllUsers();
        require "views/admin_users.php";
        break;

    case 'manage_prestations':
        $prestationController = new PrestationController();
        $prestations = $prestationController->listPrestations();
        require "views/admin_prestations.php";
        break;

    case 'manage_categories':
        $categoryController = new CategoryController();
        $categories = $categoryController->listCategories();
        require "views/admin_categories.php";
        break;

    case 'manage_tarifs':
        $tarifController = new TarifController();
        $tarifs = $tarifController->getTarifsByCategory(1);
        require "views/admin_tarifs.php";
        break;

    default:
        require "views/admin_dashboard.php";
}
?>
