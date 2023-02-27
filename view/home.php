<main>
<table class="tabela" id="biblioteca">
   <thead>
     <tr>
        <th>Titulo</th>
        <th>linguagem</th>
        <th>Acessar</th>
        <th>Deletar</th>
     </tr>
     </thead>
     <tbody>
     <?php
     include 'db.php';
     while($linha = mysqli_fetch_array($consulta_biblioteca)){
        echo'<tr><td>'.$linha['titulo'].'</td>';
        echo'<td>'.$linha['linguagem'].'</td>';
     
     ?>
    <td><a class="Dcolor" href="?pagina=acessa&pass=<?php echo $linha['id'] ?>"><i class="fa-solid fa-right-to-bracket"></i></i></a></td>
    <td><a class="Dcolor" href="deleta.php?id=<?php echo $linha['id'] ?>"><i class="fa-solid fa-delete-left" ></i></a></td></tr>
     <?php
      }
     ?>

     
     </tbody>
</table>

</main>
