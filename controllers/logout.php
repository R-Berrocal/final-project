<?php
session_start();
session_destroy();
header("Location: /final-project"); // Redirecciona a la página de inicio de sesión
exit();
