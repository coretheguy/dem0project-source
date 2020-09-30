if (place_meeting(x, (y), obj_player) && (!place_meeting(x, y, obj_player)))
{
    with (obj_player)
    {
        if (state = 48 || state = 68)
        {
			vsp = 7
            state = 23
        }
    }
}
