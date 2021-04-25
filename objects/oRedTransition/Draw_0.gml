draw_set_color(Color);
if (in)
{
	if (val < Max) val += valSp;
	if (instance_exists(oText)) instance_destroy(oText);
	if (val >= Max) 
	{
		in = false;
	}
} else
{
	val -= valSp;
	if (instance_exists(oText)) instance_destroy(oText);
	if (val<= Min) 
	{
		in = true;
	}
}
draw_set_alpha(val);
draw_rectangle(0,0,global.windowWidth,global.windowHeight,false);
