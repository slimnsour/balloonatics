if (alarm[6] <= 0) {
    state = states.wall;
    wall_climb = false;
} else if (alarm[6] <= 4) {
    scr_player_soft_wall_jump();
} else {
    hsp = 0;
    vsp = wallclimb_spd;
}
