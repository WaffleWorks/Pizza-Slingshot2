with obj_npc
{
	if hungry = true
	{
		if pizza_type = "cheese"
		{
			if global.cheese_count <= 0
			{
				global.fail = true
				instance_create_depth(x,y,depth,obj_textpopup)
				wrong_pizza = true
			}
		}else if pizza_type = "pepperoni"
		{
			if global.pepperoni_count <= 0
			{
				global.fail = true
				instance_create_depth(x,y,depth,obj_textpopup)
				wrong_pizza = true
			}
		}else if pizza_type = "sausage"
		{
			if global.sausage_count <= 0
			{
				global.fail = true
				instance_create_depth(x,y,depth,obj_textpopup)
				wrong_pizza = true
			}
		}else if pizza_type = "veggies"
		{
			if global.veggies_count <= 0
			{
				global.fail = true
				instance_create_depth(x,y,depth,obj_textpopup)
				wrong_pizza = true
			}
		}
	}
}

with instance_create_depth(x,y,depth,obj_alpha)
{
	sprite_index = other.sprite_index
	image_angle = other.img_angle
}

if global.pizza_count > 0 and global.fail = false and global.success = false
{
	with instance_create_depth(xstart,ystart,depth,obj_pizza)
	{
		if other.next_pizza_type != ""
		{
			pizza_type = other.next_pizza_type
			nexted = true
		}
	}
}