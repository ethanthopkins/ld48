draw_rectangle_color(0,0,display_get_width(),display_get_height(),c_dkgray,c_gray,c_dkgray,c_gray,false);

draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(fDefault);
draw_text(global.windowWidth*.5,global.windowHeight*.1,"THE END");
draw_set_halign(fa_left);
draw_set_font(fEnd);
draw_text(global.windowWidth*.1,global.windowHeight*.5,myString);
draw_set_halign(fa_center);
draw_set_font(fDefault);
draw_text(global.windowWidth*.5,global.windowHeight*.9,"THANK YOU!");