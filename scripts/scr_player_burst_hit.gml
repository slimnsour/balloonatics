var enemyBurstCollide = instance_place(oChar.burst_attack_id.x,oChar.burst_attack_id.y,oEnemy);
if (enemyBurstCollide != noone and enemyBurstCollide.hit_buffer <= 0) {
    // On enemy's side
    enemyBurstCollide.hp -= oChar.stab_dmg;
    enemyBurstCollide.hit_buffer = enemyBurstCollide.max_hit_buffer;
    
    // On char's side
    scr_burst_bounce();
    state = states.jump;
    balloon_gas = balloon_max_gas;
}
