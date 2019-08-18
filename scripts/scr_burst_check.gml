// Dash
    //show_debug_message("1");

    
if (input_attack && have_gas) {
    //scr_create_stab_hitbox();
    scr_create_burst_player_hitbox();
    stab_hold = false;
    state = states.burst;
    pop_id = instance_create(x,y,oCharPop);
    scr_player_burst();
    // Create pop explosion
    balloon_gas = 0;
    alarm[5] = max_burst_timer;
    have_jump = false;
}

