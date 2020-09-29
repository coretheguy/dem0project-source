with obj_player
{
	if state = 0
	{
		global.gotchainsaw = 1
		global.sawpower = 100
	instance_destroy(other.id)
	}
}