function scr_player_grind() {
	scr_getinput()
	vsp = 0
	machhitAnim = 0
	crouchslideAnim = 1
	hsp = floor((xscale * movespeed))
	if (key_jump && place_meeting(x, (y + 1), obj_grindrailnormal))
	{
	    vsp = -9
	    state = 48
	}

	if (place_meeting(x, y, obj_grindrailup))
		vsp = -8
	
	if (place_meeting(x, y, obj_grindraildown))
		vsp = 7

	if (!place_meeting(x, (y + 1), obj_grindrailnormal) && !place_meeting(x, y, obj_grindraildown) && !place_meeting(x, y, obj_grindrailup))
	    state = 48
	sprite_index = spr_player_grind
	image_speed = 0.35
	if (!instance_exists(obj_grindeffect))
	    instance_create(x, y, obj_grindeffect)
	scr_collideandmove()



}
