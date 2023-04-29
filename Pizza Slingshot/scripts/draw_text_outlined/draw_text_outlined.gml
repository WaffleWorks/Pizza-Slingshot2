// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outlined(x, y, outline_color, string_color, str) 
{
	var xx,yy;  
	xx = argument[0];  
	yy = argument[1];  
  
	//Outline
	draw_set_color(argument[2]);  
	draw_text(xx+1, yy+1, argument[4]);  
	draw_text(xx-1, yy-1, argument[4]);  
	draw_text(xx,   yy+1, argument[4]);  
	draw_text(xx+1,   yy, argument[4]);  
	draw_text(xx,   yy-1, argument[4]);  
	draw_text(xx-1,   yy, argument[4]);  
	draw_text(xx-1, yy+1, argument[4]);  
	draw_text(xx+1, yy-1, argument[4]);  
	
	draw_text(xx+2, yy+2, argument[4]);  
	draw_text(xx-2, yy-2, argument[4]);  
	draw_text(xx,   yy+2, argument[4]);  
	draw_text(xx+2,   yy, argument[4]);  
	draw_text(xx,   yy-2, argument[4]);  
	draw_text(xx-2,   yy, argument[4]);  
	draw_text(xx-2, yy+2, argument[4]);  
	draw_text(xx+2, yy-2, argument[4]);  
  
	//Text  
	draw_set_color(argument[3]);  
	draw_text(xx, yy, argument[4]);  
}