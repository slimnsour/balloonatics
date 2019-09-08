// Get Key Input

// Set Variables

//if (keyboard_check_pressed(ord('O'))) {jump_spd += 0.1};
//if (keyboard_check_pressed(ord('L'))) {jump_spd -= 0.1};
//if (keyboard_check_pressed(ord('I'))) {oPhysics.grav += 0.01};
//if (keyboard_check_pressed(ord('K'))) {oPhysics.grav -= 0.01};
//show_debug_message("---")
//show_debug_message(jump_spd)
//show_debug_message(oPhysics.grav)
grounded = scr_player_check_collision(x, y+1) and vsp >= 0;
pulse_grounded = pulse(prev_grounded, grounded)
//show_debug_message(pulse_grounded)
invincibility_clock = clock_decrease(invincibility_clock);
burst_time_clock = clock_decrease(burst_time_clock);
invincible = invincibility_clock > 0;
have_gas = balloon_gas > 0;
end_animation = image_index + image_speed >= image_number;
burst_time = image_index + image_speed >= image_number-6;

if(state == states.jump || state == states.hurt)
{
    acc = air_acc;
    spd = air_max;
    fric = air_fric;
    wall_climb = true;
} else if (state == states.burst){
    acc = burst_acc;
    spd = burst_max;
    fric = burst_fric;
    //wall_climb = true;
} else if (state == states.wall){
    acc = grnd_acc;
    spd = grnd_max;
    fric = grnd_fric;
    //balloon_gas = balloon_max_gas;
    //wall_climb = true;
} else if (state == states.ground_attack){
    acc = grnd_acc;
    spd = grnd_max;
    fric = grnd_fric;
    //wall_climb = true;
} else { // ground
    acc = grnd_acc;
    spd = grnd_max;
    fric = grnd_fric;
    have_jump = true;
    balloon_gas = balloon_max_gas;
    wall_climb = true;
}
scr_player_input();
switch (state)
{
    case states.idle: {
//show_debug_message("idle");
        scr_player_movement();
        scr_player_spear();
        scr_player_stab_check();
        scr_player_jump_check();
        scr_player_hurt_check();
        break;
    } case states.run: {
//show_debug_message("run");
        scr_player_movement();
        scr_player_spear();
        scr_player_stab_check();
        scr_player_jump_check();
        scr_player_hurt_check();
        break;
    } case states.jump: {
//show_debug_message("jump");
        scr_player_air_movement();
        scr_player_check_idle();
        scr_player_spear();
        scr_player_stab_check();
        scr_player_jump_check();
        //scr_player_wall_check();
        scr_player_soft_wall_jump();
        scr_player_gas();
        scr_player_hurt_check();
        break;
    } case states.wall: {
//show_debug_message("ondawall");
        //scr_player_wall_movement();
        scr_player_wall_check();
        scr_player_stab_check();
        scr_player_wall_actions();
        break;
    } case states.wallslide: {
//show_debug_message("slide");
        scr_player_wallslide_movement();
        scr_player_spear();
        scr_player_wall_check();
        scr_player_off_wall();
        break;
    } case states.burst: {
//show_debug_message("burst");
        scr_player_burst_movement();
        //scr_player_stab_check();
        //scr_player_wall_check();
        scr_player_burst_hit();
        break;
    } case states.hurt: {
//show_debug_message("hurt");
        scr_player_hurt_movement();
        scr_player_spear();
        scr_player_stab_check();
        break;
    } case states.ground_attack: {
        //scr_player_movement();
        scr_ground_attack_checks();
        //scr_player_stab_check();
        break; 
    } case states.start: {
        scr_player_air_movement();
        scr_player_start_behaviour();
        break; 
    } 
}

scr_end_burst();
// Check if there is a warp to use
scr_player_check_warp();
// Teleport Spear
//scr_player_teleport();

prev_grounded = grounded;
