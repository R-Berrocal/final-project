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

        $query = "SELECT * FROM users WHERE id = $id";
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

    public function getPersonalInformation($userId)
    {
        $query = "SELECT
                pi.*,
                u.identification,
                u.email,
                tc.value AS contract_type,
                tch.value AS charge_type,
                dj.value AS job_duration,
                cs.value AS civil_status,
                ts.value AS salary_type,
                th.value AS housing_type,
                el.value AS education_level
            FROM
                personal_information pi
            JOIN
                users u ON pi.users_id = u.id
            JOIN
                type_contract tc ON pi.type_contract_id = tc.id
            JOIN
                type_charge tch ON pi.type_charge_id = tch.id
            JOIN
                duration_job dj ON pi.duration_job_id = dj.id
            JOIN
                civil_status cs ON pi.civil_status_id = cs.id
            JOIN
                type_salary ts ON pi.type_salary_id = ts.id
            JOIN
                type_housing th ON pi.type_housing_id = th.id
            JOIN
                education_level el ON pi.education_level_id = el.id
            WHERE
                u.id = $userId";

        $response = parent::findAll($query);
        if (is_string($response)) {
            return "Este usuario no tiene respuestas para este formulario.";
        }

        return $response;
    }
}
