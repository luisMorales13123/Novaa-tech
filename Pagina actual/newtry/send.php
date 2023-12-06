<?php

include("conexion.php");

$conexion=mysqli_connect("localhost","root","","proyectotecknicstore");
if (isset($_POST['send'])) {

    if (
        strlen($_POST['pnombre']) >= 1 &&
        strlen($_POST['snombre']) >= 1 &&
        //
        strlen($_POST['apellido']) >= 1 &&
        strlen($_POST['sapellido']) >= 1 &&
        //
        strlen($_POST['telefono']) >= 1 &&
        strlen($_POST['documento']) >= 1 &&
        strlen($_POST['fechanac']) >= 1 &&
        strlen($_POST['telefonosec']) >= 1 &&
        strlen($_POST['correo']) >= 1 &&
        strlen($_POST['contraseña']) >= 1 &&
        strlen($_POST['Tipodoc']) >= 1 
    ) //se cierra el segundo if
    {


        $pnombre = trim($_POST['pnombre']);
        $snombre = trim($_POST['snombre']);
        //
        $apellido = trim($_POST['apellido']);
        $sapellido = trim($_POST['sapellido']);
        //

        //
        $telefono = trim($_POST['telefono']);
        $telefonosec = trim($_POST['telefonosec']);
        //
        $documento = trim($_POST['documento']);
        $Tipodoc = trim($_POST['Tipodoc']);
        $correo = trim($_POST['correo']);
        $contraseña = trim($_POST['contraseña']);

        $fechanac = trim($_POST['fechanac']);

                    $consulta = " INSERT INTO  persona_ (`pNombre`, `sNombre`, `pApellido`, `sApellido`, `Telefono`, `Documento`, `FechaNacimiento`, `TelefonoAux`, `TipoDcoumento`,`Correo`,`Clave`) 
                      VALUES ('$pnombre ', '$snombre', '$apellido', '$sapellido', ' $telefono', ' $documento ','$fechanac', '$telefonosec','$Tipodoc','$correo','$contraseña')";



                    $consulta_usuario = "INSERT INTO uusario_ (`Correo`, `Clave`, `TipoUsuario`) 
                    VALUES ( '$correo', '$contraseña', 1)";

$resultado_usuario = mysqli_query($conexion, $consulta_usuario);


        $resultado = mysqli_query($conexion, $consulta);
        if ($resultado && $resultado_usuario ) {

            echo "<script>
            Swal.fire({
                title: '¡Registro completado!',
                text: 'Tu registro se ha completado con éxito.',
                icon: 'success',
                confirmButtonText: 'Ok'
            });
         </script>";
        } else {

            echo "<script>
            Swal.fire({
                title: '¡Error!',
                text: 'Ocurrió un error al registrar. Por favor, inténtalo de nuevo.',
                icon: 'error',
                confirmButtonText: 'Ok'
            });
         </script>";

        }

    } else {

        echo "<script>
        Swal.fire({
            title: '¡Advertencia!',
            text: 'Por favor, completa todos los campos.',
            icon: 'warning',
            confirmButtonText: 'Ok'
        });
     </script>";

    }
    
}

