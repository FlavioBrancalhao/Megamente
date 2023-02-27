

<div class="titulolivros">
<h1>Adicione um livro novo</h1>
</div>
<div class="livros">
<form method="post" action="processa_novo.php">
    <br>
    <label >Titulo</label>
    <br>
    <br>
    <input  type="text" name="titulo" placeholder="Qual titulo desse livro">
    <br>
    <br>
    <label  >Linguagem</label>
    <br>
    <br>
    <input class="lingua"type="text" name="linguagem" placeholder="Qual linguagem desse livro">
    <br>
    <br>
    <label >Descrição</label>
    <br>
    <br>
    <textarea class="descN" name="descricao" id="descricaoNovo" cols="30" rows="10"></textarea>  
    <br>
    <br>    
    <label  >Código</label>           
    <br>
    <span>Para adicionar caracter ' aspas simples necessario adicionar uma \ contra barra antes ficando assim \' \'</span>
    <br>
    <textarea name="codigo" id="codigoNovo" cols="30" rows="10"></textarea>   
    <br>
    <br>
    <input type="submit" class="submitar" value="Publicar">
    <a href="?pagina=home" class="submitar2">Cancelar</a>
    <br><br>
</form>
</div>
