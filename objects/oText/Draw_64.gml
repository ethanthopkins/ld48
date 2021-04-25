draw_set_color(c_black)
draw_rectangle(global.windowWidth*.1,global.windowHeight*.9,global.windowWidth*.9,global.windowHeight*.6,false);
draw_set_color(textColor)
draw_rectangle(global.windowWidth*.1,global.windowHeight*.9,global.windowWidth*.9,global.windowHeight*.6,true);

draw_x=global.windowWidth*.15;
draw_y=global.windowHeight*.75;

if (textProgress <= length)
{
	textProgress += textSpeed;
}

draw_set_color(textColor);
draw_set_font(font);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
 //how far to offset the text
for (var i = 1; i <= length; ++i) 
{
	//TURN STRING INTO ARRAY
	var str = 0;
	str[i] = string_char_at(myString, i);
	//GET POSITION OF CHAR IN STRING
	var strPos = string_pos(str[i],myString);
	//GET PX LENGTH OF STRING AS IT'S WRITTEN
	length_so_far=string_width(string_copy(myString,1,i));		
    //DRAW TEXT CHARACTER BY CHARACTER
	if (textProgress > i)	
	{
		draw_text(
		draw_x+length_so_far+random_range(-intensity,intensity),
		draw_y+random_range(-intensity,intensity),
		str[i],
		);
	}
	if (rsp1Case != undefined) && (rsp1Text != undefined) && (rsp2Case != undefined) && (rsp2Text != undefined)
	{
		var up = keyboard_check_pressed(ord("W"));
		var down = keyboard_check_pressed(ord("S"));
		var select = keyboard_check_pressed(vk_space);
		var optionValue;
		var vMove = (down - up)
		optionSelected = optionSelected + vMove;
		if (optionSelected > 1) optionSelected = 0;
		if (optionSelected < 0) optionSelected = 1;
		
		switch optionSelected
		{
			default: return;
			case 0: 
				draw_arrow(global.windowWidth * .65,global.windowHeight*.7,global.windowWidth * .7,global.windowHeight*.7,5); 
				optionValue = rsp1Case;
				break;
			case 1: 
				draw_arrow(global.windowWidth * .65,global.windowHeight*.8,global.windowWidth * .7,global.windowHeight*.8,5); 
				optionValue = rsp2Case;
				break;
		}
		if (!global.justForShow)
		{
			if (select) nextLine = optionValue;
		}
		
		draw_text(
		global.windowWidth * .8,//+length_so_far+random_range(-intensity,intensity),
		global.windowHeight*.7,//+random_range(-intensity,intensity),
		rsp1Text);
		
		draw_text(
		global.windowWidth * .8,//+length_so_far+random_range(-intensity,intensity),
		global.windowHeight*.8,//+random_range(-intensity,intensity),
		rsp2Text);	
	}
}
