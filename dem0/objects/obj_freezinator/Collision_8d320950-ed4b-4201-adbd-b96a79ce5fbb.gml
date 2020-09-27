with obj_player
{
	if state != 100 && state != 102
	{
	visible = 0
	x = other.x
	image_index = 0
	image_speed = 0
	sprite_index = spr_player_frozen
	other.sprite_index = spr_fridge_closing
	state = 100
	}
}

if obj_player.state = 100
	opentimer++
	

if opentimer = 50
{
	obj_player.visible = 1
	obj_player.state = 102
	obj_player.image_index = 0
	obj_player.movespeed = 6
	sprite_index = spr_fridge_opening
	opentimer = 0
}
