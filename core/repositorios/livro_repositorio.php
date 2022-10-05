<?php
session_start();
require_once '../includes/funcoes.php';
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
            'email' => $email,
            'username' => $username,
            'cod_usuario'    => $_SESSION['login']['usuario']['cod_usuario']
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
                'nome'  =>$nome,
                'email' =>$email,
                'biografia' =>$biografia
            ];

            $criterio = [
                ['id', '=', $id]
            ];

            atualiza(
                'usuario',
                $dados,
                $criterio
            );

            break;       
    }
header('Location: ../index.php');

?>