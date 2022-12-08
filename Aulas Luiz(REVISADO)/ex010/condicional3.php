<?php
//e=&&
//ou=|| 
$idade = $_GET['idade'] ;
if ($idade < 16) {
    $voto = "Não pode votar";
}
if (($idade >= 16 && $idade < 18) || ($idade > 70)) {
    $voto = "Voto facultativo";
}
if ($idade >= 18 && $idade < 71) {
    $voto = "Voto obrigatório";
}
echo $voto;
