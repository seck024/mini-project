<?php
require_once __DIR__ . '/../models/TarifManager.php';


class TarifController {
    private $tarifManager;

    public function __construct() {
        $this->tarifManager = new TarifManager();
    }

    public function getTarifsByCategory($category_id) {
        return $this->tarifManager->getTarifsByCategory($category_id);
    }
}
