<?php
try {
    $connection = new PDO('mysql:host=localhost;dbname=list','root','');
    $connection ->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    //echo"conectado"; 

} catch (PDOException $exc) {
    echo $exc->getMessage();
    die("pailas");
    //throw $th;
}

?>
