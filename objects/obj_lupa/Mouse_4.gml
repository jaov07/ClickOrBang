
if(global.contJolie[3] >= 1){
	
	with(obj_arma){
	tcartucho = array_length(cartucho)
	ultimabala = cartucho[tcartucho - 1]
	show_message(ultimabala)
}

    global.contJolie[3]--; // diminui a quantidade

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensJolie); i++) {
        if (global.itensJolie[i] == "lupa") {
            array_delete(global.itensJolie, i, 1);
            break; // remove só uma instância
        }
    }
}