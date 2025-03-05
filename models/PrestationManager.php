<?php
class PrestationManager {
    private $db;

    public function __construct() {
        $this->db = Database::getInstance()->getConnection();
    }

    public function getAllPrestations() {
        $stmt = $this->db->query("SELECT * FROM prestations");
        return $stmt->fetchAll();
    }
}