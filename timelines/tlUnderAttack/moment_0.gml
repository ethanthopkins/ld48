scScreenShake(5,room_speed*3);	
if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("AHHGG!!!",0,global.fast,c_white,fKiller,3); 
audio_play_sound(snCrash,5,false);
