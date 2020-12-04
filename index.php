<?php

$conexion = mysqli_connect('localhost', 'root', '', 'php_mysql_intro');

if(mysqli_connect_errno()){
    echo "La conexión a la BD ha fallado:".mysqli_connect_error();
}else{
    echo "La conexiona la BD fue exitosa <br>";
}

// configura la codificacion de caracteres, si la DB devulve una tilde o ñ, lo devolvera en formato castellano
mysqli_query($conexion, "SET NAMES 'utf8' ");

// Consulta SELECT desde PHP

$query = mysqli_query($conexion, "SELECT * FROM notas");

// fetch_assoc devuleve un array asociativo
// $notas = mysqli_fetch_assoc($query);
// var_dump($notas);


// Recorre toda las notas
while($nota = mysqli_fetch_assoc($query)){
    // var_dump($nota);
    echo "<h2>".$nota['titulo']."</h2>";
    echo $nota['descripcion'].'<br>';
}

// INSERTAR EN LA BASE DE DATOS DESDE PHP
$sql = "INSERT INTO notas VALUES (null, 'Nota 3', 'Notas desde php', 'green')";
$insert = mysqli_query($conexion, $sql);

if($insert){
    echo "Datos insertados correctamente";
}else{
    echo "Error: ".mysqli_error($conexion);
}

// Para comprobarlo, abrir en el navegador el archivo index.php
?>