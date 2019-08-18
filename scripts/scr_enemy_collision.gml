/// scr_player_collision()

// Moving Horizontally
var hcollide = instance_place(x+hsp,y,oSolid);
if (hcollide != noone) {
    //if (hcollide.type == 1)
    //{
        while(!place_meeting(x+sign(hsp),y,oSolid)){ x += sign(hsp)}
        hsp = 0;
    //}
}

x += hsp;

// Moving Vertically

if (!grounded) {
vcollide = instance_place(x,y+vsp,oSolid);
if (vcollide != noone) 
{
    // Normal Block

    while(!place_meeting(x,y+sign(vsp),oSolid)){ y += sign(vsp) };
    
    if(place_meeting(x,y+1,oSolid))
    {
        grounded = true;
    }
    vsp = 0;
    
    //if(vsp > 10) // shake when landing
    //{
        // would rather have this for attacks and sticking
        
        //scr_shake_screen(15,vsp/2.5);
    //}
}
y += vsp;
}
