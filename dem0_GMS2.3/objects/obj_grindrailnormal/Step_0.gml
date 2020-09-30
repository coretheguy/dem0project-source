if (place_meeting(x, (y - 1), obj_player) && !place_meeting(x, (y + 1), obj_player))
{
    with (obj_player)
    {
        if (state = 48 || state = 68 || state = 23)
        {
            vsp = 0
            state = 23
        }
    }
}

