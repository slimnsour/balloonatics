// Wall Sliding (should add control to this)
//show_debug_message(l_wall_id);
//show_debug_message(r_wall_id);
//show_debug_message(ghost_wall);
//show_debug_message("---");
if(ghost_wall && !grounded)
{
    // Wall Jumping
    if(input_jump) // Jumping off wall
    {
        state = states.jump;
        if(l_wall or ghost_l_wall) // Towards left wall
        {
            hsp = -h_jump_away;
            l_wall = false;
            ghost_l_wall = false;
        }
        else if(r_wall or ghost_r_wall) // Towards right wall
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
    // Wall Climb
    //} else if (input_up && wall_climb) {
    //    vsp = wallclimb_spd;
    //    wall_climb = false;
    //    alarm[6] = wallslide_time;
    //    state = states.wallslide;
    // Push off
    } else if (l_wall and input_right) {
        state = states.jump; 
        l_wall = false;
        hsp = h_push_off;
        vsp = 0;
        ghost_l_wall = false;
        jump_hold = true;
        alarm[3] = 4;
        alarm[0] = 20;
    } else if (r_wall and input_left){
        state = states.jump;
        r_wall = false;
        hsp = -h_push_off;
        vsp = 0;
        ghost_r_wall = false;
        jump_hold = true;
        alarm[3] = 4;
        alarm[0] = 20;
    }
} else {
    state = states.jump;
    wall_climb = true;
}

if (grounded) { state = states.run };
//if (!ghost_wall) { state = states.idle };
