<?php


if(isset($_POST)){
   
    $tipodoc = $_POST['tipodoc'];
    require "../conexion.php";
    if (empty ($_POST['idp'])) {
   
        $query = $pdo->prepare("INSERT INTO tipodedocumento_ (TipoDocumento) VALUES (:tipdoc)");
        $query->bindparam(":tipdoc", $tipodoc); 
        $query->execute();
        $pdo = null;
        echo trim("ok");


        
    }else{
        $id = $_POST['idp'];
        $query = $pdo->prepare("UPDATE tipodedocumento_ SET TipoDocumento = :tipdoc  WHERE idTipodeDocumento = :idTipodeDocumento");
        $query->bindparam(":tipdoc", $tipodoc); 
        $query->bindparam(":idTipodeDocumento" , $id);
        $query->execute();
        $pdo = null;
        echo trim("modificado");
    }


}



?>