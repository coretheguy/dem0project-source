if !instance_exists(obj_runonmetalball)
	instance_destroy()
if instance_exists(obj_runonmetalball)
{
x = obj_runonmetalball.x
y = obj_runonmetalball.y
if obj_runonmetalball.rolling = 1
	image_angle += obj_player.hsp
}

