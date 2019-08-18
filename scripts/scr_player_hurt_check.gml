enemy_collision_id = instance_place(x,y,oEnemy);
if (enemy_collision_id != noone && !invincible) {
    if (enemy_collision_id.dangerous) {
        hurt = true;
        hurt_vector = sign(id.x - enemy_collision_id.x);
        if (hurt_vector == 0) {
            hurt_vector = 1;
        }
    }
}

if (hurt) {
    state = states.hurt;
    invincibility_clock = max_invincibility_clock;
    scr_player_hurt();
    hurt_clock = hurt_clock_max;
}
