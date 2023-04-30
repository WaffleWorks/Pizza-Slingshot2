if xto > room_width - 320 or xto < 320
{
	xto = x	
}
//move right
if move_right = true
{
	if x < xto
	{	
		x += 16
	}else
	{
		move_right = false
		page++
	}
}
//move left
if move_left = true
{
	if x > xto
	{	
		x -= 16
	}else
	{
		move_left = false
		page--
	}
}