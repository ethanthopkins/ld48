if (!set)
{
	if (place_meeting(x,y,oLouis))
	{
		scDrawTheObject("A blade you used in training...",2,global.medium,c_white,fDefault,.5);
		global.playerPaused = true;
		oClifford.timeOut = true;
		global.justForShow = false;
		set = true;
	}
}