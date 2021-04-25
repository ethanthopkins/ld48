#macro CARDINAL_DIR round(direction/90)
#macro FRAME_RATE 60
#region Game Impacting
	global.firstDay = true;
	global.pathBlocker = undefined;
	global.underAttack = false;
	global.quickTheDoor = false;
	global.weLockedIn = false;
	global.justForShow = false;
	global.tape = false
	global.windowBroken = false;
	global.rations = false;
	global.rationsFound = false;
	global.iHaveKnife = false;
	currentRations = 0;
#endregion
global.iCamera = instance_create_layer(0,0,layer,oCamera);
set = false;
set1 = false;
set2 = false;
set3 = false;
global.windowWidth = window_get_width();
global.windowHeight = window_get_height();
global.playerPaused = false;
inst = 0;
whatText = undefined;
theActualText = undefined;
global.oldLine = 0;
room = rRoom1;
//text speeds
global.slow = .15;
global.medium = .25;
global.fast = .5;
global.knife = false;
global.gameOver = false;
global.waterGaugePercent =0;