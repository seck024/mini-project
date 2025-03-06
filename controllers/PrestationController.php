<?php
require_once __DIR__ . '/../models/PrestationManager.php';


class PrestationController {
    private $prestationManager;

    public function __construct() {
        $this->prestationManager = new PrestationManager();
    }

    public function listPrestations() {
        return $this->prestationManager->getAllPrestations();
    }
}