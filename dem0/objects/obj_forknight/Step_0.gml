if (vsp < 30)
    vsp += grav
image_speed = 0.35
if ((stun == 0) && ((ministun == 0) && (hitbox == 0)))
{
    with (instance_create(x, y, obj_forkhitbox))
        mycreator = other.id
    hitbox = 1
}
if ((stun == 0) && (ministun == 0))
{
    hsp = (image_xscale * movespeed)
    sprite_index = spr_forknight
    if (scr_solid(x + 1, y) && image_xscale == 1) //PLEASE JUST FUCKING WORK OH MY GOD
        image_xscale = -1 
    if (scr_solid(x - 1, y) && image_xscale == -1) //WHYYYYYYYYYYYYYYYYYYYYYYYYYY
        image_xscale = 1
    if ((!scr_solid(x + 15, y)) || !place_meeting((x + 15), (y), obj_onewaywall))
        image_xscale = -1
    if ((!scr_solid(x - 15, y)) || !place_meeting((x - 15), (y), obj_onewaywall))
        image_xscale = 1
}
if (stun == 1)
{
    hitbox = 0
    if (place_meeting((x + 1), y, obj_bumpable) && (image_xscale == -1))
    {
        hsp *= -1
        image_xscale *= -1
    }
    if (place_meeting((x - 1), y, obj_bumpable) && (image_xscale == 1))
    {
        hsp *= -1
        image_xscale *= -1
    }
    sprite_index = spr_forknightstun
    if (grounded && (vsp > 0))
        hsp = 0
}
if (ministun == 1)
{
    hitbox = 0
    if (place_meeting((x + 1), y, obj_bumpable) && (image_xscale == -1))
    {
        hsp *= -1
        image_xscale *= -1
    }
    if (place_meeting((x - 1), y, obj_bumpable) && (image_xscale == 1))
    {
        hsp *= -1
        image_xscale *= -1
    }
    sprite_index = spr_forknightstun
    image_index = 0
    image_speed = 0
    if (grounded && (vsp > 0))
        hsp = 0
}
else
    image_speed = 0.35
scr_collideandmove()


