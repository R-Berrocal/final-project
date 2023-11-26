<?php 

require_once(__DIR__ . '../../models/responseModel.php');

if (isset($_GET["id"])) {

    $id = $_GET["id"];

    $model = new ResponseModel();
    $response = $model->getResponsesByUserIdAndFormId($id, 1);
    header("Location: /final-project/views/admin/response.php");
}

?>