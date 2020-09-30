function scr_player_poundprep() {
	scr_getinput()
	start_running = 1
	alarm[4] = 14
	jumpAnim = 1
	dashAnim = 1
	landAnim = 0
	machslideAnim = 1
	moveAnim = 1
	stopAnim = 1
	crouchslideAnim = 1
	crouchAnim = 1
	if (floor(image_index) == 7)
	{
		state = 52
		vsp = 10
		sprite_index = spr_player_freefall
	}
	image_speed = 0.35
	scr_collideandmove()


}
