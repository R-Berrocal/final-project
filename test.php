<?php

require_once(__DIR__ . './models/responseModel.php');
$responseModel = new ResponseModel();

// Traerse el cuestionario, solo deben pasar el ide del cuestionario
$response = $responseModel->getResponsesByUserIdAndFormId(2,4);

header('Content-Type: application/json');
print_r(json_encode($response, JSON_PRETTY_PRINT));
