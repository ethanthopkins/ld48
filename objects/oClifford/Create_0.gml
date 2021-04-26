Col = undefined;
atLoc = false;
quickTheDoor = false;
Dir = 270;
timeOut = false;

myPath = undefined;
var gridX = 32;
var gridY = 32;
global.grid = mp_grid_create(0,0, 1920/gridX,1080/gridY,gridX,gridY);
mp_grid_add_instances(global.grid,oCol,true);
set = false;
Speed = .95;