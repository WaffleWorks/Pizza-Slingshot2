if keyboard_check_pressed(ord("R")) and room != Menu and room != Credits and room != LevelSelect and room != Menu2 
{
	room_restart()	
}

global.pizza_count = global.cheese_count + global.pepperoni_count + global.sausage_count + global.veggies_count

if global.npc_count = global.npcs_fed and global.success = false and global.npc_count > 0
{
	global.success = true
	instance_create_depth(x,y,depth,obj_textpopup)	
	audio_play_sound(snd_complete,0,false)
	audio_stop_sound(snd_delivered)

	if global.current_level >= global.levels_unlocked
	{
		ini_open("save.ini");
		ini_write_real("save", "levelsunlocked", global.current_level+1);
		global.levels_unlocked = ini_read_real("save", "levelsunlocked", global.current_level+1);
		ini_close();
	}
}

if global.npcs_fed < global.npc_count and global.fail = false and global.npc_count > 0 and global.pizza_count = 0 and !instance_exists(obj_pizza)
{
	global.fail = true
	instance_create_depth(x,y,depth,obj_textpopup)	
}

if instance_exists(obj_pizza)
{
	if obj_pizza.flung = false and global.fail = false
	{
		if global.npcs_who_want_cheese > global.cheese_count
		or global.npcs_who_want_pepperoni > global.pepperoni_count
		or global.npcs_who_want_sausage > global.sausage_count
		or global.npcs_who_want_veggie > global.veggies_count
		{
			global.fail = true
			instance_create_depth(x,y,depth,obj_textpopup)	
			
			show_debug_message("NPC: " + string(global.npcs_who_want_cheese))
			show_debug_message("Cheese: " + string(global.cheese_count))
		}
	}
}

if global.fail = true
{
	global.nextroom = room	
}


if !audio_is_playing(snd_music)
{
	audio_play_sound(snd_music,10,true)
}