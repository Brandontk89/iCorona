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
hspd = 0
vspd = 0


///wall block
if(place_meeting(x+hspd,y,o_wall)){
	while(!place_meeting(x,y+sign(hspd),o_wall))
	{
		x = x+sign(hspd);	
	}
	hspd = 0;
}
x = x+hspd;

if(place_meeting(x,y+vspd,o_wall)){
	while(!place_meeting(x,y+sign(vspd),o_wall))
	{
		y = y+sign(vspd);	
	}
	vspd = 0;
}
y = y+vspd;
