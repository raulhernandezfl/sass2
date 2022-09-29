<?php include("includes/headerSesion.php") ?>

<?php
include_once 'conexion/con_db.php';
?>

        <br>
        <br>

        <!--Contenido principal-->
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <form action="registrar.php" method="post">
                    <center>
                        <h2>
                            <b>Crear Usuario</b>
                        </h2>
                    </center>

                    <br>

                    <fieldset class="datosInicioSesion">
                        <legend id="importancia">
                            <center>Datos para iniciar sesión:</center>
                        </legend>
                        <br>
                        <p class="text-center" id="informacion" size="16">
                            <b>
                                "¡¡No todo es letras mayúsculas!!"
                                <br>
                                "Favor de seleccionar letras mayúsculas y minúsculas"
                            </b>
                        </p>
                        <br>
                        <div class="form-group">
                            <label for="">No de control:</label>
                            <input type="text" name="nocontrol" class="form-control" id="nocontrol" placeholder="Ej.: 16500000">
                        </div>

                        <div class="form-group">
                            <label for="">Contraseña:</label>
                            <input type="password" name="password" class="form-control" id="password" placeholder="********">
                        </div>
                    </fieldset>

                    <fieldset class="datosPersonales">
                        <legend id="importancia">
                            <center>Datos personales</center>
                        </legend>
                        <div class="form-gruop">
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="app">Apellido Paterno:</label>
                                    <input type="text" name="app" class="form-control" id="app" placeholder="Ej.: Hernández">
                                </div>
                                <div class="col-md-4">
                                    <label for="apm">Apellido Materno:</label>
                                    <input type="text" name="apm" class="form-control" id="apm" placeholder="Ej.: Oregón">
                                </div>
                                <div class="col-md-4">
                                    <label for="nombres">Nombre(s):</label>
                                    <input type="text" name="nombres" class="form-control" id="nombres" required placeholder="Ej.: Joaquín">
                                    <br>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edad">Edad:</label>
                            <input type="number" name="edad" class="form-control" id="edad" placeholder="23">
                        </div>

                        <div class="form-group">
                            <label for="dom1">Domicilio (Calle, número, colonia):</label>
                            <input type="text" name="dom1" class="form-control" id="dom1" placeholder="Ej.: Avenida del centro poniente No. 64, Colonia Ampliación la Quebrada">
                        </div>

                        <div class="form-group">
                            <label for="dom2">Municipio/Alcaldía (Municipio, estado, C.P.):</label>
                            <input type="text" name="dom2" class="form-control" id="dom2"  placeholder="Ej.: Cuautitlán Izcalli, Estado de México, C. P. 54769">
                        </div>

                        <div class="form-group">
                            <label for="tel">Teléfono Móvil:</label>
                            <input type="text" name="tel" class="form-control" id="tel"  placeholder="Ej.: 55-55-55-55-55">
                        </div>

                        <div class="form-group"> 
                            <label for="sexo" class="control-label">Sexo: </label>
                            <select class="form-control" id="sexo" name="sexo" >
                                <option value="Masculino">Masculino</option>
                                <option value="Femenino">Femenino</option>
                            </select>
                        </div>

                        <div class="form-group"> 
                            <label for="" class="control-label">Carrera: </label>
                            <select class="form-control" id="carrera" name="carrera">
                                <?php
                                $con=conexion();
                                $sql= "SELECT * FROM carrera";
                                $query= mysqli_query($con,$sql);
                                while ($row=mysqli_fetch_array($query)) {
                                    $nocarrera=$row['NoCarrera'];
                                    $carrera=$row['Carrera'];
                                    ?>
                                    <option value="<?php echo $nocarrera ?>"><?php echo $carrera ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>

                        <div class="form-group"> 
                            <label for="" class="control-label">Semestre: </label>
                            <select class="form-control" id="semestre" name="semestre">
                                <?php
                                $con=conexion();
                                $sql= "SELECT * FROM semestre";
                                $query= mysqli_query($con,$sql);
                                while ($row=mysqli_fetch_array($query)) {
                                    $nosemestre=$row['NoSemestre'];
                                    $semestre=$row['Semestre'];
                                    ?>
                                    <option value="<?php echo $nosemestre ?>"><?php echo $semestre ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="creditos">Créditos Aprobados (<u><font color = "red">solo colocar el número</font></u>):</label>
                            <input type="text" name="creditos" class="form-control" id="creditos" placeholder="Ej.: 246">
                        </div>

                        <div class="form-group">
                            <label for="email">Correo Electrónico Institucional:</label>
                            <input type="text" name="email" class="form-control" id="email" placeholder="Ej.: daniel.bg@tecnm.mx">
                        </div>
                    </fieldset>

                    <center>
                        <button class="btn btn-primary" name="registrar" type="submit" id="registrar" style="background-color: #1b396a;">Registrar</button>
                    </center>
                </form>

            </div>
            <div class="col-md-2"></div>
        </div>

        <br>

<?php include("includes/footerSesion.php") ?>