<?php
class Prestation {
    private $id;
    private $name;
    private $description;
    private $category_id;

    public function __construct($id, $name, $description, $category_id) {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->category_id = $category_id;
    }

    public function getId() { return $this->id; }
    public function getName() { return $this->name; }
    public function getDescription() { return $this->description; }
    public function getCategoryId() { return $this->category_id; }
}