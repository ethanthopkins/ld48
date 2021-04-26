//if (global.waterGaugePercent >= 1)
if (global.gameOver)
{
	draw_set_font(fDefault);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if (instance_exists(oText)) instance_destroy(oText);
	draw_text_color(global.windowWidth*.5,global.windowHeight*.5,"GAME OVER...\nPress any key to restart.",c_maroon,c_red,c_maroon,c_red,1);	
	if (keyboard_check_pressed(vk_anykey)) game_restart();
	if (audio_is_playing(snKnife)) audio_stop_sound(snKnife);
	if (audio_is_playing(snRadiator)) audio_stop_sound(snRadiator);
	global.playerPaused = true;
}
if (global.rations)
{
	draw_set_font(fDefault);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_color(global.windowWidth*.05,global.windowHeight*.2,string(currentRations) + " / 5 Rations",c_ltgray,c_red,c_ltgray,c_maroon,1);	
}
