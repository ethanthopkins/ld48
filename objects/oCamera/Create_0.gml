/// @desc Set Up Camera
cam = view_camera[0];
follow = oLouis;
viewWidthHalf = camera_get_view_width(cam) * .5;
viewHeightHalf = camera_get_view_height(cam) * .5;
xTo = xstart;
yTo = ystart;

//ScreenShake
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;