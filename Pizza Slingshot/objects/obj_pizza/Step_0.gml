// Click and drag object
if (grabbed)
{
    x = mouse_x;
    y = mouse_y;
	black_alpha = 0
	
	if point_distance(mouse_x,mouse_y,obj_slingshot.x,obj_slingshot.y-40) > max_length
	{
		x = obj_slingshot.x - lengthdir_x(max_length,point_direction(mouse_x,mouse_y,obj_slingshot.x,obj_slingshot.y-40))
		y = obj_slingshot.y-40 - lengthdir_y(max_length,point_direction(mouse_x,mouse_y,obj_slingshot.x,obj_slingshot.y-40))
	}
	if mouse_x > obj_slingshot.x
	{
		x = obj_slingshot.x
	}
	spd = point_distance(x,y,obj_slingshot.x,obj_slingshot.y-40)/10
	angle = point_direction(mouse_x,mouse_y,obj_slingshot.x,obj_slingshot.y-40)
	//flung
	if mouse_check_button_released(mb_left) and point_distance(x,y,obj_slingshot.x,obj_slingshot.y-40) > 16 and mouse_x < obj_slingshot.x
	{
		grabbed = false;
		speed = spd
		direction = angle
		flung = true
		angle_spd = spd
		black_alpha = 0
		
		if pizza_type = "cheese"
		{
			global.cheese_count -= 1
		}else if pizza_type = "pepperoni"
		{
			global.pepperoni_count -= 1
		}else if pizza_type = "sausage"
		{
			global.sausage_count -= 1
		}else if pizza_type = "veggies"
		{
			global.veggies_count -= 1
		}
	}else if mouse_check_button_released(mb_left)
	{
		x = xstart
		y = ystart
		grabbed = false
		black_alpha = 0
	}
	depth = -1
	
}else
{
	depth = 1	
}

if flung = true
{
	if point_distance(x,y,obj_slingshot.x,obj_slingshot.y-40) <= spd and arc = false
	{
		arc = true
		x = obj_slingshot.x
		y = obj_slingshot.y-40
	}
	img_angle -= angle_spd
}

if arc = true and !place_meeting(x,y+vspeed,obj_ground)
{
	if pizza_type != "veggies"
	{
		grav = 0.15
	}else
	{
		grav = 0
	}
}else
{
	grav = 0	
}

vspeed += grav

//collision
if place_meeting(x+hspeed,y,obj_ground) and arc = true
{
	while !place_meeting(x+sign(hspeed),y,obj_ground)
	{
		x+=sign(hspeed)
	}
	hspeed *= -bouncedecay
	angle_spd *= -bouncedecay
	num_of_bounces -= 1
}

if place_meeting(x,y+vspeed,obj_ground) and arc = true
{
	while !place_meeting(x,y+sign(vspeed),obj_ground)
	{
		y+=sign(vspeed)
	}
	vspeed *= -bouncedecay
	if abs(vspeed) < 0.3
	{
		hspeed *= 0.98
		angle_spd *= 0.98
		vspeed = 0
	}
	num_of_bounces -= 1
}

if num_of_bounces <= 0
{
	instance_destroy()	
}

//change pizza type
if flung = false
{
	if pizza_type = "cheese"
	{
		num_of_bounces = 1
		bounce_init = 1
	}else
	{
		bounce_init = 3
		num_of_bounces = bounce_init+1
	}
}

if mouse_check_button_released(mb_left)
{
	black_alpha = 0	
}

//destroy
if x > room_width + 32
{
	instance_destroy()	
}else if x < -32
{
	instance_destroy()	
}