<?php
session_start();

require_once(__DIR__ . '../../models/user.php');

if (isset($_POST)) {

    $usuario = new UserModel();
    $usuario->setEmail($_POST['email']);
    $usuario->setPassword($_POST['password']);

    $identity = $usuario->login();

    if ($identity && is_object($identity)) {
        if ($identity->role == 'user') {
            $_SESSION['user'] = $identity;
            header("Location: /final-project/views/personal_formulario.php");
        } else if ($identity->role == 'admin') {
            $_SESSION['admin'] = $identity;
            header("Location: /final-project/views/admin/dashboard.php");
        }
    } else {
        $_SESSION['error_login'] = 'Identificación fallida !!';
        header("Location: /final-project/");
    }
}
