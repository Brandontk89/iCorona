Grid = mp_grid_create(0,0,room_width / 32, room_height / 32,32,32);
Path = path_add();

if (distance_to_object(o_johnamericanman) < 90) {
	move_towards_point(o_johnamericanman.x,o_johnamericanman.y,5)
	mp_grid_add_instances(Path,o_wall,true);
	mp_grid_path(Grid,Path,x,y,o_johnamericanman.x,o_johnamericanman.y,true);
	//path_start(Path,1,true)
}