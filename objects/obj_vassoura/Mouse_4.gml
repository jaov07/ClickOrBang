




if(global.contJolie[1] >= 1){
	
	with(obj_arma){
	tcartucho = array_length(cartucho)
	ultimabala = tcartucho - 1
	show_message(cartucho[ultimabala])
	cartucho_delete(ultimabala)
	
}
	


    global.contJolie[1]--; // diminui a quantidade

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensJolie); i++) {
        if (global.itensJolie[i] == "vassoura") {
            array_delete(global.itensJolie, i, 1);
            break; // remove só uma instância
        }
    }
}	
