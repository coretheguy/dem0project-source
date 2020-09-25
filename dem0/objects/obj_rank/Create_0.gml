global.timerank = "none" //in case it crashes...
rank = "none" // also prevents a crash

image_speed = 0.5
if global.level = "sewer"
{
	if (global.collect >= 2800)
	{
    sprite_index = spr_rankS
	rank = "s"
	}
else if (global.collect > 2000)
{
    sprite_index = spr_rankA
		rank = "a"
	}
else if (global.collect > 1500)
{
    sprite_index = spr_rankB
		rank = "b"
	}
else if (global.collect > 750)
{
    sprite_index = spr_rankC
		rank = "c"
	}
else
{
    sprite_index = spr_rankD
	rank = "d"
}
ini_open("saveData.ini")
ini_write_string("Ranks", "sewer", rank)
ini_close()
}
else if global.level = "time"
{
	if global.minutes = 2 && global.seconds > 1
	{
		sprite_index = spr_rankS

			obj_text.text = "YOU BEAT THE DEV TIME! CONGRATS! PAUSE AND THEN RETRY TO GO BACK TO THE HUB." 
			obj_text.color = c_black
	}
if (global.minutes = 1 && global.seconds >= 20)
{
    sprite_index = spr_rankS
	global.timerank = "s"
}
else if (global.minutes = 1)
{
    sprite_index = spr_rankA
	global.timerank = "a"
}
else if (global.minutes = 0 && global.seconds >= 30)
{
    sprite_index = spr_rankB
	global.timerank = "b"
}
else if (global.minutes = 0 && global.seconds > 5 && global.seconds < 30)
{
    sprite_index = spr_rankC
	global.timerank = "c"
}
else if (global.minutes = 0 && global.seconds <= 5)
{
    sprite_index = spr_rankD
	global.timerank = "d"
}
ini_open("saveData.ini")
ini_write_string("Ranks", "time", global.timerank)
ini_close()
}
else if global.level = "clouds"
{
if (global.collect >= 4000)
{
    sprite_index = spr_rankS
	rank = "s"
	}
else if (global.collect > 3000)
{
    sprite_index = spr_rankA
	rank = "a"
	}
else if (global.collect > 1500)
{
    sprite_index = spr_rankB
	rank = "b"
	}
else if (global.collect > 750)
{
    sprite_index = spr_rankC
	rank = "c"
	}
else
{
    sprite_index = spr_rankD
	rank = "d"
	}
ini_open("saveData.ini")
ini_write_string("Ranks", "clouds", rank)
ini_close()
}
else
{
if (global.collect >= 3500)
{
    sprite_index = spr_rankS
	rank = "s"
	}
else if (global.collect > 2500)
{
    sprite_index = spr_rankA
	rank = "a"
	}
else if (global.collect > 2000)
{
    sprite_index = spr_rankB
	rank = "b"
	}
else if (global.collect > 1500)
{
    sprite_index = spr_rankC
	rank = "c"
	}
else
{
    sprite_index = spr_rankD
	rank = "d"
	}
	ini_open("saveData.ini")
ini_write_string("Ranks", "castle", rank)
ini_close()
}

if global.level = "sewer"
{
ini_open("saveData.ini")
ini_write_string("Points", "sewer", global.collect)
ini_close()
}
if global.level = "time"
{
ini_open("saveData.ini")
ini_write_string("Points", "time", global.collect)
ini_write_string("TimeChallenge", "time", string(global.minutes) + ":" + string(global.seconds))
ini_close()
}
if global.level = ""
{
ini_open("saveData.ini")
ini_write_string("Points", "castle", global.collect)
ini_close()
}
if global.level = "clouds"
{
ini_open("saveData.ini")
ini_write_string("Points", "clouds", global.collect)
ini_close()
}

