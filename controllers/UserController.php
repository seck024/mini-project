<?php
require_once "models/UserManager.php";

class UserController {
    private $userManager;

    public function __construct() {
        $this->userManager = new UserManager();
    }

    public function register($name, $email, $password, $avatar, $role) {
        if ($this->userManager->createUser($name, $email, $password, $avatar, $role)) {
            echo "Inscription réussie !";
        } else {
            echo "Erreur lors de l'inscription.";
        }
    }

    public function login($email, $password) {
        $user = $this->userManager->getUserByEmail($email);
        if ($user && password_verify($password, $user['password'])) {
            session_start();
            $_SESSION['user'] = $user;
            echo "Connexion réussie !";
        } else {
            echo "Email ou mot de passe incorrect.";
        }
    }
}