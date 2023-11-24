<?php
// Incluir el archivo personal_form.php que contiene la lógica para obtener la información personal
include '../controllers/personal_form.php';
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
    <title>Formulario de Información Personal</title>
</head>
<body class="bg-gray-100">
<?php include('./components/navbar.php');?>
<br>

<div class="max-w-2xl mx-auto bg-white p-8 rounded-md shadow-md">
    <h1 class="text-2xl font-semibold mb-4">Formulario de Usuario</h1>
    <p class="mb-4">Las siguientes son algunas preguntas que se refieren a información general de usted o su ocupación.</p>
    <p class="mb-4">Por favor seleccione una sola respuesta para cada pregunta y márquela o escríbala en la casilla. Escriba con letra clara y legible.</p>

    <form action="../controllers/personal_form.php" method="post">

        <div class="mb-4">
            <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">1. Nombre completo:</label>
            <input type="text" name="name" required
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
        </div>

        <div class="mb-4">
            <label for="sex" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">2. Género:</label>
            <div class="mt-1 space-x-4">
                <label class="inline-flex items-center">
                    <input type="radio" name="sex" value="masculino" required
                        class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                    <span class="ml-2">Masculino</span>
                </label>
                <label class="inline-flex items-center">
                    <input type="radio" name="sex" value="femenino" required
                        class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                    <span class="ml-2">Femenino</span>
                </label>
            </div>
        </div>

        <div class="mb-4">
            <label for="year_of_birth" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">3. Fecha de Nacimiento:</label>
            <input type="date" name="year_of_birth" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
        </div>

        <div class="mb-4">
            <label for="civil_status_id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">4. Estado Civil:</label>
            <select name="civil_status_id" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                    foreach ($civilStatuses as $status) {
                        echo "<option value='".$status['id']."'>".$status['value']."</option>";
                    }
                ?>
            </select>
        </div>

        <div class="mb-4">
            <label for="education_level_id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">5. Último nivel de estudios que alcanzó:</label>
            <select name="education_level_id" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                    foreach ($educationLevels as $level) {
                        echo "<option value='".$level['id']."'>".$level['value']."</option>";
                    }
                ?>
            </select>
        </div>

        <div class="mb-4">
            <label for="profession" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">6. Ocupación o profesión:</label>
            <input type="text" name="profession" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
        </div>

        <div class="mb-4 flex space-x-4">
             <div class="w-1/2">
                <label for="city" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">7. Lugar de residencia actual:</label>
                <input type="text" name="city" required class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500" placeholder="Ciudad">
            </div>
            <div class="w-1/2">
                <label for="department" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Departamento</label>
                <input type="text" name="department" required class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500" placeholder="Departamento">
            </div>
        </div>

        <div class="mb-4">
            <label for="stratum" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">8. Seleccione y marque el estrato de los servicios públicos de su vivienda:</label>
            <select name="stratum" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="Finca">Finca</option>
                <option value="Unknown">No sé</option>
            </select>
        </div>

        <div class="mb-4">
            <label for="type_housing_id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">9. Tipo de vivienda:</label>
            <select name="type_housing_id" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                    foreach ($typeHousing as $housing) {
                        echo "<option value='".$housing['id']."'>".$housing['value']."</option>";
                    }
                ?>
            </select>
        </div>

        <div class="mb-4">
            <label for="num_person_economic" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">10. Número de personas que dependen económicamente de usted (aunque vivan en otro lugar):</label>
            <input type="number" name="num_person_economic" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
        </div>

        <div class="mb-4 flex space-x-4">
                <div class="w-1/2">
                <label for="city_job" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">11. Lugar donde trabaja actualmente:</label>
                <input type="text" name="city_job" required class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500" placeholder="Ciudad">
            </div>
            <div class="w-1/2">
                <label for="department_job" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Departamento</label>
                <input type="text" name="department_job" required class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500" placeholder="Departamento">
            </div>
        </div>

        <div class="mb-4">
            <label for="duration_job_id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">12. ¿Hace cuántos años que trabaja en esta empresa?</label>
            <select name="duration_job_id" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                    foreach ($durationJobs as $job) {
                        echo "<option value='".$job['id']."'>".$job['value']."</option>";
                    }
                ?>
            </select>
        </div>

        <div class="mb-4">
            <label for="name_job" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">13. ¿Cuál es el nombre del cargo que ocupa en la empresa?</label>
            <input type="text" name="name_job" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
        </div>

        <div class="mb-4">
            <label for="type_charge_id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">14. Seleccione el tipo de cargo que más se parece al que usted desempeña:</label>
            <select name="type_charge_id" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                    foreach ($typeCharge as $charge) {
                        echo "<option value='".$charge['id']."'>".$charge['value']."</option>";
                    }
                ?>
            </select>
        </div>

        <div class="mb-4">
            <label for="duration_job" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">15. ¿Hace cuántos años que desempeña el cargo u oficio actual en esta empresa?</label>
            <select name="duration_job" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                    foreach ($durationJobs as $job) {
                        echo "<option value='".$job['id']."'>".$job['value']."</option>";
                    }
                ?>
            </select>
        </div>

        <div class="mb-4">
            <label for="name_department_job" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">16. Escriba el nombre del departamento, área o sección de la empresa en el que trabaja:</label>
            <input type="text" name="name_department_job" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
        </div>

        <div class="mb-4">
            <label for="type_contract_id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">17. Seleccione el tipo de contrato que tiene actualmente:</label>
            <select name="type_contract_id" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                    foreach ($typeContract as $contract) {
                        echo "<option value='".$contract['id']."'>".$contract['value']."</option>";
                    }
                ?>
            </select>
        </div>

        <div class="mb-4">
            <label for="num_hour_job" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">18. Indique cuántas horas diarias de trabajo están establecidas habitualmente por la empresa para su cargo:</label>
            <input type="number" name="num_hour_job" required
                class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
        </div>

        <div class="mb-4">
            <label for="type_salary_id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">19. Seleccione y marque el tipo de salario que recibe (marque una sola opción): </label>
            <select name="type_salary_id" required class="mt-1 p-2 w-full bg-gray-50 border rounded-md focus:outline-none focus:border-blue-500">
                <?php
                foreach ($typeSalaries as $typeSalary) {
                    echo "<option value='".$typeSalary['id']."'>".$typeSalary['value']."</option>";
                }
                ?>
            </select>
        </div>

        <div class="mt-6">
            <input type="submit" value="Guardar"
                class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">
        </div>

    </form>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
</body>
</html>
