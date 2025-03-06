<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'restaurant_admin');
define('DB_USER', 'root');
define('DB_PASS', '');
session_start();

try {
    $pdo = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec("SET NAMES utf8"); // (optionnel pour les accents)
} catch (PDOException $e) {
    die("Erreur de connexion à la base de données : " . $e->getMessage());
}