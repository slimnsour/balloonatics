// Stab

/*
if (input_attack) {
    scr_create_stab_hitbox();
    // Set alarm to length of quick stab animation
    alarm[4] = sprite_get_number(spr_char_gattack);
    state = states.ground_attack;
    image_index = 0;
    stab_hold = true;
}

if (!input_attack_held && stab_hold) {
    stab_hold = false;
}
*/

scr_burst_check();
