<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Información del Cuestionario</title>
    <!-- Aquí puedes incluir tus estilos CSS si los tienes -->
    <!-- Por ejemplo, puedes enlazar un archivo CSS externo -->
    <!-- <link rel="stylesheet" href="styles.css"> -->

    <?php
    // Incluir el archivo que contiene la clase QuestionModel y establecer la conexión a la base de datos
    require_once(__DIR__ . './questions.php');
    require_once(__DIR__ . './connection.php');

    // Crear una instancia de la clase QuestionModel
    $questionModel = new QuestionModel();

    // Verificar si se envió un formulario con datos por POST
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Obtener todas las respuestas del formulario y guardarlas
        foreach ($_POST as $key => $value) {
            if (strpos($key, 'answer_') !== false) {
                $questionId = str_replace('answer_', '', $key); // Obtener el ID de la pregunta desde el nombre del campo
                $userId = 1; // Cambiar esto por la lógica real para obtener el ID del usuario

                // Llamar a la función saveResponse para guardar la respuesta del usuario
                $success = $questionModel->saveResponse($userId, $questionId, $value);

                // Verificar si la respuesta se guardó correctamente
                if ($success !== true) {
                    echo "Hubo un error al guardar la respuesta para la pregunta ID $questionId: " . $success;
                    // Puedes manejar errores de otra manera, como registrarlos en un archivo de registro
                }
            }
        }
    }
    ?>
</head>
<body>
    <?php
    // Traerse el cuestionario, solo deben pasar el ide del cuestionario
    $questionary = $questionModel->getQuestionaryById(1);

    // Verificar si se obtuvo el cuestionario correctamente
    if ($questionary) {
        echo '<h1>' . $questionary["questionary"]["name"] . '</h1>';
        echo '<p>' . $questionary["questionary"]["description"] . '</p>';

        echo '<h2>Preguntas:</h2>';
        echo '<form method="post" action="">'; // Cambia la acción por el archivo actual o el archivo donde procesarás las respuestas
        echo '<ol>';
        foreach ($questionary["questions"] as $question) {
            echo '<li>';
            echo '<h3>' . $question["value"] . '</h3>';
            echo '<ul>';
            foreach ($question["options"] as $option) {
                echo '<li>';
                echo '<label>';
                echo '<input type="radio" name="answer_' . $question["id"] . '" value="' . $option["id"] . '">';
                echo $option["value"];
                echo '</label>';
                echo '</li>';
            }
            echo '</ul>';
            echo '</li>';
        }
        echo '</ol>';
        echo '<input type="submit" value="Enviar Respuestas">';
        echo '</form>';
    } else {
        echo '<p>No se pudo obtener la información del cuestionario.</p>';
    }
    ?>
</body>
</html>
