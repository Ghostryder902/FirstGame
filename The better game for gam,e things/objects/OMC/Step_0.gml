/// @description Insert description here
// You can write your code in this editor
//grapple
//player move input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check_pressed(ord("W"));
//movement equation
var move = key_right - key_left; 

hsp = move * walksp;

vsp = vsp + grv;
if (place_meeting(x,y+1,OBarrior)) and (key_up) 
{
    vsp = -jumpsp 
}

//horizontal collison
if (place_meeting(x+hsp,y,OBarrior))
{
    while (!place_meeting(x+sign(hsp),y,OBarrior))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}
x = x + hsp; 

//verticle collision
if (place_meeting(x,y+vsp,OBarrior))
{
    while (!place_meeting(x,y+sign(vsp),OBarrior))
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}
y = y + vsp;


//grapple
if(mouse_check_button_pressed(mb_left))
{
	mx = mouse_x;
	my = mouse_y;
	if(place_meeting(mx,my,Ograpple)) {
		active = true;
}
	
}

if (active)
{
	grv = 0.1;
	x += (mx - x) * 0.1;
	y += (my - y) * 0.1;
}
if (!active) 
{
	grv = 0.25;
}
if(mouse_check_button_released(mb_left)){
active = false;	
}





//damage
dcooldown = dcooldown - 1;

if (place_meeting(x,y,Oenemy) || place_meeting(x,y,Oenemy1) || place_meeting(x,y,OenemyNOPATH)) and (dcooldown < 0)
{
	hp --
	dcooldown = 60;
}
if (hp = 0) 
{
	room_goto(1);
	room_restart()
	
}
// damage 
//end level
if (place_meeting(x,y,OEndLevel) && (coin >= 25))
{
	room_goto_next()
}
if (place_meeting(x,y,OEndLevel) && (coin <= 24))
{
	room_restart()
}
//end level
//death
if (place_meeting(x,y,ODeath))
{
	room_goto(1);
	room_restart()
}
