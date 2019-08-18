//Check for dmg
/*
if (hit_buffer <= 0) {
    var dmgcollide = instance_place(x,y,oCharHitbox);
    if (dmgcollide != noone) {
        hp -= oChar.stab_dmg;
        hit_buffer = max_hit_buffer;
    }
}
*/

// Die
if (hp <= 0) {
    instance_destroy();
}

if (hit_buffer > 0) {
    hit_buffer -= 1;
}
