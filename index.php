<!DOCTYPE html>
<html lang="pt-br">

<head>
  <link href="estilo.css" rel="stylesheet">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>R&W - read and write</title>
  <!-- css links  -->
  <link href="carousel.css" rel="stylesheet">
  <link rel="icon" href="../../../../favicon.ico">
  <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
   <!-- scrpits links  -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
</head>
<body>
  <!-- Navbar  -->
  <div class="container-fluid ">
    <nav class="navbar navbar-expand-lg navbar-light bg-light " style="box-shadow: 2px 2px 2px #bbb;">
      <a class="navbar-brand" href="">R&W</a>
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
              <a class="dropdown-item" href="">Romance</a>
              <a class="dropdown-item" href="">Fantasia</a>
              <a class="dropdown-item" href="">Terror</a>
              <a class="dropdown-item" href="">Poema</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="">Fanart</a>
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
  <!-- Carousel  -->
  <div class="container-fluid area-carousel">
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner center-block">
        <div class="carousel-item active">
          <img class="d-block w-20 " src="img/cu.png" alt="First slide" style="height: 400px;">
              
        </div>
        <div class="carousel-item">
          <img class="d-block w-20" src="img/cu2.png" alt="Second slide" style="height: 400px;">
        </div>
        <div class="carousel-item">
          <img class="d-block w-20 " src="img/cu3.png" alt="Third slide" style="height: 400px;">
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
  <!-- area  -->
  <div class="container marketing">
    <div class="area">
      <div class="row">
        <div class="col-lg-4">
          <img class="rounded-circle" src="img/cu.png" alt="Livro image" width="170" height="170">
          <div class="texto">
            <h2 class="text-center" >Livros</h2>
            <p class="text-center">Read and write: take your own time!</p>
            <p><a class="btn btn-primary btn-left" href="#livros" role="button">Saber mais</a></p>
          </div>
        </div>
        <div class="col-lg-4">
          <img class="rounded-circle" src="img/cu2.png" alt="Garota image" width="150" height="150">
          <div class="texto2">
            <h2 class="text-center">R&W</h2>
            <p class="text-center">Read whenever you want, wherever you want!</p>
            <p><a class="btn btn-primary btn-left" href="#" role="button">Saber mais</a></p>
          </div>
        </div>
        <div class="col-lg-4">
          <img class="rounded-circle" src="img/cu3.png" alt="Generic placeholder image" width="120" height="120" >
          <div class="texto3">
            <h2 class="text-center">Fanart</h2>
            <p class="text-center">Share your imagination and publish illustrations</p>
            <p><a class="btn btn-primary btn-left1" href="#" role="button">Saber mais</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!--saber mais-->

  <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading" id="livros">Livros</h2>
            <p class="lead">Essa plataforma permite que você possa ler e se tornar autor de suas próprias histórias.<br>
            Já viram as nossas coleções? <br>
            Clique aqui e não perca mais tempo.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">R&W</h2>
            <p class="lead">Só acha a leitura perda de tempo quem ainda não aprendeu a viver com qualidade.<br>
             Aqui você poderá ler e escrever onde quiser e quando quiser.<br> 
            Para ler offline, baixe as histórias e aproveite.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image" src="img/internet.png">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Fanart</h2>
            <p class="lead">Ler é formular imagens invisíveis.<br>
            Você já se prendeu tanto a uma história que sentiu como se estivesse vivendo-a?<br>
             Já imaginou os personagens e diferentes cenários presentes nas narrativas?<br>
            Não deixe tudo apenas na sua imaginação, faça ilustrações e publique em nossa plataforma.<br>
            Para publicar e ver as fanarts, acesse o livro escolhido e entre nos comentários.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image" src="img/desenho.jpeg">
          </div>
        </div>

        <hr class="featurette-divider">

  <!-- Rodapé da página -->
  <?php
        include 'includes/rodape.php';
  ?>
    <!-- scripts links  -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>