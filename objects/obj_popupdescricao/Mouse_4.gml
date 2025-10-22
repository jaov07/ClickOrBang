// Fecha o popup se clicar no X
if (mouse_x > x_btn && mouse_x < x_btn + 20 &&
    mouse_y > y_btn && mouse_y < y_btn + 20)
{
    instance_destroy();
}