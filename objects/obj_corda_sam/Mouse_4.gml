
if(global.contSam[2] >= 1){
	
    global.contSam[2]--; // diminui a quantidade
	global.cordaClicada_sam = true
	

    // remove uma instância do array de itens
    for (var i = 0; i < array_length(global.itensSam); i++) {
        if (global.itensSam[i] == "corda") {
            array_delete(global.itensSam, i, 1);
            break; // remove só uma instância
        }
    }
}
else if(global.contSam[2] <=0){
	show_debug_message("não possui esse item")
	
}
