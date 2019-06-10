///reset_pos()

exp_obj = instance_create(x, y, obj_exp);
if charge > 0 {
    obj_exp.sprite_index = spr_exp_red;
} else if charge < 0 {
    obj_exp.sprite_index = spr_exp_blue;
}

audio_play_sound(snd_explosion, 50, false);

moving = false;
x = xi;
y = yi;
image_angle = angi;
vx = 0;
vy = 0;
