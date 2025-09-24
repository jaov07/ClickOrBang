







if(global.contSam[3] >= 1){
	
	with(obj_arma){
	tcartucho = array_length(cartucho)
	ultimabala = cartucho[tcartucho - 1]
	show_message(ultimabala)
	
	
 }
	
    global.contSam[3]--; // diminui a quantidade
	

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensSam); i++) {
        if (global.itensSam[i] == "lupa") {
            array_delete(global.itensSam, i, 1);
            break; // remove só uma instância
        }
    }
}
else if(global.contSam[3] <=0){
	show_debug_message("não possui esse item")
	
}

