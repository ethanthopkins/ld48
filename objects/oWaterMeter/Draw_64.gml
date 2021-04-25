draw_rectangle_color(global.windowWidth*.05,global.windowHeight*.05,global.windowWidth*.95,global.windowHeight*.15,c_navy,c_blue,c_navy,c_blue,true)
draw_rectangle_color(global.windowWidth*.05,global.windowHeight*.05,global.windowWidth*.05+(gaugeWidth*global.waterGaugePercent),global.windowHeight*.15,c_navy,c_blue,c_navy,c_blue,false)
draw_set_font(fDefault);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(global.windowWidth*.5,global.windowHeight*.2,"WATER LEVEL",c_navy,c_blue,c_navy,c_blue,1);