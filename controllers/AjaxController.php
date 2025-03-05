
<?php
require_once "../models/PrestationManager.php";
require_once "../models/CategoryManager.php";
require_once "../models/TarifManager.php";
header('Content-Type: application/json');

if (isset($_GET['action'])) {
    switch ($_GET['action']) {
        case 'delete_prestation':
            $id = $_GET['id'];
            $prestationManager = new PrestationManager();
            if ($prestationManager->deletePrestation($id)) {
                echo json_encode(["success" => true]);
            } else {
                echo json_encode(["success" => false, "error" => "Suppression échouée"]);
            }
            break;
        case 'delete_category':
            $id = $_GET['id'];
            $categoryManager = new CategoryManager();
            if ($categoryManager->deleteCategory($id)) {
                echo json_encode(["success" => true]);
            } else {
                echo json_encode(["success" => false, "error" => "Suppression échouée"]);
            }
            break;
        case 'delete_tarif':
            $id = $_GET['id'];
            $tarifManager = new TarifManager();
            if ($tarifManager->deleteTarif($id)) {
                echo json_encode(["success" => true]);
            } else {
                echo json_encode(["success" => false, "error" => "Suppression échouée"]);
            }
            break;
        default:
            echo json_encode(["success" => false, "error" => "Action inconnue"]);
    }
} else {
    echo json_encode(["success" => false, "error" => "Aucune action spécifiée"]);
}
?>
