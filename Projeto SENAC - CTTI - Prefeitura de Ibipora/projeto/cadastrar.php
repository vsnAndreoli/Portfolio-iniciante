<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>CADASTRO</title>
    <script src="https://kit.fontawesome.com/6deccc2f4a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="cadastrar.css">
</head>
<body>
    <div class="container">
        <div class="card">
            <H1>CADASTRAR</H1>
            <div class="rotulo-flutuante">
                <input type="text" id="nome" name="nome" placeholder="" required>
                <label id="rotuloNome" for="nome">Nome</label>
            </div>

            <div class="rotulo-flutuante">
                <input type="text" id="usuario" name="usuario" placeholder="" required>
                <label id="rotuloUsuario" for="usuario">Usuário</label>
            </div>

            <div class="rotulo-flutuante">
                <input type="password" id="senha" name="senha" placeholder="" required>
                <label id="rotulosenha" for="senha">Senha</label>
                <i id="versenha" class="fa-solid fa-eye"></i>
            </div>

            <div class="rotulo-flutuante">
                <input type="password" id="csenha" name="csenha" placeholder="" required>
                <label id="rotulocsenha" for="csenha">Confirmar Senha</label>
                <i id="verconfirmar" class="fa-solid fa-eye"></i>
            </div>

            <div class="centralizado">
                <button onclick="cadastrar()">
                    Cadastrar
                </button>
            </div>

            <div id="msgErro"></div>
            <div id="msgSucesso"></div>
        </div>
    </div>
    <script src="cadastrar.js"></script>
</body>
</html>