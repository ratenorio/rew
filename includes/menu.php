
<?php
  session_start();
?>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">R&W</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <?php if(isset($_SESSION['login'])): ?> 
    
      <?php endif ?>  
      <?php if(!isset($_SESSION['login'])): ?>                
      <li class="nav-item active">
        <a class="nav-link" href="login.php" style="border-radius: 20px; background: rgb(163, 232, 255);padding: 10px;width: 90%;border: none;margin-right: 10px;">Entrar <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="cadastro.php">Cadastre-se</a>
      </li>
      <?php endif ?>  

    </ul>
    
    <?php if(isset($_SESSION['login'])): ?>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" name="busca" id="busca" placeholder="Pesquisar" aria-label="Pesquisar">
          <button class="btn btn-outline-dark my-2 my-sm-0" type="submit" style="color: rgb(163, 232, 255); background:rgb(54,54,54);">Pesquisar</button>
        </form>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:black;">
              Escreva
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="livro_formulario.php">Novo livro</a>
              <a class="dropdown-item" href="listagem_livros.php">Meus Livros</a>
            </div>   
          </li>
    </ul>
  </div>
  
        <div class="card-body text-right">
            Olá, <?php echo $_SESSION['login']['usuario']['username']?>!
            <a href="core/repositorios/usuario_repositorio.php?acao=logout"
                class="btn btn=link btn-sm" role="button">Sair</a>
            
        </div>
    <?php endif ?>        

  </div>
</nav>

