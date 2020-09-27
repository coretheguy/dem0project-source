
if sprite_index = spr_fridge_closing && floor(image_index) == (image_number - 1)
	sprite_index = spr_fridge_closed
else if sprite_index = spr_fridge_opening && floor(image_index) == (image_number - 1)
	sprite_index = spr_fridge_open