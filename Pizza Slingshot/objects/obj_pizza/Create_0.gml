depth = 1
grabbed = false;
spd = 0
flung = false
arc = false
angle_spd = 0
max_length = 128
angle = 0
first_collision = false
bouncedecay = 0.7
img_angle = 0
grav = 0
num_of_bounces = 5

randomize()
pizza_type = choose("pepperoni","cheese","veggies","sausage")

if pizza_type = "pepperoni"
{
	sprite_index = spr_pizzapepperoni
}else if pizza_type = "cheese"
{
	sprite_index = spr_pizzacheese
}else if pizza_type = "veggies"
{
	sprite_index = spr_pizzaveggies
}else if pizza_type = "sausage"
{
	sprite_index = spr_pizzasausage
}