// Click and drag object
if (grabbed)
{
    x = mouse_x;
    y = mouse_y;
	
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
	}else if mouse_check_button_released(mb_left)
	{
		x = xstart
		y = ystart
		grabbed = false
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
	grav = 0.15
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

if num_of_bounces = 0
{
	instance_destroy()	
}