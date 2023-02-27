<?php

include 'db.php';

$titulo = $_POST['titulo'];
$linguagem = $_POST['linguagem'];
$descricao = $_POST['descricao'];
$codigo = utf8_decode($_POST['codigo']);



$query = "INSERT INTO biblioteca(titulo, linguagem, descricao, codigo) VALUE ('$titulo', '$linguagem', '$descricao', '$codigo')";

    mysqli_query($conexao, $query);

    header('location:index.php?pagina=home');


