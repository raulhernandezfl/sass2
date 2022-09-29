
<?php
// Estableciendo la conexion a la base de datos
include("conexion/con_db.php");//Contiene de conexion a la base de datos
 $conexion= conexion();
session_start();// Iniciando Sesion
// Guardando la sesion
$user_check=$_SESSION['login_user_sys'];
// SQL Query para completar la informacion del usuario
$ses_sql=mysqli_query($conexion, "select NoControl from alumno where NoControl='$user_check'");
$row = mysqli_fetch_assoc($ses_sql);
$login_session =$row['NoControl'];
if(!isset($login_session)){
mysqli_close($conexion); // Cerrando la conexion
header('Location: index.php'); // Redirecciona a la pagina de inicio
}
?>