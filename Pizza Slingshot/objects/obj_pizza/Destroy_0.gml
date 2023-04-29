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
		}
	}
}