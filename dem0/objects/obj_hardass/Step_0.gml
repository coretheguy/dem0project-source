if (vsp < 12)
    vsp += grav
image_speed = 0.35
if grounded
    sprite_index = spr_trash
else
    sprite_index = spr_trash_bump
if grounded
{
    hsp = 0
    bounce = 0
}
if (place_meeting((x - 8), y, obj_player) && ((obj_player.image_xscale == 1) && (((obj_player.state == 47) || ((obj_player.state == 48) || (obj_player.state == 68))) && (bounce == 0))))
{
    vsp = -3
    hsp = 3
    bounce = 1
    obj_player.state = 35
    obj_player.image_index = 0
    obj_player.mach2 = 0
    audio_sound_gain(sfx_bump, 0.7, 0)
    if (!audio_is_playing(sfx_bump))
        audio_play_sound(sfx_bump, 1, false)
}
if (place_meeting((x + 8), y, obj_player) && ((obj_player.image_xscale == -1) && (((obj_player.state == 47) || (obj_player.state == 48)) && (bounce == 0))))
{
    vsp = -3
    hsp = -3
    bounce = 1
    obj_player.state = 35
    obj_player.image_index = 0
    obj_player.mach2 = 0
    audio_sound_gain(sfx_bump, 0.7, 0)
    if (!audio_is_playing(sfx_bump))
        audio_play_sound(sfx_bump, 1, false)
}

if (place_meeting(x + 8, y, obj_player) || place_meeting(x - 8, y, obj_player)) && obj_player.state = 102
{
	ds_list_add(global.saveroom, id)
	instance_destroy()
	with (instance_create(x, y, obj_trashdead))
	{
	    hsp = (sign((x - obj_player.x)) * 2)
	    image_xscale = (-sign((x - obj_player.x)))
	    vsp = -5
	}
	instance_create(x, y, obj_bangeffect)
	instance_create(x, y, obj_bigcollect)
}
scr_collideandmove()

