//clicked
if (position_meeting(mouse_x, mouse_y, id)) and mouse_check_button_pressed(mb_left) //mouse clicked
{
	clicked = true
}

//clicked
if clicked = true and mouse_check_button_released(mb_left) and position_meeting(mouse_x,mouse_y,self) //mouse released
{
	clicked = false
	do_action = true
}else if clicked = true and mouse_check_button_released(mb_left) 
{
	clicked = false
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
	if exit_button = false
	{
		if !instance_exists(obj_fadeout)
		{
			instance_create_depth(x,y,depth,obj_fadeout)
			audio_play_sound(snd_blip,0,false)
			//audio_play_sound(snd_blip,10,false)
		}
	}else
	{
		game_end()	
	}
	
}