loop_spr_index = argument0;
loop_img_index = argument1;
loop_x_pos = argument2;
loop_y_pos = argument3;
loop_x_scale = argument4;
loop_y_scale = argument5;
loop_rot = argument6;
loop_colour = argument7;
loop_alpha = argument8;
// s/o to https://steamcommunity.com/app/214850/discussions/0/1353742967824086504/
draw_sprite_ext(loop_spr_index,loop_img_index,loop_x_pos-room_width,loop_y_pos,loop_x_scale,loop_y_scale,loop_rot,loop_colour,loop_alpha);
draw_sprite_ext(loop_spr_index,loop_img_index,loop_x_pos,loop_y_pos,loop_x_scale,loop_y_scale,loop_rot,loop_colour,loop_alpha);
draw_sprite_ext(loop_spr_index,loop_img_index,loop_x_pos+room_width,loop_y_pos,loop_x_scale,loop_y_scale,loop_rot,loop_colour,loop_alpha);
