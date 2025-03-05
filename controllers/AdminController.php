<?php
require_once "models/UserManager.php";

class AdminController {
    private $userManager;

    public function __construct() {
        $this->userManager = new UserManager();
    }

    public function isAdmin($user) {
        return isset($user['role']) && $user['role'] === 'admin';
    }
}
