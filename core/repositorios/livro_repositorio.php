<?php
session_start();
require_once '../../includes/funcoes.php';
require_once '../conexao_mysql.php';
require_once '../sql.php';
require_once '../mysql.php';


foreach($_POST as $indice => $dado){
    $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado){
    $$indice = limparDados($dado);
}

if(isset($_FILES['foto']))
{
    echo 'livro';
   $ext = strtolower(substr($_FILES['foto']['name'],-4)); //Pegando extensão do arquivo
   $foto_name = date("Y.m.d-H.i.s") . $ext; //Definindo um novo nome para o arquivo
   $dir = '../../imagens/'; //Diretório para uploads 
   move_uploaded_file($_FILES['foto']['tmp_name'], $dir.$foto_name); //Fazer upload do arquivo
   
} 


switch($acao){
    case 'insert' :
        $dados = [
            'nome'  => $nome,
            'autor' => $autor,
            'sinopse' => $sinopse,
            'data_publicacao' => $data_publicacao,
            'cod_usuario'    => $_SESSION['login']['usuario']['cod_usuario'],
            'cod_genero'    => $cod_genero,
            'foto'      => $foto_name
        ];

        print_r($dados);

        insere(
            'livro',
            $dados
        );

        break;

        case 'update':
            $id = (int)$id;
            $dados = [
                'nome'  => $nome,
                'autor' => $autor,
                'sinopse' => $sinopse,
                'data_publicacao' => $data_publicacao,
                'cod_usuario'    => $_SESSION['login']['usuario']['cod_usuario'],
                'cod_genero'    => $cod_genero,
                'foto'      => $foto_name
            ];

            $criterio = [
                ['cod_livro', '=', $id]
            ];

            atualiza(
                'livro',
                $dados,
                $criterio
            );

            break;       
    }
header('Location: ../../index.php');

?>