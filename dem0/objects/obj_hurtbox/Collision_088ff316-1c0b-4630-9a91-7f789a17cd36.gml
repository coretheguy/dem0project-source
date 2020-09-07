with (obj_player)
{
    if ((state == 2) || (state == 3))
    {
        scr_sound(sfx_metaldestroy)
        with (instance_create(x, y, obj_knightdebris))
            image_index = 0
        with (instance_create(x, y, obj_knightdebris))
            image_index = 1
        with (instance_create(x, y, obj_knightdebris))
            image_index = 2
        with (instance_create(x, y, obj_knightdebris))
            image_index = 3
        with (instance_create(x, y, obj_knightdebris))
            image_index = 4
        with (instance_create(x, y, obj_knightdebris))
            image_index = 5
        if (x != other.x)
            obj_player.hsp = (sign((x - other.x)) * 5)
        else
            obj_player.hsp = 5
        vsp = -3
        image_index = 0
        obj_player.image_index = 0
        obj_player.flash = 1
        state = 50
    }
    else if ((state == 5) && (hurted == 0))
        instance_create(x, y, obj_bombexplosion)
	else if (barrel = 1)
	{
	barrel = 0
    mask_index = spr_player_mask
    state = 50
    hsp = -2
    vsp = -2
    mach2 = 0
    image_index = 0
    instance_create((x + 10), (y + 10), obj_bumpeffect)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	}
    else if ((state != 51) && ((hurted == 0) && (state != 50)) && (barrel != 1))
    {
		if global.machsound = 1
        scr_sound(va_hurt1, va_hurt2, va_hurt3)
		else
		scr_sound(sfx_newhurt)
        instance_create(x, y, obj_spikehurteffect)
        state = 51
        image_index = 0
        flash = 1
        if (x != other.x)
        {
            xscale = (-sign((x - other.x)))
            hsp = (sign((x - other.x)) * 5)
        }
        else
            hsp = ((-xscale) * 5)
        if (!place_meeting(x, (y + 1), obj_wall))
        {
            hurtbounce = 1
            vsp = -5
        }
    }
}


