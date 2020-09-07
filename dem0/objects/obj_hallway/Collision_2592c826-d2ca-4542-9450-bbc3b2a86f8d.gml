if (createdfadeout == 0)
{
    createdfadeout = 1
	instance_create(x, y, obj_fadeout)
}

if createdfadeout = 1
{
	with (obj_player)
	{
		{
			//y = other.target_y
			//x = other.target_x
			targetRoom = other.targetRoom
		}
	}
}

        //case 47:
        //    scr_player_mach1()
        //    break
        //case 48:
        //    scr_player_mach2()
        //    break
        //case 68:
        //    scr_player_mach3()
        //    break

//}
//with (obj_player)
//{
//    //y = other.target_y
//    //x = other.target_x
//    //targetRoom = other.targetRoom
//	other.time2++
//		if other.time2 > 10
//		{
//			targetRoom = other.targetRoom
//			y = other.target_y
//			x = other.target_x
//			other.time2 = 0
//		}
//}
