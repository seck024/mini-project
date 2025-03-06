<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}


// Inclusion des contrôleurs
require_once "controllers/UserController.php";
require_once "controllers/PrestationController.php";
require_once "controllers/CategoryController.php";
require_once "controllers/TarifController.php";

// Récupération de l'action depuis l'URL
$action = isset($_GET['action']) ? htmlspecialchars($_GET['action']) : 'home';

switch ($action) {
    case 'home':
        require "views/home.php";
        break;

    case 'login':
        require "views/login.php";
        break;

    case 'register':
        require "views/register.php";
        break;

    case 'prestations':
        $prestationController = new PrestationController();
        $prestations = $prestationController->listPrestations();
        require "views/prestations.php";
        break;

    case 'categories':
        $categoryController = new CategoryController();
        $categories = $categoryController->listCategories();
        require "views/categories.php";
        break;

    case 'tarifs':
        $tarifController = new TarifController();
        $category_id = isset($_GET['category_id']) ? intval($_GET['category_id']) : 1;
        $tarifs = $tarifController->getTarifsByCategory($category_id);
        require "views/tarifs.php";
        break;

    case 'admin':
        if (file_exists("admin_router.php")) {
            require "admin_router.php";
        } else {
            die("Erreur : admin_router.php introuvable.");
        }
        break;

    default:
        require "views/home.php";
}
?>
