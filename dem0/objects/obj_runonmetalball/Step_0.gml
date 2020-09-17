with (obj_player)
{
    if (place_meeting(x, (y + 1), obj_runonmetalball)) && ((state == 0) || ((state == 44) || ((state == 47) || (state == 48))))
        state = 67
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


if !instance_exists(obj_balldetail)
	instance_create(x, y, obj_balldetail)



