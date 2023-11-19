<?php

require_once(__DIR__ . './models/questions.php');
$questionModel = new QuestionModel();

// Traerse el cuestionario, solo deben pasar el ide del cuestionario
$questionary = $questionModel->getQuestionaryById(3);

header('Content-Type: application/json');
print_r(json_encode($questionary, JSON_PRETTY_PRINT));
