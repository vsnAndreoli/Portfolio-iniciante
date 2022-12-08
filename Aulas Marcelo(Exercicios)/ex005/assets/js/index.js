let vcorF, vcorT, vnome, form, vsobrenome, vidade;

function mostrarConf(){
    form = document.getElementById('Fconf');
    form.style.display = 'block';
}

function defineCor(op, cor){
    if(op == 1){
        document.body.style.backgroundColor = cor;
        vcorF = cor;
    }else {
        document.body.style.color = cor;
        vcorT = cor;
    }
}

function gravar(){
    form = document.getElementById('Fconf');
    vnome = document.getElementById('fnome').value;
    vsobrenome = document.getElementById('fsobrenome').value;
    vidade = document.getElementById('fidade').value;
    localStorage.corF = vcorF;
    localStorage.corT = vcorT;
    localStorage.nome = vnome;
    localStorage.sobrenome = vsobrenome;
    localStorage.idade = vidade;

    form.style.display = 'none';
}

function inicia(){
    if(localStorage.nome){
        vcorF = localStorage.corF;
        vcorT = localStorage.corT;
        vnome = localStorage.nome;
        vsobrenome = localStorage.sobrenome;
        vidade = localStorage.idade;

        let ano = 2022 - vidade;

        defineCor(1, vcorF);
        defineCor(0, vcorT);
        document.getElementById('painel').innerHTML = "Bem vindo, <strong>"+vnome+"</strong>"+" <u>"+vsobrenome+"</u>"+", você nasceu em: "+ano+".<hr>";
    }
}

function fechar(){
    form = document.getElementById('Fconf');
    form.style.display = 'none';
}

window.addEventListener('load', inicia);