<?php include("includes/headerSesion.php");
include("login.php");
if(isset($_SESSION['login_user_sys'])){
header("location: header.php");
}
?>


        <br>
        <br>

        <!--Contenido principal-->
                    <div class="row">

        <div class="row justify-content-star" style="height: 400px;">
            <div class="col-4 align-self-center">
                <form action="" method="post">
                    <fieldset class="datosInicioSesion">
                        <legend id="importancia">
                            <center>Datos para iniciar sesión:</center>
                        </legend>
                        <br>
                        <div class="form-group">
                            <label for="">No de control:</label>
                            <input type="text" name="nocontrol" class="form-control" id="nocontrol" placeholder="Ej.: 16500000">
                        </div>

                        <div class="form-group">
                            <label for="">Contraseña:</label>
                            <input type="password" name="pass" class="form-control" id="pass" placeholder="********">
                        </div>

                        <div class="form-group">
                            <center>
                                <button name="ingresar" id="ingresar" type="submit" class="btn btn-primary" style="background-color: #1b396a;"><a style="text-decoration: none; color: white;">Iniciar Sesión</a></button>
                            </center>
                            <center>
                                <button type="button" class="btn btn-link" style="color: #1b396a;">Olvidé mi contraseña</button>
                            </center>
                            <center>
                                <button type="button" class="btn btn-link" style="color: #1b396a;">Descargar el manual de usuario</button>
                            </center>
                        </div>
                    </fieldset>
                </form>
                <div class="clear"> </div>
                <span><?php echo $error; ?></span>
            </div>
            </div>
            <div class="col-4 align-items-end">
                <div class="card text-bg-danger text-center">
                    <div class="card-body">
                        <h5 class="card-title">Nota:</h5>
                        <p class="card-text">Sí es la primera vez que estas entrando al sistema tienes que realizar tu registro, para posteriormente iniciar sesión.</p>
                        <a href="registroUsuario.php" class="btn btn-primary" style="background-color: #1b396a;">Registrate aquí</a>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <?php include("includes/footerSesion.php"); ?> 