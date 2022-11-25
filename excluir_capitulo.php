<?php

include('core/conexao_mysql.php');

//require_once 'core/conexao_mysql.php';

    /*$servidor = 'localhost';
    $banco = 'rew';
    $port = 3307;
    $usuario = 'root';
    $senha = '';
    $conexao = mysqli_connect($servidor, $usuario, $senha, $banco, $port);*/

     $conexao= conecta();
$cod_capitulo= $_GET['cod_capitulo'];
$sql= 'DELETE FROM capitulos WHERE cod_capitulo='.$cod_capitulo;
//echo $sql;
//DELETE FROM `rew`.`capitulos` WHERE (`cod_capitulo` = '1');

echo "<h1> Exclusão do capítulo </h1>";
$result= mysqli_query($conexao, $sql);

if($result)
echo "Capítulo excluído com sucesso<br>";
else
echo "Erro ao tentar excluir capítulo: ".mysqli_error($conexao)."<br";


?>
<a href='listagem_capitulos.php'>Voltar</a>