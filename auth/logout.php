<?php
session_start();
session_destroy();
header("Location: ../router.php?action=home");
exit;
?>