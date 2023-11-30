<?php 
  session_start();
  
  if (isset($_SESSION['user'])) {
    header("Location: /final-project/views/index.php");
    exit;
  }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <title>Proyecto final</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
  <div class="min-h-screen bg-gray-100 text-gray-900 flex justify-center">
    <div class="max-w-screen-xl m-0 sm:m-10 bg-white shadow sm:rounded-lg flex justify-center flex-1">
      <div class="lg:w-1/2 xl:w-5/12 p-6 sm:p-12">
        <div>
          <img
            src="./assets/images/logo.png"
            class="w-32 mx-auto" />
        </div>
        <div class="mt-12 flex flex-col items-center">
          <h1 class="text-2xl xl:text-3xl font-extrabold">
            Iniciar Sesión
          </h1>
          <div class="w-full flex-1 mt-8">
          <h2 class="text-red-600 mx-auto max-w-xs"><?php if (isset($_SESSION['error_login'])) {echo $_SESSION['error_login'];}?></h2>
            <form class="flex flex-col justify-center items-center gap-4 p-6" action="./controllers/login.php"
              method="post">
              <div class="mx-auto max-w-xs">
                <input
                  class="w-full px-8 py-4 rounded-lg font-medium bg-gray-100 border border-gray-200 placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white"
                  type="email" placeholder="Email" name="email" required />
                <input
                  class="w-full px-8 py-4 rounded-lg font-medium bg-gray-100 border border-gray-200 placeholder-gray-500 text-sm focus:outline-none focus:border-gray-400 focus:bg-white mt-5"
                  type="password" placeholder="Password" name="password" required />
                  <h2 class="text-red-600 pt-4 mx-auto max-w-xs"><?php if (isset($_SESSION['error_login'])) {echo "Correo o contraseña incorrectos!";}?></h2>
                <button
                  class="mt-5 tracking-wide font-semibold bg-indigo-500 text-gray-100 w-full py-4 rounded-lg hover:bg-indigo-700 transition-all duration-300 ease-in-out flex items-center justify-center focus:shadow-outline focus:outline-none">
                  <svg class="w-6 h-6 -ml-2" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                    stroke-linejoin="round">
                    <path d="M16 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2" />
                    <circle cx="8.5" cy="7" r="4" />
                    <path d="M20 8v6M23 11h-6" />
                  </svg>
                  <span class="ml-3">
                    Iniciar Sesión
                  </span>
                </button>

                <div class="my-12 text-center hov-pointer">
                  <a href="./views/create.php">
                    REGISTRARSE
                  </a>
                </div>
                
                <p class="mt-6 text-xs text-gray-600 text-center">
                  I agree to abide by templatana's
                  <a href="#" class="border-b border-gray-500 border-dotted">
                    Terms of Service
                  </a>
                  and its
                  <a href="#" class="border-b border-gray-500 border-dotted">
                    Privacy Policy
                  </a>
                </p>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="flex-1 bg-indigo-100 text-center hidden lg:flex">
        <div class="m-12 xl:m-16 w-full bg-contain bg-center bg-no-repeat"
          style="background-image: url('https://raynov.ma/wp-content/uploads/2023/03/UNITeST.png');">
        </div>
      </div>
    </div>
  </div>
</body>

</html>