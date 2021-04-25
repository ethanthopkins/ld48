#region Game Impacting
	global.firstDay = true;
	global.pathBlocker = undefined;
	global.underAttack = false;
	global.justForShow = false;
#endregion
global.iCamera = instance_create_layer(0,0,layer,oCamera);
set = false;
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
with layer
global.knife = false;