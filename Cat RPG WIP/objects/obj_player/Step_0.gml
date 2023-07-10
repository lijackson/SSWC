//Player Control Variables
right_key = keyboard_check(ord("D")) or keyboard_check(vk_right);
left_key = keyboard_check(ord("A")) or keyboard_check(vk_left);
up_key = keyboard_check(ord("W")) or keyboard_check(vk_up);
down_key = keyboard_check(ord("S")) or keyboard_check(vk_down);


attack = 0;

//Right Attack
if keyboard_check(ord("F")) = true
{
	attack = 1
}

if attack == 1 && face == RIGHT or face == RIGHT_ST
{
	face = RIGHT_AT
}

if face = RIGHT_AT && keyboard_check(ord("F")) = false
{
	attack = 0
}

if attack == 0 && face == RIGHT_AT
{
	face = RIGHT_ST	
}

//Left Attack
if attack == 1 && face == LEFT or face == LEFT_ST
{
	face = LEFT_AT
}

if face = LEFT_AT && keyboard_check(ord("F")) = false
{
	attack = 0
}

if attack == 0 && face == LEFT_AT
{
	face = LEFT_ST	
}

//Controls the speed at which player is moved with arrow key press/hold
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//wall collision
if place_meeting(x + xspd, y, obj_wall) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) == true
{
	yspd = 0;
}

//Responsible for moving player vertically or horizontally
x += xspd;
y += yspd;

//Set Sprite Direction
if yspd == 0
{
if xspd > 0 {face = RIGHT}
if xspd < 0 {face = LEFT}
}

//in charge of maintaining x-axis facing
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd = 0 && face == RIGHT {face = RIGHT_ST};
if xspd = 0 && face == LEFT {face = LEFT_ST};

if xspd == 0
{
if yspd < 0 {face = UP}
if yspd > 0 {face = DOWN}
}

//in charge of maintaining y-axis facing
if yspd < 0 && face == DOWN {face = UP};
if yspd > 0 && face == UP {face = DOWN};
if yspd = 0 && face == DOWN {face = DOWN_ST};
if yspd = 0 && face == UP {face = UP_ST};

sprite_index = sprite[face];