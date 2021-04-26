if (global.theChase)
{
	if (global.knife)
	{
		global.theEnd = true;
	} else
	{
		show_debug_message("hit");
		global.gameOver = true;
	}
} 