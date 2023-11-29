draw_sprite(sShop, 0, (room_width-sprite_get_width(sShop))/2,(room_height-sprite_get_height(sShop))/2);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntBuy)

#macro BUFFSIZE 128

//Speed boost buff
draw_text(
	(.25 * room_width), 
	(.35 * room_height),
	"Buy a Speed Boost!"
)
draw_text(
	(.25 * room_width), 
	(.85 * room_height),
	"Cost 3 Tokens"
)
draw_sprite_stretched(
	sSpdBoost,
	0, 
	.25 * room_width - BUFFSIZE/2, 
	.5 * room_height - BUFFSIZE/2, 
	BUFFSIZE, 
	BUFFSIZE
);

//DoubleJump buff
draw_text(
	(.75 * room_width), 
	(.35 * room_height),
	"Buy a Double Jump!"
)
draw_text(
	(.75 * room_width), 
	(.85 * room_height),
	"Cost 5 Tokens"
)
draw_sprite_stretched(
	sDoubleJump,
	0, 
	.75 * room_width - BUFFSIZE/2, 
	.5 * room_height - BUFFSIZE/2, 
	BUFFSIZE, 
	BUFFSIZE
);

//resetting draw
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fntBuy)