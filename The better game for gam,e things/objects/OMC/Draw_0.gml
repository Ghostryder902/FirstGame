/// @description Insert description here
// You can write your code in this editor
draw_self();

if(active)
{
	draw_line(x+1, y+1, mx +1, my + 1);
	draw_line(x,y,mx,my);
	draw_line(x-1, y-1, mx - 1, my -1);
}
draw_text_transformed(10, 100, coin, 5, 5, 0);
draw_text_transformed(10,200, "LIVES: ", 3,3,0)
draw_text_transformed(180,200, hp, 3,3,0)
draw_text_transformed(670, 5,"Coins required: 25", 2, 2, 0)
