function gerarItens() {
    var itens = ["facao", "vassoura", "corda", "lupa", "pocao"];

    var itensSam = [];
    var itensJolie = [];

    var gerador = function(_array, _itens) {
        var cont = array_length(_array);
        for (var i = 0; i < 6 - cont; i++) {
            var index = irandom(array_length(_itens) - 1);
            var item = _itens[index];
            array_push(_array, item);
        }
        return _array;
    };

    itensSam   = gerador(itensSam, itens);
    itensJolie = gerador(itensJolie, itens);

    return {
        itensSam: itensSam,
        itensJolie: itensJolie
    };
}