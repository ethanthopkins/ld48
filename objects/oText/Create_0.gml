myString="this is a test string";
oldLine = 0;
nextLine = 0;
set = false;
textProgress = 0;
textSpeed = .25;
if (!global.justForShow) global.playerPaused = true;
length = string_length(string(myString));
textColor = c_white;
width = global.windowWidth*.9; //max width text can have
font = fDefault;
intensity = 0;

textBoxWidth = global.windowWidth*.9 - global.windowWidth*.1 -.1

rsp1Case = undefined;
rsp1Text = undefined;
rsp2Case = undefined;
rsp2Text = undefined;

optionSelected = 0;