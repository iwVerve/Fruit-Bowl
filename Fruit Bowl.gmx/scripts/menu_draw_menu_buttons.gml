///menu_draw_menu_buttons(optionsText)
// Draws the button control info for menus
// argument0 - sets whether to draw the text for entering the options menu

var fill_color = c_black;
var outline_color = c_white;
if room != rOptions && room != rMenu {
    fill_color = c_white;
    outline_color = c_black;
}

var optionsText = argument0;

var backButton;
var acceptButton;
var optionsButton;    

//check whether to display keyboard or controller buttons
if (!global.controllerMode)
{
    backButton = input_get_key_name(global.menuBackButton[0]);
    acceptButton = input_get_key_name(global.menuAcceptButton[0]);
    optionsButton = input_get_key_name(global.menuOptionsButton[0]);
}
else
{
    backButton = input_get_button_name(global.menuBackButton[1]);
    acceptButton = input_get_button_name(global.menuAcceptButton[1]);
    optionsButton = input_get_button_name(global.menuOptionsButton[1]);
}

//button info
draw_set_font(fHeyComicSmall);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_outline(34, 556, "["+backButton+"] Back", fill_color, outline_color);
draw_set_halign(fa_right);
draw_text_outline(766, 556, "["+acceptButton+"] Accept", fill_color, outline_color);

if (optionsText)
{
    //draw button info for the options menu
    
    draw_set_halign(fa_middle);
    draw_text_outline(400, 556, "["+optionsButton+"] Options", fill_color, outline_color);
}
