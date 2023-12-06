<?php
include("login.php");

$usuario = $_POST['Correo'];
$contraseña = $_POST['Clave'];
session_start();
$_SESSION['usuario'] = $usuario;
$conexion = mysqli_connect("localhost", "root", "", "proyectotecknicstore");
$consulta = "SELECT * FROM uusario_ WHERE Correo='$usuario' AND Clave='$contraseña'";
$resultado = mysqli_query($conexion, $consulta);
$filas = mysqli_num_rows($resultado);

if ($filas) {
  
    if ($usuario == 'luis123445666@gmail.com') {
        header("location: crudTipoDoc.php");
    } else {
        header("location: index.php");
    }
} else {
    ?>
    <h1 class="bad">ERROR DE AUTENTIFICACION</h1>
    <?php
}

mysqli_free_result($resultado);
mysqli_close($conexion);
?>
