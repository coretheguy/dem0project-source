if !instance_exists(obj_fadeout)
	instance_create(x, y, obj_fadeout)
obj_player.state = 0
with obj_player
{
			targetRoom = other.targetRoom
			y = other.target_y
			x = other.target_x
}