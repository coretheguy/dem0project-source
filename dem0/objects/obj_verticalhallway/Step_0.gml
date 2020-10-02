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

if place_meeting(x, y, obj_doorA)
    targetDoor = "A"
if place_meeting(x, y, obj_doorB)
    targetDoor = "B"
if place_meeting(x, y, obj_doorC)
    targetDoor = "C"
if place_meeting(x, y, obj_doorD)
    targetDoor = "D"
if place_meeting(x, y, obj_doorE)
    targetDoor = "E"