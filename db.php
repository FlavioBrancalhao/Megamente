<?php

    $servidor = "localhost";
    $acesso ="root";
    $senha = "";
    $db = "megamente";

    $conexao = mysqli_connect($servidor,$acesso, $senha,$db);

    $query = "SELECT * FROM biblioteca";
    $consulta_biblioteca = mysqli_query($conexao, $query);