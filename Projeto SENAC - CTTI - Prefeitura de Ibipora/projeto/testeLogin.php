<?php
    session_start();
    if (isset($_POST['submit']) && !empty($_POST['usuario']) && !empty($_POST['senha'])) {
            include_once('conectar.php');
            $usuario = $_POST['usuario'];
            $senha   = $_POST['senha'];

           $sql = "SELECT * FROM aluno WHERE usuario = '$usuario' AND senha = '$senha'"; 

           $resultado = $conexao -> query($sql);

           print_r($resultado);

           if (mysqli_num_rows($resultado) < 1){
               unset($_SESSION['usuario']);
               unset($_SESSION['senha']);
               header('Location: login.php');
           }else {
               $_SESSION['usuario'] = $usuario;
               $_SESSION['senha'] = $senha;
               header('Location: sistema.php');
           }
    } else {
        header('Location: login.php');
    }

?>