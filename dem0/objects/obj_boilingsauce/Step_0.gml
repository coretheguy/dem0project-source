if (place_meeting(x, (y - 1), obj_player) && obj_player.state != 102)
{
    obj_player.state = 101
    obj_player.image_index = 0
    obj_player.vsp = -25
    obj_player.sprite_index = spr_player_fireass
}

if place_meeting(x, y - 1, obj_player) && obj_player.state = 102
{
	instance_destroy()
	instance_create(x, y + 32, obj_ice)
}

