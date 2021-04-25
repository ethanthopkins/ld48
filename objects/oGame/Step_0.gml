if (!global.firstDay) instance_destroy(global.pathBlocker);
if (global.underAttack)
{
	if (!set)
	{
		timeline_index = tlUnderAttack;
		timeline_position = 0;
		timeline_running = true;
		if !timeline_loop timeline_loop = true;
		set = true;
	}
}