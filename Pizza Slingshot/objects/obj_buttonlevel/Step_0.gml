//clicked
if (position_meeting(mouse_x, mouse_y, id)) and mouse_check_button_pressed(mb_left) //mouse clicked
{
	clicked = true
}

//clicked
if clicked = true and mouse_check_button_released(mb_left) //mouse released
{
	clicked = false
	do_action = true
}

//change image index
if (position_meeting(mouse_x, mouse_y, id)) and !clicked //mouse hover
{
	image_index = hover_image_index
}else if (position_meeting(mouse_x, mouse_y, id)) //mouse
{
	image_index = clicked_image_index
}else
{
	image_index = default_image_index 
}

//do action
if do_action = true
{
	if !instance_exists(obj_fadeout)
	{
		global.nextroom = value
		instance_create_depth(x,y,depth,obj_fadeout)
		audio_play_sound(snd_blip,0,false)
		//audio_play_sound(snd_blip,10,false)
	}
}

if keyboard_check_pressed(vk_backspace) and !instance_exists(obj_fadeout)
{
	global.nextroom = Menu
	instance_create_depth(x,y,depth,obj_fadeout)
}