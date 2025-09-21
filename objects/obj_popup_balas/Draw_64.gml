var xx = display_get_gui_width() / 2;
var yy = display_get_gui_height() / 2;

// fundo
draw_sprite(spr_popup_fundo, 0, xx, yy);

balas = obj_arma.cartucho
	
    var qtdVermelha = 0;
    var qtdBranca = 0;

    for (var i = 0; i < array_length(balas); i++) {
        if (balas[i] == "vermelha") {
            qtdVermelha += 1;
        }
        else if (balas[i] == "branca") {
            qtdBranca += 1;
        }
    }

	function indiceNumero(_n) {
    switch(_n) {
        case 0: return num0;
        case 1: return num1;
        case 2: return num2;
        case 3: return num3;
        case 4: return num4;
        case 5: return num5;
    }
    return num0;
}


   



//desenha vezes

draw_sprite(vezes, 0, xx , yy - 80 );
draw_sprite(vezes, 0, xx , yy + 80 );
    // desenha bala vermelha
    draw_sprite(spr_balaVermelha, 0, xx + 150, yy - 80 );
    draw_sprite(indiceNumero(qtdVermelha), 0, xx - 150, yy - 80);

    // desenha bala branca
    draw_sprite(spr_BalaBranca, 0, xx + 150, yy + 80);
	
	
    draw_sprite(indiceNumero(qtdBranca), 0, xx - 150, yy + 80);

