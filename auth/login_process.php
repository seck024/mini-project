<?php
require_once "../models/UserManager.php";
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $userManager = new UserManager();
    $user = $userManager->getUserByEmail($email);

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user'] = $user;
        header("Location: ../router.php?action=home");
        exit;
    } else {
        echo "Email ou mot de passe incorrect.";
    }
}
?>
