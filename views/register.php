<?php include 'templates/header.php'; ?>
    <h2>Inscription</h2>
    <form method="POST" action="router.php?action=register">
        <label>Nom :</label>
        <input type="text" name="name" required>
        <label>Email :</label>
        <input type="email" name="email" required>
        <label>Mot de passe :</label>
        <input type="password" name="password" required>
        <label>Avatar (URL) :</label>
        <input type="text" name="avatar">
        <button type="submit">S'inscrire</button>
    </form>
<?php include 'templates/footer.php'; ?>