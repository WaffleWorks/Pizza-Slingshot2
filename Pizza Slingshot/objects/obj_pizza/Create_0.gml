depth = 1
grabbed = false;
spd = 0
flung = false
arc = false
angle_spd = 0
max_length = 128
angle = 0
first_collision = false
bouncedecay = 0.7
img_angle = 0
grav = 0
black_alpha = 0

next_pizza_type = ""


if nexted = false
{
	if global.cheese_count > 0 
	{
		pizza_type = "cheese"	
	}else if global.pepperoni_count > 0 
	{
		pizza_type = "pepperoni"	
	}else if global.sausage_count > 0 
	{
		pizza_type = "sausage"	
	}else if global.veggies_count > 0 
	{
		pizza_type = "veggies"	
	}
}

if pizza_type = "pepperoni"
{
	sprite_index = spr_pizzapepperoni
	bounce_init = 3
}else if pizza_type = "cheese"
{
	sprite_index = spr_pizzacheese
	bounce_init = 0
}else if pizza_type = "veggies"
{
	sprite_index = spr_pizzaveggies
	bounce_init = 3
}else if pizza_type = "sausage"
{
	sprite_index = spr_pizzasausage
	bounce_init = 2
}
num_of_bounces = bounce_init+1

alarm[0] = 1