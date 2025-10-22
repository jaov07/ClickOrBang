if(vidaJolie <= 0){
	var p = instance_create_layer(xx/2,yy/2, "Instances", vencedorSam)
	esperinha -= 1
	if(esperinha <= -1){
		instance_destroy(vencedorSam)
		room_goto(rmMenuInicial)
	}
}