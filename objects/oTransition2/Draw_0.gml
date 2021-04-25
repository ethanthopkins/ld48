draw_set_color(Color);
if (in)
{
	global.playerPaused = true;
	if (val < Max) val += valSp;
	if (instance_exists(oText)) instance_destroy(oText);
	if (val >= Max) 
	{
		if (alarm[0] == -1) alarm_set(0,room_speed*2);
	}
} else
{
	val -= valSp;
	if (instance_exists(oText)) instance_destroy(oText);
	if (val<= Min) 
	{
		//in = true;
		if (destroy) 
		{
			val = 1; 
			global.playerPaused = false;
			instance_destroy();
		}
	}
}
draw_set_alpha(val);
draw_set_color(c_black);
draw_rectangle(0,0,global.windowWidth,global.windowHeight,false);
