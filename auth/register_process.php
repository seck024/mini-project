<?php
require_once "../models/UserManager.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $avatar = $_POST['avatar'];

    $userManager = new UserManager();
    if ($userManager->createUser($name, $email, $password, $avatar, 'user')) {
        header("Location: ../router.php?action=login");
        exit;
    } else {
        echo "Erreur lors de l'inscription.";
    }
}
?>