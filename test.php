<?php

require_once(__DIR__ . './models/questions.php');
$questionModel = new QuestionModel();

// Traerse el cuestionario, solo deben pasar el ide del cuestionario
$questionary = $questionModel->getQuestionaryById(1);

// Traerse las preguntas del cuestionario pasando el id
$questions = $questionModel->getQuestionsByQuestionaryId(1);

// Traerse las opciones de cada una de las preguntas pasando
foreach ($questions as &$question) {
    $question['options'] = $questionModel->getOptionsByQuestionId($question['id']);
}

$result = array(
    'questionary' => $questionary,
    'questions' => $questions,
);
header("Content-Type: application/json");
print_r(json_encode($result));
