function scr_collideandmove() {
	//var _temp_local_var_1;
	//_temp_local_var_1 = abs(vsp)
	//if (abs(vsp) <= 0)
	//{
	//}
	//else
	//{
	//    while (true)
	//    {
	//        if (!scr_solid_player(x, (y + sign(vsp))))
	//        {
	//            y += sign(vsp)
	//            _temp_local_var_1 = (abs(vsp) - 1)
	//            if (abs(vsp) - 1)
	//                continue
	//        }
	//        else
	//            vsp = 0
	//    }
	//	break;
	//}
	//_temp_local_var_1 = abs(hsp)
	//if (abs(hsp) <= 0)
	//{
	//}
	//else
	//{
	//    while (true)
	//    {
	//        if (scr_solid_player((x + sign(hsp)), y) && (!scr_solid_player((x + sign(hsp)), (y - 1))))
	//            y--
	//        if ((!scr_solid_player((x + sign(hsp)), y)) && ((!scr_solid_player((x + sign(hsp)), (y + 1))) && scr_solid_player((x + sign(hsp)), (y + 2))))
	//            y++
	//        if (!scr_solid_player((x + sign(hsp)), y))
	//        {
	//            x += sign(hsp)
	//            _temp_local_var_1 = (abs(hsp) - 1)
	//            if (abs(hsp) - 1)
	//                continue
	//        }
	//        else
	//            hsp = 0
	//    }
	//	break;
	//}
	//if (vsp < 20)
	//    vsp += grav
	
	var i, j;

	i = abs(vsp);
	j = i;

	while !(i <= 0)
	{
	    if (!place_meeting(x, (y + sign(vsp)), obj_collisionparent))
	    {
	        y += sign(vsp);
	        j -= 1;
		
	        if j
	            continue;
	    }
	    else
	        vsp = 0;
		break; // not in original code put prevents the game from crashing
	}

	i = abs(hsp)
	j = i;
	while !(i <= 0)
	{
		if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent) && (!place_meeting((x + sign(hsp)), (y - 2), obj_collisionparent))))
			y -= 2
	
	    if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (!place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent)))
			y--;
	
		if ((!place_meeting((x + sign(hsp)), y, obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 3), obj_collisionparent))))
			y += 2
			
	    if ((!place_meeting((x + sign(hsp)), y, obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)))
	        y++;
	
	    if (!place_meeting((x + sign(hsp)), y, obj_collisionparent))
	    {
	        x += sign(hsp);
	        j -= 1;
		
	        if j
	            continue;
	    }
	    else
	        hsp = 0;
		break; // not in original code put prevents the game from crashing
	}

	if vsp < 20 // gravity cap
	    vsp += grav;



}
