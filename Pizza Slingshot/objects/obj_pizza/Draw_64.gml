//display_set_gui_size(room_width,room_height)
if grabbed = true and point_distance(x,y,obj_slingshot.x,obj_slingshot.y-40) > 16 and mouse_x < obj_slingshot.x
{
	for(var i = 1; i < i_num; i++)
	{
		var xPos = i * 16
		if pizza_type != "veggies"
		{
			var yPos = scr_slingshot(xPos,spd,angle,0,0,0.15)
		}else
		{
			var yPos = scr_slingshot(xPos,spd,angle,0,0,0)
		}
		draw_sprite_ext(spr_trajectorybubble,0,xstart+xPos,obj_slingshot.y-40-yPos,1,1,0,c_white,1)
	}
}
