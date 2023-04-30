if place_meeting(x,y,obj_pizza)
{
	if instance_place(x,y,obj_pizza).arc = true
	{
		if instance_place(x,y,obj_pizza).pizza_type = pizza_type and hungry = true
		{
			hungry = false
			global.npcs_fed += 1
			
			if pizza_type = "cheese"
			{
				global.npcs_who_want_cheese -= 1
			}else if pizza_type = "pepperoni"
			{
				global.npcs_who_want_pepperoni -= 1
			}else if pizza_type = "sausage"
			{
				global.npcs_who_want_sausage -= 1
			}else if pizza_type = "veggies"
			{
				global.npcs_who_want_veggie -= 1
			}
			
			audio_play_sound(snd_delivered,0,false)
			
			show_debug_message("NPCs fed: " + string(global.npcs_fed))
			show_debug_message("NPC count: " + string(global.npc_count))
		}else if instance_place(x,y,obj_pizza).pizza_type != pizza_type
		{
			global.fail = true
			instance_create_depth(x,y,depth,obj_textpopup)
			wrong_pizza = true
		}
		instance_destroy(instance_place(x,y,obj_pizza))
	}
}

