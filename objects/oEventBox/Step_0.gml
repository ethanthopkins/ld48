if (place_meeting(x,y,oLouis))
{
	if (underAttack)
	{
		global.underAttack = true;
		global.justForShow = true;
		instance_destroy();
	}
	if (knife)
	{
		if (global.knife)
		{
			(instance_create_layer(0,0,layer,oRedTransition))
			audio_play_sound(snKnife,5,true);
			oLouis.walkSpeed = .75
			instance_destroy();
			global.iHaveKnife = true;
		}
	}
}else return;