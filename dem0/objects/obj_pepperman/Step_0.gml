if (vsp < 12)
    vsp += grav
image_speed = 0.35
if ((charging == 0) && (stunned == 0))
{
	flash = 0
    if (obj_player.x != x)
        image_xscale = sign((obj_player.x - x))
    hsp = 0
    sprite_index = spr_pepperman
}
if (stunned == 1)
{
    if (hsp < 0)
        hsp += 0.1
    else if (hsp > 0)
        hsp -= 0.1
    sprite_index = spr_pepperman_hurt
}
if (charging == 1)
{
    hsp = (image_xscale * movespeed)
    if (!place_meeting((x + 50), (y + 3), obj_wall))
        image_xscale = -1
    if (!place_meeting((x - 50), (y + 3), obj_wall))
        image_xscale = 1
	if place_meeting(x + 50, y, obj_wall)
	{
		hsp = -8
		image_xscale = -1
	}
	//if place_meeting(x - 50, y, obj_wall)
	//{
	//	movespeed = 4
	//	image_xscale = 1
	//}
    if (chargingdown == 0)
    {
        if (movespeed < 12) && hits < 2
		{
				movespeed += 0.1
		}
        if (movespeed < 16) && hits >= 2
		{
				movespeed += 0.2
		}
        if (movespeed >= 12) && hits < 2
		{
				chargingdown = 1
		}
		else if movespeed >= 16 && hits >= 2
		{
			chargingdown = 1
		}
    }
    if (chargingdown == 1)
    {
        movespeed -= 0.1
        if (movespeed <= 0)
        {
            chargingdown = 0
            charging = 0
            alarm[1] = 50
        }
    }
    sprite_index = spr_pepperman_charge
}
if ((charging == 1) && (movespeed > 6))
    image_speed = 0.6
else
    image_speed = 0.35
if ((floor(image_index) == 0) && (charging == 1))
    instance_create(x, (y + 90), obj_cloudeffect)
if (flash > 0)
    flash--
scr_collideandmove()

if avoidstunlocking = 1 && place_meeting(x, y + 1, obj_collisionparent)
{
	stunned = 0
	if image_xscale = -1
		image_xscale = -1
	flash = 0
	alarm[1] = 50
	avoidstunlocking = 0
}
global.panic = 1
if bossstart = 1
{
global.minutes = 2
global.seconds = 0
bossstart = 0
}
if (collectdrop != 0)
{
    collectdrop--
    with (instance_create(x, y, obj_collect))
    {
        alarm[0] = 20
        cantcollect = 1
        hsp = ((-other.image_xscale) * random_range(3, 5))
        vsp = random_range(-3, -10)
        drop = 1
    }
}
//if place_meeting(x, y, obj_outsidepeproom)
//{
//	stunned = 1
//}

		