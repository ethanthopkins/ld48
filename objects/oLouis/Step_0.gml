if (!global.playerPaused)
{
	GetPlayerInput();
	GetPlayerMovement();
	if (action) 
	{
		if (instance_exists(oText))
			{
				instance_destroy(oText);
			}
		scActivate()
	}
}