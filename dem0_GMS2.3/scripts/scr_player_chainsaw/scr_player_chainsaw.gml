function scr_player_chainsaw() {
	/* E */

	if !instance_exists(obj_chainsawhitbox)
		instance_create(x, y, obj_chainsawhitbox)
	if instance_exists(obj_chainsawpogohitbox)
		instance_destroy(obj_chainsawpogohitbox)

	scr_getinput()
	landAnim = 0
	hsp = (xscale * movespeed)
	machslideAnim = 1
	move2 = (key_right2 + key_left2)
	move = (key_right + key_left)
	global.sawpower -= 0.1



	if mach2 < 100
		mach2 += 2

	//if ((place_meeting((x + 1), y, obj_bumpable) && (xscale == 1)) || (place_meeting((x - 1), y, obj_bumpable) && (xscale == -1)))
	//{
	//    hsp = 5 * xscale
	//	state = 50
	//}

	if movespeed > 4
	{
		sprite_index = spr_player_chainsaw
	}

	if movespeed > 12 && !instance_exists(obj_mach3effect) && !instance_exists(obj_mach3effect1) && !instance_exists(obj_mach3effect2)
	{
		instance_create(x, y, obj_mach3effect)
		instance_create(x, y, obj_mach3effect1)
	    instance_create(x, y, obj_mach3effect2)
	}

	if key_chainsaw
	{
		if movespeed < 14
			movespeed += 0.2
		if movespeed < 0
			sprite_index = spr_player_chainsawend
		else
			sprite_index = spr_player_chainsaw
	}

	if !key_chainsaw
	{
		if mach2 > 0
			mach2 = 0
		if movespeed > 0
			movespeed -= 0.2
		if movespeed < 0
			movespeed += 0.1
		if movespeed <= 4
			sprite_index = spr_player_chainsawend
	}
	if movespeed = 0 && !key_chainsaw
	{
		state = 0
		mach2 = 0
	}

	if key_jump && place_meeting(x, y + 1, obj_collisionparent)
	{
		vsp = -10
	}
	if sprite_index = spr_player_chainsawair && place_meeting(x, y + 1, obj_collisionparent)
		sprite_index = spr_player_chainsaw

	if key_down && place_meeting(x, y + 1, obj_collisionparent)
	{
		state = 48
		sprite_index = spr_player_crouchslip
	}
	if key_down && !place_meeting(x, y + 1, obj_collisionparent)
	{
		state = 7
		mach2 = 0
		sprite_index = spr_player_chainsawpogo1
		instance_destroy(obj_chainsawhitbox)
	}

	if place_meeting(x, (y + 1), obj_onewaywatersolid)
	{
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	}

	if ((!instance_exists(obj_dashcloud)) && ((!place_meeting(x, y, obj_water2)) && place_meeting(x, (y + 1), obj_collisionparent) && movespeed > 0))
	    instance_create(x, y, obj_dashcloud)
	
	if movespeed < 0
	{
		mach2 = 0
	}
	if global.sawpower = 0
		global.gotchainsaw = 0

	image_speed = 0.6
	scr_collideandmove()





	//if (obj_chainsawhitbox.bumpeffect == 0)
	//{
	//    if ((movespeed <= 13) && ((movespeed > 0) && ((sprite_index == spr_player_chainsaw) || (sprite_index == spr_player_chainsawstart))))
	//        movespeed -= 0.2
	//    else if ((movespeed <= 13) && (movespeed > 0))
	//        movespeed -= 0.4
	//}
	//else if (obj_chainsawhitbox.bumpeffect == 1)
	//{
	//    hsp = (xscale * movespeed)
	//    if (movespeed > 0)
	//        movespeed -= 0.2
	//}
	//crouchslideAnim = 1
	//if ((movespeed < 4) && (place_meeting(x, (y + 1), obj_collisionparent) && (!key_chainsaw)))
	//{
	//    state = 0
	//    image_index = 0
	//}
	//if (key_down && (place_meeting(x, (y + 1), obj_collisionparent) && (movespeed > 0)))
	//{
	//    machhitAnim = 0
	//    state = 46
	//}
	audio_sound_gain(sfx_mach2, 0.7, 0)
	if (!audio_is_playing(sfx_mach2))
	    audio_play_sound(sfx_mach2, 1, false)
	//if ((sprite_index == spr_player_chainsawstart) && ((floor(image_index) == 1) && (movespeed > 8)))
	//    sprite_index = spr_player_chainsaw
	//else if ((movespeed <= 8) || (!key_chainsaw))
	//    sprite_index = spr_player_chainsawend
	//if (sprite_index == spr_player_chainsaw)
	//{
	//    if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_collisionparent))
	//        instance_create(x, y, obj_dashcloud)
	//}
	//else if (sprite_index == spr_player_chainsawend)
	//{
	//    if ((!instance_exists(obj_slidecloud)) && (place_meeting(x, (y + 1), obj_collisionparent) && (movespeed > 5)))
	//        instance_create(x, y, obj_slidecloud)
	//}


}
