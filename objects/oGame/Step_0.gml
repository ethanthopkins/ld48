if (!audio_is_playing(snFight)) {(audio_play_sound(snRadiator,1,true));}
if (global.waterGaugePercent == 1) 
{
	global.gameOver = true;
	global.playerPaused = true;
}
if (!global.firstDay) instance_destroy(global.pathBlocker);
if (takingSoLong) 
{
	timeline_index = tlTakingSoLong;
	timeline_position = 0;
	timeline_running = true;
	takingSoLong = false;
	takingSoLong2 = true;
}
if (global.underAttack)
{
	if (!set)
	{
		if (!audio_is_playing(snFight)) 
		{
			if (audio_is_playing(snRadiator)) 
			{
				(audio_stop_sound(snRadiator));
				(audio_play_sound(snFight,1,true));
			}
		}
		timeline_index = tlTakingSoLong;
		timeline_running = false;
		timeline_index = tlUnderAttack;
		timeline_position = 0;
		timeline_running = true;
	//	if !timeline_loop timeline_loop = true;
		set = true;
		instance_create_layer(0,0,layer,oWaterMeter);
		instance_create_layer(1024,96,"Col",oWindowPatch);
	}
}

if (global.windowBroken) 
{
	global.waterSpeed = .005;
}
if (global.rations)
{
	if (!set2)
	{
		instance_create_layer(576,416,layer,oRation);
		instance_create_layer(128,512,layer,oRation);
		instance_create_layer(128,192,layer,oRation);
		instance_create_layer(608,288,layer,oRation);
		instance_create_layer(704,576,layer,oRation);
		set2 = true;
	}
	if (currentRations == 5)
	{
		global.rations = false;
		global.rationsFound = true;
		audio_play_sound(snFoundAll,10,false);
	}
}
if (room == rRoom3)
{
	if (!set4)
	{
		if (audio_is_playing(snRadiator)) audio_stop_sound(snRadiator);
		timeline_index = tlYourFault;
		timeline_position = 0;
		timeline_running = true;
		set4 = true;	
	}
}
if (room == rRoom2)
{
	if (!set3)
	{
		global.justForShow = true;
		timeline_index = tlCampfireTalk;
		timeline_position = 0;
		timeline_running = true;	
		set3 = true;
	}
}
if (room == rIntro)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		room = rRoom1;	
	}
}
if (global.theEnd)
{
	if (!set5)
	{
		if (audio_is_playing(snKnife)) audio_stop_sound(snKnife);
		room = rEnd;
		set5 = true;
	}
}
//if (instance_exists(oText)) show_message("text exists");