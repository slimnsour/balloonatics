// Keep calculating back boundary if moving in a direction
if (camera_direction == x_scale) {
    back_boundary = oChar.x - x_scale*back_boundary_length;
}

// If moved enough in opposite direction, change camera
if (camera_direction == 1 && oChar.x <= back_boundary) {
    camera_direction = -camera_direction;
    back_boundary = oChar.x - x_scale*back_boundary_length;
} else if (camera_direction == -1 && oChar.x >= back_boundary) {
    camera_direction = -camera_direction;
    back_boundary = oChar.x - x_scale*back_boundary_length;
}

