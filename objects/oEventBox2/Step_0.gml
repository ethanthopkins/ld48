if (place_meeting(x,y,oLouis))
{

	if (knife)
	{
		if (global.iHaveKnife)
		{
			instance_destroy(oRedTransition)
			oLouis.walkSpeed = 1.5;
			instance_destroy();
			instance_create_layer(0,0,layer,oTransition2)
		}
	}
}else return;