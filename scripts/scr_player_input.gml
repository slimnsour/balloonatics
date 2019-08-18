key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);
key_jump_release = keyboard_check_released(vk_space);
key_gas = keyboard_check(vk_space);
key_attack = keyboard_check_pressed(ord('Z'));
key_attack_held = keyboard_check(ord('Z'));

gp_left = gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0,gp_axislh) < 0);
gp_right = gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0,gp_axislh) > 0);
gp_down = gamepad_button_check(0, gp_padd) || (gamepad_axis_value(0,gp_axislv) > 0.75);
gp_up = gamepad_button_check(0, gp_padu) || (gamepad_axis_value(0,gp_axislv) < -0.75);

gp_jump = gamepad_button_check_pressed(0, gp_face1);
gp_jump_held = gamepad_button_check(0, gp_face1);
gp_jump_release = gamepad_button_check_released(0, gp_face1);
gp_gas = gamepad_button_check(0, gp_face1);
gp_attack = gamepad_button_check_pressed(0, gp_face3);
gp_attack_held = gamepad_button_check(0, gp_face3);

input_left = key_left || gp_left;
input_right = key_right || gp_right;
input_down = key_down || gp_down;
input_up = key_up || gp_up;

input_jump = key_jump || gp_jump;
input_jump_held = key_jump_held || gp_jump_held;
input_jump_release = key_jump_release || gp_jump_release;
input_gas = key_gas || gp_gas;
input_attack = key_attack || gp_attack;
input_attack_held = key_attack_held || gp_attack_held;
