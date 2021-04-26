if (!set)
{
	if (place_meeting(x,y,oLouis))
	{
		scDrawTheObject("A Large Spool of Tape.",24,global.medium,c_white,fDefault,.1)
		global.playerPaused = true;
		global.justForShow = false;
		set = true;
	}
}