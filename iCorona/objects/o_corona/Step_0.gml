script_execute(states_array[state]);

//		///Corona AI moves toward player
//if (distance_to_object(o_johnamericanman) < 96) {
//	move_towards_point(o_johnamericanman.x,o_johnamericanman.y,1)
//	mp_grid_add_instances(Path,o_wall,true);
//	mp_grid_path(Grid,Path,x,y,o_johnamericanman.x,o_johnamericanman.y,true);
//	path_start(Path,1,0,true);
//}

//Grid = mp_grid_create(0,0,room_width / 32, room_height / 32,32,32);
//Path = path_add();

/// Vision for player to see corona
if collision_line(x,y,o_johnamericanman.x, o_johnamericanman.y,o_wall,1,0){
	visible = false;
}
else
{
	visible = true;
}


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


//if(state == states.idle){
//	#region Idle
//	corona_state_idle();
//	#endregion
//}

//else if(state == states.wander){
//	#region Wander
//	corona_state_wander();
//	#endregion
//}
//else if(state == state.alert){
//	#region Alert
//	corona_state_alert();
//	#endregion
//}

//else if(state ==states.attack){
//	#region Attack
//	corona_state_attack();
//	#endregion
//}