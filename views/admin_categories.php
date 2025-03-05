<?php
require_once "../controllers/CategoryController.php";
$categoryController = new CategoryController();
$categories = $categoryController->listCategories();
include 'templates/header.php';
?>
<h2>Gestion des catégories</h2>
<a href="admin_router.php?admin_action=add_category">Ajouter une catégorie</a>
<table>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Actions</th>
    </tr>
    <?php foreach ($categories as $category): ?>
        <tr>
            <td><?= $category['id'] ?></td>
            <td><?= $category['name'] ?></td>
            <td>
                <a href="admin_router.php?admin_action=edit_category&id=<?= $category['id'] ?>">Modifier</a>
                <a href="admin_router.php?admin_action=delete_category&id=<?= $category['id'] ?>">Supprimer</a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>
<?php include 'templates/footer.php'; ?>
