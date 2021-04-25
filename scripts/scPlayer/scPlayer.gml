// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetPlayerInput()
{
	up = keyboard_check(ord("W")); 
	down = keyboard_check(ord("S")); 
	left = keyboard_check(ord("A")); 
	right = keyboard_check(ord("D"));
	action = keyboard_check_pressed(vk_space);
}
function GetPlayerMovement()
{
	hMove = right - left; 
	vMove = down - up; 
	GetPlayerCollision()
	x += hMove * walkSpeed;
	y += vMove * walkSpeed;
	
	#region What Direction
	if (hMove != 0) || (vMove != 0)
	{
		if (hMove != 0)
		{
			if (hMove = -1) playerDirection = 180;
			if (hMove = 1) playerDirection = 0;
			UpdateSpriteIndex();
		}
		if (vMove != 0)
		{
			if (vMove = -1) playerDirection = 90;
			if (vMove = 1) playerDirection = 270;
			UpdateSpriteIndex();	
		}
			var Min;
		var Max;
		//show_debug_message(cardinalDirection);
	} else
	{
		image_index = 0; 
		image_speed =0;
	}
	#endregion
}
function GetPlayerCollision()
{
	if (place_meeting(x+sign(hMove)*walkSpeed,y,oCol)) hMove = 0;
	if (place_meeting(x,y+sign(vMove)*walkSpeed,oCol)) vMove = 0;
}
function UpdateSpriteIndex()
{	
	image_speed = .25;
	direction = playerDirection;
	cardinalDirection = round(playerDirection/90);
	switch cardinalDirection
		{
			case 0: sprite_index = sLouisRight; break;
			case 1: sprite_index = sLouisUp; break;
			case 2: sprite_index = sLouisLeft; break;
			case 3: sprite_index = sLouisDown; break;
		}
}
function UpdateSpriteIndexRonald()
{	
	image_speed = .25;
	cardinalDirection = round(Dir/90);
	switch cardinalDirection
		{
			case 0: sprite_index = sRonaldRight; break;
			case 1: sprite_index = sRonaldUp; break;
			case 2: sprite_index = sRonaldLeft; break;
			case 3: sprite_index = sRonaldDown; break;
		}
}
function UpdateSpriteIndexClifford()
{	
	image_speed = .25;
	cardinalDirection = round(Dir/90);
	switch cardinalDirection
		{
			case 0: sprite_index = sCliffordRight; break;
			case 1: sprite_index = sCliffordUp; break;
			case 2: sprite_index = sCliffordLeft; break;
			case 3: sprite_index = sCliffordDown; break;
		}
}
function scActivate() 
{
	#region Check Who Collider Is
	//var _inst = collision_rectangle(x,y,x+lengthdir_x(50,playerDirection),y+lengthdir_y(50,playerDirection),pTalk,false,true);
	if (playerDirection == 0) || (playerDirection == 180)
	{
		_inst = collision_line(x,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pTalk,false,true);
		_inst = collision_line(x,y-activateWidth,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pTalk,false,true);
		_inst = collision_line(x,y+activateWidth,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pTalk,false,true);
	}
	if (playerDirection == 90) || (playerDirection == 270)
	{
		_inst = collision_line(x,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pTalk,false,true);
		_inst = collision_line(x-activateWidth,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pTalk,false,true);
		_inst = collision_line(x+activateWidth,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection),pTalk,false,true);
	}
	//show_debug_message(string(_inst));
	#endregion
	scSaySomething(_inst);
}