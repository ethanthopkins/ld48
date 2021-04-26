scScreenShake(1,room_speed*120);	
if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("Face it. Rescue isn't coming. They left us.",0,global.medium,c_red,fKiller,3); 
global.justForShow = true;
global.playerPaused = true;