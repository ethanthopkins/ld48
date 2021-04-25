scScreenShake(10,room_speed*irandom_range(3,4));	
if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("WE'RE GOING DOWN!!!",0,global.fast,c_white,fKiller,2);