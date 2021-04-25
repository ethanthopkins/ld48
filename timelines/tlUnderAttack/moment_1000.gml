scScreenShake(5,room_speed*irandom_range(1,2));	
if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("THERE'S TOO MANY!!!",0,global.fast,c_white,fKiller,2); 
