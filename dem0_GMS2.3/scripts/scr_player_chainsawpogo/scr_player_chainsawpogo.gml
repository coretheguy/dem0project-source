function scr_player_chainsawpogo() {
	if !instance_exists(obj_chainsawpogohitbox)
		instance_create(x, y, obj_chainsawpogohitbox)
	if instance_exists(obj_chainsawhitbox)
		instance_destroy(obj_chainsawhitbox)

	scr_getinput()
	hsp = (xscale * movespeed)
	move = (key_right + key_left)
	if ((place_meeting((x + 1), y, obj_bumpable) && (xscale == 1)) || (place_meeting((x - 1), y, obj_bumpable) && (xscale == -1)))
	    movespeed = 0
	if (move == 0 && movespeed > 0)
	    movespeed -= 0.25
	if ((move != 0) && (movespeed < 13))
	    movespeed += 0.5
	if ((xscale == 1) && (move == -1))
	    movespeed = 0
	if ((xscale == -1) && (move == 1))
	    movespeed = 0
	landAnim = 1
	if (ladderbuffer > 0)
	    ladderbuffer--
	if (place_meeting(x, (y - 1), obj_collisionparent) && ((jumpstop == 0) && (jumpAnim == 1)))
	{
	    vsp = grav
	    jumpstop = 1
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && ((jumpstop == 0) && (jumpAnim == 1)))
	{
	    vsp = -13
	    jumpstop = 1
		sprite_index = spr_player_chainsawpogobounce
		instance_create(x, y, obj_pogoeffect)
		global.sawpower -= 1
	}
	if ((place_meeting(x, (y + 1), obj_collisionparent) && (vsp > 0)) || (!key_chainsaw))
	{
	    state = 36
	    jumpAnim = 0
	    jumpstop = 0
	}
	if (sprite_index != spr_player_chainsawpogobounce)
	{
	    if ((sprite_index == spr_player_chainsawpogo1) && (floor(image_index) == 3))
	        sprite_index = spr_player_chainsawpogo2
	}

	if place_meeting(x, (y + 1), obj_onewaywatersolid)
	{
	    instance_create((x - (30)), (y + 40), obj_waterdrop)
		instance_create((x - (-30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (-30)), (y + 40), obj_waterdrop)
		instance_create((x - (30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	}
	if global.sawpower = 0
		global.gotchainsaw = 0
	
	else if (floor(image_index) == 4)
	    sprite_index = spr_player_chainsawpogo2
	image_speed = 0.35
	if (move != 0)
	    xscale = move
	
	if movespeed < 0
		movespeed += 0.1
	image_speed = 0.35
	scr_collideandmove()



}
