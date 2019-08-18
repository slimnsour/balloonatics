switch (state)
{
    case states.idle: {
        break;
    } case states.run: {
        break;
    } case states.jump: {
        // accelerate w/ gas
        if (input_gas && have_gas) {
            scr_balloon_gas();
            if (vsp <= 1) {
                vsp += oPhysics.grav*0.5;
            } else {
                vsp = 1;
            }
        } else {
            vsp += oPhysics.grav;
        }
        break;
    } case states.wall: {
        if (vsp < 0) {
            vsp = approach(vsp, 0, wall_fric*2.5);
        } else {
            vsp = approach(vsp, wall_spd, wall_fric);
        }
        break;
    } case states.wallslide: {
        //vsp += oPhysics.grav;
        break;
    } case states.burst: {
        vsp += oPhysics.grav;
        break;
    } case states.hurt: {
        vsp += oPhysics.grav*0.5;
        break;
    } case states.ground_attack: {
        vsp += oPhysics.grav;
        break;
    }
}
