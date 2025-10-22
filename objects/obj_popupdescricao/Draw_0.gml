// Fundo do popup
draw_set_color(c_black);
draw_rectangle(x - largura/2, y - altura/2, x + largura/2, y + altura/2, false);
draw_set_color(c_white);

// Texto do item
draw_text(x - largura/2 + 10, y - altura/2 + 10, descricao);

// Botão X
draw_set_color(c_red);
draw_text(x_btn, y_btn, "X");
draw_set_color(c_white);
