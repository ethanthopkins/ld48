if (instance_exists(oText)) instance_destroy(oText);
draw_set_alpha(1);
global.justForShow = true;
global.playerPaused = false;
scDrawTheObject("This is YOUR fault.",0,global.slow,c_red,fKiller,1); 
audio_play_sound(snKnife,10,true);
audio_sound_gain(snKnife,1,1000);
instance_create_layer(0,0,layer,oRun);