//getting inputs and speed
if alive {
	jumpKey = keyboard_check_pressed(ord("W"))
	moveX = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
}

//checking is player has speed boost on
if (spdBoost){
	spd = 10;
	boostDuration--;
	if (boostDuration <= 0){
		spdBoost = false;
		boostDuration = 180;
	}
}
else{
	spd = 6;
}
xSpd = moveX * spd;

//check if alive or dead
if (alive) {
	sprite_index = sPlayer;
}
else {
	sprite_index = sDead;
	xSpd = 0;
	ySpd += grav;
}

//collision
if (place_meeting(x + xSpd, y, oCollision)){
	repeat(abs(xSpd)) {
		if (!place_meeting(x+sign(xSpd), y, oCollision)) {
			x += sign(xSpd);
		}
		else {
			break;
		}
	}
	xSpd = 0;
}

if (place_meeting(x, y + ySpd, oCollision)){
	repeat(abs(ySpd)) {
		if (!place_meeting(x, y+sign(ySpd), oCollision)) {
			y += sign(ySpd);
		}
		else {
			break;
		}
	}
	ySpd = 0;
	canJump = true;
}

//move the player
x += xSpd;
y += ySpd;

//allowing jump
if (!canJump && doubleJump && jumpKey) {
	ySpd = -20;
	doubleJump = false;
}
else if (jumpKey){
	if (canJump){
		ySpd = -20;	
		canJump = false;
	}
}
ySpd += grav;

//animations
if (doubleJump){
	image_index = 1;
}
else if (spdBoost) {
	image_index = 2;	
}
else { image_index = 0; }

//clamping the player
x = clamp(x, 0, room_width-64); 
y = clamp(y, 0, room_height-64); 

//warping the player
var inst = instance_place(x,y, oWarp);
if (inst != noone){
	room_goto(inst.targetRoom);	
	//starting coords
	startCoordX = inst.targetX;
	startCoordY = inst.targetY;
	x = startCoordX;
	y = startCoordY;
	//resetting player
	doubleJump = false;
	spdBoost = false;
}
