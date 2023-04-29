if image_xscale < 1 and image_yscale < 1 and expanded = false
{
	image_xscale += (1/30)
	image_yscale += (1/30)
}else
{
	expanded = true
}

if expanded = true and image_alpha > 0
{
	image_alpha -= (1/15)
	if image_alpha <= 1
	{
		image_xscale -= (1/30)
		image_yscale -= (1/30)
	}
}else if image_alpha <= 0
{
	if fade = false
	{
		//fade	
		instance_create_depth(0,0,depth,obj_fadeout)
		fade = true
	}
}

//reset
if global.success = true and reset = false
or global.fail = true and reset = false
{
	reset = true
	if global.success = true
	{
		sprite_index = spr_textsuccess
		success = true
	}else if global.fail = true
	{
		sprite_index = spr_textfail	
		fail = true
	}
	x = room_width / 2
	y = room_height / 2
	image_xscale = 0
	image_yscale = 0
	image_alpha = 5
	expanded = false
}