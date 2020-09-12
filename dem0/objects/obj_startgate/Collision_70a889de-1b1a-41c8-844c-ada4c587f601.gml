with (obj_player)
{
    if (key_up && state == 0)
    {
        mach2 = 0
        image_index = 0
		sprite_index = spr_player_entergate
        state = 56
    }
}
if ((floor(obj_player.image_index) == 39) && (obj_player.state == 56))
{
	time2++
    with (obj_player)
    {
		if other.time2 > 4
		{
			targetRoom = other.targetRoom
			y = other.target_y
			x = other.target_x
			other.time2 = 0
		}
		if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
}