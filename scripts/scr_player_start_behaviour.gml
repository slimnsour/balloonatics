// Wait until you hit fresh air and can start to fall

vsp = start_spd;

if (!scr_player_check_collision(x, y+1)) {
    state = states.jump;
}
