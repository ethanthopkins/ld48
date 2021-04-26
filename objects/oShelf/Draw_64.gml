draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fDefault);
if (!full)
{
	if (drawn)
	{
		val -= .005
		draw_text_color(global.windowWidth*.5,global.windowHeight*.8,"Supplies Obtained.",c_white,c_white,c_white,c_white,val);
		if (val < .01) drawn = false;
	}
}