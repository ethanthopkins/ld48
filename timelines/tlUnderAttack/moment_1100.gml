if (instance_exists(oText)) instance_destroy(oText);
scDrawTheObject("Quick! The Door!",0,global.fast,c_white,fKiller,2);
global.underAttack = false;
global.justForShow = false;
global.windowBroken = true;
global.quickTheDoor = true;