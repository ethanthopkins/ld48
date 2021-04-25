image_index = 0;
if (x > xprevious) Dir = 0; else Dir = 180;
if (y > yprevious) Dir = 90; else Dir = 270;
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
