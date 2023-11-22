<?php
require_once(__DIR__ . './connection.php');

class ResponseModel extends Connection
{

    public function getResponsesByUserIdAndFormId($userId, $formId)
    {
        $query = "SELECT 
                    response.id, 
                    response.users_id, 
                    response.questions_id, 
                    response.options_id, 
                    questions.value as question, 
                    options.value as response
                  FROM response
                  INNER JOIN questions ON response.questions_id = questions.id
                  INNER JOIN options ON response.options_id = options.id
                  WHERE response.users_id = $userId AND questions.questionary_id = $formId";

        $response = parent::findAll($query);

        if (!$response) {
            return "Este usuario no tiene respuestas para este formulario.";
        }

        return $response;
    }
}
