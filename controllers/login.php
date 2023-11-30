<?php
session_start();

require_once(__DIR__ . '/../models/user.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
  $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
  $password = $_POST['password'];

  $usuario = new UserModel();
  $usuario->setEmail($email);
  $usuario->setPassword($password);

  $identity = $usuario->login();

  if ($identity && is_object($identity)) {
    if ($identity->role == 'user') {
      $_SESSION['user'] = $identity;
      header("Location: /final-project/views/index.php");
      exit();
    } else if ($identity->role == 'admin') {
      $_SESSION['admin'] = $identity;
      header("Location: /final-project/views/admin/dashboard.php");
      exit();
    }
  } else {
    $_SESSION['error_login'] = 'Identificación fallida !!';
    header("Location: /final-project/");
    exit();
  }
}
?>

