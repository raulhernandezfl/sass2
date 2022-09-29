<?php include("session.php") ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ITGAM II | SASS</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
        crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilosHeader.css">
</head>

<body>
    <div class="container">
        <!--Encabezado de la página-->
        <div class="row clearfix">
            <div class="col-md-12 column" align="center">
                <header>
                    <img src="img/headerTecnm.png" alt="" width="90%">
                    <nav class="navbar nav justify-content-center" style="background-color: #1b396a;">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="principal.php" style="color: white;">SASS</a>

                            <ul class="nav justify-content-end">
                                <li class="nav-item">
                                    <a class="nav-link" href="realizarEvaluacion.php" id="link">Realizar Evaluaciones/Reportes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="dependencia.php" id="link">Dependencia</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="subirEvaluacion.php" id="link">Subir Evaluaciones/Reportes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="files/GuiaUsuarioAlumno.pdf" target="_blank" id="link">Manual</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contacto.php" id="link">Contacto</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="misDatos.php" id="link">Mis datos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="cerrar.php" id="link">Cerrar sesión</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>
            </div>
        </div>