// Jumping
if (!grounded and prev_grounded) 
{
    alarm[2] = 10;
}

ghost_grounded = alarm[2] >= 0 or grounded;

if(input_jump && ghost_grounded && have_jump)
{
    //if (!oChar.input_down) {
        vsp = jump_spd;
        have_jump = false;
        state = states.jump;
    
        //stretches character
        //x_scale = 0.75;
        //y_scale = 1.20;
        
        // reset ghost grounded
        alarm[2] = -1;
        alarm[0] = 20;
        jump_hold = true;
    //}
}

if (input_jump_release){ jump_hold = false };

