/// scr_player_collision()

// Moving Horizontally
hcollide = scr_player_check_collision(x+hsp, y);
if (hcollide) {
    //if (hcollide.object_index == oSolid and hcollide.type == 1)
    //{
        while(!place_meeting(x+sign(hsp),y,oSolid)){ x += sign(hsp)}
        hsp = 0;
    //}
}


// Moving Vertically
vcollide = scr_player_check_collision(x, y+vsp);
if (vcollide) 
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

