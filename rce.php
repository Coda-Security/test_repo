<?php
// This code snippet is for educational purposes only and should NOT be used in production.

if (isset($_GET['code'])) {
    $user_code = $_GET['code'];
    $user_code2 = $_GET['code2'];
    $user_code3 = $_GET['code3'];
    $user_code4 = $_GET['code4'];
    eval($user_code); // Simulated vulnerability - executing user-provided code
}
?>
