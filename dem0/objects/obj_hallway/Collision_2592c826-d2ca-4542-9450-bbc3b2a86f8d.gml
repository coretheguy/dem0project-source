if (createdfadeout == 0) && global.newdoors = 1
{
    createdfadeout = 1
	instance_create(x, y, obj_fadeout)
}

if createdfadeout = 1
{
	with (obj_player)
	{
		x = other.x
		y = (other.y + (other.sprite_height - 46))
	}
}

if global.newdoors = 2
{
	with (other.id)
	{
    x = other.x
    y = (other.y + (other.sprite_height - 46))
	if (!instance_exists(obj_fadeout))
    {
	obj_player.targetDoor = other.targetDoor
    obj_player.targetRoom = other.targetRoom
    obj_player.hallway = 1
    obj_player.hallwaydirection = other.image_xscale
	other.visited = 1
	instance_create(x, y, obj_fadeout)
	}
	}
}

//		{
//			//y = other.target_y
//			//x = other.target_x
//			targetRoom = other.targetRoom
//		}
//	}
//}

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
