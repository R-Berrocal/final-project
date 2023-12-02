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
if(!isset($_GET['id'])) {
  $questionary = $questionModel->getQuestionaryById(1);
} else {
  if($_GET['id'] > 4) {
    header("refresh:1;url='../controllers/logout.php'");
    exit;
  }
  $questionary = $questionModel->getQuestionaryById($_GET['id']);
}

$current_page = basename($_SERVER['PHP_SELF']);

?>

<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <title>Información del Cuestionario</title>
  <link rel="shortcut icon" href="../assets/images/encuesta.png" type="image/x-icon">
  <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-800 text-white">
 <?php include('./components/navbar.php'); ?>
 <?php if ($questionary) : ?>
  <div class="container mx-auto px-4">
    <h1 class="text-2xl font-bold my-4 text-gray-100"><?= $questionary["questionary"]->name ?></h1>
    <p class="text-lg text-gray-300"><?= $questionary["questionary"]->description ?></p>
    <h2 class="text-4xl font-semibold my-3 text-gray-200">Preguntas:</h2>
    <div class="questionary" data-questionary-id="<?= $questionary["questionary"]->id ?>">
      <form method="post" action="../controllers/general_form.php" class="bg-gray-700 shadow-md rounded px-8 pt-6 pb-8 mb-4"> 
        <div id="questions-container">
          <?php foreach ($questionary["questions"] as $question) : ?>
            <div class="question mb-4" style="display: none;">
              <h3 class="text-2xl font-medium text-gray-300"><?= $question["value"] ?></h3>
              <ul class="list-none pl-5">
                <?php foreach ($question["options"] as $option) : ?>
                 <li class="my-2">
                   <input type="radio" name="answer_<?= $question["id"] ?>" value="<?= $option["id"] ?>" class="mr-2" required>
                   <label class="text-lg text-gray-400"><?= $option["value"] ?></label>
                 </li>
                <?php endforeach; ?>
              </ul>
            </div>
          <?php endforeach; ?>
        </div>
        <input type="hidden" name="questionary_id" value="<?= $questionary["questionary"]->id ?>">
        <button type="button" id="prev-button" class="text-white bg-gradient-to-r from-blue-500 via-blue-600 to-blue-700 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-blue-300 dark:focus:ring-blue-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2" style="display: none;">Anterior</button>
        <button type="button" id="next-button" class="text-white bg-gradient-to-r from-cyan-400 via-cyan-500 to-cyan-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-cyan-300 dark:focus:ring-cyan-800 shadow-lg shadow-cyan-500/50 dark:shadow-lg dark:shadow-cyan-800/80 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2" >Siguiente</button>
        <button type="submit" id="submit-button" class="text-white bg-gradient-to-r from-green-400 via-green-500 to-green-600 hover:bg-gradient-to-br focus:ring-4 focus:outline-none focus:ring-green-300 dark:focus:ring-green-800 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2" style="display: none;" disabled>Enviar Respuestas</button>
      </form>
    </div>
  </div>
 <?php else : ?>
  <p class="text-red-500 text-center text-2xl mt-10">No se pudo obtener la información del cuestionario.</p>
 <?php endif; ?>

 <script>

document.addEventListener('DOMContentLoaded', function() {
    var questions = document.querySelectorAll('#questions-container .question');
    var currentQuestion = 0;

    // Ocultar todas las preguntas excepto la primera al cargar la página
    questions[0].style.display = 'block';
    for (var i = 1; i < questions.length; i++) {
        questions[i].style.display = 'none';
    }

    function showQuestion(index) {
        questions[currentQuestion].style.display = 'none';
        currentQuestion = index;
        questions[currentQuestion].style.display = 'block';

        document.querySelector('#prev-button').style.display = currentQuestion === 0 ? 'none' : 'block';
        document.querySelector('#next-button').style.display = currentQuestion === questions.length - 1 ? 'none' : 'block';
        document.querySelector('#submit-button').style.display = currentQuestion === questions.length - 1 ? 'block' : 'none';
        document.querySelector('#submit-button').disabled = currentQuestion === questions.length - 1 ? false : true;
    }

    document.querySelector('#next-button').addEventListener('click', function() {
        var currentQuestionElement = questions[currentQuestion];
        var radioInputs = currentQuestionElement.querySelectorAll('input[type="radio"]');
        var isRadioAnswered = Array.from(radioInputs).some(input => input.checked);

        if (currentQuestion === 1 || isRadioAnswered) {
            showQuestion(currentQuestion + 1);
        } else {
            //alert("Por favor, responde la pregunta actual antes de continuar.");
        
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Por favor, responde la pregunta actual antes de continuar.',
            });
        }
    });

    document.querySelector('#prev-button').addEventListener('click', function() {
        showQuestion(currentQuestion - 1);
    });

    document.querySelector('#submit-button').addEventListener('click', function() {
       
        var currentQuestionElement = questions[currentQuestion];
        var radioInputs = currentQuestionElement.querySelectorAll('input[type="radio"]');
        var isRadioAnswered = Array.from(radioInputs).some(input => input.checked);

        if (currentQuestion === 0 || isRadioAnswered) {
            document.forms[0].submit(); // Esto enviará el formulario si es válido
        
            Swal.fire({
                icon: 'success',
                title: '¡Enviado!',
                text: 'El formulario se envió con éxito.',
            });
        } else {
            alert("Por favor, responde la pregunta actual antes de continuar.");
        }
    });
});



 </script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>

</body>

</html>