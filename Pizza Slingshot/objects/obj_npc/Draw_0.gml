draw_self()
draw_sprite(spr_speechbubbleleft,hungry,x-(24*left),y-96)
if hungry = true
{
	if pizza_type = "pepperoni"
	{
		draw_sprite(spr_pizzapepperoni,0,x-(24*left),y-96)	
	}else if pizza_type = "cheese"
	{
		draw_sprite(spr_pizzacheese,0,x-(24*left),y-96)
	}else if pizza_type = "veggies"
	{
		draw_sprite(spr_pizzaveggies,0,x-(24*left),y-96)
	}else if pizza_type = "sausage"
	{
		draw_sprite(spr_pizzasausage,0,x-(24*left),y-96)
	}
}