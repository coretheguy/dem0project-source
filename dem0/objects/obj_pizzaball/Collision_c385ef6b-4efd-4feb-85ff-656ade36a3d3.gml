if (obj_player.state != 24) && obj_player.state = 47 || obj_player.state = 48 || obj_player.state = 68
    {
		sprite_index = spr_pizzaball_stun
		hsp = 0
		stun = 1
		obj_player.state = 24
        x = (obj_player.x + (obj_player.xscale * 20))
        y = obj_player.y
        if (x != obj_player.x)
            image_xscale = sign((obj_player.x - x))
    }
if (obj_player.state == 25)
    {
        x = (obj_player.x + (obj_player.xscale * 20))
        y = obj_player.y
        if (floor(obj_player.image_index) == 3)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            y = obj_player.y
            hsp = (obj_player.xscale * 20)
            vsp = -5
            instance_create(x, y, obj_bangeffect)
			global.golfhit += 1
        }
    }
    if (obj_player.state == 27)
    {
        x = obj_player.x
        y = (obj_player.y - 40)
        if (floor(obj_player.image_index) == 3)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            instance_create(x, y, obj_bangeffect)
            vsp = -20
			global.golfhit += 1
        }
    }
    if (obj_player.state == 26)
    {
        x = (obj_player.x - (obj_player.xscale * 20))
        y = obj_player.y
        if (floor(obj_player.image_index) == 3)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            obj_player.vsp = -5
            hsp = (-(obj_player.xscale * 20))
            vsp = -5
            instance_create(x, y, obj_bangeffect)
			global.golfhit += 1
        }
    }
    if (obj_player.state == 28)
    {
        x = obj_player.x
        y = (obj_player.y + 30)
        if (floor(obj_player.image_index) == 3)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            obj_player.vsp = -5
            instance_create(x, y, obj_bangeffect)
            vsp = -4
            hsp = (obj_player.xscale * 4)
			global.golfhit += 1
        }
    }
    if (obj_player.state == 29)
    {
        x = obj_player.x
        y = (obj_player.y - 40)
        if (floor(obj_player.image_index) == 1)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            instance_create(x, y, obj_bangeffect)
            vsp = -4
            hsp = (obj_player.xscale * 4)
			global.golfhit += 1
        }
    }
    if (obj_player.state == 20)
    {
        x = obj_player.x
        y = (obj_player.y + 30)
        if (floor(obj_player.image_index) == 4)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            instance_create(x, y, obj_bangeffect)
            vsp = -4
			 hsp = (obj_player.xscale * 4)
			 global.golfhit += 1
        }
    }
    if (obj_player.state == 21)
    {
        x = obj_player.x
        y = (obj_player.y + 30)
        if (floor(obj_player.image_index) == 4)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            instance_create(x, y, obj_bangeffect)
            vsp = -4
            hsp = (obj_player.xscale * 4)
			global.golfhit += 1
        }
    }
    if (obj_player.state == 19)
    {
        x = obj_player.x
        y = (obj_player.y - 40)
        if (floor(obj_player.image_index) == 3)
        {
            with (obj_camera)
            {
                shake_mag = 10
                shake_mag_acc = (30 / room_speed)
            }
            y = obj_player.y
            hsp = (obj_player.xscale * 10)
            vsp = -5
            instance_create(x, y, obj_bangeffect)
			global.golfhit += 1
        }
    }