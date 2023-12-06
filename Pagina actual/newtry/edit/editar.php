<?php
$data = file_get_contents("php://input");
require "../conexion.php";
$query = $pdo->prepare("SELECT * FROM tipodedocumento_ WHERE idTipodeDocumento = :idTipodeDocumento");
$query->bindparam(":idTipodeDocumento", $data);
$query->execute();
$resultado = $query->fetch(PDO::FETCH_ASSOC);
echo json_encode($resultado);
?>