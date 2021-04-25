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
	image_speed = 0;
	if (hMove != 0)
	{
		if (hMove = -1) playerDirection = 180;
		if (hMove = 1) playerDirection = 0;
		//show_debug_message(playerDirection);
		UpdateSpriteIndex();	
	}
	if (vMove != 0)
	{
		if (vMove = -1) playerDirection = 90;
		if (vMove = 1) playerDirection = 270;
		//show_debug_message(playerDirection);
		UpdateSpriteIndex();	
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
	direction = playerDirection;
	cardinalDirection = round(playerDirection/90);
	image_index = (cardinalDirection)
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