scr_getinput()
hsp = (xscale * movespeed)
if (movespeed <= 8)
    movespeed += 0.2
if (vsp < 12)
    vsp += grav
if place_meeting(x, (y + 1), obj_collisionparent)
{
    if (mach2 < 35)
        mach2++
    if (mach2 >= 35)
    {
        image_index = 0
        state = 63
        flash = 1
    }
}
if (!place_meeting(x, (y + 1), obj_collisionparent))
{
    state = 61
    image_index = 0
    hsp = 0
}
if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
{
    state = 62
    image_index = 0
    mach2 = 0
}
if (place_meeting((x + 1), y, obj_collisionparent) && (image_xscale == 1) && !place_meeting(x + (sign(hsp)), y, obj_slopes))
{
    state = 61
    hsp = -2
    vsp = -2
    mach2 = 0
    image_index = 0
    instance_create((x + 10), (y + 10), obj_bumpeffect)
}
if (place_meeting((x - 1), y, obj_collisionparent) && (image_xscale == -1) && !place_meeting(x + (sign(hsp)), y, obj_slopes))
{
    state = 61
    hsp = 2
    vsp = -2
    mach2 = 0
    image_index = 0
    instance_create((x - 10), (y + 10), obj_bumpeffect)
}
sprite_index = spr_player_barrelmach
image_speed = 0.35
if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_collisionparent))
    instance_create(x, y, obj_dashcloud)
scr_collideandmove()
