<?php

require_once(__DIR__ . './connection.php');

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
            'questionary' => $questionary,
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
        $query = "SELECT options.id, options.value FROM options, questions_options  WHERE questions_id = $id group by options.value";
        return parent::findAll($query);
    }
}
