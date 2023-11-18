<?php

require_once(__DIR__ . './connection.php');

class QuestionModel extends Connection
{

    //acá vamos a manejar toda la logica del login, validar los campos, etc
    public function getQuestionaryById($id)
    {
        $query = "SELECT * FROM questionary WHERE id = $id";
        return parent::findOne($query);
    }

    public function getQuestionsByQuestionaryId($id) {
        $query = "SELECT * FROM questions WHERE questionary_id = $id";
        return parent::findAll($query);
    }

    public function getOptionsByQuestionId($id) {
        $query = "SELECT options.value FROM options, questions_options  WHERE questions_id = $id group by options.value";
        return parent::findAll($query);
    }

    public function saveResponse($userId, $questionId, $optionId)
    {
        $query = "INSERT INTO response (users_id, questions_id, options_id) VALUES ($userId, $questionId, $optionId)";
        
        $result = $this->save($query);

        if ($result === true) {
            return true; // Éxito al guardar la respuesta
        } else {
            return "Error al guardar la respuesta: " . $result;
        }
    }

}
