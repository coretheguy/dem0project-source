instance_destroy()
if instance_exists(obj_nerdblock)
	instance_destroy(obj_nerdblock)
if global.golfhit < 10
{
	with instance_create(x, y, obj_rainbowtext)
		text = "NICE!"
	repeat(6)
		instance_create(x, y, obj_bigcollect)
}
else if global.golfhit >= 10 && global.golfhit < 20
{
	with instance_create(x, y, obj_rainbowtext)
		text = "GOOD SHOT"
	repeat(3)
		instance_create(x, y, obj_bigcollect)
}
else if global.golfhit >= 20 && global.golfhit < 30
{
	with instance_create(x, y, obj_rainbowtext)
		text = "NEAT"
		instance_create(x, y, obj_bigcollect)
}
else
{
	instance_create(x, y, obj_collect)
}