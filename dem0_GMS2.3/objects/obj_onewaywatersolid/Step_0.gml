if ((obj_player.state != 48) && (obj_player.state != 68) && (obj_player.state != 49) && obj_player.state != 11 && obj_player.state != 7 || instance_exists(obj_chainsawpogohitbox))
{
    instance_destroy()
    obj_water.created = 0
}