//re-initializing player
oPlayer.alive = true;
oPlayer.x = oPlayer.startCoordX;
oPlayer.y = oPlayer.startCoordY;
oPlayer.spdBoost = false;
oPlayer.doubleJump = false;

//re-intializing token count
oGame.tokenCount = 0;

room_persistent = false;

//resetting image
image_xscale = 1;
image_yscale = 1;
image_index = 0;

//restarting room
room_restart();