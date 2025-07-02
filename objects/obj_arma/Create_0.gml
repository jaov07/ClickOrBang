randomize();
cartucho = [];
danoArma = 1;


// Função pra gerar o cartucho
function gerarCartucho() {
    cartucho = [];

    for (var i = 0; i < 6; i++) {
        var numero = irandom(10);
        var bala = (numero <= 5) ? "vermelha" : "branca";
        array_push(cartucho, bala);
    }

    verificarCartucho();
}

// Função pra garantir que não fique 6 balas iguais
function verificarCartucho() {
    var vermelha = 0;
    var branca = 0;

    for (var i = 0; i < array_length(cartucho); i++) {
        if (cartucho[i] == "vermelha") vermelha += 1;
        else branca += 1;
    }

    if (vermelha == 6 || branca == 6) {
        gerarCartucho();
    }
}

// Função pra remover uma bala específica
function cartucho_delete(_index) {
    var tamanho = array_length(cartucho);

    if (_index < 0 || _index >= tamanho) {
        show_error("Tentou remover um índice que não existe no cartucho!", true);
        return;
    }

    var novo_cartucho = [];

    for (var i = 0; i < tamanho; i++) {
        if (i != _index) {
            array_push(novo_cartucho, cartucho[i]);
        }
    }

    cartucho = novo_cartucho;
}


function recarregar(){

}


// Função pra atirar
function atirarNaJolie() {
    var tcartucho = array_length(cartucho);
    var ultimabala = tcartucho - 1;

    if (tcartucho > 0) {
        var bala = cartucho[ultimabala];

        if (bala == "vermelha") {
            obj_jolie.vidaJolie -= danoArma;
            show_debug_message("💥 BANG!");
			cartucho_delete(ultimabala);
			show_debug_message(cartucho)
		} else {
            show_debug_message("🫰 CLICK!");
			cartucho_delete(ultimabala);
			show_debug_message(cartucho)
		}

        
    } else {
        show_debug_message("🚫 Sem balas! ");
		gerarCartucho()
		show_debug_message(cartucho);
    }

    show_debug_message("Vida da Jolie: " + string(obj_jolie.vidaJolie));
}



function atirarNaSam() {
    var tcartucho = array_length(cartucho);
    var ultimabala = tcartucho - 1;

    if (tcartucho > 0) {
        var bala = cartucho[ultimabala];

        if (bala == "vermelha") {
           obj_Sam.vidaSam -= danoArma;
            show_debug_message("💥 BANG!");
			cartucho_delete(ultimabala);
			show_debug_message(cartucho)
		} else {
            show_debug_message("🫰 CLICK!");
			cartucho_delete(ultimabala);
			show_debug_message(cartucho)
		}

        
    } else {
        show_debug_message("🚫 Sem balas! ");
		gerarCartucho()
		show_debug_message(cartucho);
    }

    show_debug_message("Vida da Jolie: " + string(obj_Sam.vidaSam));
}
	
	
function jogadorInicial(){
	numero = irandom(10)
	var jogadorInicial = (numero <= 5) ? "jolie" : "sam";
	jogadorcomeca = jogadorInicial
	return jogadorcomeca
	
}

// Inicializa o cartucho
jogadorcomeca = jogadorInicial()
jogadorAtual = jogadorcomeca
gerarCartucho();
show_debug_message(cartucho)
