// Checks player collision, taking into account types of blocks
// argument0 and 1 are future x and y positions
var collide = instance_place(argument0,argument1,oSolid);
blocked = true;
if (collide != noone) {
    if (collide.type == 3) {
        blocked = false;
    } else if (collide.type == 2) {
        if (self.bbox_bottom+1 > collide.bbox_top) {
            blocked = false;
        }
    }
}

return (collide != noone && blocked)
