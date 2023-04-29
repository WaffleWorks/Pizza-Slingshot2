instance_create_depth(x,y,depth,obj_fadein)

global.success = false
global.fail = false

global.npc_count = 0
global.npcs_fed = 0
global.npcs_who_want_cheese = 0
global.npcs_who_want_pepperoni = 0
global.npcs_who_want_sausage = 0
global.npcs_who_want_veggie = 0

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

//room
switch (room)
{
	case Menu: global.nextroom = Level11; break;
	case Level1: global.nextroom = Level2; break;
	case Level2: global.nextroom = Level3; break;
	case Level3: global.nextroom = Level4; break;
	case Level4: global.nextroom = Level5; break;
	case Level5: global.nextroom = Level6; break;
	case Level6: global.nextroom = Level7; break;
	case Level7: global.nextroom = Level8; break;
	case Level8: global.nextroom = Level9; break;
	case Level9: global.nextroom = Level10; break;
	case Level10: global.nextroom = Level10; break;
	default: global.nextroom = Menu;
}