<?php
include 'header.php';

@$pagina = $_GET['pagina'];

switch ($pagina) {
    
    case'acessa': 
        include 'view/acessa.php'; 
            break;

    case'novo_livro': 
        include 'view/novo_livro.php'; 
            break;    
    case'home':
        include 'view/home.php';
        break;

    default:
        include 'view/home.php';
            break;
}


include 'footer.php';
