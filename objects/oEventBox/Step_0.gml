if (place_meeting(x,y,oLouis))
{
	if (underAttack)
	{
		if (!oShelf.full)
		{
			global.underAttack = true;
			global.justForShow = true;
			oGame.takingSoLong2 = false;
			instance_destroy();
		}
	}
	if (knife)
	{
		if (global.knife)
		{
			(instance_create_layer(0,0,layer,oRedTransition))
			if (!set)
			{
			global.justForShow = true;
			timeline_index = tlBloodInWater;
			timeline_position = 0;
			timeline_running = true;	
			set = true;
			}
			audio_play_sound(snKnife,5,true);
			oLouis.walkSpeed = .75
			instance_destroy();
		}
	}
}else return;