if place_meeting(x, (y - 1), obj_player) 
{
    with (obj_player)
    {
		if state != 102
		{
		if barrel = 1
			state = 63
		else
			state = 38
        if (movespeed < 12)
            movespeed = 12
		}
    }
}