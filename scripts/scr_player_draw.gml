if (hsp < 0) x_scale = -1;
if (hsp > 0) x_scale = 1;
if (hsp == 0) {
    if (input_right) x_scale = 1;
    if (input_left) x_scale = -1;
}
switch (state)
{
    case states.idle: {
        sprite_index = spr_char;
        draw_angle = 0;
        break;
    } case states.run: {
        sprite_index = spr_char_run;
        image_speed = 0.17;
        draw_angle = 0;
        break;
    } case states.jump: {
        sprite_index = spr_char;
        if ((can_l_wall_jump or can_r_wall_jump) and !grounded and input_jump) {
            sprite_index = spr_char_wallslide;
            if (can_l_wall_jump) x_scale = 1;
            else if (can_r_wall_jump) x_scale = -1;
        }
        draw_angle = 0;
        break;
    } case states.wallslide: {
        sprite_index = spr_char_wallslide;
        if (l_wall) x_scale = 1;
        else if (r_wall) x_scale = -1;
        draw_angle = 0;
        //wallslide_fx_image_index = inc_image_index(wallslide_fx_image_index, wallslide_fx_image_speed, sprite_get_number(spr_wallslide_sparks));
        break;
    } case states.wall: {
        sprite_index = spr_char_wallslide;
        if (l_wall) x_scale = 1;
        else if (r_wall) x_scale = -1;
        //wallslide_fx_image_index = inc_image_index(wallslide_fx_image_index, wallslide_fx_image_speed, sprite_get_number(spr_wallslide_sparks));
        
        spark_timer = clock_decrease(spark_timer);
        if (spark_timer == 0) {
            random_wallslide = random_range(0,sprite_get_number(spr_wallslide_sparks));
            if (random_wallslide == wallslide_fx_image_index) {
                random_wallslide = wallslide_fx_image_index + 1;
            }
            wallslide_fx_image_index = random_wallslide;
            spark_timer = spark_timer_max;
        }
        draw_sprite_ext(spr_wallslide_sparks, wallslide_fx_image_index, x, y, x_scale, y_scale, image_angle, image_blend, image_alpha);
        draw_angle = 0;
        break;
    } case states.burst: {
        sprite_index = spr_char_spin;
        draw_angle = draw_angle-x_scale*35;
        break;
    } case states.ground_attack: {
        sprite_index = spr_char_gattack;
        draw_angle = 0;
        break;
    }
}

if (balloon_gas > 0) {
    balloon_x_scale = sign(x_scale)*(balloon_draw_base+balloon_gas/balloon_max_gas)
    balloon_y_scale = sign(y_scale)*(balloon_draw_base+balloon_gas/balloon_max_gas)
} else {
    balloon_x_scale = 0;
    balloon_y_scale = 0;
}
//draw_sprite_ext(spr_char_balloon, image_index, x, y, balloon_x_scale, balloon_y_scale, image_angle, image_blend, !((invincibility_clock/3)%2));
//draw_sprite_ext(sprite_index, image_index, x, y, x_scale, y_scale, draw_angle, image_blend, !((invincibility_clock/3)%2));
//draw_text(x+50, y-50, balloon_gas);
//draw_sprite_ext(sprite_index,image_index,x+room_width*-1,y,x_scale,y_scale,draw_angle,image_blend,image_alpha);
//draw_sprite_ext(sprite_index,image_index,x,y,x_scale,y_scale,draw_angle,image_blend,image_alpha);
//draw_sprite_ext(sprite_index,image_index,x+room_width*1,y,x_scale,y_scale,draw_angle,image_blend,image_alpha);

loop_draw(spr_char_balloon, image_index, x, y, balloon_x_scale, balloon_y_scale, image_angle, image_blend, !((invincibility_clock/3)%2));
loop_draw(sprite_index, image_index, x, y, x_scale, y_scale, draw_angle, image_blend, !((invincibility_clock/3)%2));
//draw_text(x-100, y-50, "FPS = " + string(fps));
//show_debug_overlay(true);
scr_player_camera_check();
