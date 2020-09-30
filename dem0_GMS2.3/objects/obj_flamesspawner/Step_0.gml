if ((!instance_exists(obj_flames)) && (spawned == 0))
{
    alarm[0] = 100
    spawned = 1
}

if global.frozen = 1
	instance_destroy()

