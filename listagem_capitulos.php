<!DOCTYPE html>
<html>
    <head>
        <title>Usuários | Projeto pra Web com PHP</title>
        <link rel="stylesheet"
              href="lib/bootstrap-4.2.1-dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                </div>
            </div>
            <div class="row" style="min-height: 500px;">
                <div class="col-md-12">
                    <?php include 'includes/menu.php'; 
                    
                        include 'includes/valida_login.php';
                    ?>
                </div>
                <div class="col-md-12" style="padding-top: 50px;">
                <h2>Capítulos</h2>
                <?php
                    require_once 'includes/funcoes.php';
                    require_once 'core/conexao_mysql.php';
                    require_once 'core/sql.php';
                    require_once 'core/mysql.php';

                    foreach($_GET as $indice => $dado){
                        $$indice = limparDados($dado);
                    }
                    $livros = buscar(
                        'livro',
                        ['*'],
                        [['cod_livro', '=', $id]]);

                    echo "<h1> Livro: ". $livros[0]['nome'] ."</h1>";

                    $data_atual = date('Y-m-d H:i:s');

                    $criterio = [];
                    $criterio[] = ['cod_livro', '=', $id];

                    if(!empty($busca)){
                        $criterio[] = ['titulo', 'like', "%{$busca}%"];
                    }



                    $result = buscar(
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
                    

                ?>
                <table class="table table-bordered table-hover table stripped
                                table-responsive{-sm|-md|-lg|-xl}">
                    <thead>
                        <tr>
                            <td>Código</td>
                            <td>Titulo</td>
                            <td>Editar</td>
                            <td>Excluir</td>

                    </thead>
                    <tbody>
                        <?php
                            foreach($result as $entidade):
                                
                        ?>
                        <tr>
                            <td><?php  echo  $entidade['cod_capitulo'] ?></td>

                            <td><?php echo $entidade['titulo'] ?></td>
                            <!--<td><?php echo $entidade['Editar'] ?></td>-->                            
                            <td><a href='capitulo_formulario.php?id=<?php echo $entidade['cod_capitulo']?>'>Editar</a></td>                     
                            <td><a href='core/repositorios/capitulo_repositorio.php?acao=deleta&id=<?php echo $entidade['cod_capitulo']?>'>Excluir</a></td>

                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <div class="text-right">
                <a href="index.php"> <button class="btn btn"
                                 type="submit"></button>Voltar</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <?php
                    include 'includes/rodape.php';
                ?>
            </div>
        </div>
    </div>
    <script src="lib/bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
    </body>
</html>