if obj_player.state == 48 || obj_player.state == 68
{
	hooked = 1
	drop = 0
	obj_player.vsp = 0
	obj_player.state = 53
	hsp = obj_player.hsp
	obj_player.sprite_index = spr_player_hang
}
