<?php
session_start();
$userLogued = $_SESSION['user'];
if (!isset($userLogued)) {
    header("Location: /final-project");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Document</title>
</head>

<body>
    <div class="flex justify-between items-center flex-col h-screen width-full">
        <?php
        include('./components/navbar.html');
        ?>
        <main class="flex flex-col justify-center items-center width-full">
            <h1 class="text-3xl font-bold">Bienvenido al home</h1>
        </main>

        <?php include('./components/footer.html');
        ?>
    </div>
</body>

</html>