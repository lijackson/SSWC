/// @description Insert description here
// You can write your code in this editor

right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);

// get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

// set sprite
if yspd == 0
{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};

sprite_index = sprite[face];

// collisions
if place_meeting(x + xspd, y, obj_wall) 
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) 
{
	yspd = 0;
}

// move the player 
x += xspd;
y += yspd;

// set sprite
if yspd == 0
{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};

sprite_index = sprite[face];