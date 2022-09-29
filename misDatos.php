<?php include("header.php");


$consulta= "SELECT NoControl, Nombre, ApellidoP, ApellidoM, Correo from alumno WHERE NoControl='$user_check'";
$result= $conexion->query($consulta);
$rows= $result->fetch_assoc();
?>

        <br>
        <br>

        <!--Contenido principal-->
        <center>
            <h2 class="text-break"><b>Editar información</b></h2>
        </center>
        
        <br>

        <div class="row text-center">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form  action="">
                    <fieldset class="datosPersonales">
                        <div class="form-group">
                            <div class="col form-group">
                                <label for="nombres">Nombre:</label>
                                <input type="text" name="nombres" class="form-control" id="nombres" value="<?php echo utf8_decode($rows['Nombre']); ?>" required>
                            </div>
                            <div class="col form-group">
                                <label for="app">Apellido Paterno:</label>
                                <input type="text" name="app" class="form-control" id="app" value="<?php echo utf8_decode($rows['ApellidoP']); ?>" required>
                            </div>
                            <div class="col form-group">
                                <label for="app">Apellido Materno:</label>
                                <input type="text" name="app" class="form-control" id="app" value="<?php echo utf8_decode($rows['ApellidoM']); ?>" required>
                            </div>
                            <div class="col form-group">
                                <label for="email">Correo Electrónico Institucional:</label>
                                <input type="text" name="email" class="form-control" id="email" value="<?php echo utf8_decode($rows['Correo']); ?>" required>
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
                        </div>
                    </fieldset>
                    <center>
                        <button class="btn btn-primary" type="submit" id="" style="background-color: #1b396a;">Modificar    </button>
                    </center>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>

        <br>
        
<?php include("includes/footerSesion.php") ?>