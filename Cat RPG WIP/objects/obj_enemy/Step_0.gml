xspd = xmotion+0
yspd = ymotion+0

//Controls damage taken from player
if obj_player.face == (RIGHT_AT || LEFT_AT) && point_distance(x, y , obj_player, obj_enemy) <= 5
{
		life -= 1
}

if life <= 0
{
	instance_destroy(obj_enemy)
}

//wall collisions
if place_meeting(x + xspd, y, obj_wall) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) == true
{
	yspd = 0;
}

//collision with player
if place_meeting(x + xspd, y, obj_player) == true && obj_player.face == RIGHT
{
	xmotion += 1
}
if place_meeting(x + xspd, y, obj_player) == true && obj_player.face == LEFT
{
	xmotion -= 1
}
if place_meeting(x, y + yspd, obj_player) == true && obj_player.face == UP
{
	ymotion -= 1
}
if place_meeting(x, y + yspd, obj_player) == true && obj_player.face == DOWN
{
	ymotion += 1
}
if place_meeting(x + xspd,y, obj_player) == false 
{
	xmotion = 0;
}
if place_meeting(x,y + yspd, obj_player) == false 
{
	ymotion = 0;
}

//controls enemy movement
x += xspd;
y += yspd;
