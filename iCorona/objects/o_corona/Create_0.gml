enum states {
	idle,
	wander,
	alert,
	attack,
}

state = states.idle;

states_array[states.idle]	= corona_state_idle;
states_array[states.wander] = corona_state_wander;
states_array[states.alert]	= corona_state_alert;
states_array[states.attack] = corona_state_attack;

///

counter = 0;
spd = .5

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);

my_slash = noone;

image_speed = 0.2
SightRangeX = 32;
PointX = 0;