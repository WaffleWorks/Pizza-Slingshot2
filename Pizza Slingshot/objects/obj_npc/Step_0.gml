if place_meeting(x,y,obj_pizza)
{
	if instance_place(x,y,obj_pizza).arc = true
	{
		if instance_place(x,y,obj_pizza).pizza_type = pizza_type and hungry = true
		{
			hungry = false
			global.npcs_fed += 1
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

