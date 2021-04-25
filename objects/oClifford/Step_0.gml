image_index = 0;
if (!global.firstDay) && (!atLoc) mp_potential_step(1120,128,.6,false); if (x=1120) atLoc = true;
if (global.underAttack) 
{
	if (path_index == -1)
	{
		path_start(Path1,3,path_action_continue,true);	
	}
}
if (quickTheDoor)
	{
		path_end();
		mp_potential_step(1088,160,1.5,false);	
	}
Col.x = x;
Col.y = y;