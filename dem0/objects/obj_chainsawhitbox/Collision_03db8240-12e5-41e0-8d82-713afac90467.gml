if !place_meeting(x, y, obj_slopes) && !place_meeting(x, y, obj_destructibles)
{
if (bumpeffect == 0)
{
    bumpeffect = 1
	obj_player.movespeed = -4
    with (instance_create((x + (image_xscale * 40)), y, obj_spikehurteffect))
        other.image_xscale = image_xscale
}
}