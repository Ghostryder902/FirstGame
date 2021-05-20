//damage
if (place_meeting(x,y,Oenemy))
{
	hp --;
}
if (hp = 0)
{
	instance_destroy(OMC)
}
