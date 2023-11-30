//texts (put into scripts when I have time)
var _roomText1 = @"Press 'A' or 'D' to move left or right
Press 'W' to jump

Hit the yellow box, you will gain a speed buff for 3 seconds
Dodge the spikes, and reach the end portal to the next level!"

var _roomText2 = @"The green box will turn you blue
You can double jump once if you are  blue

If you die, you can always restart the level by clicking the restart arrow"

var _roomText3 =@"Collect tokens to buy power ups from the shop
To open shop, hit 'ESC'

You can only hold up to 3 power ups at once, they are on the top right corner
Click the power up to gain it's effects"

//setting the text style
draw_set_font(fntInstructions);
draw_set_color(c_white);

//drawing the text
if room == room_level1 { draw_text(15,100,_roomText1);}
if room == room_level2 { draw_text(15,100,_roomText2);}
if room == room_level3 { draw_text(15,100,_roomText3);}