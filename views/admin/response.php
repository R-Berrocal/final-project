<?php
require_once('../../models/responseModel.php');
$id = 0;

if (isset($_GET["id"])) {

    $id = $_GET["id"];

    $model = new ResponseModel();
    $user = $model->getOne($id);
    $questionary = $model->getForm();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="../assets/img/favicon.png" />
    <title>UNIT TEST ADMIN</title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Nucleo Icons -->
    <link href="./assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Main Styling -->
    <link href="./assets/css/argon-dashboard-tailwind.css?v=1.0.1" rel="stylesheet" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="m-0 font-sans text-base antialiased font-normal  leading-default bg-gray-50 text-slate-500">
    <div class="absolute w-full bg-purple-300  min-h-75"></div>

    <aside class="fixed inset-y-0 flex-wrap items-center justify-between block w-full p-0 my-4 overflow-y-auto antialiased transition-transform duration-200 -translate-x-full bg-white border-0 shadow-xl  max-w-64 ease-nav-brand z-990 xl:ml-6 rounded-2xl xl:left-0 xl:translate-x-0" aria-expanded="false">


        <hr class="h-px mt-0 bg-transparent bg-gradient-to-r from-transparent via-black/40 to-transparent " />

        <div class="mt-8 items-center block w-auto max-h-screen overflow-auto h-sidenav grow basis-full">
            <ul class="flex flex-col pl-0 mb-0">
                <li class="mt-0.5 w-full">
                    <a class="py-2.7 bg-blue-500/13 text-sm ease-nav-brand my-0 mx-2 flex items-center whitespace-nowrap rounded-lg px-4 font-semibold text-slate-700 transition-colors" href="dashboard.php">
                        <div class="mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-center stroke-0 text-center xl:p-2.5">
                            <i class="relative top-0 text-sm leading-normal text-blue-500 ni ni-tv-2"></i>
                        </div>
                        <span class="ml-1 duration-300 opacity-100 pointer-events-none ease">Dashboard</span>
                    </a>
                </li>

                <li class="mt-0.5 w-full">
                    <a class=" py-2.7 text-sm ease-nav-brand my-0 mx-2 flex items-center whitespace-nowrap  px-4 transition-colors" href="responses.php">
                        <div class="mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-center stroke-0 text-center xl:p-2.5">
                            <i class="relative top-0 text-sm leading-normal text-orange-500 ni ni-calendar-grid-58"></i>
                        </div>
                        <span class="ml-1 duration-300 opacity-100 pointer-events-none ease">Responses</span>
                    </a>
                </li>


                <li class="mt-0.5 w-full">
                    <a class="  py-2.7 text-sm ease-nav-brand my-0 mx-2 flex items-center whitespace-nowrap rounded-lg px-4 transition-colors" href="list_admins.php">
                        <div class="mr-2 flex h-8 w-8 items-center justify-center rounded-lg bg-center stroke-0 text-center xl:p-2.5">
                            <i class="relative top-0 text-sm leading-normal text-blue-500 ni ni-circle-08"></i>
                        </div>
                        <span class="ml-1 duration-300 opacity-100 pointer-events-none ease">Admins</span>
                    </a>
                </li>

            </ul>
        </div>
    </aside>

    <main class="relative h-full max-h-screen transition-all duration-200 ease-in-out xl:ml-68 rounded-xl">
        <!-- Navbar -->
        <div class="flex justify-end  pr-4 pt-4">
            <a href="/final-project/controllers/logout.php" class="bg-red-400  hover:bg-red-700 w-35 text-white font-bold py-2 px-4 rounded text-center">Cerrar Sesion</a>
        </div>
        <nav class="relative flex flex-wrap items-center justify-between px-0 py-2 mx-6 transition-all ease-in shadow-none duration-250 rounded-2xl lg:flex-nowrap lg:justify-start" navbar-main navbar-scroll="false">

            <div class="flex items-center justify-between w-full px-4 py-1 mx-auto flex-wrap-inherit">
                <nav>
                    <!-- breadcrumb -->
                    <ol class="flex flex-wrap pt-1 mr-12 bg-transparent rounded-lg sm:mr-16">
                        <li class="text-sm leading-normal">
                            <a class="text-white opacity-50" href="javascript:;">Pages</a>
                        </li>
                        <li class="text-sm pl-2 capitalize leading-normal text-white before:float-left before:pr-2 before:text-white before:content-['/']" aria-current="page">UNIT TEST</li>
                    </ol>
                    <h6 class="mb-0 font-bold text-white capitalize">UNIT TEST</h6>
                </nav>
            </div>
        </nav>

        <div class="w-full px-6 py-6 mx-auto">
            <!-- table 1 -->

            <div class="flex flex-wrap -mx-3">
                <div class="flex-none w-full max-w-full px-3">
                    <div class="relative flex flex-col min-w-0 mb-6 break-words bg-white border-0 border-transparent border-solid shadow-xl  rounded-2xl bg-clip-border">
                        <div class="p-6 pb-0 mb-0 border-b-0 border-b-solid rounded-t-2xl border-b-transparent">

                            <div class="w-full px-6 py-6 mx-auto">
                                <!-- table 1 -->
                                <div class="flex flex-wrap -mx-3">
                                    <div class="flex-none w-full max-w-full px-3">

                                        <div class="flex flex-wrap justify-center">

                                            <div class="w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow">
                                                <div class="flex justify-end px-4 pt-4"></div>
                                                <div class="flex flex-col items-center pb-10">
                                                    <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="./assets/images/user.png" alt="Bonnie image" />
                                                    <h5 class="mb-1 text-xl font-medium text-gray-900"><?php echo "" . $user->identification; ?></h5>
                                                    <span class="text-sm text-gray-500"><?php echo "" . $user->email; ?></span>

                                                    <!-- Start: Dropdown menu -->
                                                    <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown" class=" m-5 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" type="button">Cuestionario<svg class="w-2.5 h-2.5 ms-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 10 6">
                                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 4 4 4-4" />
                                                        </svg>
                                                    </button>

                                                    <div id="dropdown" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-64">
                                                        <ul class="py-2 text-sm text-gray-700" aria-labelledby="dropdownDefaultButton">
                                                            <?php foreach ($questionary as $question) : ?>
                                                                <div class="mb-4">
                                                                    <li>
                                                                        <a href="./response.php?id=<?php echo $user->id ?>&form=<?php echo $question['id'] ?>" class="block px-4 py-2 hover:bg-gray-100"><?php echo "" . $question["name"]; ?></a>
                                                                    </li>
                                                                </div>
                                                            <?php endforeach; ?>
                                                        </ul>
                                                    </div>
                                                    <!-- End: Dropdown menu -->

                                                </div>
                                            </div>

                                        </div>
                                        <div class="flex-auto px-0 pt-0 pb-2">
                                            <div class="p-0 overflow-x-auto">
                                                <!-- ... (contenido adicional) ... -->
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <?php
                            require_once('../../models/responseModel.php');

                            $idform = 2;

                            if (isset($_GET["id"]) && isset($_GET["form"])) {

                                $id = $_GET["id"];
                                $idform = $_GET["form"];

                                $model = new ResponseModel();
                                $response = $model->getResponsesByUserIdAndFormId($id, $idform);

                                if (is_string($response)) {
                                    echo '<h3 class="text-center text-2xl text-gray-500" style="padding: 10%;">' . $response . '</h3>';
                                } else {
                                    $response = $model->getResponsesByUserIdAndFormId($id, $idform);

                                    $items_per_page = 7;

                                    $total_pages = ceil(count($response) / $items_per_page);

                                    $current_page = isset($_GET["page"]) ? $_GET["page"] : 1;

                                    if (!is_numeric($current_page) || $current_page < 1 || $current_page > $total_pages) {
                                        $current_page = 1;
                                    }

                                    $start_index = ($current_page - 1) * $items_per_page;

                                    $sub_array = array_slice($response, $start_index, $items_per_page);
                            ?>
                                    <div class="flex flex-wrap justify-center">
                                        <div class="p-5 w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow">
                                            <!-- table 1 -->
                                            <h2 class="font-bold"><?php echo "" . $questionary[$idform-1]["name"]; ?></h2>
                                            <h3 class="pt-5"></h3>
                                            <?php foreach ($sub_array as $question) : ?>
                                                <div class="mb-4">
                                                    <h3 class=""><?php echo "" . $question["question"]; ?></h3>
                                                    <input type="radio" name="answer_<?= $question["id"] ?>" value="<?= $question["id"] ?>" class="mr-2" checked>
                                                    <label class=""><?= $question["response"] ?></label>
                                                    <ul class="list-none pl-5">
                                                    </ul>
                                                </div>
                                            <?php endforeach; ?>
                                        </div>
                                    </div>

                                    <div class="pagination flex flex-col space-y-4 items-center justify-center p-5">
                                        <nav aria-label="Page navigation example">
                                            <ul class="flex items-center -space-x-px h-8 text-sm">
                                                <?php for ($i = 1; $i <= $total_pages; $i++) : ?>
                                                    <?php if ($i == $current_page) : ?>
                                                        <nav aria-label="Page navigation example">
                                                            <ul class="flex items-center -space-x-px h-8 text-sm">
                                                                <li>
                                                                    <span class="current flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700"><?php echo $i; ?></span>
                                                                </li>
                                                            </ul>
                                                        </nav>
                                                    <?php else : ?>
                                                        <li>
                                                            <a class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700" href="?id=<?php echo $id; ?>&form=<?php echo $idform; ?>&page=<?php echo $i; ?>"><?php echo $i; ?></a>
                                                        </li>
                                                    <?php endif; ?>
                                                <?php endfor; ?>
                                            </ul>
                                        </nav>
                                    </div>
                        </div>
                    <?php

                                }
                            } else {

                                $response = $model->getResponsesByUserIdAndFormId($id, $idform);

                                if (is_string($response)) {
                                    echo '<h3 class="text-center text-2xl text-gray-500" style="padding: 10%;">' . $response . '</h3>';
                                } else {

                                    $items_per_page = 7;

                                    $total_pages = ceil(count($response) / $items_per_page);

                                    $current_page = isset($_GET["page"]) ? $_GET["page"] : 1;

                                    if (!is_numeric($current_page) || $current_page < 1 || $current_page > $total_pages) {
                                        $current_page = 1;
                                    }

                                    $start_index = ($current_page - 1) * $items_per_page;

                                    $sub_array = array_slice($response, $start_index, $items_per_page);
                    ?>
                        <div class="flex flex-wrap justify-center">
                            <div class="p-5 w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow">
                                <?php foreach ($sub_array as $question) : ?>
                                    <div class="mb-4">
                                        <h3 class=""><?php echo "" . $question["question"]; ?></h3>
                                        <input type="radio" name="answer_<?= $question["id"] ?>" value="<?= $question["id"] ?>" class="mr-2" checked>
                                        <label class=""><?= $question["response"] ?></label>
                                        <ul class="list-none pl-5">
                                        </ul>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>

                        <!-- Start: Pagination -->
                        <div class="pagination flex flex-col space-y-4 items-center justify-center p-5">
                            <nav aria-label="Page navigation example">
                                <ul class="flex items-center -space-x-px h-8 text-sm">
                                    <?php for ($i = 1; $i <= $total_pages; $i++) : ?>
                                        <?php if ($i == $current_page) : ?>
                                            <nav aria-label="Page navigation example">
                                                <ul class="flex items-center -space-x-px h-8 text-sm">
                                                    <li>
                                                        <span class="current flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700"><?php echo $i; ?></span>
                                                    </li>
                                                </ul>
                                            </nav>
                                        <?php else : ?>
                                            <li>
                                                <a class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700" href="?id=<?php echo $id; ?>&form=<?php echo $idform; ?>&page=<?php echo $i; ?>"><?php echo $i; ?></a>
                                            </li>
                                        <?php endif; ?>
                                    <?php endfor; ?>
                                </ul>
                            </nav>
                        </div>
                        <!-- End: Pagination -->

                    </div>
            <?php
                                }
                            } ?>
            <div class="flex-auto px-0 pt-0 pb-2">
                <div class="p-0 overflow-x-auto">

                </div>
            </div>
                </div>
            </div>
        </div>

        <footer class="pt-4">

        </footer>
        </div>
    </main>

</body>
<!-- plugin for scrollbar  -->
<script src="../views/admin/assets/js/argon-dashboard-tailwind.js?v=1.0.1" async></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>

</html>