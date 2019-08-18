//scr_player_teleport()

var tele = mouse_check_button(mb_left) and !have_spear;
if (tele) {
    have_spear = true;
    x = spear.x;
    y = spear.y;
    hsp = spear.hsp*0.6;
    vsp = spear.vsp*0.6;
    var collide = instance_place(x,y,oSolid);
    with(spear)
    {
        nearest = instance_nearest(x,y,oSolid);
        x_dist = nearest.x-x;
        y_dist = nearest.y-y;
    }
    if (collide != noone && collide.type == 1)
    {
        if (abs(spear.x_dist) > abs(spear.y_dist)) 
        {
            // Push outside of wall
            var xer_dist = collide.x-x;
            if (collide.type == 1)
            {
                while(place_meeting(x,y,oSolid)){ x -= sign(xer_dist)};
            }
        }
        else 
        {
            var yer_dist = collide.y-y;
            if (collide.type == 1)
            {
                while(place_meeting(x,y,oSolid)){ y -= sign(yer_dist)};
            }
        }
    }
    with(spear) {
        instance_destroy();
    }
}
