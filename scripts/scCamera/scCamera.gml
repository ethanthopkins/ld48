// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scCamera(lookAheadX,lookAheadY,smooth)
{
	xTo = follow.x;
	yTo = follow.y;

	//Update Object Position
	x += ((xTo+lookAheadX) - x) / smooth;
	y += ((yTo+lookAheadY) - y) / smooth;

	//Keep camera center inside room
	x = clamp(x,viewWidthHalf+lookAheadX, room_width-viewWidthHalf);
	y = clamp(viewHeightHalf+lookAheadY,y, room_height-viewHeightHalf);
	
	camera_set_view_pos(cam,x - (viewWidthHalf-lookAheadX), y - (viewHeightHalf-lookAheadY));
}
/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude sets the strength of the shake (distance range)
/// @arg Frames sets the length of the shake in frames (60 = 1 second)
function scScreenShake(magnitude, frames)
{
with (global.iCamera)
	{
		if (magnitude > shakeRemain)
		{
			shakeMagnitude = magnitude;
			shakeRemain = shakeMagnitude;
			shakeLength = frames;
		}
	}
}