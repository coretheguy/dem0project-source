scr_getinput()
image_speed = 0
sprite_index = spr_player_frozen
hsp = movespeed * xscale

if place_meeting(x + 1, y, obj_wall) || place_meeting(x - 1, y, obj_wall)
{
	state = 50
	hsp = -5 * xscale
	vsp = -6
	mach2 = 0
	instance_create(x, y, obj_bumpeffect)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
}

if place_meeting(x, y + 1, obj_slopes) || place_meeting(x, y + 1, obj_ice)
{
	if movespeed < 20
		movespeed += 0.25
	if mach2 < 100
	{
		mach2 = 35
		mach2 += 2.5
	}
}

if !instance_exists(obj_dashcloud)
{
		instance_create(x, y, obj_dashcloud)
}

if place_meeting(x, y, obj_freezinator)
	movespeed += 0.1

if key_jump && image_index < 3 && place_meeting(x, y + 1, obj_collisionparent) && !place_meeting(x, y + 1, obj_slopes)
{
	vsp = -6
	image_index += 1
}

if image_index >= 3 && key_jump && place_meeting(x, y + 1, obj_collisionparent) && !place_meeting(x, y - 1, obj_slopes)
{
	mach2 = 0
	sprite_index = spr_player_bump
	image_speed = 0.35
	state = 50
	vsp = -8
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	attacking = 0
	instakillmove = 0
}

if state != 102
{
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	instance_create(x, y, obj_icicledebris)
	attacking = 0
	instakillmove = 0
}
scr_collideandmove()