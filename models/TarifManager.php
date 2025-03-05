<?php
class TarifManager {
    private $db;

    public function __construct() {
        $this->db = Database::getInstance()->getConnection();
    }

    public function getTarifsByCategory($category_id) {
        $stmt = $this->db->prepare("SELECT * FROM tarifs WHERE category_id = ?");
        $stmt->execute([$category_id]);
        return $stmt->fetchAll();
    }
}
