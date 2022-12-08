let olho = document.querySelector("#versenha")
let senha = document.querySelector('#senha')

olho.addEventListener('click', () => {
    if (senha.type =='password'){
        senha.type = 'text'
        olho.className = 'fa-solid fa-eye-slash'
    } else {
        senha.type = 'password'
        olho.className = 'fa-solid fa-eye'
    }
})