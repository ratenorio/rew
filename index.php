<!DOCTYPE html>
<html lang="pt-br">

<head>
  <link href="css/estilo.css" rel="stylesheet">
  <link rel="stylesheet" href="lib/bootstrap-4.2.1-dist/css/bootstrap.min.css">
  
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>R&W - read and write</title>  

  <style>
        
        .content input {
        border-radius: 20px;
        background: rgb(163, 232, 255);
        padding: 10px;
        width: 70%;
        border: none;
        margin-right: 10px;
    }

    </style>

 
</head>
<body>
  <?php
      include 'includes/menu.php'
  ?>
  <?php 
    if(!isset($_SESSION['login']))  {
      include 'index_naologado.php';
    }else{
      include 'livros.php';
    }

  ?>  

  <!-- Rodapé da página -->
  <?php
        include 'includes/rodape.php';
  ?>
    <script src="lib/bootstrap-4.2.1-dist/js/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-4.2.1-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>