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
	//se o botão atira enemy foi clicado, vai passarVez
	//se o botão atiraMe foi clicado e a bala removida for vermelha, passaVez
	
}
