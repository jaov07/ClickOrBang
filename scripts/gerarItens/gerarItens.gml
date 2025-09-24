function gerarItens() {
    var itensPossiveis = ["facao", "vassoura", "corda", "lupa", "pocao"];

    // Arrays de itens
    global.itensSam = [];
    global.itensJolie = [];

    // Função pra gerar 6 itens aleatórios, recebendo os itens possíveis como parâmetro
    var gerador = function(_array, _itens) {
        for (var i = 0; i < 6; i++) {
            var index = irandom(array_length(_itens) - 1);
            array_push(_array, _itens[index]);
        }
        return _array;
    };

    global.itensSam = gerador(global.itensSam, itensPossiveis);
    global.itensJolie = gerador(global.itensJolie, itensPossiveis);

    // Função interna pra contar itens usando array
    var contarItensLista = function(_lista, _itensPossiveis) {
        var contagem = array_create(array_length(_itensPossiveis), 0);

        for (var i = 0; i < array_length(_lista); i++) {
            var item = _lista[i];
            for (var j = 0; j < array_length(_itensPossiveis); j++) {
                if (item == _itensPossiveis[j]) {
                    contagem[j] += 1;
                }
            }
        }

        return contagem;
    };

    // Contagem
    global.contSam = contarItensLista(global.itensSam, itensPossiveis);
    global.contJolie = contarItensLista(global.itensJolie, itensPossiveis);

    // Mostra no debug
    for (var i = 0; i < array_length(itensPossiveis); i++) {
        show_debug_message("Sam - " + itensPossiveis[i] + ": " + string(global.contSam[i]));
    }
    for (var i = 0; i < array_length(itensPossiveis); i++) {
        show_debug_message("Jolie - " + itensPossiveis[i] + ": " + string(global.contJolie[i]));
    }

    // Retorna também se quiser usar direto
    return {
        itensSam: global.itensSam,
        itensJolie: global.itensJolie,
        contSam: global.contSam,
        contJolie: global.contJolie
    };
}
