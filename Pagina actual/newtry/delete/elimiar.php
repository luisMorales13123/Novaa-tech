<?php

$data = file_get_contents("php://input");
require "../conexion.php";
$query = $pdo->prepare("DELETE FROM tipodedocumento_ WHERE idTipodeDocumento = :idTipodeDocumento");
$query->bindparam("idTipodeDocumento", $data);
$query->execute();
echo trim("ok");
?>