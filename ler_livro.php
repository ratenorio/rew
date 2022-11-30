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
        $criterio = [['cod_livro', '=', $id]];

        $livro = buscar(
            'livro',
            ['*'],
                $criterio);
        echo "<h1 style='text-align:center;'> ". $livro[0]['nome'] ."</h1>";

        $capitulos = buscar(
            'capitulos
            ',
            [
                'cod_capitulo',
                'titulo',
                'texto'
            ],
            $criterio,
            'cod_capitulo asc'
        );
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
        foreach($capitulos as $entidade):
            echo "<h2 style='text-align:center;'>" . $entidade['titulo']."<br>";
                   
    ?>

    <div class="container" style="margin-left: 25%;; background-color:rgb(163, 232, 255); width:800px; border-radius:20px;">
    
        <?php            
            $text = htmlspecialchars_decode($entidade['texto']);
            $text = nl2br($text);            
                //echo "<p style='text-align:center;'>" . $entidade['texto']."<br>";            
                echo '<p>'.nl2br($text).'</p>'; 
        ?>
    </div>


    <?php endforeach; ?>
    


    <?php
        foreach($comenta as $entidade):
            echo "<h2 style='text-align:center;'>" . $entidade['comentario']."<br></h2>";
            echo "<h2 style='text-align:center;'>" . $entidade['usuario']."<br></h2>";

            
                   
    ?>
<img class="card-img-top" src=<?php echo "imagens/".$entidade['fanart']?> alt="Card image cap">
    
    </div>


    <?php endforeach; ?>    
    <div>
        <a href="comentario_formulario.php?cod_livro=<?php echo $id  ?>">Comentar</a>
    </div>
    <script src="lib/bootstrap-4.2.1-dist/js/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-4.2.1-dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>