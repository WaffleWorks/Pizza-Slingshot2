if alpha = 1
{
	if room != global.nextroom
	{
		room = global.nextroom
		obj_control.temp_spd = 0
		obj_control.temp_angle = 0	
		obj_control.temp_pizza_type = ""
		obj_control.temp_xstart = 0
	}else
	{
		room_restart()
	}
}
if alpha < 1
{
	alpha += 0.05
	alarm[0] = 1
}
