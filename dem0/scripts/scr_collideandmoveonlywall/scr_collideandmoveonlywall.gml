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
	break; // crash prevention
}

i = abs(hsp)
j = i;
while !(i <= 0)
{
	if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent) && (!place_meeting((x + sign(hsp)), (y - 2), obj_collisionparent))))
		y -= 2
	
    if (place_meeting((x + sign(hsp)), y, obj_enemiesbumpable) && (!place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent)))
		y--;
	
	if ((!place_meeting((x + sign(hsp)), y, obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && ((!place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 3), obj_collisionparent))))
		y += 2
			
    if ((!place_meeting((x + sign(hsp)), y, obj_enemiesbumpable)) && ((!place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent)) && place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent)))
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
	break; // crash prevention
}

if vsp < 20 // gravity cap
    vsp += grav;
