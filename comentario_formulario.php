<?php
  session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Comentario</title>
        <link rel="stylesheet"
              href="lib/bootstrap-4.2.1-dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <?php

                    include 'includes/valida_login.php';
                    ?>
                </div>
            </div>
            <div class="row" style="min-height: 500px;">

                <div class="col-md-10" style="padding-top: 50px;">
                <?php
                    require_once 'includes/funcoes.php';
                    require_once 'core/conexao_mysql.php';
                    require_once 'core/sql.php';
                    require_once 'core/mysql.php';

                    foreach($_GET as $indice => $dado){
                        $$indice = limparDados($dado);
                    }                  

                    if(!empty($id)){
                        $id = (int)$id;

                        $criterio = [
                                ['cod_comentario', '=', $id]
                        ];

                        $retorno = buscar(
                            'comenta',
                            ['*'],
                            $criterio
                        );

                        $entidade = $retorno[0];
                    }
                ?>
                <h2>Comentario</h2>
                <form method="post" action="core/repositorios/comentario_repositorio.php" enctype="multipart/form-data">
                    <input type="hidden" name="acao"
                            value="<?php echo empty($id) ? 'insert' : 'update' ?>">
                    <input type="hidden" name="cod_livro"
                            value="<?php echo $cod_livro ?? '' ?>">
                    <input type="hidden" name="id"
                            value="<?php echo $entidade['cod_comentario'] ?? '' ?>">
                    <div class="form-group">
                        <label for="comentario">Comentario:</label>
                        <input class="form-control" type="text"
                            require="required" id="comentario" name="comentario"
                            value="<?php echo $entidade['comentario'] ?? '' ?>">
                    </div>
                    <div class="form-group">   
                        <label for="conteudo">Enviar fanart:</label>
                        <input type="file" name="foto" accept="image/*">    
                    </div>   
                    <div class="text-right">
                        <button class="btn btn-success"
                                 type="submit">Próximo</button>
                    </div>
                </form>
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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

