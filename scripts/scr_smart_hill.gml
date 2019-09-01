var tile,iw,w_left,w_right,w_up,w_down,w_upleft,w_downleft,w_upright,w_downright;
obj_index   = argument0;
iw          = argument1;
w_left      = place_meeting(x-1,y,obj_index);
w_right     = place_meeting(x+1,y,obj_index);
w_up        = place_meeting(x,y-1,obj_index);
w_down      = place_meeting(x,y+1,obj_index);
w_upleft    = place_meeting(x-iw,y-iw,obj_index);
w_downleft  = place_meeting(x-iw,y+iw,obj_index);
w_upright   = place_meeting(x+iw,y-iw,obj_index);
w_downright = place_meeting(x+iw,y+iw,obj_index);

tile = 4;
// 5 3 4
// 2 0 1
if (w_up) {
    if (w_right) {
        if(w_left) {
            tile = 0;
        } else {
            tile = 2;
        }
    } else {
        tile = 1;
    }
} else {
    if (w_right) {
        if(w_left) {
            tile = 3;
        } else {
            tile = 5;
        }
    } else {
        tile = 4;
    }
}
return tile
