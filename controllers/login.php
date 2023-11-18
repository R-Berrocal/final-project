<?php

require_once(__DIR__ . '../../models/user.php');
session_start();
$userModel = new UserModel();
$user = $userModel->login($_POST['email'], $_POST['password']);

$_SESSION['userLogued'] = $user;
header("Location: /final-project/views");
