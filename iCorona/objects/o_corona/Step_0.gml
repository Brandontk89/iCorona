script_execute(states_array[state]);


Grid = mp_grid_create(0,0,room_width / 32, room_height / 11,11,11);
Path = path_add();

///Corona AI moves toward player
if (distance_to_object(o_johnamericanman) < 96) {
	move_towards_point(o_johnamericanman.x,o_johnamericanman.y,1)
	mp_grid_add_instances(Path,o_wall,true);
	mp_grid_path(Grid,Path,x,y,o_johnamericanman.x,o_johnamericanman.y,true);
	path_start(Path,1,0,true);
}

/// Vision for player to see corona
if collision_line(x,y,o_johnamericanman.x, o_johnamericanman.y,o_wall,1,0){
	visible = false;
}
else
{
	visible = true;
}




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