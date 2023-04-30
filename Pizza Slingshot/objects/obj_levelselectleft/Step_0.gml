//clicked
if (position_meeting(mouse_x, mouse_y, id)) and mouse_check_button_pressed(mb_left) and enabled = true //mouse clicked
{
	clicked = true
}

//clicked
if clicked = true and mouse_check_button_released(mb_left) and position_meeting(mouse_x,mouse_y,self) and enabled = true//mouse released
{
	clicked = false
	do_action = true
	audio_play_sound(snd_blip,0,false)
}else if clicked = true and mouse_check_button_released(mb_left) 
{
	clicked = false
}

//enable/disable
if obj_levelselect.x >= 640
{
	enabled = true
}else
{
	enabled = false//false
}

//change image index
if (position_meeting(mouse_x, mouse_y, id)) and !clicked //mouse hover
{
	if enabled = true
	{
		image_index = hover_image_index
	}else
	{
		image_index = disabled_image_index //hover_image_index
	}
}else if (position_meeting(mouse_x, mouse_y, id)) //mouse
{
	image_index = clicked_image_index
}else if enabled = true
{
	image_index = default_image_index 
}else
{
	image_index = disabled_image_index //default_image_index
}

//do action
if do_action = true
{
	if enabled = true
	{
		if obj_levelselect.move_left = false and obj_levelselect.move_right = false
		{
			obj_levelselect.move_left = true
			obj_levelselect.xto = obj_levelselect.x	- 640
		}
	}else
	{
		//room = Menu	
	}
	do_action = false
}