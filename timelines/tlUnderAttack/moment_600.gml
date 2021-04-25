scScreenShake(5,room_speed*irandom_range(1,2));	
if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("THERE'S TOO MANY!!!",0,global.fast,c_white,fKiller,2); 
instance_create_layer(1152,96,"Col",oCol);
instance_create_layer(1184,96,"Col",oCol);

instance_create_layer(1152,32,"Instances",oWall);
instance_create_layer(1184,32,"Instances",oWall);
instance_create_layer(1152,64,"Instances",oWall);
instance_create_layer(1184,64,"Instances",oWall);
instance_create_layer(1152,96,"Instances",oWall);
instance_create_layer(1184,96,"Instances",oWall);