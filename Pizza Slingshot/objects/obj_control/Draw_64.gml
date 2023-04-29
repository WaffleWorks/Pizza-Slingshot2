draw_set_font(fnt_small)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

//CHEESE
if global.cheese_count > 0
{
	draw_sprite(spr_pizzacheese,0,cheese_x,20)
	
	if instance_exists(obj_pizza)
	{
		if obj_pizza.pizza_type = "cheese" and obj_pizza.flung = false
		or obj_pizza.next_pizza_type = "cheese" and obj_pizza.flung = true
		{
			draw_sprite(spr_whiteoutline,0,cheese_x,20)
		}
	}
	
	with obj_pizzaselect
	{
		if draw = true and pizza_type = "cheese"
		{
			draw_self()
		}
	}
	
	draw_text_outlined(cheese_x+12,20+12,c_black,c_white,"x" + string(global.cheese_count))
}else if cheese_init > 0
{
	draw_sprite(spr_pizzacheese,0,cheese_x,20)
	draw_sprite_ext(spr_pizzablack,0,cheese_x,20,1,1,0,c_white,0.5)
}
//PEPPERONI
if global.pepperoni_count > 0
{
	draw_sprite(spr_pizzapepperoni,0,pepperoni_x,20)
	
	if instance_exists(obj_pizza)
	{
		if obj_pizza.pizza_type = "pepperoni" and obj_pizza.flung = false
		or obj_pizza.next_pizza_type = "pepperoni" and obj_pizza.flung = true
		{
			draw_sprite(spr_whiteoutline,0,pepperoni_x,20)
		}
	}
	
	with obj_pizzaselect
	{
		if draw = true and pizza_type = "pepperoni"
		{
			draw_self()
		}
	}
	
	draw_text_outlined(pepperoni_x+12,20+12,c_black,c_white,"x" + string(global.pepperoni_count))
}else if pepperoni_init > 0
{
	draw_sprite(spr_pizzapepperoni,0,pepperoni_x,20)
	draw_sprite_ext(spr_pizzablack,0,pepperoni_x,20,1,1,0,c_white,0.5)
}
//SAUSAGE
if global.sausage_count > 0
{
	draw_sprite(spr_pizzasausage,0,sausage_x,20)
	
	if instance_exists(obj_pizza)
	{
		if obj_pizza.pizza_type = "sausage" and obj_pizza.flung = false
		or obj_pizza.next_pizza_type = "sausage" and obj_pizza.flung = true
		{
			draw_sprite(spr_whiteoutline,0,sausage_x,20)
		}
	}
	
	with obj_pizzaselect
	{
		if draw = true and pizza_type = "sausage"
		{
			draw_self()
		}
	}
	
	draw_text_outlined(sausage_x+12,20+12,c_black,c_white,"x" + string(global.sausage_count))
}else if sausage_init > 0
{
	draw_sprite(spr_pizzasausage,0,sausage_x,20)
	draw_sprite_ext(spr_pizzablack,0,sausage_x,20,1,1,0,c_white,0.5)
}
//VEGGIES
if global.veggies_count > 0
{
	draw_sprite(spr_pizzaveggies,0,veggies_x,20)
	
	if instance_exists(obj_pizza)
	{
		if obj_pizza.pizza_type = "veggies" and obj_pizza.flung = false
		or obj_pizza.next_pizza_type = "veggies" and obj_pizza.flung = true
		{
			draw_sprite(spr_whiteoutline,0,veggies_x,20)
		}
	}
	
	with obj_pizzaselect
	{
		if draw = true and pizza_type = "veggies"
		{
			draw_self()
		}
	}
	
	draw_text_outlined(veggies_x+12,20+12,c_black,c_white,"x" + string(global.veggies_count))
}else if veggies_init > 0
{
	draw_sprite(spr_pizzaveggies,0,veggies_x,20)
	draw_sprite_ext(spr_pizzablack,0,veggies_x,20,1,1,0,c_white,0.5)
}