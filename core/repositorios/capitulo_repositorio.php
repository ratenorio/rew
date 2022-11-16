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

switch($acao){
    case 'insert' :
        $dados = [
            'titulo'  => $titulo,
            'texto' => $texto,
            'cod_livro' => $cod_livro,
        ];
        
        print_r($dados);

        insere(
            'capitulos',
            $dados
        );

        break;

        case 'update':
            $id = (int)$id;
            $dados = [
                'titulo'  => $titulo,
                'texto' => $texto,
                'cod_livro' => $cod_livro,
            ];          
    

            $criterio = [
                ['cod_capitulo', '=', $id]
            ];

            atualiza(
                'capitulos',
                $dados,
                $criterio
            );

            break;       
    }
header('Location: ../../listagem_livros.php');

?>