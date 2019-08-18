//Initialisation
x_scale = 1.0;
y_scale = 1.0;

hsp = 0;
vsp = 0;

//Camera
if(!instance_exists(oCamera))
{
    instance_create(0,0,oCamera);
}

gamepad_set_axis_deadzone(0, 0.1);

enum states {
    idle,
    run,
    jump,
    wall,
    burst,
    wallslide,
    hurt,
    ground_attack,
}

state = states.idle;
draw_angle = 0;
prev_direction = x_scale;
camera_direction = x_scale;
back_boundary_length = 64;
back_boundary = camera_direction - x_scale*back_boundary_length;

//Movement Variables

master_spd = 1.5;

grnd_acc = 0.3*master_spd;
grnd_max = 4*master_spd;
grnd_fric = 0.4*master_spd;

air_acc = 0.1*master_spd;
air_max = 3.5*master_spd;
air_fric = 0;

burst_acc = 0.15*master_spd;
burst_max = 4*master_spd;
burst_fric = 0;

curr_acc = grnd_acc;
curr_max = grnd_max;
curr_fric = grnd_fric;

jump_spd = -6.5;
jump_hold = false;

wall_spd = 1.5*master_spd;
wall_acc = 0.3*master_spd;
wall_fric = 0.2*master_spd;
wall_climb = true;
wallclimb_spd = -3.0;
wallslide_time = 25;

grounded = false;
on_wall = false;
have_spear = true;
have_jump = false;
prev_grounded = true;
ghost_grounded = false;

l_wall_id = false;
r_wall_id = false;
l_wall = false;
r_wall = false;
on_wall = false;
ghost_wall = false;
ghost_l_wall = false;
ghost_r_wall = false;
can_l_wall_jump = false;
can_r_wall_jump = false;
h_jump_away = jump_spd*0.8;
v_jump_away = jump_spd*0.7;
h_push_off = master_spd;

stab_hold = false;
burst_spd = abs(jump_spd)*1.75;
cut_hburst_spd = burst_spd/sqrt(2);
cut_vburst_spd = burst_spd/sqrt(2);
vburst_spd_max = burst_spd;
vbounce_spd_max = burst_spd*0.8;
hburst_spd_max = burst_spd;
max_burst_timer = 45;
burst_attack_id = 0;
burst_time_clock = 0;

stab_dmg = 10;

spear = 0;

balloon_max_gas = 80;
balloon_gas = balloon_max_gas;
balloon_draw_base = 0.25;

hurt = false;
hurt_clock_max = 10;
hurt_clock = 0;

hurt_spd = 0.6*abs(jump_spd);
hhurt_spd = hurt_spd*1.25;
vhurt_spd = hurt_spd*1;

invincibility_clock = 0;
max_invincibility_clock = 60;

wallslide_fx_image_speed = 0.15;
wallslide_fx_image_index = 0;

spark_timer_max = 3;
spark_timer = spark_timer_max;
