var w = display_get_gui_width();
var h = display_get_gui_height();

draw_sprite_ext(
    spr_popupBlack,
    0,
    w/2,
    h/2 - 100,
    2,   // escala X
    2,   // escala Y
    0,   // ângulo
    c_white,
    1    // alpha
);
