with (obj_player)
{
    if (key_up && state == 0 && (y == (other.y + 50)))
    {
        mach2 = 0
        image_index = 0
        state = 56
    }
}
if ((floor(obj_player.image_index) == (obj_player.image_number - 1)) && (obj_player.state == 56))
{
    with (obj_player)
    {
        player_y = other.target_y
        player_x = other.target_x
        targetRoom = other.targetRoom
        if (!instance_exists(obj_fadeout))
            instance_create(x, y, obj_fadeout)
    }
}