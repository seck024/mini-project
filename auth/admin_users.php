<?php
require_once "../controllers/UserController.php";
$userController = new UserController();
$users = $userController->getAllUsers();
include 'templates/header.php';
?>
    <h2>Gestion des utilisateurs</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Email</th>
            <th>Rôle</th>
            <th>Actions</th>
        </tr>
        <?php foreach ($users as $user): ?>
            <tr>
                <td><?= $user['id'] ?></td>
                <td><?= $user['name'] ?></td>
                <td><?= $user['email'] ?></td>
                <td><?= $user['role'] ?></td>
                <td>
                    <a href="admin_router.php?admin_action=edit_user&id=<?= $user['id'] ?>">Modifier</a>
                    <a href="admin_router.php?admin_action=delete_user&id=<?= $user['id'] ?>">Supprimer</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
<?php include 'templates/footer.php'; ?>