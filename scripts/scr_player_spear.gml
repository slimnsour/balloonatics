// Spear
var fire = mouse_check_button(mb_right) and have_spear;
if (fire) {
    have_spear = false;
    spear_dir = point_direction(x,y,mouse_x,mouse_y);
    spear = instance_create(x+lengthdir_x(5, spear_dir),y+lengthdir_y(5, spear_dir),oSpear);
    spear.dir = spear_dir;
}
