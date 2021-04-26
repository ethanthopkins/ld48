draw_set_font(fKiller);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_red);
if (drawn)
{
	val -= valSp;
	draw_text_color(global.windowWidth*.5,global.windowHeight*.5,"Fight Back",c_red,c_red,c_red,c_red,val);
	if (val < .01) 
	{
		drawn = false;
		instance_destroy();
	}
}