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
	case Menu: global.nextroom = LevelSelect; break;
	case Menu2: global.nextroom = LevelSelect; break;
	case Level1: global.nextroom = Level2; break;
	case Level2: global.nextroom = Level3; break;
	case Level3: global.nextroom = Level4; break;
	case Level4: global.nextroom = Level5; break;
	case Level5: global.nextroom = Level6; break;
	case Level6: global.nextroom = Level7; break;
	case Level7: global.nextroom = Level8; break;
	case Level8: global.nextroom = Level9; break;
	case Level9: global.nextroom = Level10; break;
	case Level10: global.nextroom = Level11; break;
	case Level11: global.nextroom = Level12; break;
	case Level12: global.nextroom = Level13; break;
	case Level13: global.nextroom = Level14; break;
	case Level14: global.nextroom = Level15; break;
	case Level15: global.nextroom = Level16; break;
	case Level16: global.nextroom = Level17; break;
	case Level17: global.nextroom = Level18; break;
	case Level18: global.nextroom = Level19; break;
	case Level19: global.nextroom = Level20; break;
	case Level20: global.nextroom = Level21; break;
	case Level21: global.nextroom = Level22; break;
	case Level22: global.nextroom = Level23; break;
	case Level23: global.nextroom = Level24; break;
	case Level24: global.nextroom = Credits; break;
	default: global.nextroom = Menu;
}

switch (room)
{
	case Level1: global.current_level = 1; break;
	case Level2: global.current_level = 2; break;
	case Level3: global.current_level = 3; break;
	case Level4: global.current_level = 4; break;
	case Level5: global.current_level = 5; break;
	case Level6: global.current_level = 6; break;
	case Level7: global.current_level = 7; break;
	case Level8: global.current_level = 8; break;
	case Level9: global.current_level = 9; break;
	case Level10: global.current_level = 10; break;
	case Level11: global.current_level = 11; break;
	case Level12: global.current_level = 12; break;
	case Level13: global.current_level = 13; break;
	case Level14: global.current_level = 14; break;
	case Level15: global.current_level = 15; break;
	case Level16: global.current_level = 16; break;
	case Level17: global.current_level = 17; break;
	case Level18: global.current_level = 18; break;
	case Level19: global.current_level = 19; break;
	case Level20: global.current_level = 20; break;
	case Level21: global.current_level = 21; break;
	case Level22: global.current_level = 22; break;
	case Level23: global.current_level = 23; break;
	case Level24: global.current_level = 24; break;
	default: global.current_level = 0;
}