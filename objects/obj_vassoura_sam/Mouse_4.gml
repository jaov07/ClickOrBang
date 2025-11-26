
if(global.contSam[1] >= 1){
	var mx = xx;
	var my = yy;
	
	with(obj_arma){
	tcartucho = array_length(cartucho)
	ultimabala = tcartucho - 1
	 if (cartucho[ultimabala] == "vermelha") {
            instance_create_layer(mx/2, my/2, "Instances", obj_popup_balaRed);
        }
		if (cartucho[ultimabala] == "branca"){
			instance_create_layer(mx/2, my/2, "Instances", obj_popup_balaBlack);
		}
	  
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
