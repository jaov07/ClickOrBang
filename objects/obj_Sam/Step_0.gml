if(vidaSam <= 0){
	var p = instance_create_layer(xx/2,yy/2, "Instances", vencedorJolie)
	esperinha -= 1
	if(esperinha <= -1){
		instance_destroy(vencedorJolie)
		room_goto(rmMenuInicial)
	}

}