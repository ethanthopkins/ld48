// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scSaySomething(instance)
{
	var _line = scGetTheCharacter(instance); oGame.whatText = oGame.whatText;
		//show_debug_message(_line);
	scGetTheText(_line); oGame.theActualText = oGame.theActualText;
		//show_debug_message(_result);
}
function scGetTheCharacter(instance)
{
	if (instance_exists(oRonald)) var _oRonald = oRonald.id; else _oRonald = undefined;
	if (instance_exists(oClifford)) var _oClifford = oClifford.id; else _oClifford = undefined;
	if (instance_exists(oKnife)) var _oKnife = oKnife.id; else _oKnife = undefined;
	switch (instance)
	{
		case noone: return; 
		case _oKnife: return(1); break;
		case _oClifford: 
			if (global.firstDay) return(8); else return(0);
			break;
		case _oRonald: 
			if (global.firstDay) return(8); else return(0); 
			break;
		default: return;
	}
}
function scGetTheText(_line)
{
	switch (_line)
	{
		case 0: global.playerPaused = false; break;
		case 1: scDrawTheObject("A blade you used in training...",2,global.medium,c_white,fDefault,.5); break;
		case 2: scDrawTheObject(" It's as sharp as you remember...",3,global.slow,c_red,fKiller,1); break;
		case 3: 
			scDrawTheObject("Will you take it?",0,global.medium,c_red,fDefault,0,5,"Yes",0,"No"); 
			break;
		case 4: scDrawTheObject("well I don't......",0,global.slow,c_red,fKiller,1); break;
		case 5: 
			scDrawTheObject("You take the blade",0,global.slow,c_red,fKiller,1); 
			global.knife = true;
			with (oKnife) instance_destroy();
			break;
		case 6: scDrawTheObject("WHAT HAPPENED?!",7,global.fast,c_white,fClifford,1); break;
		case 7: scDrawTheObject("Are we under ATTACK?!",0,global.fast,c_white,fClifford,1); break;
		case 8: scDrawTheObject("Sailor Louis, state your business.",9,global.medium,c_white,fClifford,.1); break;
		case 9: scDrawTheObject("Captain sent you for supplies??",10,global.medium,c_white,fClifford,.1); break;
		case 10: scDrawTheObject("You may enter the cabin.",11,global.medium,c_white,fClifford,.1); break;
		case 11: scDrawTheObject("Supplies are to the end left.",12,global.medium,c_white,fClifford,.1); break;
		case 12: global.firstDay = false; global.playerPaused = false; break;
		default: return;
	}
}
function scDrawTheObject(txt,nxtLine,Speed, Color, Font,shakeInt,response1Case,response1,response2case,response2)
{
	with (instance_create_layer(0,0,layer,oText))
	{
		myString = txt;	
		nextLine = nxtLine;
		textSpeed = Speed;
		textColor = Color;
		font = Font;
		intensity = shakeInt;
		if (!is_undefined(response1Case)) rsp1Case = response1Case;
		if (!is_undefined(response1)) rsp1Text = response1;
		if (!is_undefined(response2case)) rsp2Case = response2case;
		if (!is_undefined(response2)) rsp2Text = response2;
	}
}		