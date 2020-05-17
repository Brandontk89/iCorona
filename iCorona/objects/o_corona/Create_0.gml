
enum states {
	idle,
	wander,
	alert,
	attack
}

state = states.idle;

///

counter = 0;
spd = .5

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);

my_slash = noone;

image_speed = 0.5
SightRangeX = 32;
PointX = 0;