<?php
if (isset($_POST["valor1"])) {
    $valor1 = $_POST["valor1"];
    $op     = $_POST["op"];
    $valor2 = $_POST["valor2"];
    if ($op == "soma") {
        echo "A soma dos dois valores é = " . ($valor1 + $valor2);
    }
    if ($op == "subtração") {
        echo "A subtração dos dois valores é = " . ($valor1 - $valor2);
    }
    if ($op == "multiplicação") {
        echo "A multiplicação  dos dois valores é = " . ($valor1 * $valor2);
    }
    if ($op == "divisão") {

        echo "A divisão dos dois valores é = " . ($valor1 / $valor2);
    }
} else {
    echo "Valor";
}
//$mensagem = isset($_POST["valor1"]) ? "OK" : "VALOR NÃO IDENTIFICADO";
//echo $mensagem;
//isset
//echo "Bem vindo ao Sistema, <strong>" . $nome . "</strong> .";