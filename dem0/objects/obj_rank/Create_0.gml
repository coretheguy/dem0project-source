image_speed = 0.5
if global.level = "sewer"
{
	if (global.collect >= 2800)
    sprite_index = spr_rankS
else if (global.collect > 2000)
    sprite_index = spr_rankA
else if (global.collect > 1500)
    sprite_index = spr_rankB
else if (global.collect > 750)
    sprite_index = spr_rankC
else
    sprite_index = spr_rankD
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
}
else if (global.minutes = 1)
    sprite_index = spr_rankA
else if (global.minutes = 0 && global.seconds >= 30)
    sprite_index = spr_rankB
else if (global.minutes = 0 && global.seconds > 5 && global.seconds < 30)
    sprite_index = spr_rankC
else if (global.minutes = 0 && global.seconds <= 5)
    sprite_index = spr_rankD
}
else
{
if (global.collect >= 3500)
    sprite_index = spr_rankS
else if (global.collect > 2500)
    sprite_index = spr_rankA
else if (global.collect > 2000)
    sprite_index = spr_rankB
else if (global.collect > 1500)
    sprite_index = spr_rankC
else
    sprite_index = spr_rankD
}

