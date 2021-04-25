scScreenShake(5,room_speed*irandom_range(2,3));	
if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("WE'RE UNDER ATTACK!!!",0,global.fast,c_white,fKiller,2); 
audio_play_sound(snCrash,5,false);
