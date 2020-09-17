with (obj_player)
{
    if (state != 56)
    {
        state = 66
        x = other.x
        y = (other.y - 32)
        image_xscale = other.image_xscale
    }
}

with obj_player
{
	hurted = 0
inv_frames = 0
key_particles = 0
}