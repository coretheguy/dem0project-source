function scr_player_freefall() {
	scr_getinput()
	movespeed = 0
	hsp = 0
	landAnim = 1
	if key_attack2
	{
	    state = 69
	    vsp = -4
	    mach2 = 35
		sprite_index = spr_player_mach2jump
		instance_create(x, y, obj_machsuperjump1)
	    instance_create(x, y, obj_machsuperjump2)
	}
	if (vsp > 0)
	    superslam++
	else
	    superslam = 0
	if (superslam > 30)
	    state = 21
	if (place_meeting(x, (y + 1), obj_collisionparent) && (!place_meeting(x, (y + 1), obj_destructibles)))
	{
	    state = 55
	    jumpAnim = 1
	    jumpstop = 0
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, __view_get(0, 0), __view_get(1, 0), (__view_get(0, 0) + __view_get(2, 0)), (__view_get(1, 0) + __view_get(3, 0)))
	        {
	            vsp = -7
	            hsp = 0
	        }
	    }
	    with (obj_camera)
	    {
	        shake_mag = 10
	        shake_mag_acc = (30 / room_speed)
	    }
	    combo = 0
	    bounce = 0
	    image_index = 0
	    with (instance_create(x, (y + 35), obj_bangeffect))
	        image_xscale = obj_player.xscale
	    if (!place_meeting(x, y, obj_water2))
	        instance_create(x, y, obj_landcloud)
	    freefallstart = 0
	    audio_sound_gain(sfx_land, 0.7, 0)
	    if (!audio_is_playing(sfx_land) && global.machsound = 1)
	        audio_play_sound(sfx_land, 1, false)
		if (!audio_is_playing(sfx_newstep) && global.machsound != 1)
	        audio_play_sound(sfx_newstep, 1, false)
	}
	sprite_index = spr_player_freefall
	image_speed = 0.35
	scr_collideandmove()



}
