surface_resize(application_surface, 640, 360);


//temporary bubbles
i_num = 32
if temp_pizza_type = "veggies"
{
	if instance_exists(obj_pizza)
	{
		i_num = round(obj_pizza.spd*3)
	}
}
if temp_spd != 0 and temp_angle != 0 and temp_pizza_type != ""// and instance_exists(obj_pizza)
{
	for(var i = 1; i < temp_i_num; i++)
	{
		var xPos2 = i * 16
		if temp_pizza_type != "veggies"
		{
			var yPos2 = scr_slingshot(xPos2,temp_spd,temp_angle,0,0,0.15)
			draw_sprite_ext(spr_trajectorybubble2,0,temp_xstart+xPos2,obj_slingshot.y-40-yPos2,1,1,0,c_white,1)
		}else
		{
			var yPos2 = scr_slingshot(xPos2,temp_angle,temp_angle,0,0,0)
			draw_sprite_ext(spr_trajectorybubble2,0,temp_xstart+lengthdir_x(16*i,temp_angle),obj_slingshot.y-40+lengthdir_y(16*i,temp_angle),1,1,0,c_white,1)
		}
		//draw_sprite_ext(spr_trajectorybubble2,0,temp_xstart+xPos2,obj_slingshot.y-40-yPos2,1,1,0,c_white,1)
		
	}
}