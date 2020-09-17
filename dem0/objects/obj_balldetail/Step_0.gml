if !instance_exists(obj_runonball)
	instance_destroy()
if instance_exists(obj_runonball)
{
x = obj_runonball.x
y = obj_runonball.y
if obj_runonball.rolling = 1
	image_angle += obj_player.hsp
}

if instance_exists(obj_runonmetalball)
{
x = obj_runonmetalball.x
y = obj_runonmetalball.y
if obj_runonmetalball.rolling = 1
	image_angle += obj_player.hsp
}

