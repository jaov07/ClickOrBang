if (global.contSam[3] >= 1) {
	var mx = xx;
	var my = yy;

	
    with (obj_arma) {
        var tcartucho = array_length(cartucho);
        var ultimabala = cartucho[tcartucho - 1];

        show_debug_message("ULTIMA BALA: " + string(ultimabala));

        if (ultimabala == "vermelha") {
            instance_create_layer(mx/2, my/2, "Instances", obj_popup_balaRed);
        }
		else{
			instance_create_layer(mx/2, my/2, "Instances", obj_popup_balaBlack);
		}
    }

    global.contSam[3]--;

    for (var i = 0; i < array_length(global.itensSam); i++) {
        if (global.itensSam[i] == "lupa") {
            array_delete(global.itensSam, i, 1);
            break;
        }
    }
}

