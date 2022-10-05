<?php
session_start();
require_once '../../includes/funcoes.php';
require_once 'conexao_mysql.php';
require_once 'sql.php';
require_once 'mysql.php';

foreach($_POST as $indice => $dado){
    $$indice = limparDados($dado);
}

foreach($_GET as $indice => $dado){
    $$indice = limparDados($dado);
}


switch($acao){
    case 'insert' :
        $dados = [
            'nome'  => $nome,
            'descricao' => $descricao            
        ];

        print_r($dados);

        insere(
            'genero',
            $dados
        );

        break;

        case 'update':
            $id = (int)$id;
            $dados = [
                'nome'  =>$nome,
                'descricao' =>$descricao                
            ];

            $criterio = [
                ['cod_genero', '=', $cod_genero]
            ];

            atualiza(
                'genero',
                $dados,
                $criterio
            );

            break;   
    }
header('Location: ../index.php');

?>