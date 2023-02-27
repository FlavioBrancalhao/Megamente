<?php
include 'db.php';

$id = $_GET['id'];

$query = "DELETE FROM biblioteca WHERE id = $id";

mysqli_query($conexao, $query);

header('location:index.php?pagina=home');
