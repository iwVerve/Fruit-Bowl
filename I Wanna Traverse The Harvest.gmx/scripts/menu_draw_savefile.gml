///menu_draw_savefile(index, x, y)

var index = argument0;
var xx = argument1;
var yy = argument2;

draw_set_text(fa_middle, fa_top, c_black, fLightBeachHuge);
draw_text_outline(xx + 64, yy, str[index], c_black, c_white);

draw_set_text(fa_left, fa_top, c_black, fHeyComicSmall);
draw_text_outline(xx + 10, yy + 70, "Deaths: " + string(death[index]), c_black, c_white);
draw_text_outline(xx + 10, yy + 90, "Time: " + timeStr[index], c_black, c_white);

draw_set_halign(fa_center);

if (fileSelected && index == savefileSelect)
{
    if (!showOverwriteWarning)
    {
        var displayText = "< " + global.difficultyNames[difficultySelect + 1] + " >";
        draw_text_outline(xx + 64, yy + 49, displayText, c_black, c_white);
    }
    else
    {
        draw_text_outline(xx + 64, yy - 100, "Are you sure#you want to#overwrite this save?", c_black, c_white);
        draw_text_outline(xx + 64, yy + 49, ternary(warningSelectYes, "< Yes >", "< No >"), c_black, c_white);
    }
}

if (exists[index])
{        
    if (!fileSelected) || (fileSelected && index != savefileSelect) {
        var displayText = global.difficultyNames[difficulty[index] + 1];
        draw_text_outline(xx + 64, yy + 49, displayText, c_black, c_white);
    }
    
    if clear[index] {
        draw_set_font(fLightBeachBig);
        draw_text_outline(xx + 63, yy + 215, "Clear!!", c_black, c_white);
    }
    
    // Boss items
    for(var item = 0; item < 8; item += 1) {
        var column = item % 4;
        var row = floor(item / 4);
        if (boss[item, index]) {
            draw_sprite(sprBossItem, -1, xx + 32 * column,  yy + 128 + 32 * row);
        }
    }
}
else
{
    if (!fileSelected) || (fileSelected && index != savefileSelect) {
        draw_text_outline(xx + 64, yy + 49, "No Data", c_black, c_white);
    }
}

if (index == savefileSelect)
{
    /*draw_sprite(sprCherry, animationIndex/15, xx+5,     yy + 310);
    draw_sprite(sprCherry, animationIndex/15, xx+25,    yy + 310);
    draw_sprite(sprCherry, animationIndex/15, xx+45,    yy + 310);
    draw_sprite(sprPlayerIdle, animationIndex/5, xx+65, yy + 310);
    draw_sprite(sprCherry, animationIndex/15, xx+85,    yy + 310);
    draw_sprite(sprCherry, animationIndex/15, xx+105,   yy + 310);
    draw_sprite(sprCherry, animationIndex/15, xx+125,   yy + 310);*/
}
