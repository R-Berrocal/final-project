<?php

require_once(__DIR__ . './models/questions.php');
$questionModel = new QuestionModel();

$questionary = $questionModel->findAll("SELECT * FROM questionary");

header("Content-Type: application/json");
print_r(json_encode($questionary));
