if ((obj_player.y < y) && ((obj_player.state != 51) && (obj_player.attacking == 0)))
{
    if (obj_player.key_jump2 && ((obj_player.y < y) && (obj_player.vsp > 0)))
    {
        bounce = 1
        image_index = 0
        audio_sound_gain(sfx_superjump, 0.7, 0)
        if (!audio_is_playing(sfx_superjump))
            audio_play_sound(sfx_superjump, 1, false)
        if (!obj_player.key_up)
            obj_player.vsp = -12
        if obj_player.key_up
        {
            obj_player.state = 10
            obj_player.vsp = -14
        }
        instance_create(obj_player.x, (obj_player.y + 40), obj_stompeffect)
    }
    else
    {
        obj_player.vsp = -9
        bounce = 1
        image_index = 0
        audio_sound_gain(sfx_superjump, 0.7, 0)
        if (!audio_is_playing(sfx_superjump))
            audio_play_sound(sfx_superjump, 1, false)
    }
}
if ((obj_player.mach2 >= 35) || (obj_player.attacking == 1))
{
    if (obj_player.state == 12)
    {
        obj_player.vsp = -10
        obj_player.image_index = 0
        obj_player.facestompAnim = 1
    }
    instance_destroy()
	if (ds_list_find_index(global.saveroom, id) == -1)
	{
		instance_create(x, y, obj_10)
		global.collect += 10
				ds_list_add(global.saveroom, id)
	}
    if (obj_player.state != 41)
        obj_player.vsp = -10
    instance_create(x, y, obj_bangeffect)
    with (instance_create(x, y, obj_flyingenemydead))
    {
        hsp = (sign((x - obj_player.x)) * 15)
        image_xscale = (-sign((x - obj_player.x)))
        vsp = -10
    }
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
}

