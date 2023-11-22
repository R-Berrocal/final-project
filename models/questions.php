<?php

require_once(__DIR__ . '/connection.php');

class QuestionModel extends Connection
{

    //acá vamos a manejar toda la logica de las preguntas, validar los campos, etc
    public function getQuestionaryById($id)
    {
        $query = "SELECT * FROM questionary WHERE id = $id";
        $questionary = parent::findOne($query);

        // Traerse las preguntas del cuestionario pasando el id
        $questions = $this->getQuestionsByQuestionaryId($id);

        // Traerse las opciones de cada una de las preguntas pasando
        foreach ($questions as &$question) {
            $question['options'] = $this->getOptionsByQuestionId($question['id']);
        }

        $result = array(
            'questionary' => $questionary->fetch_object(),
            'questions' => $questions,
        );
        return $result;
    }

    public function getQuestionsByQuestionaryId($id)
    {
        $query = "SELECT * FROM questions WHERE questionary_id = $id";
        return parent::findAll($query);
    }

    public function getOptionsByQuestionId($id)
    {
        $query = "SELECT options.id, options.value 
              FROM options 
              INNER JOIN questions_options ON options.id = questions_options.options_id
              WHERE questions_options.questions_id = $id
              ORDER BY options.id ASC";
        return parent::findAll($query);
    }

    public function saveResponse($userId, $questionId, $optionId)
    {
        $query = "INSERT INTO response (users_id, questions_id, options_id) VALUES ($userId, $questionId, $optionId)";
        
        $result = $this->save($query);

        if ($result >0) {
            return true; // Éxito al guardar la respuesta
        } else {
            return "Error al guardar la respuesta: " . $result;
        }
    }

}
