let inputs = document.getElementsByClassName('input-form')
for (let input of inputs) {
    input.addEventListener("blur", function () {
        if (input.value.trim() != "") {
            input.classList.add("has-val");
        } else {
            input.classList.remove("has-val");
        }
    });
}
let olho = document.querySelector('.olho');
let password = document.querySelector('#senha');

function visualizar() {
    if (password.type == 'password') {
        password.type = 'text'
        olho.src = 'assets/images/mostrar.png';
    } else {
        password.type = 'password';
        olho.src = 'assets/images/ocultar.png';
    }
}