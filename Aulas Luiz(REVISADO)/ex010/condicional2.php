<?php
//e=&&
//ou=|| 

$idade = 15;
if ($idade < 16) {
    $voto = "Não pode votar";
} else {
    if ($idade >= 16 && $idade < 18) {
        $voto = "Facultativo";
    } else {
        if ($idade >= 18 && $idade < 71) {
            $voto = "Voto obrigatório";
        } else {
            $voto = "Voto facultativo";
        }
    }
}
