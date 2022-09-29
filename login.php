<?php
session_start(); // Iniciando sesion
$error=''; // Variable para almacenar el mensaje de error
if (isset($_POST['ingresar'])) {
if (empty($_POST['nocontrol']) || empty($_POST['pass'])) {
$error = "Username or Password is invalid";
}
else
{
// Define $username y $password
$NoControl=$_POST['nocontrol'];
$pass=$_POST['pass'];
// Estableciendo la conexion a la base de datos

include("conexion/con_db.php");//Contiene de conexion a la base de datos
$conexion= conexion();
// Para proteger de Inyecciones SQL 

$sql = "SELECT NoControl, pass FROM alumno WHERE NoControl = '" . $NoControl . "' and pass='".$pass."';";
$query=mysqli_query($conexion,$sql);
$counter=mysqli_num_rows($query);
if ($counter==1){
		$_SESSION['login_user_sys']=$NoControl; // Iniciando la sesion
		header("location: header.php"); // Redireccionando a la pagina profile.php
	
	
} else {
$error = "El correo electrónico o la contraseña es inválida.";	
}
}
}
?>