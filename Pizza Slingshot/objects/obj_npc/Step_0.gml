if place_meeting(x,y,obj_pizza)
{
	if instance_place(x,y,obj_pizza).pizza_type = pizza_type
	{
		hungry = false
	}
	instance_destroy(instance_place(x,y,obj_pizza))
}