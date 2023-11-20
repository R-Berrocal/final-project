<?php
session_start();
$userLogued = $_SESSION['user'];
if (!isset($userLogued)) {
    header("Location: /final-project");
    exit; // Asegúrate de terminar la ejecución del script si se redirige
}

$userId = $userLogued->id;


// Requerir archivos conecction.php y questions.php
require_once(__DIR__ . '../../models/questions.php');
require_once(__DIR__ . '../../models/connection.php');

$questionModel = new QuestionModel();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    foreach ($_POST as $key => $value) {
        if (strpos($key, 'answer_') !== false) {
            $questionId = str_replace('answer_', '', $key);
            $success = $questionModel->saveResponse($userId, $questionId, $value);
            if ($success !== true) {
                $error_message = "Hubo un error al guardar la respuesta para la pregunta ID $questionId: " . $success;
                // Manejar errores aquí si es necesario
            }
        }
    }
}

// Obtener los datos para la vista
$questionary = $questionModel->getQuestionaryById(1);
?>
