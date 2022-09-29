<?php
$nocontrol= $_POST["nocontrol"];
$password= $_POST["password"];
$app= $_POST["app"];
$apm= $_POST["apm"];
$nombres= $_POST["nombres"];
$tel= $_POST["tel"];
$sexo= $_POST["sexo"];
$carrera= $_POST["carrera"];
$semestre= $_POST["semestre"];
$email= $_POST["email"];

include_once 'conexion/con_db.php';
$con= conexion();


$sql= "INSERT INTO alumno(NoControl, pass, ApellidoP, ApellidoM, Nombre, Telefono, Sexo, NoCarrera1, NoSemestre1, Correo) VALUES ($nocontrol,'$password','$app', '$apm', '$nombres', '$tel', '$sexo', $carrera, 
$semestre, '$email')";

$query= mysqli_query($con, $sql);
if ($query) {
header('refresh:0;url=registroUsuario.php?registrado');
}
else{
            header('refresh:0;url=registroUsuario.php?error');
        }
?>