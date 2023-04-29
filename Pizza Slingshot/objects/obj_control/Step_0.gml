if keyboard_check_pressed(ord("R")) and room != Menu
{
	room_restart()	
}

global.pizza_count = global.cheese_count + global.pepperoni_count + global.sausage_count + global.veggies_count

if global.npc_count = global.npcs_fed and global.success = false and global.npc_count > 0
{
	global.success = true
	instance_create_depth(x,y,depth,obj_textpopup)	
}

if global.npcs_fed < global.npc_count and global.fail = false and global.npc_count > 0 and global.pizza_count = 0 and !instance_exists(obj_pizza)
{
	global.fail = true
	instance_create_depth(x,y,depth,obj_textpopup)	
}

if global.fail = true
{
	global.nextroom = room	
}