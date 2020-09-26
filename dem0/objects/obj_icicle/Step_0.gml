if obj_player.x > x && obj_player.x < x + 32
{
	sprite_index = spr_flames
	if falltimer = 0
	{
		falltimer = 1
	falling = 50
	}
}
	
if falling > 1
		falling--
		
if place_meeting(x, y + 1, obj_collisionparent)
	instance_destroy()
	
if falling = 1
	vsp += 0.3
	
scr_collideandmove()