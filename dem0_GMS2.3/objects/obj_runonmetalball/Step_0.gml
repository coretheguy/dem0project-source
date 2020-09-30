with (obj_player)
{
    if (place_meeting(x, (y + 1), obj_runonmetalball)) && ((state == 0) || ((state == 44) || ((state == 47) || (state == 48))))
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

if !instance_exists(obj_metalballdetail)
{
	instance_create(x, y, obj_metalballdetail)
}

if place_meeting(x, y + 1, obj_boilingsauce)
{
	grav = 0.05	
}

if place_meeting(x, y - 100, obj_boilingsauce)
{
	instance_destroy()
	if instance_exists(obj_runmetalballspawner)
	{
		with obj_runmetalballspawner
			respawn = 100
	}
}

scr_collideandmove()





