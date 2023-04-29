surface_resize(application_surface, 640, 360);

if (grabbed)
{
	draw_line_width_color(x,y,obj_slingshot.x-12,obj_slingshot.y-56,3,c_black,c_black)
	draw_line_width_color(x,y,obj_slingshot.x+12,obj_slingshot.y-56,3,c_black,c_black)
}

if pizza_type = "cheese" and global.cheese_count > 0
or pizza_type = "pepperoni" and global.pepperoni_count > 0
or pizza_type = "sausage" and global.sausage_count > 0
or pizza_type = "veggies" and global.veggies_count > 0
or flung = true
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,img_angle,c_white,image_alpha)
	draw_sprite_ext(spr_pizzablack,image_index,x,y,image_xscale,image_yscale,img_angle,c_white,black_alpha)
}

if pizza_type = "cheese"
{
	sprite_index = spr_pizzacheese
}else if pizza_type = "pepperoni"
{
	sprite_index = spr_pizzapepperoni
}else if pizza_type = "sausage"
{
	sprite_index = spr_pizzasausage
}else if pizza_type = "veggies"
{
	sprite_index = spr_pizzaveggies
}