surface_resize(application_surface, 720, 405);

if (grabbed)
{
	draw_line_width_color(x,y,obj_slingshot.x-12,obj_slingshot.y-56,3,c_black,c_black)
	draw_line_width_color(x,y,obj_slingshot.x+12,obj_slingshot.y-56,3,c_black,c_black)
}

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,img_angle,c_white,image_alpha)

