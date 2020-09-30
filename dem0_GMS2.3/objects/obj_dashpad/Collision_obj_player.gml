with (obj_player)
{
    if (place_meeting(x, (y + 1), obj_collisionparent) && ((state == 47) || (state == 48)))
    {
        xscale = other.image_xscale
        mach2 = 100
        machhitAnim = 0
        state = 68
        flash = 1
        sprite_index = spr_player_mach4
        instance_create(x, y, obj_jumpdust)
        instance_create(x, y, obj_mach3effect1)
        instance_create(x, y, obj_mach3effect2)
        movespeed = 12
    }
}