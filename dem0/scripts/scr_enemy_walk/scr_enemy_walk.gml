if grounded
    hsp = (image_xscale * movespeed)
else
    hsp = 0
if ((roaming == 0) && grounded)
{
    hsp = 0
    state = 72
    image_index = 0
}
if ((sprite_index == fallspr) && grounded)
{
    scr_sound(24)
    instance_create(x, y, obj_landcloud)
    state = 80
    sprite_index = landspr
    image_index = 0
}
if grounded
    sprite_index = walkspr
else
    sprite_index = fallspr
image_speed = 0.35
if (((place_meeting((x + 1), y, obj_enemiesbumpable) && (image_xscale == 1)) || (place_meeting((x - 1), y, obj_enemiesbumpable) && (image_xscale == -1))) && (!place_meeting((x + sign(hsp)), y, obj_slopes)))
{
    state = 74
    sprite_index = turnspr
    image_index = 0
}
if (((!scr_solid(x + image_xscale * 15, y + 3) || !place_meeting((x + (image_xscale * 15)), (y + 3), obj_onewaywall))))
{
    hsp = 0
    state = 74
    sprite_index = turnspr
    image_index = 0
}
//if ((!scr_solid(x - 15, y + 3)) && (image_xscale == -1))
//{
//    hsp = 0
//    state = 74
//    sprite_index = turnspr
//    image_index = 0
//}
if ((!grounded) && (hsp < 0))
    hsp += 0.1
else if ((!grounded) && (hsp > 0))
    hsp -= 0.1
scr_collideandmove()
