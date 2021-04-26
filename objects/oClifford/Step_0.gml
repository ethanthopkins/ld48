UpdateSpriteIndexClifford()
if (!global.firstDay) && (!atLoc) mp_potential_step(1120,128,.6,false); if (x=1120) atLoc = true;
if (global.underAttack) 
{
	if (path_index == -1)
	{
		path_start(Path1,3,path_action_continue,true);	
	}
}
if (global.quickTheDoor)
{
	path_end();
	mp_potential_step(1088,160,1.5,false);	
}
if (global.theChase)
{
	if (!timeOut)
	{
		Speed = .95;
		//mp_potential_step(oLouis.x-16,oLouis.y+16,1.025,false);
		myPath = path_add();
		if mp_grid_path(global.grid, myPath, x, y, oLouis.x-16, oLouis.y-16,false)
		{
			path_start(myPath,Speed,path_action_stop,true);
		}
	} else path_end();
}
