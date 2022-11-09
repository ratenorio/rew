<?php
  session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro de Livro | Projeto para Web com PHP</title>
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
                    
                    $generos = buscar(
                                'genero',
                                ['*'],
                                []);
                    

                    if(!empty($id)){
                        $id = (int)$id;

                        $criterio = [
                                ['id', '=', $id]
                        ];

                        $retorno = buscar(
                            'post',
                            ['*'],
                            $criterio
                        );

                        $entidade = $retorno[0];
                    }
                ?>
                <h2>Livro</h2>
                <form method="post" action="core/repositorios/livro_repositorio.php" enctype="multipart/form-data">
                    <input type="hidden" name="acao"
                            value="<?php echo empty($id) ? 'insert' : 'update' ?>">
                    <input type="hidden" name="id"
                            value="<?php echo $entidade['id'] ?? '' ?>">
                    <div class="form-group">
                        <label for="nome">Nome:</label>
                        <input class="form-control" type="text"
                            require="required" id="nome" name="nome"
                            value="<?php echo $entidade['nome'] ?? '' ?>">
                    </div>
                    <div class="form-group">
                        <label for="autor">Autor:</label>
                        <input class="form-control" type="text"
                            require="required" id="autor" name="autor"
                            value="<?php echo $entidade['autor'] ?? '' ?>">
                    </div>
                    <div class="form-group">
                        <label for="texto">Genero:</label>
                        <select class="form-control" name="cod_genero">
                            <?php foreach($generos as $genero) { ?>
                                <option value="<?php echo $genero['cod_genero'] ?>"><?php echo $genero['nome']?></option>
                            <?php }?>
                        </select>
                        </div>

                    <div class="form-group">
                        <label for="texto">Sinopse:</label>
                        <textarea class="form-control" type="text"
                            require="required" id="texto" name="sinopse" rows="5">
                            <?php echo $entidade['texto'] ?? '' ?>
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label for="texto">Data Publicação:</label>
                        <?php
                            $data = (!empty($entidade['data_publicacao']))?
                                explode('', $entidade['data_publicacao'])[0] : '';

                        ?>
                        <div class="row">
                            <div class="col-md-3">
                                <input class="form-control" type="date"
                                    require="required"
                                    id="data_publicacao"
                                    name="data_publicacao"
                                    value="<?php echo $data ?>">
                            </div>
                        
                        </div>
                    </div>
                    <div class="form-group">   
                        <label for="conteudo">Enviar foto capa:</label>
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



