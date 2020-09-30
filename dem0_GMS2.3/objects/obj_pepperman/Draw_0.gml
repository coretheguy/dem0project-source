if flash >= 1
{
    shader_set(shd_hit)
    draw_self()
    shader_reset()
	alarm[3] = 3
}
else
    draw_self()

