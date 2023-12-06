<?php

require "../conexion.php";

$consulta = $pdo->prepare("SELECT * FROM tipodedocumento_ ORDER BY idTipodeDocumento DESC");
$consulta->execute();
$Resultado = $consulta->fetchALL(PDO::FETCH_ASSOC);
foreach ($Resultado as $data) {
    echo "<tr>
    <td>".$data['idTipodeDocumento']."</td>
    <td>".$data['TipoDocumento']."</td>
    <td>
    
    <button type='button' class='btn btn-success' onclick=Editar('".$data['idTipodeDocumento']."')>Editar</button>
    <button type='button' class='btn btn-danger' onclick=Eliminar('".$data['idTipodeDocumento']."') >Eliminar</button>
    </td>
    </tr>";
}
?>