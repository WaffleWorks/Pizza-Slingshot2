if alpha = 1
{
	if room != global.nextroom
	{
		room = global.nextroom
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
