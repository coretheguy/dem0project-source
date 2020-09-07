if surface_exists(surf)
{
	if global.panic = 0
	{
    surface_set_target(surf)
    draw_set_color(c_black)
    draw_set_alpha(0.4)
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_blend_mode(3)
    draw_set_color(c_white)
    with (obj_player)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (300 + random_range(-1, 1)), 0)
    draw_set_color(c_white)
    draw_set_alpha(1)
    with (obj_player)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (250 + random_range(-1, 1)), 0)
    with (obj_lamp)
        draw_circle(((x + random_range(-1, 1))), (y + random_range(-1, 1)), (40 + random_range(-1, 1)), 0)
    draw_set_blend_mode(0)
    draw_set_alpha(1)
    surface_reset_target()
	}
	else
	{
	surface_set_target(surf)
    draw_set_color(c_black)
    draw_set_alpha(0.7)
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_blend_mode(3)
    draw_set_color(c_white)
	draw_set_alpha(0.5)
    with (obj_player)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (200 + random_range(-1, 1)), 0)
    draw_set_color(c_white)
    draw_set_alpha(0.8)
    with (obj_player)
        draw_circle((x + random_range(-1, 1)), (y + random_range(-1, 1)), (150 + random_range(-1, 1)), 0)
    with (obj_lamp)
        draw_circle(((x + random_range(-1, 1))), (y + random_range(-1, 1)), (40 + random_range(-1, 1)), 0)
    draw_set_blend_mode(0)
    draw_set_alpha(1)
    surface_reset_target()
	}
}
else
{
    surf = surface_create(room_width, room_height)
    surface_set_target(surf)
    draw_clear_alpha(c_black, 0)
    surface_reset_target()
}


