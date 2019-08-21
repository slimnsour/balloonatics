var tile,iw,w_left,w_right,w_up,w_down,w_upleft,w_downleft,w_upright,w_downright;
obj_index   = object_get_name(object_index);
iw          = sprite_width;
w_left      = place_meeting(x-1,y,oSolid);
w_right     = place_meeting(x+1,y,oSolid);
w_up        = place_meeting(x,y-1,oSolid);
w_down      = place_meeting(x,y+1,oSolid);
w_upleft    = place_meeting(x-iw,y-iw,oSolid);
w_downleft  = place_meeting(x-iw,y+iw,oSolid);
w_upright   = place_meeting(x+iw,y-iw,oSolid);
w_downright = place_meeting(x+iw,y+iw,oSolid);

tile = 1;
if(w_up)
{
    tile = 0;
}
if(w_right and not(w_left) and w_up)
{
    tile = 2;
}

if (w_up) {
    if (w_down) {
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
                tile = 0;
            } else {
                tile = 2;
            }
        } else {
            tile = 1;
        }
    }
} else {
    if (w_down) {
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
}

return tile
