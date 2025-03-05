<?php
require_once "../controllers/TarifController.php";
$tarifController = new TarifController();
$tarifs = $tarifController->getTarifsByCategory(1);
include 'templates/header.php';
?>
<h2>Gestion des tarifs</h2>
<a href="admin_router.php?admin_action=add_tarif">Ajouter un tarif</a>
<table>
    <tr>
        <th>ID</th>
        <th>Prestation</th>
        <th>Catégorie</th>
        <th>Prix</th>
        <th>Actions</th>
    </tr>
    <?php foreach ($tarifs as $tarif): ?>
        <tr>
            <td><?= $tarif['id'] ?></td>
            <td><?= $tarif['prestation_id'] ?></td>
            <td><?= $tarif['category_id'] ?></td>
            <td><?= $tarif['price'] ?> €</td>
            <td>
                <a href="admin_router.php?admin_action=edit_tarif&id=<?= $tarif['id'] ?>">Modifier</a>
                <a href="admin_router.php?admin_action=delete_tarif&id=<?= $tarif['id'] ?>">Supprimer</a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>
<?php include 'templates/footer.php'; ?>
