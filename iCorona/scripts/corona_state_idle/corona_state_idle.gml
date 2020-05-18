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
	sprite_index = s_coronachan;
	
