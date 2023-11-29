//pause everything in background except for oGame
instance_deactivate_all(true);
instance_activate_object(oGame);
instance_activate_object(oBuff);

//making it so you see oBuff more clearly
oBuff.visible = 0;

//getting the buff instances visible
instance_create_depth(
	(.55 * room_width), 
	(.1 * room_height),
	depth - 10,
	oShopBuff1
);
instance_create_depth(
	(.7 * room_width), 
	(.1 * room_height),
	depth - 10,
	oShopBuff2
);
instance_create_depth(
	(.85 * room_width), 
	(.1 * room_height),
	depth - 10,
	oShopBuff3
);
	
//speed boost buy button
instance_create_depth(
	(.25 * room_width), 
	(.7 * room_height),
	depth - 10,
	oBuySpdBoostButton
);

//double jump buy button
instance_create_depth(
	(.75 * room_width), 
	(.7 * room_height),
	depth - 10,
	oBuyDoubleJumpButton
);