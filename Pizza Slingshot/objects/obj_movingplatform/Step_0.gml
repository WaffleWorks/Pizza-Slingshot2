if horizontal = true
{
	hspeed = spd		
	if place_meeting(x+hspeed,y,obj_platformcollision)
	{
		while !place_meeting(x+sign(hspeed),y,obj_platformcollision)
		{
			x+=sign(hspeed)
		}
		spd *= -1
	}
}else
{
	vspeed = spd	
	if place_meeting(x,y+vspeed,obj_platformcollision)
	{
		while !place_meeting(x,y+sign(vspeed),obj_platformcollision)
		{
			y+=sign(vspeed)
		}
		spd *= -1
	}
}

with instance_place(x,y-1,obj_npc)
{
	if other.horizontal = true
	{
		hspeed = other.hspeed
	}else
	{
		vspeed = other.vspeed
	}
}

with obj_spikes
{
	if place_meeting(x,y,other) and dont_stick = false
	{
		if other.horizontal = true
		{
			hspeed = other.hspeed
		}else
		{
			vspeed = other.vspeed
		}
	}
}

if horizontal = true
{
	with instance_place(x+hspeed,y,obj_pizza)
	{
		if arc = true
		{
			obj_pizza.x += hspeed*2
		}
	}
}else
{
	if vspeed < 0
	{
		with instance_place(x,y+vspeed,obj_pizza)
		{
			if arc = true
			{
				obj_pizza.y += vspeed*2
			}
		}
	}
}
