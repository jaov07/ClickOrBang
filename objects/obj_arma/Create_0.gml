
randomize();
cartucho = [];
danoArma = 1;



global.itens = ["facao", "vassoura", "corda", "lupa", "maca"];

// Função pra gerar o cartucho
function gerarCartucho() {
	global.ultimo_botao_clicado = noone
    cartucho = [];

    for (var i = 0; i < 6; i++) {
        var numero = irandom(10);
        var bala = (numero <= 5) ? "vermelha" : "branca";
        array_push(cartucho, bala);
    }
	
	

    verificarCartucho();
	
// SCRIPT DE GERAR ITENS
	var resultado = gerarItens();
	show_debug_message("itens jolie: " + string(resultado.itensJolie));
	show_debug_message("itens sam: " + string(resultado.itensSam));
	
	var qtdV = 0;
    var qtdB = 0;
    for (var i = 0; i < array_length(cartucho); i++) {
        if (cartucho[i] == "vermelha") qtdV += 1;
        else qtdB += 1;
    }

    var p = instance_create_layer(0, 0, "Instances", obj_popup_balas);
    p.qtdV = qtdV;
    p.qtdB = qtdB;
	
	
	
	
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



// Função pra atirar
function atirarNaJolie(ultimobotaoclicado) {
	show_debug_message("1cordaClicada_sam = " + string(global.cordaClicada_sam));
	
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
	
	
	
	if(global.cordaClicada_jolie == false){
		show_debug_message("2cordaClicada_sam = " + string(global.cordaClicada_sam));
		passarVez(bala,ultimobotaoclicado)
	}
	else{
			global.cordaClicada_jolie = false
	}
    
}



function atirarNaSam(ultimobotaoclicado) {
	show_debug_message("cordaClicada_sam = " + string(global.cordaClicada_sam));
    var tcartucho = array_length(cartucho);
    var ultimabala = tcartucho - 1;

    if (tcartucho > 0) {
        var bala = cartucho[ultimabala];
		show_debug_message("1cordaClicada_jolie = " + string(global.cordaClicada_jolie));
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
	if(global.cordaClicada_sam == false){
		show_debug_message("2cordaClicada_jolie = " + string(global.cordaClicada_jolie));
		passarVez(bala,ultimobotaoclicado)
	}
	else{
			global.cordaClicada_sam = false
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
