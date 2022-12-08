<?php
session_start();
include_once('conectar.php');


if ((isset($_SESSION['usuario']) != true) && (isset($_SESSION['senha']) != true)) {
  unset($_SESSION['usuario']);
  unset($_SESSION['senha']);
  header('Location: login.php');
}
$logado = $_SESSION['usuario'];


if (!empty($_GET['search'])) {
  $data = $_GET['search'];
  $sql = "SELECT * FROM aluno WHERE id LIKE '%$data%' or nome LIKE '%$data%' ORDER BY id DESC";
} else {
  $sql = "SELECT * FROM aluno ORDER BY id DESC";
}
$resultado = $conexao->query($sql);
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <title>SISTEMA | ALEXANDRIA</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="sistema.css">
</head>

<body>
  <?php
  echo "<h1> Bem Vindo, <u>$logado</u> !</h1>"
  ?>
  <div class="m-5">
    <table class="table text-white table-bg">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Nome</th>
          <th scope="col">Usuário</th>
          <th scope="col">CPF</th>
          <th scope="col">RG</th>
          <th scope="col">CEP</th>
          <th scope="col">Endereço</th>
          <th scope="col">E-mail</th>
          <th scope="col">Senha</th>
          <th scope="col">Telefone</th>
          <th scope="col">Celular</th>
          <th scope="col">Escolaridade</th>
          <th scope="col">Nascimento</th>
          <th scope="col">Local de Trabalho</th>
          <th scope="col">. . .</th>
        </tr>
      </thead>
      <tbody>
        <?php
        while ($dados = mysqli_fetch_assoc($resultado)) {
          echo "<tr>";
          echo "<td>" . $dados['id'] . "</td>";
          echo "<td>" . $dados['nome'] . "</td>";
          echo "<td>" . $dados['usuario'] . "</td>";
          echo "<td>" . $dados['cpf'] . "</td>";
          echo "<td>" . $dados['rg'] . "</td>";
          echo "<td>" . $dados['cep'] . "</td>";
          echo "<td>" . $dados['endereco'] . "</td>";
          echo "<td>" . $dados['email'] . "</td>";
          echo "<td>" . $dados['senha'] . "</td>";
          echo "<td>" . $dados['telefone'] . "</td>";
          echo "<td>" . $dados['celular'] . "</td>";
          echo "<td>" . $dados['escolaridade'] . "</td>";
          echo "<td>" . $dados['nascimento'] . "</td>";
          echo "<td>" . $dados['localTrabalho'] . "</td>";
          echo "<td><a class='btn btn-sm btn-primary' href='' title='Editar'>

        <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-pencil-square' viewBox='0 0 16 16'>
        <path d='M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z'/>
        <path fill-rule='evenodd' d='M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z'/>
      </svg>
         </a>

         <a class='btn btn-sm btn-danger' href='' title='Apagar'>


         <svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-trash' viewBox='0 0 16 16'>
        <path d='M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z'/>
        <path fill-rule='evenodd' d='M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z'/>
      </svg>
         </td>";
        }
        ?>
      </tbody>

    </table>
    </table>
  </div>

</body>

</html>