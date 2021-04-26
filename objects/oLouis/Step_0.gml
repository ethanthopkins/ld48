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
}else 
{
	image_speed = 0;
	image_index = 0;
}
