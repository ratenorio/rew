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
                <div class="col-md-10" style="padding-top: 50px;">
                <h2>Usuário</h2>
                <?php
                    require_once 'includes/funcoes.php';
                    require_once 'core/conexao_mysql.php';
                    require_once 'core/sql.php';
                    require_once 'core/mysql.php';

                    foreach($_GET as $indice => $dado){
                        $$indice = limparDados($dado);
                    }

                    $data_atual = date('Y-m-d H:i:s');

                    $criterio = [];
                    $criterio[] = ['cod_usuario', '=',$_SESSION['login']['usuario']['cod_usuario']];

                    if(!empty($busca)){
                        $criterio[] = ['nome', 'like', "%{$busca}%"];
                    }



                    $result = buscar(
                        'livro
                        ',
                        [
                            'cod_livro',
                            'foto',
                            'nome',
                            'autor',
                            'data_publicacao',
                            'qtd_capitulo',
                            '(select count(*) qtd from capitulos c where  c.cod_livro = livro.cod_livro) as qtd'                            
                        ],
                        $criterio,
                        'cod_livro asc'
                    );

                ?>
                <table class="table table-bordered table-hover table stripped
                                table-responsive{-sm|-md|-lg|-xl}">
                    <thead>
                        <tr>
                            <td>Código</td>
                            <td>Foto</td>
                            <td>Nome</td>
                            <td>Autor</td>
                            <td>Data publicação</td>
                            <td>Quantidade de capítulos</td>
                            <td>Editar</td> 
                            <td>Inserir capítulos</td>
                            <td>Excluir</td>                            
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            foreach($result as $entidade):
                                $data = date_create($entidade['data_publicacao']);
                                $data = date_format($data, 'd/m/Y H:i:s');
                        ?>
                        <tr>
                            <td><?php  echo  $entidade['cod_livro'] ?></td>
                            <td><img src= "<?php echo "imagens/".$entidade['foto'] ?>" width="70" height="100">
 </td>
                            <td><?php echo $entidade['nome'] ?></td>
                            <td><?php echo $entidade['autor'] ?></td>
                            <td><?php echo $data?></td>
                            <td><a href='listagem_capitulos.php?id=<?php echo $entidade['cod_livro']?>
                            '><?php echo $entidade['qtd'] ?></a></td> 
                            <td><a href='livro_formulario.php?id=<?php echo $entidade['cod_livro']?>
                            '>Editar</a></td>
                            <td><a href='capitulo_formulario.php?cod_livro=<?php echo $entidade['cod_livro']?>
                            '>Inserir</a></td>
                            <td><a href='core/repositorios/livro_repositorio.php?acao=deleta&id=<?php echo $entidade['cod_livro']?>'>Excluir</a></td>                            
                            
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <div class="text-right" >
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
    <script src="lib/bootstrap-4.2.1-dist/js/jquery-3.6.1.min.js"></script>
    <script src="lib/bootstrap-4.2.1-dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>