depth = -5
hungry = true
left = true
wrong_pizza = false

image_index = irandom_range(0,sprite_get_number(sprite_index)-1)

//pizza_type = choose("pepperoni","cheese","veggies","sausage")

alarm[0] = 5
/*
with instance_create_depth(x-(24*left),y-96,depth,obj_speechbubble)
{
	pizza_type = other.pizza_type
}