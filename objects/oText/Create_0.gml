myString="this is a test string";
oldLine = 0;
nextLine = 0;
set = false;
textProgress = 0;
textSpeed = .25;
if (!global.justForShow) global.playerPaused = true;
length = string_length(string(myString));
textColor = c_white;
width = global.windowWidth*.5; //max width text can have
font = fDefault;
intensity = 0;
set1 = false;
set2 = false;
set3 = false;
diff = 0;
textBoxWidth = global.windowWidth*.9 - global.windowWidth*.1 -.1

rsp1Case = undefined;
rsp1Text = undefined;
rsp2Case = undefined;
rsp2Text = undefined;

optionSelected = 0;

draw_x=global.windowWidth*.15;
draw_y=global.windowHeight*.7;

lastLetterPos = 0;