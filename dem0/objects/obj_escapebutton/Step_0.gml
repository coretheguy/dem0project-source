if (place_meeting(x, (y - 1), obj_player))
{
    global.panic = 1
	global.minutes = 1
	global.seconds = 0
	instance_destroy()
	instance_create(x, y, obj_escapebutton_pressed)
}