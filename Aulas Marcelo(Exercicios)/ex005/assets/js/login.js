let olho = document.querySelector('.olho');
let password = document.querySelector('#senha1');

function mostrar() {
    if (password.type == 'password') {
        password.type = 'text'
        olho.src = 'mostrar.png'
    } else {
        password.type = 'password'
        olho.src = 'ocultar.png'
    }
}
function entra() {
    let usuario = document.querySelector('#usuario')
    let labelUsuario = document.querySelector('#labelUsuario')
    let senha = document.querySelector('#senha')
    let labelSenha = document.querySelector('#labelSenha')

    let msgErro = document.querySelector('#msgErro')
    let listaUsuario = []

    let userValid = {
        nome: '',
        usuario: '',
        senha: ''
    }
    listaUsuario = JSON.parse(localStorage.getItem('listaUsuario'))

    listaUsuario.forEach((item) => {
        if (usuario.value == item.userCad && senha.value == item.senhaCad) {
            userValid = {
                nome: item.nomeCad,
                usuario: item.userCad,
                senha: item.senhaCad
            }
        }
    })
    if (usuario.value == userValid.usuario && senha.value == userValid.senha) {
        window.location.href = 'principal.html'
        let token = Math.random().toString(16).substring(2)
        localStorage.setItem('token', token)
        localStorage.setItem('userLogado', JSON.stringify(userValid))
    } else {
        msgErro.innerHTML = "Usuário ou senha Incorretos!"
        usuario.focus()
    }
}