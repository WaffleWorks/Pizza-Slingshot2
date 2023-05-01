var num = audio_get_listener_count();

if keyboard_check_pressed(ord("M"))
{
	global.mute = not global.mute	
}

if keyboard_check_pressed(vk_f11)
{
	global.fullscreen = not global.fullscreen	
	window_set_fullscreen(global.fullscreen)
}

if global.mute = false
{
	for( var i = 0; i < num; i++;)
	{
	    var info = audio_get_listener_info(i);
	    audio_set_master_gain(info[? "index"], 0.6);
	    ds_map_destroy(info);
	}
}else
{
	for( var i = 0; i < num; i++;)
	{
	    var info = audio_get_listener_info(i);
	    audio_set_master_gain(info[? "index"], 0);
	    ds_map_destroy(info);
	}	
}

