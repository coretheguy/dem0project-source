if respawn = 0 && !instance_exists(obj_runonmetalball)
	instance_create(x, y, obj_runonmetalball)
	
if respawn > 0
	respawn--