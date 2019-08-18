if(grounded)
{
    if (hsp > 0) {
        if (!scr_enemy_check_collision(bbox_right+sign(hsp)*sprite_width/2,y+1) or scr_enemy_check_collision(x+hsp,y)) {
            hsp = -master_spd;
        }
    } else {
        if (!scr_enemy_check_collision(bbox_left+sign(hsp)*sprite_width/2,y+1) or scr_enemy_check_collision(x+hsp,y)) {
            hsp = master_spd;
        }
    }
}
