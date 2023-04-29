if pizza_type = "cheese" and global.cheese_count <= 0
{
	instance_destroy()
}
if pizza_type = "pepperoni" and global.pepperoni_count <= 0
{
	instance_destroy()
}
if pizza_type = "sausage" and global.sausage_count <= 0
{
	instance_destroy()
}
if pizza_type = "veggies" and global.veggies_count <= 0
{
	instance_destroy()
}

if mouse_check_button_released(mb_left)
{	
	image_alpha = 0.25
}