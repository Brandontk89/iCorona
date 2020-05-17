//Behaviour
	my_dir = point_direction(x,y,o_johnamericanman.x,o_johnamericanman.y)
	moveX = lengthdir_x(spd, my_dir);
	moveY = lengthdir_y(spd, my_dir);
	x += moveX;
	y += moveY;
	
	//Transition Triggers
	if(!collision_circle(x,y,64,o_johnamericanman,false,false)){
		state = states.idle;
	}
	if(collision_circle(x,y,32,o_johnamericanman,false,false)){
		state = states.attack;
	}
	
	//Sprite
	sprite_index = s_coronachan
	image_xscale = sign(moveX);