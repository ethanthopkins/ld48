if (place_meeting(x,y,oLouis))
{
	if (global.knife)
	{
		with (oRedTransition) val = 1;
		instance_destroy(oRedTransition)
		draw_set_alpha(1);
		audio_sound_gain(snKnife,0,room_speed*2);
		if (alarm[0] == -1) alarm[0] = room_speed*2;
		oLouis.walkSpeed = 1.5;
		instance_destroy();
		with (instance_create_layer(0,0,"lightrender",oTransition2))
		{
			destroy = true;	
		}
	}
}