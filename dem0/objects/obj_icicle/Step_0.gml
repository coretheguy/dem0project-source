if obj_player.x > x && obj_player.x < x + 32
{
	if falltimer = 0
	{
	falltimer = 1
	falling = 50
	}
}
	
if falling > 1
{
	x = x + random_range(-2, 2)
	falling--
}
		
if place_meeting(x, y + 1, obj_collisionparent)
{
	instance_destroy()
	instance_create(x + 16, y + 64, obj_icicledebris)
	instance_create(x + 16, y + 64, obj_icicledebris)
	instance_create(x + 16, y + 64, obj_icicledebris)
	instance_create(x + 16, y + 64, obj_icicledebris)
	instance_create(x + 16, y + 64, obj_icicledebris)
	instance_create(x + 16, y + 64, obj_icicledebris)
	instance_create(x + 16, y + 64, obj_icicledebris)
}
	
if falling = 1
	vsp += 0.3
	
scr_collideandmove()