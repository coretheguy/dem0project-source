scr_getinput()
if key_start && !instance_exists(obj_settingsmenu)
{
    if (!pause)
    {
        pause = 1
        instance_deactivate_all(true)
        instance_create(((__view_get(0, 0) + 480) - 200), ((__view_get(1, 0) + 270) - 200), obj_retry)
		instance_create(((__view_get(0, 0) + 480) + 200), ((__view_get(1, 0) + 270) - 200), obj_settings)
		audio_pause_all()
    }
    else
    {
        instance_destroy(obj_retry)
		instance_destroy(obj_settings)
        pause = 0
        instance_activate_all()
		audio_resume_all()
    }
}
if (pause == 1)
{
    //if (key_right2 && (obj_exit.selected == 0) && obj_settings.selected = 0 && obj_retry.selected = 1)
    //{
    //    obj_exit.selected = 0
    //    obj_retry.selected = 0
	//	obj_settings.selected = 1
    //}
	//if (key_right2 && (obj_exit.selected == 0) && obj_settings.selected = 1 && obj_retry.selected = 0)
    //{
    //    obj_exit.selected = 0
    //    obj_retry.selected = 1
	//	obj_settings.selected = 0
    //}
	//if (key_left2 && (obj_exit.selected == 1) && obj_settings.selected = 0 && obj_retry.selected = 0)
    //{
    //    obj_exit.selected = 0
    //    obj_retry.selected = 0
	//	obj_settings.selected = 1
    //}
    //if ((key_left2) && (obj_retry.selected == 0) && obj_settings.selected = 1 && obj_retry.selected = 0)
    //{
    //    obj_exit.selected = 0
    //    obj_retry.selected = 1
	//	obj_settings.selected = 0
    //}
	//if ((key_left2) && (obj_retry.selected == 1) && obj_settings.selected = 0 && obj_retry.selected = 0)
    //{
    //    obj_exit.selected = 0
    //    obj_retry.selected = 0
	//	obj_settings.selected = 1
	//} we're gonna do things a bit differently
	
	if -key_left2 && selected > 1
	selected -= 1
	if key_right2 && selected < 2
	selected += 1
	
	if selected = 1
	{
		obj_retry.selected = 1
		obj_settings.selected = 0
	}
	if selected = 2
	{
		obj_retry.selected = 0
		obj_settings.selected = 1
	}
	if selected = 3
	{
		obj_retry.selected = 0
		obj_settings.selected = 0
	}
	
    if (key_jump && (obj_retry.selected == 1))
	{
		if room != hubroom1
		{
		pause = 0
        scr_resetplayer()
		}
		if room = hubroom1
			game_restart()
	}
    //if (key_jump && (obj_exit.selected == 1))
    //{
    //    instance_destroy(obj_exit)
    //    instance_destroy(obj_retry)
	//	instance_destroy(obj_settings)
    //    pause = 0
    //    instance_activate_all()
	//	audio_resume_all()
    //}
	if (key_jump && (obj_settings.selected == 1))
	{
		//if global.machsound < 4
		//global.machsound += 1
		//if global.machsound = 4
		//	global.machsound = 1
			
		//if global.machsound = 1
		//	scr_sound(sfx_collect)
		//if global.machsound = 2
		//	scr_sound(sfx_golfcollect)
		//if global.machsound = 3
		//	scr_sound(sfx_sagecollect)
		
		instance_create(x, y, obj_settingsmenu)
	}
}


