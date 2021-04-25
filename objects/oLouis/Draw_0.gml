draw_self();
if (playerDirection == 0) || (playerDirection == 180)
{
	draw_line(x,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection));
	draw_line(x,y-activateWidth,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection));
	draw_line(x,y+activateWidth,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection));
}
if (playerDirection == 90) || (playerDirection == 270)
{
	draw_line(x,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection));
	draw_line(x-activateWidth,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection));
	draw_line(x+activateWidth,y,x+lengthdir_x(activateDistance,playerDirection),y+lengthdir_y(activateDistance,playerDirection));
}