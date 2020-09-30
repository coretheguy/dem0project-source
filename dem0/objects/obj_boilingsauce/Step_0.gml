if (place_meeting(x, (y - 1), obj_player) && obj_player.state != 102)
{
	obj_player.mach2 = 0
    obj_player.state = 101
    obj_player.image_index = 0
    obj_player.vsp = -25
    obj_player.sprite_index = spr_player_fireass
	if global.machsound = 1
	{
		if !audio_is_playing(va_hurt1) || !audio_is_playing(va_hurt2) || !audio_is_playing(va_hurt3)
		scr_sound(va_hurt1, va_hurt2, va_hurt3)
	}
	else
	{
		if !audio_is_playing(sfx_sagefireass)
		scr_sound(sfx_sagefireass)
	}
}

if place_meeting(x, y - 1, obj_player) && obj_player.state = 102
{
	instance_destroy()
	instance_create(x, y + 32, obj_ice)
}

