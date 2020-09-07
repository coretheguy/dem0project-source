if obj_player.state == 36 || obj_player.state == 48 || obj_player.state == 68
{
	obj_player.mach2 = 0
	hooked = 1
	drop = 0
	obj_player.hsp = 0
	obj_player.state = 53
	vsp = -5
	obj_player.sprite_index = spr_player_hang
	obj_player.xscale = -1
}
