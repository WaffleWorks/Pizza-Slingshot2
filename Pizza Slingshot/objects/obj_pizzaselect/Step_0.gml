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

if room = Menu
{
	instance_destroy()	
}

if keyboard_check_pressed(ord("1")) and x = 22
or keyboard_check_pressed(ord("2")) and x = 22 + 38
or keyboard_check_pressed(ord("3")) and x = 22 + 38 + 38
or keyboard_check_pressed(ord("4")) and x = 22 + 38 + 38 + 38
{
	if obj_pizza.flung = true
	{
		obj_pizza.next_pizza_type = pizza_type
		audio_play_sound(snd_blip,0,false)
	}else
	{
		obj_pizza.pizza_type = pizza_type	
		audio_play_sound(snd_blip,0,false)
	}
}

if room = Menu or room = Menu2 or room = LevelSelect or room = Credits
{
	instance_destroy()	
}