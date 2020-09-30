global.timerank = "none" //in case it crashes...
rank = "none" // also prevents a crash
ini_open("saveData.ini")
global.sewerhighscore = ini_read_string("Points", "sewer","none")
global.castlehighscore = ini_read_string("Points", "castle","none")
global.timehighscore = ini_read_string("Points", "time","none")
global.timehighscore2= ini_read_string("TimeChallenge", "time","none")
global.cloudshighscore = ini_read_string("Points", "clouds","none")
global.volcanohighscore = ini_read_string("Points", "volcano","none")

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
	if (("s" != ini_read_string("Ranks", "castle", "none")))
	rank = "a"
	}
else if (global.collect > 2000)
{
    sprite_index = spr_rankB
	if (("s" != ini_read_string("Ranks", "castle", "none")) && (("a" != ini_read_string("Ranks", "castle", "none"))))
	rank = "b"
	}
else if (global.collect > 1500)
{
    sprite_index = spr_rankC
	if (("s" != ini_read_string("Ranks", "castle", "none")) && (("a" != ini_read_string("Ranks", "castle", "none")) && (("b" != ini_read_string("Ranks", "castle", "none")))))
	rank = "c"
	}
else
{
    sprite_index = spr_rankD
	if (("s" != ini_read_string("Ranks", "castle", "none")) && (("a" != ini_read_string("Ranks", "castle", "none")) && (("b" != ini_read_string("Ranks", "castle", "none")) && ("c" != ini_read_string("Ranks", "castle", "none")))))
	rank = "d"
	}
	ini_open("saveData.ini")
ini_write_string("Ranks", "castle", rank)
ini_close()
}

if global.level = "sewer" && (global.sewerhighscore < global.collect)
{
ini_open("saveData.ini")
ini_write_string("Points", "sewer", global.collect)
ini_close()
}
if global.level = "time" && (global.timehighscore < global.collect) && (global.timehighscore2 < (global.minutes && global.seconds))
{
ini_open("saveData.ini")
ini_write_string("Points", "time", global.collect)
ini_write_string("TimeChallenge", "time", string(global.minutes) + ":" + string(global.seconds))
ini_close()
}
if global.level = "" && (global.castlehighscore < global.collect)
{
ini_open("saveData.ini")
ini_write_string("Points", "castle", global.collect)
ini_close()
}
if global.level = "clouds" && (global.cloudshighscore < global.collect)
{
ini_open("saveData.ini")
ini_write_string("Points", "clouds", global.collect)
ini_close()
}

