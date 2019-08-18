if (can_l_wall_jump or can_r_wall_jump) {
    
    if(input_jump) // Jumping off wall
    {
        state = states.jump; 
        if(l_wall_id) // Towards left wall
        {
            hsp = -h_jump_away;
            l_wall = false;
            ghost_l_wall = false;
        }
        else if(r_wall_id) // Towards right wall
        {
            hsp = h_jump_away;
            r_wall = false;
            ghost_r_wall = false;
        }
        vsp = v_jump_away;
        alarm[0] = 20;
        jump_hold = true;
        wall_climb = true;
        scr_floor_dust();
    }
}
