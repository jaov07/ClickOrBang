function passarVez(ultimabala) {
    show_debug_message("Função passarVez() foi chamada");

    // Função lupa pra pegar a última bala no cartucho
    var balaAtual = ultimabala;

    if (obj_arma.jogadorAtual == "jolie") {
        if (balaAtual == "vermelha") {
            // Bala vermelha: passa a vez pra Sam
            obj_arma.jogadorAtual = "sam";
            show_debug_message("Bala vermelha! Vez passou para Sam.");
        } 
        else if (balaAtual == "branca") {
            // Bala branca:
            // Se atirou no inimigo, passa a vez pra Sam
            if (global.ultimo_botao_clicado == obj_botaoAtiraEnemy.id) {
                obj_arma.jogadorAtual = "sam";
                show_debug_message("Bala branca atirando no inimigo! Vez passou para Sam.");
            } 
            else if(global.ultimo_botao_clicado == obj_botaoAtiraMe.id) {
                // Atirou em si mesmo, vez permanece com Jolie
                obj_arma.jogadorAtual = "jolie";
                show_debug_message("Bala branca atirando em si mesmo! Vez permanece com Jolie.");
            }
        }
    } 
    else if (obj_arma.jogadorAtual == "sam") {
        if (balaAtual == "vermelha") {
            // Bala vermelha: passa a vez pra Jolie
            obj_arma.jogadorAtual = "jolie";
            show_debug_message("Bala vermelha! Vez passou para Jolie.");
        } 
        else if (balaAtual == "branca") {
            // Bala branca:
            // Se atirou no inimigo, passa a vez pra Jolie
            if (global.ultimo_botao_clicado == obj_botaoAtiraEnemy_sam.id) {
                obj_arma.jogadorAtual = "jolie";
                show_debug_message("Bala branca atirando no inimigo! Vez passou para Jolie.");
            } 
            else if (global.ultimo_botao_clicado == obj_botaoAtiraMe_sam.id) {
                // Atirou em si mesmo, vez permanece com Sam
                obj_arma.jogadorAtual = "sam";
                show_debug_message("Bala branca atirando em si mesmo! Vez permanece com Sam.");
            }
        }
    }
}
