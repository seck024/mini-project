<?php
class SessionHelper {
    public static function isLogged() {
        return isset($_SESSION['user']);
    }
    public static function isAdmin() {
        return isset($_SESSION['user']) && $_SESSION['user']['droit_id'] == 1;
    }
}
