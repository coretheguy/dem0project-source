if createdfadeout = 1
{
	time2++
	with (obj_player)
	{
    //y = other.target_y
    //x = other.target_x
    //targetRoom = other.targetRoom
		if other.time2 > 10
		{
			targetRoom = other.targetRoom
			y = other.target_y
			x = other.target_x
			other.time2 = 0
			other.createdfadeout = 0
		}
	}
}