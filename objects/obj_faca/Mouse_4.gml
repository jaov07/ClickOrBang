

if(global.contJolie[0] >= 1){
	
	with(obj_arma){
		danoArma = 2
}

    global.contJolie[0]--; // diminui a quantidade

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensJolie); i++) {
        if (global.itensJolie[i] == "facao") {
            array_delete(global.itensJolie, i, 1);
            break; // remove só uma instância
        }
    }
}