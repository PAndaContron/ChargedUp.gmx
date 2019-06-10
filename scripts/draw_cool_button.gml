///draw_cool_button(x, y, text, func, c_hover)

var tx = argument0;
var ty = argument1;
var text = argument2;
var func = argument3;
var c_hover = argument4;

var width = string_width(text) + 12;
var height = string_height(text) + 12;

if in_box(mouse_x, mouse_y, tx, ty, width, height) {
    draw_rectangle_color(tx, ty, tx+width, ty+height,
        c_hover, c_hover, c_hover, c_hover, false);
    
    if !in_box(obj_global.prev_mouse_x, obj_global.prev_mouse_y, tx, ty, width, height) {
        audio_play_sound(snd_hover, 54, false);
    }
    
    if mouse_check_button_pressed(mb_left) {
        audio_play_sound(snd_click, 55, false);
        script_execute(func, text);
    }
}

draw_rectangle(tx, ty, tx+width, ty+height, true);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(tx+5, ty+5, text);
