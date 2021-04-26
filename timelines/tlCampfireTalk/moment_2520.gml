if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("They will.",0,global.medium,c_white,fRonald,.1);
global.rations = true;
global.playerPaused = false;
global.justForShow = false;
instance_create_layer(0,0,"Col",oExclamation);