// Movement

    if(input_left) {
        hsp = approach(hsp, -spd, acc);
    } else if(input_right) {
        hsp = approach(hsp, spd, acc);
    } else {
        hsp = approach(hsp, 0, fric);
    }

if((!input_left and !input_right) or (input_left and input_right))
{
    // 0.3 is a deadzone to just complete stop
    if(abs(hsp) < 0.3){ hsp = 0 };
}

//if(abs(vsp) < 0.1 ){ vsp = 0 };

// If burst movement is done or wall or floor change state
//if (alarm[5] <= 0) {
//     state = states.jump;
//}

if (grounded) {
    state = states.run;
}

