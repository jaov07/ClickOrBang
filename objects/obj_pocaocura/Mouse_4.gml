
if(global.contJolie[4] >= 1){
	
	
with(obj_jolie){
	if(vidaJolie < 5){
		vidaJolie += 1
	}


    global.contJolie[4]--; // diminui a quantidade

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensJolie); i++) {
        if (global.itensJolie[i] == "pocao") {
            array_delete(global.itensJolie, i, 1);
            break; // remove só uma instância
        }
    }
}	
}


