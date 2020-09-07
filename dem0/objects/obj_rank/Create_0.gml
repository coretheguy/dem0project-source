image_speed = 0.5
if level = "sewer"
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
