<?php

$data = json_decode(file_get_contents ('php://input'),true);
$id_are[0] =$data['id_ficha'];

$mysqli= new mysqli('localhost', 'root', '', 'list');
$myArray = array();

if ($result = $mysqli ->query("SELECT * FROM cursos where id_ficha = $id_are[0]")) {
    while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
        $myArray[]= $row;
    }
    # code...
    echo json_encode($myArray);
}
?>
