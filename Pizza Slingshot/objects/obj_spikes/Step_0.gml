if place_meeting(x,y,obj_pizza)
{
	if instance_place(x,y,obj_pizza).arc = true
	{
		instance_destroy(instance_place(x,y,obj_pizza))
	}
}
