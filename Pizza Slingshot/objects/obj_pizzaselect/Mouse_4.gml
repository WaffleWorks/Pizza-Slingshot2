if instance_exists(obj_pizza)
{
	if obj_pizza.flung = true
	{
		obj_pizza.next_pizza_type = pizza_type
	}else
	{
		obj_pizza.pizza_type = pizza_type	
	}
}
audio_play_sound(snd_blip,0,false)
image_alpha = 0.5