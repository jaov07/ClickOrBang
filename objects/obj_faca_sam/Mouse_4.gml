


if(global.contSam[0] >= 1){
	
	with(obj_arma){
danoArma = 2
}
	
    global.contSam[0]--; // diminui a quantidade
	

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensSam); i++) {
        if (global.itensSam[i] == "facao") {
            array_delete(global.itensSam, i, 1);
            break; // remove só uma instância
        }
    }
}
else if(global.contSam[0] <=0){
	show_debug_message("não possui esse item")
	
}
