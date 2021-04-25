if (!set) length = string_length(string(myString)); set = true;
if (!global.justForShow)
{
	if (keyboard_check_pressed(vk_space))
	{
		if (textProgress >= length) 
		{
			if (nextLine != global.oldLine) 
			{
				global.oldLine = nextLine;
				scGetTheText(nextLine);
			}
			if (nextLine = 0) scGetTheText(nextLine);
			instance_destroy();
		}
		if (textProgress < length) textProgress = length;
	}
}