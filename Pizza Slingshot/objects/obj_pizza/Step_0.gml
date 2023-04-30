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
		obj_control.temp_spd = spd
		obj_control.temp_angle = angle
		obj_control.temp_pizza_type = pizza_type
		obj_control.temp_xstart = xstart
		obj_control.temp_i_num = i_num
		flung = true
		angle_spd = spd
		black_alpha = 0
		audio_play_sound(snd_release,0,false)
		
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
	depth = -10
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
	if pizza_type != "veggies"
	{
		hspeed *= -bouncedecay
		angle_spd *= -bouncedecay
	}else
	{
		hspeed *= -1
		angle_spd *= -1
	}
	num_of_bounces -= 1
	if num_of_bounces > 0
	{
		audio_play_sound(bounce_sound,0,false)
		bounce_num += 1
	}else if global.fail = false
	{
		audio_play_sound(snd_fade,0,false)
	}
}

if place_meeting(x,y+vspeed,obj_ground) and arc = true
{
	while !place_meeting(x,y+sign(vspeed),obj_ground)
	{
		y+=sign(vspeed)
	}
	if pizza_type != "veggies"
	{
		vspeed *= -bouncedecay
	}else
	{
		vspeed *= -1
	}
	if abs(vspeed) < 0.3
	{
		hspeed *= 0.98
		angle_spd *= 0.98
		vspeed = 0
	}
	num_of_bounces -= 1
	if num_of_bounces > 0
	{
		audio_play_sound(bounce_sound,0,false)
		bounce_num += 1
	}else if global.fail = false
	{
		audio_play_sound(snd_fade,0,false)
	}
}

if place_meeting(x+hspeed,y,obj_destructableblock) and arc = true
{
	while !place_meeting(x+sign(hspeed),y,obj_destructableblock) and pizza_type != "sausage"
	{
		x+=sign(hspeed)
	}
	with obj_destructableblock
	{
		if place_meeting(x-other.hspeed,y,other)
		{
			instance_destroy()
		}
	}
	if pizza_type != "sausage"
	{
		if pizza_type != "veggies"
		{
			hspeed *= -bouncedecay
			angle_spd *= -bouncedecay
		}else
		{
			hspeed *= -1
			angle_spd *= -1
		}
		num_of_bounces -= 1
		if num_of_bounces > 0
		{
			audio_play_sound(bounce_sound,0,false)
			bounce_num += 1
		}else if global.fail = false
		{
			audio_play_sound(snd_fade,0,false)
		}
	}
}
if place_meeting(x,y+vspeed,obj_destructableblock) and arc = true
{
	while !place_meeting(x,y+sign(vspeed),obj_destructableblock) and pizza_type != "sausage"
	{
		y+=sign(vspeed)
	}
	with obj_destructableblock
	{
		if place_meeting(x,y-other.vspeed,other)
		{
			instance_destroy()
		}
	}
	if pizza_type != "sausage"
	{
		if pizza_type != "veggies"
		{
			vspeed *= -bouncedecay
		}else
		{
			vspeed *= -1
		}
		if abs(vspeed) < 0.3
		{
			hspeed *= 0.98
			angle_spd *= 0.98
			vspeed = 0
		}
		num_of_bounces -= 1
		if num_of_bounces > 0
		{
			audio_play_sound(bounce_sound,0,false)
			bounce_num += 1
		}else if global.fail = false
		{
			audio_play_sound(snd_fade,0,false)
		}
	}
}

if place_meeting(x+hspeed,y,obj_spikes)
{
	if arc = true
	{
		instance_destroy()
		audio_play_sound(snd_spikes,0,false)
	}
}
if place_meeting(x,y+vspeed,obj_spikes)
{
	if arc = true
	{
		instance_destroy()
		audio_play_sound(snd_spikes,0,false)
	}
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
	}else if pizza_type = "pepperoni"
	{ 
		bounce_init = 3
		num_of_bounces = bounce_init+1
	}else if pizza_type = "sausage"
	{ 
		bounce_init = 2
		num_of_bounces = bounce_init+1
	}else if pizza_type = "veggies"
	{ 
		bounce_init = 4
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
}else if y > room_height+32
{
	instance_destroy()	
}
else if y < -room_height*2
{
	instance_destroy()	
}

i_num = 32
if pizza_type = "veggies"
{
	i_num = round(spd*3)
}

if bounce_num = 1
{
	bounce_sound = snd_bounce2
}else if bounce_num = 2
{
	bounce_sound = snd_bounce3
}else if bounce_num = 3
{
	bounce_sound = snd_bounce4
}else if bounce_num = 4
{
	bounce_sound = snd_bounce5
}