///mint_draw_tooltip()

if (tooltip != "")
{
    var xx = mouse_window_x, yy = mouse_window_y, maxw = 160;
    var mox = 8, moy = 24, mi = 4;
    var dirX = 1, dirY = 1;
    draw_set_font(font);
                            
    
    var tw = string_width_ext(tooltip, -1, maxw) + 8, th = string_height_ext(tooltip, -1, maxw) + 8;
    
    draw_set_halign(fa_left);
    if (tw + mi + mox > sw - xx)
    {
        dirX = -1;
        draw_set_halign(fa_right);
    }
    draw_set_valign(fa_top);
    if (th + mi + moy > sh - yy)
    {
        dirY = -1;
        draw_set_valign(fa_bottom);
    }
    
    xx += dirX * mox;
    yy += dirY * moy;
    draw_set_color(c_white);
    draw_rectangle(xx, yy, xx + dirX * (tw - 1), yy + dirY * (th - 1), false);
    draw_set_color(c_black);
    draw_rectangle(xx, yy, xx + dirX * (tw - 1), yy + dirY * (th - 1), true);
    draw_text_ext(xx + dirX * mi, yy + dirY * mi, tooltip, -1, maxw);
}
