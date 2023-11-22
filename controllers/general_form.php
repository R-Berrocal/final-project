<?php
session_start();
$userLogued = $_SESSION['user'];
$userId = $userLogued->id;

// Requerir archivo questions.php
require_once(__DIR__ . '../../models/questions.php');

$questionModel = new QuestionModel();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    foreach ($_POST as $key => $value) {
        if (strpos($key, 'answer_') !== false) {
            $questionId = str_replace('answer_', '', $key);
            $success = $questionModel->saveResponse($userId, $questionId, $value);
            if ($success !== true) {
                //$error_message = "Hubo un error al guardar la respuesta para la pregunta ID $questionId: " . $success;
                return;
            } 
        }
    }
    $questionaryId = $_POST['questionary_id'] + 1;
    
  
    // Redirigir al home luego de enviar las respuestas
    header("Location: /final-project/views/form.php?id=$questionaryId");
}