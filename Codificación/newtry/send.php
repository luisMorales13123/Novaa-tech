<html>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            swal("¡Bienvenido a nuestra página de registro!", "Rellena los campos correctamente.");
        });
    </script>
</html>
<?php

include("conexion.php");


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
        //
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
    

        $fechanac = trim($_POST['fechanac']);
        //
        
        $consulta = " INSERT INTO  persona (`pNombre`, `sNombre`, `pApellido`, `sApellido`, `Telefono`, `Documento`, `FechaNacimiento`, `TelefonoAux`, `TipoDcoumento`) 
        VALUES ('$pnombre ', '$snombre', '$apellido', '$sapellido', ' $telefono', ' $documento ','$fechanac', '$telefonosec','$Tipodoc')";

        $resultado = mysqli_query($conex, $consulta);
        if ($resultado) {
            echo '<script type="text/javascript">
            swal("Registro completo"); 
          </script>';
        } else {

            echo '<script type="text/javascript">
                        swal("Ocurrió un error"); 
                      </script>';

        }

    } else {

        echo '<script type="text/javascript">
        swal("Llena todos los campos"); 
      </script>';

    }
    
}//cierre final

