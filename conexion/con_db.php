<?php
function conexion(){
	$conexion=mysqli_connect('localhost','root','','sass');
	return $conexion;
}
?>
