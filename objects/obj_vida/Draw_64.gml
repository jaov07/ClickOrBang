if (obj_jolie.vidaJolie == 5) {
    draw_sprite_ext(spr_vida, 0, 390, -100, 5, 5, 0, c_white, 1);
}
else if (obj_jolie.vidaJolie == 4) {
    draw_sprite_ext(spr_vida, 1, 390, -100, 5, 5, 0, c_white, 1);
}
else if (obj_jolie.vidaJolie == 3) {
    draw_sprite_ext(spr_vida, 2, 390, -100, 5, 5, 0, c_white, 1);
}
else if (obj_jolie.vidaJolie == 2) {
    draw_sprite_ext(spr_vida, 3, 390, -100, 5, 5, 0, c_white, 1);
}
else if (obj_jolie.vidaJolie == 1) {
    draw_sprite_ext(spr_vida, 4, 390, -100, 5, 5, 0, c_white, 1);
}
else if (obj_jolie.vidaJolie < 1) {
    draw_sprite_ext(spr_vida, 5, 390, -100, 5, 5, 0, c_white, 1);
}
