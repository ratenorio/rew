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
//echo ($_FILES['foto']['name']) . "teste <br>";
$foto_name = '';
if(!empty($_FILES['foto']['name']))
{
   echo 'comentario';
   $ext = strtolower(substr($_FILES['foto']['name'],-4)); //Pegando extensão do arquivo
   $foto_name = date("Y.m.d-H.i.s") .'.'.  $ext; //Definindo um novo nome para o arquivo
   $dir = '../../imagens/'; //Diretório para uploads 
   move_uploaded_file($_FILES['foto']['tmp_name'], $dir.$foto_name); //Fazer upload do arquivo   
} 


switch($acao){
    case 'insert' :
        $dados = [
            'comentario'  => $comentario,
            'fanart' => $foto_name,
            'cod_usuario'    => $_SESSION['login']['usuario']['cod_usuario'],
            'cod_livro'    => $cod_livro
        ];        

        insere(
            'comenta',
            $dados
        );

        break;

        case 'update':
            $id = (int)$id;
            $dados = [
                'comentario'  => $comentario,
                'fanart' => $foto_name,
                'cod_usuario'    => $_SESSION['login']['usuario']['cod_usuario'],
                'cod_livro'    => $cod_livro,
            ];

            $criterio = [
                ['cod_comentario', '=', $id]
            ];

            atualiza(
                'comenta',
                $dados,
                $criterio
            );

            break;  
            
            case 'deleta':
                $id = (int)$id;        
        
                $criterio = [
                    ['cod_comentario', '=', $id]
                ];
                deleta(
                    'comenta', 
                    $criterio
                );  
                break;          
    }
header('Location: ../../ler_livro.php?id='.$cod_livro);

?>