UpdateSpriteIndexRonald()
if (!global.firstDay) && (!atLoc)
{
	mp_potential_step(1184,192,.5,false);
	if (x == 1184) && (y == 192) atLoc = true;
}
if (global.underAttack) 
{
	if (path_index == -1)
	{
		path_start(Path2,3,path_action_continue,true);	
	}
}
if (global.quickTheDoor)
	{
		path_end();
		mp_potential_step(1152,160,2,false);	
	}
