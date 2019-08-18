// Get different directions for burst
//if (grounded) {
//    state = states.run;
//}
if (on_wall){
    hsp = sign(x_scale)*cut_hburst_spd;
    vsp = 0;
} else {
    vsp = -cut_vburst_spd;
    if (input_left) {
        hsp = -cut_hburst_spd;
        pop_id.image_angle = 45;
    } else if (input_right) {
        hsp = cut_hburst_spd;
        pop_id.image_angle = -45;
    } else {
        hsp = 0;
        vsp = -vburst_spd_max;
    }
}
