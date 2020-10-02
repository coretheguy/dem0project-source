scr_getinput()
landAnim = 1
mach2 = 0
hsp = (movespeed * xscale)

if movespeed > 15
	movespeed -= 1

var drafty = 0
with (instance_place(x, y, obj_current))
{
    other.sprite_index = spr_player_slipnslide
    if (other.movespeed < 15)
        other.movespeed += 1
    other.xscale = sign(image_xscale)
}
with (instance_place(x, y, obj_current2))
{
    other.sprite_index = spr_player_machfreefall
    other.vsp = (15 * (-sign(image_yscale)))
    if (sign(image_yscale) == 1)
        drafty = 1
}
if (!place_meeting(x, y, obj_current))
    state = 0
if ((movespeed <= 5) && ((!place_meeting(x, y, obj_current)) && (!place_meeting(x, y, obj_current2))))
{
    if (drafty == 1)
    {
        state = 18
        sprite_index = spr_player_machfreefall
        jumpstop = 1
    }
    else
        state = 38
}
image_speed = 0.35
scr_collideandmove()
