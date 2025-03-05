<?php

require_once "controllers/UserController.php";
require_once "controllers/PrestationController.php";
require_once "controllers/CategoryController.php";
require_once "controllers/TarifController.php";

$action = isset($_GET['action']) ? $_GET['action'] : 'home';

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
        $tarifs = $tarifController->getTarifsByCategory($_GET['category_id'] ?? 1);
        require "views/tarifs.php";
        break;
    case 'admin':
        require "admin_router.php";
        break;
    default:
        require "views/home.php";
}

?>