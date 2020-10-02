with obj_player
{
	hurted = 0
inv_frames = 0
key_particles = 0
}
with (obj_player)
{
    if (state != 65)
    {
        //if ((movespeed <= 3) || (xscale == sign(other.image_xscale)))
        //{
            sprite_index = spr_player_slipnslide
            state = 65
            xscale = sign(other.image_xscale)
        //}
        //else if (movespeed > 3)
        //    movespeed--
    }
	movespeed += 0.5
}
