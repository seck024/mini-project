<?php

require_once "controllers/AdminController.php";
session_start();

if (!isset($_SESSION['user']) || $_SESSION['user']['role'] !== 'admin') {
    die("Accès refusé");
}

$adminAction = isset($_GET['admin_action']) ? $_GET['admin_action'] : 'dashboard';

switch ($adminAction) {
    case 'dashboard':
        require "views/admin_dashboard.php";
        break;
    case 'manage_users':
        require "views/admin_users.php";
        break;
    case 'manage_prestations':
        require "views/admin_prestations.php";
        break;
    case 'manage_categories':
        require "views/admin_categories.php";
        break;
    case 'manage_tarifs':
        require "views/admin_tarifs.php";
        break;
    default:
        require "views/admin_dashboard.php";
}

?>