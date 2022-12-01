<?php
  session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
            <?php
            include 'includes/valida_login.php';
            ?>

    <?php
        require_once 'includes/funcoes.php';
        require_once 'core/conexao_mysql.php';
        require_once 'core/sql.php';
        require_once 'core/mysql.php';

        foreach($_GET as $indice => $dado){
            $$indice = limparDados($dado);
        }
        $criterio = [['cod_livro', '=', $cod_livro]];

        $livro = buscar(
            'livro',
            ['*'],
                $criterio);
        echo "<h1 style='text-align:center;'> ". $livro[0]['nome'] ."</h1>";

        $comenta= buscar(
            'comenta',
            [
                'cod_comentario',
                'comentario',
                'fanart',
                '(select username from usuario where usuario.cod_usuario = comenta.cod_usuario) usuario'
            ],
            $criterio
        );

    ?>    

  

    <?php
        foreach($comenta as $entidade):
            echo "<h2 style='text-align:center;'>" . $entidade['usuario']."<br></h2>";
            echo "<h2 style='text-align:center;'>" . $entidade['comentario']."<br></h2>";
            
                   
    ?>
    <?php
     echo $entidade['fanart'];
       if(!empty(trim($entidade['fanart']))):
    ?>
        <img class="card-img-top" src=<?php echo "imagens/".$entidade['fanart']?> alt="Card image cap">
    
    <?php
        endif;
    ?>


    <?php endforeach; ?>    
    <div>
        <a href="comentario_formulario.php?cod_livro=<?php echo $id  ?>">Comentar</a>
    </div>
   
    <script src="lib/bootstrap-4.2.1-dist/js/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-4.2.1-dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>