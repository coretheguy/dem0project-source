if (vsp < 30)
    vsp += grav
image_speed = 0.35
if ((stun == 0) && (ministun == 0))
{
    hsp = (image_xscale * movespeed)
    sprite_index = spr_pizzaball_walk
    if ((place_meeting((x + 10), y, obj_bumpable) || place_meeting((x + 10), y, obj_destructibles)) && (image_xscale == 1))
        image_xscale = -1
    if ((place_meeting((x - 10), y, obj_bumpable) || place_meeting((x - 10), y, obj_destructibles)) && (image_xscale == -1))
        image_xscale = 1
    if (!place_meeting((x + 15), (y + 3), obj_bumpable))
        image_xscale = -1
    if (!place_meeting((x - 15), (y + 3), obj_bumpable))
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
    sprite_index = spr_pizzaball_stun
    if (place_meeting(x, (y + 1), obj_bumpable) && (vsp > 0))
        hsp = 0
}

if obj_player.state != 24 && stun = 1
{
	alarm[0] = 150
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
    sprite_index = spr_pizzaball_stun
    image_index = 0
    image_speed = 0
    if (place_meeting(x, (y + 1), obj_bumpable) && (vsp > 0))
        hsp = 0
}
else
    image_speed = 0.35
scr_collideandmove()