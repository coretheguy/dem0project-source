if (global.panic == 1)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_collisionparent) && (((x > (other.x + 32)) && (x < (other.x + 160))) && key_up))
        {
            if (!instance_exists(obj_endlevelfade))
                instance_create(x, y, obj_endlevelfade)
            if (state != 56)
            {
                state = 56
				obj_player.targetDoor = other.targetDoor
                obj_endlevelfade.alarm[0] = 400
                image_index = 0
				if global.level = "sewer"
{
	ini_open("saveData.ini")
	if (global.collect >= 2800)
	{
	global.rank = "s"
	}
else if (global.collect > 2000)
{
	if (("s" != ini_read_string("Ranks", "sewer", "none")))
		global.rank = "a"
	}
else if (global.collect > 1500)
{
	if (("s" != ini_read_string("Ranks", "sewer", "none")) && (("a" != ini_read_string("Ranks", "sewer", "none"))))
		global.rank = "b"
	}
else if (global.collect > 750)
{
	if (("s" != ini_read_string("Ranks", "sewer", "none")) && (("a" != ini_read_string("Ranks", "sewer", "none")) && (("b" != ini_read_string("Ranks", "sewer", "none")))))
		global.rank = "c"
	}
else
{
	if (("s" != ini_read_string("Ranks", "sewer", "none")) && (("a" != ini_read_string("Ranks", "sewer", "none")) && (("b" != ini_read_string("Ranks", "sewer", "none")) && ("c" != ini_read_string("Ranks", "sewer", "none")))))
	global.rank = "d"
}
ini_write_string("Ranks", "sewer", global.rank)
ini_close()
}
else if global.level = "time"
{
	ini_open("saveData.ini")
	if global.minutes = 2 && global.seconds > 1
	{
	if instance_exists(obj_text)
	{
			obj_text.text = "YOU BEAT THE DEV TIME! CONGRATS! PAUSE AND THEN RETRY TO GO BACK TO THE HUB." 
			obj_text.color = c_black
			global.timerank = "s"
	}
	}
if (global.minutes = 1 && global.seconds >= 20)
{
	global.timerank = "s"
}
else if (global.minutes = 1)
{
	if (("s" != ini_read_string("Ranks", "time", "none")))
	global.timerank = "a"
}
else if (global.minutes = 0 && global.seconds >= 30)
{
	if (("s" != ini_read_string("Ranks", "time", "none")) && (("a" != ini_read_string("Ranks", "time", "none"))))
	global.timerank = "b"
}
else if (global.minutes = 0 && global.seconds > 5 && global.seconds < 30)
{
	if (("s" != ini_read_string("Ranks", "time", "none")) && (("a" != ini_read_string("Ranks", "time", "none")) && (("b" != ini_read_string("Ranks", "time", "none")))))
	global.timerank = "c"
}
else if (global.minutes = 0 && global.seconds <= 5)
{
	if (("s" != ini_read_string("Ranks", "time", "none")) && (("a" != ini_read_string("Ranks", "time", "none")) && (("b" != ini_read_string("Ranks", "time", "none")) && ("c" != ini_read_string("Ranks", "time", "none")))))
	global.timerank = "d"
}
ini_write_string("Ranks", "time", global.timerank)
ini_close()
ini_open("saveData.ini")
}
else if global.level = "clouds"
{
if (global.collect >= 4000)
{
	global.rank = "s"
	}
else if (global.collect > 3000)
{
	if (("s" != ini_read_string("Ranks", "clouds", "none")))
	global.rank = "a"
	}
else if (global.collect > 1500)
{
	if (("s" != ini_read_string("Ranks", "clouds", "none")) && (("a" != ini_read_string("Ranks", "clouds", "none"))))
	global.rank = "b"
	}
else if (global.collect > 750)
{
	if (("s" != ini_read_string("Ranks", "clouds", "none")) && (("a" != ini_read_string("Ranks", "clouds", "none")) && (("b" != ini_read_string("Ranks", "clouds", "none")))))
	global.rank = "c"
	}
else
{
	if (("s" != ini_read_string("Ranks", "clouds", "none")) && (("a" != ini_read_string("Ranks", "clouds", "none")) && (("b" != ini_read_string("Ranks", "clouds", "none")) && ("c" != ini_read_string("Ranks", "clouds", "none")))))
	global.rank = "d"
	}
ini_write_string("Ranks", "clouds", global.rank)
ini_close()
}
else if global.level = "volcano"
{
	ini_open("saveData.ini")
	if global.collect > 2000
		global.rank = "s"
	else if global.collect > 1500
	{
		if (("s" != ini_read_string("Ranks", "volcano", "none")))
			global.rank = "a"
	}
	else if global.collect > 1000
	{
		if (("s" != ini_read_string("Ranks", "volcano", "none")) && ("a" != ini_read_string("Ranks", "volcano", "none")))
			global.rank = "b"
	}
	else if global.collect > 500
	{
		if (("s" != ini_read_string("Ranks", "volcano", "none")) && ("a" != ini_read_string("Ranks", "volcano", "none")) && ("b" != ini_read_string("Ranks", "volcano", "none")))
			global.rank = "c"
	}
	else
	{
		if (("s" != ini_read_string("Ranks", "volcano", "none")) && ("a" != ini_read_string("Ranks", "volcano", "none")) && ("b" != ini_read_string("Ranks", "volcano", "none")) && ("c" != ini_read_string("Ranks", "volcano", "none")))	
			global.rank = "d"
	}
	ini_write_string("Ranks", "volcano", global.rank)
	ini_close()
}
else
{
ini_open("saveData.ini")
if (global.collect >= 3500)
{
	global.rank = "s"
	}
else if (global.collect > 2500)
{
	if (("s" != ini_read_string("Ranks", "castle", "none")))
	global.rank = "a"
	}
else if (global.collect > 2000)
{
	if (("s" != ini_read_string("Ranks", "castle", "none")) && (("a" != ini_read_string("Ranks", "castle", "none"))))
	global.rank = "b"
	}
else if (global.collect > 1500)
{
	if (("s" != ini_read_string("Ranks", "castle", "none")) && (("a" != ini_read_string("Ranks", "castle", "none")) && (("b" != ini_read_string("Ranks", "castle", "none")))))
	global.rank = "c"
	}
else
{
	if (("s" != ini_read_string("Ranks", "castle", "none")) && (("a" != ini_read_string("Ranks", "castle", "none")) && (("b" != ini_read_string("Ranks", "castle", "none")) && ("c" != ini_read_string("Ranks", "castle", "none")))))
	global.rank = "d"
	}
ini_write_string("Ranks", "castle", global.rank)
ini_close()
}
ini_open("saveData.ini")
if global.level = "sewer" && (global.sewerhighscore < global.collect)
{
ini_write_string("Points", "sewer", global.collect)
}
if global.level = "time" && (global.timehighscore < global.collect) && (global.timehighscore2 < (global.minutes && global.seconds))
{
ini_write_string("Points", "time", global.collect)
ini_write_string("TimeChallenge", "time", string(global.minutes) + ":" + string(global.seconds))
}
if global.level = "" && (global.castlehighscore < global.collect)
{
ini_write_string("Points", "castle", global.collect)
}
if global.level = "clouds" && (global.cloudshighscore < global.collect)
{
ini_write_string("Points", "clouds", global.collect)
}
if global.level = "volcano" && (global.volcanohighscore < global.collect)
{
ini_write_string("Points", "volcano", global.collect)
}
ini_close()

            }
        }
    }
}
