<?php 
include 'db.php';

if(!isset($_GET['pass'])){
    
    ?>
    <script>
        alert("algo deu errado");
    </script>

<?php } else{?>
    <?php while($linha = mysqli_fetch_array($consulta_biblioteca)){ ?>

        <?php if($linha['id'] == $_GET['pass']){?>
    
            <div class="info">
      <div class="tituloA">    
    <h1><?php echo $linha['titulo']?></h1>
    <h3><?php echo $linha['linguagem']?></h3>
    
    </div>
    <h2><?php echo $linha['descricao']?></h2>
    <textarea name="codigo" id="codigo" cols="30" rows="10" readonly><?php echo $linha['codigo']?></textarea>
      <br>
    <a href="?pagina=home">voltar</a>
    </div>
  
<?php } ?>
<?php } ?>
<?php } ?>