<?php
require_once __DIR__ . '/../models/CategoryManager.php';


class CategoryController {
    private $categoryManager;

    public function __construct() {
        $this->categoryManager = new CategoryManager();
    }

    public function listCategories() {
        return $this->categoryManager->getAllCategories();
    }
}