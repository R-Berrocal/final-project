<?php
// Incluir el archivo general_form.php que contiene la lógica para obtener $questionary
include '../controllers/general_form.php';

// Validar si hay una sesión iniciada
$userLogued = $_SESSION['user'];
if (!isset($userLogued)) {
    // Redirigir a la página de inicio de sesión si no hay una sesión iniciada
    header("Location: /final-project");
    exit; // Asegúrate de terminar la ejecución del script si se redirige
}

// Obtener los datos del cuestionario para mostrarlos en la página
$questionary = $questionModel->getQuestionaryById(1);
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title>Información del Cuestionario</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
    <?php include('./components/navbar.php'); ?>
    <?php if ($questionary) : ?>
        <h1><?= $questionary["questionary"]->name ?></h1>
        <p><?= $questionary["questionary"]->description ?></p>
        <h2>Preguntas:</h2>
        <!-- enviar la informacion al archivo genrel_form.php -->
        <form method="post" action="../controllers/general_form.php">
            <ol>
                <?php foreach ($questionary["questions"] as $question) : ?>
                    <li>
                        <h3><?= $question["value"] ?></h3>
                        <ul>
                            <?php foreach ($question["options"] as $option) : ?>
                                <li>
                                    <label>
                                        <input type="radio" name="answer_<?= $question["id"] ?>" value="<?= $option["id"] ?>">
                                        <?= $option["value"] ?>
                                    </label>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </li>
                <?php endforeach; ?>
            </ol>
            <input type="submit" value="Enviar Respuestas">
        </form>
    <?php else : ?>
        <p>No se pudo obtener la información del cuestionario.</p>
    <?php endif; ?>
</body>

</html>