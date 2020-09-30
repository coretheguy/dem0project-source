function scr_player_barrelroll() {
	scr_getinput()
	mask_index = spr_crouchmask
	hsp = (xscale * movespeed)
	movespeed = 10
	mach2 = 100
	if (vsp < 12)
	    vsp += grav
	if ((input_buffer_jump < 5) && place_meeting(x, (y + 1), obj_collisionparent))
	    vsp = -10
	if key_jump
	    input_buffer_jump = 0
	if (place_meeting((x + 1), y, obj_bumpable) && (xscale == 1) && !place_meeting(x + (sign(hsp)), y, obj_slopes) && !place_meeting((x - 1), y, obj_destructibles))
	{
	    barrel = 0
	    mask_index = spr_player_mask
	    state = 50
	    hsp = -2
	    vsp = -2
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	}
	if (place_meeting((x - 1), y, obj_bumpable) && (xscale == -1) && !place_meeting(x + (sign(hsp)), y, obj_slopes) && !place_meeting((x - 1), y, obj_destructibles))
	{
	    barrel = 0
	    mask_index = spr_player_mask
	    state = 50
	    hsp = 2
	    vsp = -2
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	    instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
	}
	if !instance_exists(obj_mach3effect)
		instance_create(x, y, obj_mach3effect)
	if !instance_exists(obj_mach3effect1)
		instance_create(x, y, obj_mach3effect1)
	if !instance_exists(obj_mach3effect2)
		instance_create(x, y, obj_mach3effect2)
	sprite_index = spr_player_barrelroll
	image_speed = 0.45
	scr_collideandmove()



}
