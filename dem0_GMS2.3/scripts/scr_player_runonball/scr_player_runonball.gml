function scr_player_runonball() {
	scr_getinput()
	move = (key_left + key_right)
	if (!key_attack)
	    hsp = (xscale * movespeed)
	else
	    hsp = (xscale * movespeed)
	jumpstop = 0
	vsp = obj_player.vsp
	if (!place_meeting(x, (y + 1), obj_runonball) || !place_meeting(x, (y + 1), obj_runonmetalball))
	{
	    state = 0
	    jumpAnim = 1
	    jumpstop = 0
	}
	if (key_jump && (place_meeting(x, (y + 1), obj_collisionparent) && ((!key_down) && (!key_attack))))
	{
	    vsp = -9
	    state = 36
	    image_index = 0
	    machslideAnim = 1
	    jumpAnim = 1
	    audio_sound_gain(sfx_jump, 0.7, 0)
	    if (!audio_is_playing(sfx_jump))
	        audio_play_sound(sfx_jump, 1, false)
	}
	if (key_jump && (place_meeting(x, (y + 1), obj_collisionparent) && ((!key_down) && (!key_attack)) && key_up))
	{
	    vsp = -12
	    state = 10
	    image_index = 0
	    machslideAnim = 1
	    jumpAnim = 1
	    audio_sound_gain(sfx_jump, 0.7, 0)
	    if (!audio_is_playing(sfx_jump))
	        audio_play_sound(sfx_jump, 1, false)
	}

	if ((xscale == 1) && (move == -1))
	    xscale = -1
	if ((xscale == -1) && (move == 1))
	   xscale = 1

	if ((place_meeting((x + 1), y, obj_bumpable) && (xscale == 1)) || (place_meeting((x - 1), y, obj_bumpable) && (xscale == -1)))
	    movespeed = 0

	//if move != 0 && movespeed < 4 && move = 1
	//{
	//		movespeed += 0.1
	//}

	//if move != 0 && movespeed > -4 && move = -1
	//{
	//		movespeed -= 0.1
	//}

	//if move != 1 
	//	movespeed = 0

	if move != 0 && (movespeed < 3) && !key_attack
	{
			movespeed += 0.1
	}
	if move = 0 && !key_attack
		movespeed = 0
	

	

	sprite_index = spr_player_idle
	if (key_up && (move == 0))
	{
	    landAnim = 0
	    sprite_index = spr_player_Sjumpprep
	    if (floor(image_index) == 5)
	        image_speed = 0
		else
			image_speed = 0.35
	}
	if (key_attack && place_meeting(x, (y + 1), obj_collisionparent))
	{
		sprite_index = spr_player_running
	    if (mach2 < 35 && movespeed < 4)
	    {
	        mach2++
	        movespeed += 0.1
			image_speed = 0.35
	    }
	    if (mach2 >= 35 && movespeed < 6)
		{
	        movespeed += 0.1
			image_speed = 0.6
			}
	}
	if (!key_attack)
	    mach2 = 0
	if (move != 0)
	    {
			sprite_index = spr_player_running
	        if (movespeed > 0 && (movespeed < 3) && (image_speed < 0.5))
	            image_speed += 0.05
	    }
	    else if !key_attack && move = 0
		{
			if sprite_index = spr_player_idle
				image_speed = 0.35
			else
				image_speed = 0.15
		}
	scr_collideandmove()



}
