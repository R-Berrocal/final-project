<?php
require_once(__DIR__ . '/connection.php');

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

        if (is_string($response)) {
            return "Este usuario no tiene respuestas para este formulario.";
        }

        return $response;
    }

    public function getOne($id)
    {
        $result = false;

        $query = "SELECT * FROM users WHERE id = 6";
        $login = parent::findOne($query);

        if (is_object($login) && $login->num_rows == 1) {
            $usuario = $login->fetch_object();
            $result = $usuario;
        }

        return $result;
    }

    public function getForm()
    {
        $result = false;
        $data = [];

        $query = "SELECT * FROM questionary";
        $login = parent::findOne($query);

        if (is_object($login)) {
            while ($row = mysqli_fetch_assoc($login)) {
                $data[] = $row;
            }
            $result = $data;
        }

        return $result;
    }
}
