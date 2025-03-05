<?php
require_once "../controllers/PrestationController.php";
$prestationController = new PrestationController();
$prestations = $prestationController->listPrestations();
include 'templates/header.php';
?>
    <h2>Gestion des prestations</h2>
    <a href="admin_router.php?admin_action=add_prestation">Ajouter une prestation</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Description</th>
            <th>Catégorie</th>
            <th>Actions</th>
        </tr>
        <?php foreach ($prestations as $prestation): ?>
            <tr>
                <td><?= $prestation['id'] ?></td>
                <td><?= $prestation['name'] ?></td>
                <td><?= $prestation['description'] ?></td>
                <td><?= $prestation['category_id'] ?></td>
                <td>
                    <a href="admin_router.php?admin_action=edit_prestation&id=<?= $prestation['id'] ?>">Modifier</a>
                    <a href="admin_router.php?admin_action=delete_prestation&id=<?= $prestation['id'] ?>">Supprimer</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
<?php include 'templates/footer.php'; ?>