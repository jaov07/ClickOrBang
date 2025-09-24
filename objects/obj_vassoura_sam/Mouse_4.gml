






if(global.contSam[1] >= 1){
	
	with(obj_arma){
	tcartucho = array_length(cartucho)
	ultimabala = tcartucho - 1
	show_message(cartucho[ultimabala])
	cartucho_delete(ultimabala)
	
}

	
    global.contSam[1]--; // diminui a quantidade
	

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensSam); i++) {
        if (global.itensSam[i] == "vassoura") {
            array_delete(global.itensSam, i, 1);
            break; // remove só uma instância
        }
    }
}
else if(global.contSam[1] <=0){
	show_debug_message("não possui esse item")
	
}
