function scr_collideandmoveonlywall() {
	var _temp_local_var_1;
	_temp_local_var_1 = abs(vsp)
	if (abs(vsp) <= 0)
	{
	}
	else
	{
	    while (true)
	    {
	        if (!place_meeting(x, (y + sign(vsp)), obj_enemiesbumpable))
	        {
	            y += sign(vsp)
	            _temp_local_var_1 = (abs(vsp) - 1)
	            if (abs(vsp) - 1)
	                continue
	        }
	        else
	            vsp = 0
			break;
	    }
	}
	_temp_local_var_1 = abs(hsp)
	if (abs(hsp) <= 0)
	{
	}
	else
	{
	    while (true)
	    {
			if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent) && (!place_meeting((x + sign(hsp)), (y - 2), obj_collisionparent))))
	            y -= 2
	        else if (place_meeting((x + sign(hsp)), y, obj_enemiesbumpable) && (!place_meeting((x + sign(hsp)), (y - 1), obj_enemiesbumpable)))
	            y--
			if ((!place_meeting((x + sign(hsp)), y, obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 3), obj_collisionparent))))
				y += 2
	        else if ((!place_meeting((x + sign(hsp)), y, obj_enemiesbumpable)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_enemiesbumpable)) && place_meeting((x + sign(hsp)), (y + 2), obj_enemiesbumpable)))
	            y++
	        if (!place_meeting((x + sign(hsp)), y, obj_enemiesbumpable))
	        {
	            x += sign(hsp)
	            _temp_local_var_1 = (abs(hsp) - 1)
	            if (abs(hsp) - 1)
	                continue
	        }
	        else
	            hsp = 0
			break;
	    }
	}
	if (vsp < 20)
	    vsp += grav



}
