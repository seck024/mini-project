<?php
class User {
private $id;
private $name;
private $email;
private $password;
private $avatar;
private $role;

public function __construct($id, $name, $email, $password, $avatar, $role) {
$this->id = $id;
$this->name = $name;
$this->email = $email;
$this->password = $password;
$this->avatar = $avatar;
$this->role = $role;
}

public function getId() { return $this->id; }
public function getName() { return $this->name; }
public function getEmail() { return $this->email; }
public function getPassword() { return $this->password; }
public function getAvatar() { return $this->avatar; }
public function getRole() { return $this->role; }
}
