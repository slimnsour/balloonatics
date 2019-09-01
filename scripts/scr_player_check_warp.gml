// Checks player collision, taking into account types of blocks
// argument0 and 1 are future x and y positions
var collide = instance_place(x,y,oWarp);
if (collide != noone) {
    room_goto(collide.target_room);
    // If actual teleportation is used, uncomment these, delete player objects in map
    // and set character as persistent
    //x = collide.target_x;
    //y = collide.target_y;
}
