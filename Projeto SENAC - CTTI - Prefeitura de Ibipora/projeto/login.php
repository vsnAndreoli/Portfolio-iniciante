<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>LOGIN</title>
    <link rel="stylesheet" href="estilo.css">
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>ENTRAR</h1>
            <div id="msgErro"></div>
            
            <form action="testeLogin.php" method="POST">
            <div class="rotulo-flutuante">
                <input type="text" id="usuario" name="usuario" placeholder="" required>
                <label for="usuario" id="labelUsuario">Usuário</label>
            </div>

            <div class="rotulo-flutuante">
                <input type="password" id="senha" name="senha" placeholder="" required>
                <label for="senha" id="labelSenha">Senha</label>
                <img src="ocultar.png" class="olho" onclick="mostrar()">
            </div>

            <div class="centralizado">
                <input class="inputSubmit" type="submit" name="submit" value="Acessar">
                
            </div>
            </form>

            <div class="centralizado">
                <hr>
            </div>

            <p>Não tem conta? <a href="cadastrar.html">Cadastre-se</a></p>

            <div id="msgSucesso"></div>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>