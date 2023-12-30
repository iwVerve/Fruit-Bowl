///menu_draw_option(name, value)
                        
var fill_color = c_black;
var outline_color = c_white;
if room != rOptions {
    fill_color = c_white;
    outline_color = c_black;
}

if (argument_count >= 1)
{
    draw_set_halign(fa_left);
    draw_text_outline(xMargin, yStart + yStep * currentSlot, argument[0], fill_color, outline_color);
}

if (argument_count >= 2)
{
    draw_set_halign(fa_right);
    draw_text_outline(view_wview - xMargin, yStart + yStep * currentSlot, argument[1], fill_color, outline_color);
}

currentSlot += 1;
