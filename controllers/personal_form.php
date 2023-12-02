<?php
session_start();
$userLogued = $_SESSION['user'];
if (!isset($userLogued)) {
    header("Location: /final-project");
    exit; // Asegúrate de terminar la ejecución del script si se redirige
}

$userId = $userLogued->id;

// Requerir archivos conecction.php y information.php
require_once(__DIR__ . '../../models/personal_information.php');
require_once(__DIR__ . '../../models/connection.php');

$personalInformationModel = new PersonalInformationModel();


// Verificar si se recibió el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Crear una instancia de la clase Connection
    $db = new Connection();

    // Recuperar los datos del formulario
    $name = $_POST["name"];
    $sex = $_POST["sex"];
    $yearOfBirth = $_POST["year_of_birth"];
    $civilStatusId = $_POST["civil_status_id"];
    $educationLevelId = $_POST["education_level_id"];
    $profession = $_POST["profession"];
    $city = $_POST["city"];
    $department = $_POST["department"];
    $stratum = $_POST["stratum"];
    $typeHousingId = $_POST["type_housing_id"];
    $numPersonEconomic = $_POST["num_person_economic"];
    $cityJob = $_POST["city_job"];
    $departmentJob = $_POST["department_job"];
    $durationJobId = $_POST["duration_job_id"];
    $nameJob = $_POST["name_job"];
    $typeChargeId = $_POST["type_charge_id"];
    $nameDepartmentJob = $_POST["name_department_job"];
    $typeContractId = $_POST["type_contract_id"];
    $numHourJob = $_POST["num_hour_job"];
    $typeSalaryId = $_POST["type_salary_id"];

    // Obtener el user_id de la sesión
    $userId = $_SESSION['user']->id;

    // Realizar la inserción en la base de datos
    $sql = "INSERT INTO personal_information (users_id, name, sex, year_of_birth, civil_status_id, education_level_id, profession, city, department, stratum, type_housing_id, num_person_economic, city_job, department_job, duration_job_id, name_job, type_charge_id, name_department_job, type_contract_id, num_hour_job, type_salary_id)
            VALUES ($userId, '$name', '$sex', '$yearOfBirth', '$civilStatusId', '$educationLevelId', '$profession', '$city', '$department', '$stratum', '$typeHousingId', '$numPersonEconomic', '$cityJob', '$departmentJob', '$durationJobId', '$nameJob', '$typeChargeId', '$nameDepartmentJob', '$typeContractId', '$numHourJob', '$typeSalaryId')";

    // Ejecutar la consulta utilizando el método save de la clase Connection
    $result = $db->save($sql);

    // Verificar el resultado
    if (is_numeric($result)) {  
        header("Location: /final-project/views/form.php");
    } else {
        echo "Error al insertar datos: " . $result;
    }
}


// Obtener los datos de type_salary
$typeSalaries = $personalInformationModel->getTypeSalaries();
// Obtener los datos de type_housing
$typeHousing = $personalInformationModel->getTypeHousing();
// Obtener los datos de type_contract
$typeContract = $personalInformationModel->getTypeContract();
// Obtener los datos de type_charge
$typeCharge = $personalInformationModel->getTypeCharge();
// Obtener los datos de education_level
$educationLevels = $personalInformationModel->getEducationLevels();
// Obtener los datos de civil_status
$civilStatuses = $personalInformationModel->getCivilStatuses();
// Obtener los datos de duration_job
$durationJobs = $personalInformationModel->getDurationJobs();

?>
