<?php
    $dbHost    = 'localhost';
    $dbUsuario = 'root';
    $dbSenha   = '';
    $dbName    = 'usuarios';

    $conexao = new mysqli($dbHost, $dbUsuario, $dbSenha, $dbName);
    /*  
    if ($conexao -> connect_errno){
        echo '<h1> ERRO DE CONEXÃO </h1>';
    } else {
        echo '<h1> Conexão Efetuada com Sucesso! </h1>';
    }
    */
?>