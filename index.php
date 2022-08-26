<!DOCTYPE html>
<html lang="en">
<head>
    <link href="estilo.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela antes do login</title>
    <link href="carousel.css" rel="stylesheet">
    <link rel="icon" href="../../../../favicon.ico">
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

</head>
<body >
<div class="container-fluid">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">R&W</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Gênero
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Romance</a>
          <a class="dropdown-item" href="#">Fantasia</a>
          <a class="dropdown-item" href="#">Terror</a>
          <a class="dropdown-item" href="#">Poema</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Fanart</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#faleconosco">Fale conosco</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
      <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Pesquisar</button>
    </form>
  </div>
</nav>
</div>


<div class="container-fluid">
  
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <div class="carousel-inner center-block">
        <div class="carousel-item active">
          <img class="d-block w-20 " src="img/cu.png" alt="First slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-20" src="img/cu2.png" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-20 " src="img/cu3.png" alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
    </a>
</div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<div class="container marketing">

<!-- Três colunas de texto, abaixo do carousel -->
<div class="row">
  <div class="col-lg-4">
    <img class="rounded-circle" src="img/cu.png" alt="Generic placeholder image" width="140" height="140">
    <h2>R&W</h2>
    <p>Read and write: take your own time</p>
    <p><a class="btn btn-secondary" href="#" role="button">Saber mais &raquo;</a></p>
  </div><!-- /.col-lg-4 -->
  <div class="col-lg-4">
    <img class="rounded-circle" src="img/cu2.png" alt="Generic placeholder image" width="140" height="140">
    <h2>Título</h2>
    <p>Leia quando quiser e onde quiser</p>
    <p><a class="btn btn-secondary" href="#" role="button">Saber mais &raquo;</a></p>
  </div><!-- /.col-lg-4 -->
  <div class="col-lg-4">
    <img class="rounded-circle" src="img/cu3.png" alt="Generic placeholder image" width="140" height="140">
    <h2>Fanart</h2>
    <p>Solte sua imaginação: crie histórias e publique ilustrações</p>
    <p><a class="btn btn-secondary" href="#" role="button">Saber mais &raquo;</a></p>
  </div><!-- /.col-lg-4 -->
</div><!-- /.row -->

</div>
<div class="row">
  <div class="col-md-12">
    <!-- Rodapé --> 
      <?php
        include 'includes/rodape.php';
      ?>
  </div>
</div>
    
</body>
</html>
<?php
?>
