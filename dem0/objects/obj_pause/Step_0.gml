scr_getinput()
if key_start
{
    if (!pause)
    {
        pause = 1
        instance_deactivate_all(true)
        instance_create(((__view_get(0, 0) + 480) + 200), ((__view_get(1, 0) + 270) - 200), obj_exit)
        instance_create(((__view_get(0, 0) + 480) - 200), ((__view_get(1, 0) + 270) - 200), obj_retry)
		audio_pause_all()
    }
    else
    {
        instance_destroy(obj_exit)
        instance_destroy(obj_retry)
        pause = 0
        instance_activate_all()
		audio_resume_all()
    }
}
if (pause == 1)
{
    if (key_right2 && (obj_exit.selected == 0))
    {
        obj_exit.selected = 1
        obj_retry.selected = 0
    }
    if ((-key_left2) && (obj_retry.selected == 0))
    {
        obj_exit.selected = 0
        obj_retry.selected = 1
    }
    if (key_jump && (obj_retry.selected == 1))
        game_restart()
    if (key_jump && (obj_exit.selected == 1))
    {
        instance_destroy(obj_exit)
        instance_destroy(obj_retry)
        pause = 0
        instance_activate_all()
		audio_resume_all()
    }
}


