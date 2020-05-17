if(state == states.idle){
	#region Idle
	//Behaviour
	counter += 1;
	
	//Transition Triggers
	if(counter >= room_speed * 3){
		var change =choose(0,1);
		switch(change){
			case 0: state = states.wander;
			case 1: counter = 0; break;
		}
	}
	if(collision_circle(x,y,64,o_johnamericanman,false,false)){
		state = states.alert;
	}
	
	//Sprite
	sprite_index = s_coronachan
	#endregion
}

else if(state == states.wander){
	#region Wander
	//Behaviour
	counter += 1;
	x += moveX;
	y += moveY;

	//Transition Triggers
	if(counter >= room_speed * 3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.idle;
			case 1:	
				my_dir = irandom_range(0,359);
				moveX = lengthdir_x(spd, my_dir);
				moveY = lengthdir_y(spd, my_dir);
				counter = 0;
		}
	}
	if(collision_circle(x,y,64,o_johnamericanman,false,false)){
		state = states.alert;
	}
	
	//Sprite
	sprite_index = s_coronachan
	image_xscale = sign(moveX);
	#endregion
}
else if(state == state.alert){
	#region Alert
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
	#endregion
}

else if(state ==states.attack){
	#region Attack
	if(my_slash == noone){
		my_slash = instance_create_layer(
			x + image_xscale*16,y,"Instances", o_corona
		);
		my_slash.creator = id;
		my_slash.image_xscale = image_xscale;
		image_index = 0;
	}
	
	//Transition Triggers
	if(image_index > image_number-1){ state = states.alert; }
	
	//Sprite
	sprite_index = s_coronachan
	#endregion
}


Grid = mp_grid_create(0,0,room_width / 32, room_height / 32,32,32);
Path = path_add();

///Corona AI moves toward player
if (distance_to_object(o_johnamericanman) < 96) {
	move_towards_point(o_johnamericanman.x,o_johnamericanman.y,2)
	mp_grid_add_instances(Path,o_wall,true);
	mp_grid_path(Grid,Path,x,y,o_johnamericanman.x,o_johnamericanman.y,true);
	path_start(Path,1,0,true);
}

/// Vision of player
if collision_line(x,y,o_johnamericanman.x, o_johnamericanman.y,o_wall,1,0){
	visible = false;
}
else
{
	visible = true;
}

var _hit = collision_line(x,y,x+SightRangeX,y,o_johnamericanman,false,true)
if (_hit){
	show_debug_message("hello")
}