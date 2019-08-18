// Walls
l_wall_id = instance_place(x-1, y, oSolid);
r_wall_id = instance_place(x+1, y, oSolid);

can_l_wall_jump = l_wall_id != noone && l_wall_id.wall_jump;
can_r_wall_jump = r_wall_id != noone && r_wall_id.wall_jump;

if (!l_wall) {
    l_wall = can_l_wall_jump && input_left;
} else if (l_wall and (!l_wall_id or grounded)) {
    l_wall = false;
}
if (!r_wall) {
    r_wall = can_r_wall_jump && input_right;
} else if (r_wall and (!r_wall_id or grounded)) {
    r_wall = false;
}

on_wall = (l_wall or r_wall);
ghost_wall = on_wall or alarm[3] > 0;

if (on_wall and state != states.wallslide) { 
    state = states.wall;
}
//show_debug_message(ghost_wall);
