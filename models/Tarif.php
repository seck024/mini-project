<?php
class Tarif {
    private $id;
    private $prestation_id;
    private $category_id;
    private $price;

    public function __construct($id, $prestation_id, $category_id, $price) {
        $this->id = $id;
        $this->prestation_id = $prestation_id;
        $this->category_id = $category_id;
        $this->price = $price;
    }

    public function getId() { return $this->id; }
    public function getPrestationId() { return $this->prestation_id; }
    public function getCategoryId() { return $this->category_id; }
    public function getPrice() { return $this->price; }
}
