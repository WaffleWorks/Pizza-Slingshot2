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
black_alpha = 0

next_pizza_type = ""

randomize()
pizza_type = choose("pepperoni","cheese","veggies","sausage")

while pizza_type = "cheese" and global.cheese_count <= 0
{
	pizza_type = choose("pepperoni","veggies","sausage")
}
while pizza_type = "pepperoni" and global.pepperoni_count <= 0
{
	pizza_type = choose("cheese","veggies","sausage")
}
while pizza_type = "sausage" and global.sausage_count <= 0
{
	pizza_type = choose("pepperoni","cheese","veggies")
}
while pizza_type = "veggies" and global.veggies_count <= 0
{
	pizza_type = choose("pepperoni","cheese","sausage")
}

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