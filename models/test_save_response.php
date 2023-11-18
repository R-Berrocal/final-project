<?php
// Incluir tus clases y archivos necesarios
require_once(__DIR__ . './connection.php'); // Ajusta la ruta a tu archivo Connection.php
require_once(__DIR__ . './questions.php'); // Ajusta la ruta a tu archivo QuestionModel.php

// Instancia de la clase QuestionModel
$questionModel = new QuestionModel();

// Valores para probar la inserción en la base de datos
$userId = 1;
$questionId = 56;
$optionId = 2;

// Intenta guardar la respuesta con los valores proporcionados
$success = $questionModel->saveResponse($userId, $questionId, $optionId);

// Verificar si la respuesta se guardó correctamente
if ($success === true) {
    echo "Respuesta guardada exitosamente.";
} else {
    echo "Hubo un error al guardar la respuesta: " . $success;
}
