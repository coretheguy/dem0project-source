with obj_player
{
	if state = 0
	{
		global.gotshotgun = 1
		global.ammo = 10
	instance_destroy(other.id)
	}
}