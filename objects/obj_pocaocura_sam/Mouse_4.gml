

if(global.contSam[4] >= 1){
	
	
	with(obj_Sam){
	if(vidaSam < 5){
		vidaSam += 1
	}
	else{
		show_debug_message("burro pa krl, ja tinha 5 vidas, perdeu perdeu perdeu otario!!!!")	
	}
		
		
}
show_debug_message(string(obj_Sam.vidaSam))


	
    global.contSam[4]--; // diminui a quantidade
	

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensSam); i++) {
        if (global.itensSam[i] == "pocao") {
            array_delete(global.itensSam, i, 1);
            break; // remove só uma instância
        }
    }
}
else if(global.contSam[4] <=0){
	show_debug_message("não possui esse item")
	
}


