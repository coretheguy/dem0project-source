if respawn = 0 && !instance_exists(obj_runonball)
	instance_create(x, y, obj_runonball)
	
if respawn > 0
	respawn--