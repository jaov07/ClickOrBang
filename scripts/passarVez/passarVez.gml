function passarVez(ultimabala, botaoClicado) {
    show_debug_message("Função passarVez() foi chamada");
	
    var balaAtual = ultimabala;
    var jogadorAtual = obj_arma.jogadorAtual;
    var proximoJogador = (jogadorAtual == "jolie") ? "sam" : "jolie";

    // Define os botões de alvo de acordo com o jogador atual
    var botaoInimigo = (jogadorAtual == "jolie") ? obj_botaoAtiraEnemy : obj_botaoAtiraEnemy_sam;
    var botaoMe = (jogadorAtual == "jolie") ? obj_botaoAtiraMe : obj_botaoAtiraMe_sam;

    if (balaAtual == "vermelha") {
        // Bala vermelha: passa a vez sempre para o próximo jogador
        obj_arma.jogadorAtual = proximoJogador;
        show_debug_message("Bala vermelha! Vez passou para " + proximoJogador);
    }
    else if (balaAtual == "branca") {
        // Bala branca: só muda a vez se atirou no inimigo
        if (instance_exists(botaoClicado)) {
            if (botaoClicado == botaoInimigo) {
                obj_arma.jogadorAtual = proximoJogador;
				show_debug_message("botao clicado: " + string( botaoClicado))
                show_debug_message("Bala branca atirando no inimigo! Vez passou para " + proximoJogador);
            } 
            else if (botaoClicado == botaoMe) {
                obj_arma.jogadorAtual = jogadorAtual;
				show_debug_message("botao clicado: " + string( botaoClicado))
                show_debug_message("Bala branca atirando em si mesmo! Vez permanece com " + jogadorAtual);
            }
        } 
        // Se o botão não existe mais, mantém a vez sem mensagem
        else {
            obj_arma.jogadorAtual = jogadorAtual;
        }
    }
}
