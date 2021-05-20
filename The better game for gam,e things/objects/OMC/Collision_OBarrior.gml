/// @description Insert description here
// You can write your code in this editor
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