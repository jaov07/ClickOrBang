


if(global.contJolie[2] >= 1){
	
    global.contJolie[2]--; // diminui a quantidade
	
	
	global.cordaClicada_sam = true
	

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensJolie); i++) {
        if (global.itensJolie[i] == "corda") {
            array_delete(global.itensJolie, i, 1);
            break; // remove só uma instância
        }
    }
}
else if(global.contJolie[2] <=0){
	show_debug_message("não possui esse item")
	
}

