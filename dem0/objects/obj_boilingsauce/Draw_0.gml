for (var i = 0; i < abs(image_xscale); i++)
{
	if global.frozen = 0
		draw_sprite(spr_boilingsauce, -1, (x + (32 * i)), y)
	else
		draw_sprite(spr_frozenboilingsauce, -1, (x + (32 * i)), y)
}
