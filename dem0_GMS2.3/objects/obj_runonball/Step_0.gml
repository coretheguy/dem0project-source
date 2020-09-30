with (obj_player)
{
    if (place_meeting(x, (y + 1), obj_runonball)) && ((state == 0) || ((state == 44) || ((state == 47) || (state == 48))))
	{
        state = 67
	}
}
if (vsp < 12)
    vsp += grav
if (obj_player.state == 67)
{
    hsp = obj_player.hsp
	rolling = 1
}
else
{
    hsp = 0
	rolling = 0
}
scr_collideandmove()
if place_meeting(x, (y + 1), obj_spike)
{
	if instance_exists(obj_balldetail)
		instance_destroy(obj_balldetail)
	instance_destroy()
    vsp = 0
	obj_player.mach2 = 0
	obj_player.state = 36
	obj_player.vsp = -25
	obj_player.sprite_index = spr_player_machfreefall
	if instance_exists(obj_runballspawner)
	{
		with obj_runballspawner
			respawn = 100
	}
	instance_create(x, y, obj_bangeffect)
}

if !instance_exists(obj_balldetail)
{
	instance_create(x, y, obj_balldetail)
}



