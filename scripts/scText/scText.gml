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
	if (instance_exists(oTape)) var _oTape = oTape.id; else _oTape = undefined;
	if (instance_exists(oWindowPatch)) var _oWindowPatch = oWindowPatch.id; else _oWindowPatch = undefined;
	if ((instance.object_index) == oWindow) var _oWindow = instance.id; else _oWindow = undefined;	
	if ((instance.object_index) == oBarrel) var _oBarrel = instance.id; else _oBarrel = undefined;	
	if (instance_exists(oWater)) 
	{
		if ((instance.object_index) == oWater) var _oWater = instance.id; else _oWater = undefined;
	} else _oWater = undefined;
	//show_message("inst: " + string(instance) + " = object: " + string(object_get_name(instance.object_index)));
	switch (instance)
	{
		case noone: return; 
		case _oKnife: return(1); break;
		case _oClifford: 
			if (global.firstDay) return(8); 
			if (oGame.takingSoLong2) return(59);
			if (global.underAttack) return;
			if (global.quickTheDoor) return(13);
			if (global.weLockedIn) return(15);
			if (global.rations) return(35);
			if (global.rationsFound) return(37);
			break;
		case _oRonald: 
			if (global.firstDay) return(8); 
			if (oGame.takingSoLong2) return(59);
			if (global.underAttack) return;
			if (global.quickTheDoor) return(17);
			if (global.weLockedIn) return(19);
			if (global.rations) return(33);
			if (global.rationsFound) return(37);
			break;
		case _oTape: return(23);
		case _oWindowPatch: 
			if (global.tape) return(44) else
			{
				if (global.windowBroken) return(27); else return(53);	
			}
		case _oWater:
			if (room == rRoom1) return;
			if (room == rRoom2) return(42);
		case _oWindow:
			if (room == rRoom1) && (!global.windowBroken) return(46);
			if (room == rRoom1) && (global.windowBroken) && (!global.tape) return(57); else return;
			if (room == rRoom2) return(30);
		case _oBarrel:
			if (room == rRoom1) && (!global.windowBroken) return(choose(48,55));
			if (room == rRoom1) && (global.windowBroken) return(50);
			if (room == rRoom2) return(52);
		default: return;
	}
}
function scGetTheText(_line)
{
	switch (_line)
	{
		case 0: global.playerPaused = false; break;
		case 1: 
			scDrawTheObject("A blade you used in training...",2,global.medium,c_white,fDefault,.5);
			oClifford.timeOut = true;
			break;
		case 2: scDrawTheObject(" It's as sharp as you remember...",3,global.slow,c_red,fKiller,1); break;
		case 3: 
			scDrawTheObject("Will you take it?",0,global.medium,c_red,fDefault,0,5,"Yes",61,"No"); 
			break;
		case 4: scDrawTheObject("well I don't......",0,global.slow,c_red,fKiller,1); break;
		case 5: 
			scDrawTheObject("You take the blade",61,global.slow,c_red,fKiller,1); 
			global.knife = true;
			with (oKnife) instance_destroy();
			break;
		case 6: scDrawTheObject("WHAT HAPPENED?!",7,global.fast,c_white,fClifford,1); break;
		case 7: scDrawTheObject("Are we under ATTACK?!",0,global.fast,c_white,fClifford,1); break;
		case 8: scDrawTheObject("Sailor Louis, state your business Why are you down here?",9,global.medium,c_white,fClifford,.1); break;
		case 9: scDrawTheObject("Captain sent you for supplies? Why would he do that?",10,global.medium,c_white,fClifford,.1); break;
		case 10: scDrawTheObject("You may enter the cabin. Just make it quick please.",11,global.medium,c_white,fClifford,.1); break;
		case 11: 
			scDrawTheObject("Supplies are to the left on the end. Don't dally.",12,global.medium,c_white,fClifford,.1); 
			oGame.takingSoLong = true;
			break;
		case 12: global.firstDay = false; global.playerPaused = false; break;
		case 13: 
			scDrawTheObject("We--We're locked in.......",15,global.medium,c_blue,fClifford,.1); 
			if (instance_exists(oExclamation)) instance_destroy(oExclamation);
			break;
		case 14: 
			scDrawTheObject("........................",0,global.medium,c_white,fClifford,1); 
			global.quickTheDoor = false;
			global.weLockedIn = true; 
			break;
		case 15: 
			scDrawTheObject("That window is leaking!",16,global.medium,c_blue,fClifford,.1); 
			instance_create_layer(0,0,"exclamation",oExclamationWater);
			break;
		case 16: scDrawTheObject("We need to find something to patch it!",22,global.medium,c_blue,fClifford,.1); break;
		case 17: scDrawTheObject("The door just..closed in..",19,global.medium,c_blue,fRonald,.5); break;
		case 18: 
			scDrawTheObject("He might know where something is to patch it.",0,global.medium,c_blue,fRonald,1); 
			global.quickTheDoor = false;
			global.weLockedIn = true; 
			break;
		case 19: scDrawTheObject("Tape could patch the window up.",20,global.medium,c_white,fRonald,.1); break;
		case 20: scDrawTheObject("I--I think there's some in the bottom right of the ship",21,global.medium,c_white,fRonald,.1); break;
		case 21: scDrawTheObject("Please hurry!",0,global.medium,c_white,fRonald,.1); break;
		case 22: scDrawTheObject("Louis, check with Ronald.",18,global.medium,c_blue,fClifford,.1); break;
		case 23: scDrawTheObject("A Large Spool of Tape.",24,global.medium,c_white,fDefault,.1); break;
		case 24: scDrawTheObject("Take? (it's offbrand)",0,global.medium,c_white,fDefault,0,25,"Yes :)",0,"No :("); break;
		case 25: 
			scDrawTheObject("You take the tape...even though it's offbrand",0,global.medium,c_white,fDefault,0); 
			global.tape = true;
			with (oTape) instance_destroy();
			break;
		case 26: scDrawTheObject("..  ..  .... hmm ..",21,global.medium,c_white,fRonald,.1); break;
		case 27: scDrawTheObject("You watch the water rush in.",28,global.medium,c_blue,fDefault,.1); break;
		case 28: scDrawTheObject("It carelessly fills the cabin",0,global.medium,c_blue,fDefault,.3); break;
		case 29: 
			scDrawTheObject("The tape patches the window for now",32,global.medium,c_blue,fDefault,.3); 
			global.tape = false;
			global.windowBroken = false;
			global.waterSpeed = global.normal;
			global.weLockedIn = false;
			break;
		case 30: scDrawTheObject("You peer out the bulletproof glass",31,global.medium,c_white,fDefault,.1); break;
		case 31: scDrawTheObject("You see the ocean rise and you sink.",0,global.medium,c_white,fDefault,.1); break;
		default: return;
		case 32: 
			with (instance_create_layer(0,0,"lightrender",oTransition)) destroy = true; 
			if (audio_is_playing(snFight))
			{
				audio_stop_sound(snFight);	
			}
		case 33: scDrawTheObject("I don't know about you Louis but",34,global.medium,c_white,fRonald,.1); break;
		case 34: scDrawTheObject("I'm hungry, where are the rations?",0,global.medium,c_white,fRonald,.1); break;
		case 35: scDrawTheObject("So hungry...",36,global.slow,c_white,fClifford,2); break;
		case 36: 
			scDrawTheObject("Will you please find the 5 rations?",0,global.medium,c_white,fClifford,.5); 
			if (instance_exists(oExclamation)) instance_destroy(oExclamation);
			break;
		case 37: 
			scDrawTheObject("The rations! You found them!",38,global.fast,c_white,fClifford,.5) 
			instance_create_layer(384,576,"Instances",oKnife);
			break;
		case 38: scDrawTheObject("Thank you. There's not very many though...",39,global.medium,c_white,fClifford,.5) break;
		case 39: scDrawTheObject("Let's bide our time until rescue comes...",40,global.medium,c_white,fClifford,.5) break;
		case 40: scDrawTheObject("Rescue isn't coming you IDIOT! They're all gone.",41,global.fast,c_blue,fRonald,1) break;
		case 41: scDrawTheObject("Don't listen to him.",60,global.fast,c_white,fClifford,.5) break;
		case 42: scDrawTheObject("The water mindlessly but intently continues to consume your ship",43,global.medium,c_blue,fDefault,.05) break;
		case 43: scDrawTheObject("You get a chill from the cold",0,global.medium,c_blue,fDefault,.05) break;
		case 44: 
			scDrawTheObject("It all seems so surreal as you stare at the water entering your ship.",45,global.medium,c_blue,fDefault,.05) 
			if (instance_exists(oExclamationWater)) {instance_destroy(oExclamationWater);}
			break;
		case 45: scDrawTheObject("The cries of your distressed crewmates snap you out of it.",29,global.medium,c_blue,fDefault,.05) break;
		case 46: scDrawTheObject("You can see the docks from afar",47,global.medium,c_white,fDefault,.01) break;
		case 47: scDrawTheObject("A wave of nostalgia hits you then departs.",0,global.medium,c_white,fDefault,.01) break;
		case 48: scDrawTheObject("The metallic smell of gun powder emanates from the barrel.",49,global.medium,c_white,fDefault,.01) break;
		case 49: scDrawTheObject("Nothing you're not used to by this point.",0,global.medium,c_white,fDefault,.01) break;
		case 50: scDrawTheObject("This gun powder will be useless soon.",51,global.medium,c_white,fDefault,.01) break;
		case 51: scDrawTheObject("I wonder if the commanders will think there's anything of value down here.",0,global.medium,c_white,fDefault,.01) break;
		case 52: scDrawTheObject("I wish these barrels were full of food not gun powder.",0,global.medium,c_white,fDefault,.01) break;
		case 53: scDrawTheObject("That window is still leaking a bit but not as much.",54,global.medium,c_white,fDefault,.01) break;
		case 54: scDrawTheObject("There's no way to stop the leaking completely.",0,global.medium,c_white,fDefault,.01) break;
		case 55: scDrawTheObject("The sound of a mouse comes from inside the barrel.",56,global.medium,c_white,fDefault,.01) break;
		case 56: scDrawTheObject("*ew*",0,global.slow,c_white,fEw,1) break;
		case 57: scDrawTheObject("hmm I wonder if there are...",58,global.medium,c_white,fDefault,1) break;
		case 58: scDrawTheObject("BETTER THINGS TO BE DOING THAN LOOKING OUT THIS WINDOW RN!",0,global.medium,c_white,fDefault,1) break;
		case 59: scDrawTheObject("Make it quick and return to the deck.",0,global.medium,c_white,fDefault,.01) break;
		case 60: 
			scDrawTheObject("...",0,global.fast,c_white,fClifford,.5) 
			instance_create_layer(0,0,"lightrender",oTransition2);
			break;
		case 61: oClifford.timeOut = false; global.playerPaused = false; break;

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