randomize(); 

cartucho = [];
 danoArma = 1

function gerarCartucho(){
for (var i = 0; i < 6; i++) {
    var numero = irandom(10); 
    var bala = "";

   
    if (numero <= 5) {
        bala = "vermelha";
    } else {
        bala = "branca";
    }

    array_push(cartucho, bala);
}
}


function verificarCartucho(){
	var balavermelha = 0
	var balabranca = 0
	for(var i = 0; i<array_length(cartucho); i++){
	var bala = cartucho[i]
	if (bala = "vermelha"){
		 balavermelha = balavermelha + 1
	}
	else{
		 balabranca = balabranca + 1
	}
	
	if (balavermelha == 6 || balabranca == 6){
		
		cartucho = []
		gerarCartucho()
	
	}

}
}


gerarCartucho()
verificarCartucho()

show_message(string(cartucho));
