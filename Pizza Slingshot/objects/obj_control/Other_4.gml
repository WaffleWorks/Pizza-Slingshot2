instance_create_depth(x,y,depth,obj_fadein)

global.success = false
global.fail = false

global.npc_count = 0
global.npcs_fed = 0


cheese_init = global.cheese_count
pepperoni_init = global.pepperoni_count
sausage_init = global.sausage_count
veggies_init = global.veggies_count

cheese_x = -16
pepperoni_x = -16
sausage_x = -16
veggies_x = -16

if global.cheese_count > 0
{
	cheese_x += 38
	pepperoni_x += 38
	sausage_x += 38
	veggies_x += 38
	
	with instance_create_depth(cheese_x,20,depth-1,obj_pizzaselect)
	{
		pizza_type = "cheese"
	}
}
if global.pepperoni_count > 0
{
	pepperoni_x += 38
	sausage_x += 38
	veggies_x += 38
	
	with instance_create_depth(pepperoni_x,20,depth-1,obj_pizzaselect)
	{
		pizza_type = "pepperoni"
	}
}
if global.sausage_count > 0
{
	sausage_x += 38
	veggies_x += 38
	
	with instance_create_depth(sausage_x,20,depth-1,obj_pizzaselect)
	{
		pizza_type = "sausage"
	}
}
if global.veggies_count > 0
{
	veggies_x += 38
	
	with instance_create_depth(veggies_x,20,depth-1,obj_pizzaselect)
	{
		pizza_type = "veggies"
	}
}