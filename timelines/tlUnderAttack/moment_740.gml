global.justForShow = true;
instance_create_layer(oClifford.x,oClifford.y-10,"Characters",oExclamation);
if (instance_exists(oClifford)) show_debug_message("i exists");
if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("The Door Caved In And The Window's Leaking!",0,global.fast,c_white,fKiller,2);
global.underAttack = false;
global.windowBroken = true;
global.quickTheDoor = true;
