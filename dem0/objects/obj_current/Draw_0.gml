for (var o = 0; o < abs(image_yscale); o++)
{
    for (var z = 0; z < abs(image_xscale); z++)
    {
        if (sign(image_xscale) == 1)
            draw_sprite_ext(spr_current, -1, (x + (32 * z)), (y + (32 * o)), sign(image_xscale), 1, image_angle, image_blend, 1)
        else
            draw_sprite_ext(spr_current, -1, (x - (32 * z)), (y + (32 * o)), sign(image_xscale), 1, image_angle, image_blend, 1)
    }
}

